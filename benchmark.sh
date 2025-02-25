#!/bin/bash

# Array of commands to run
commands=(
    "./main.exe -i inputs/pianoroom.ray --ppm -H 500 -W 500"
    "./main.exe -i inputs/globe.ray --ppm -a inputs/globe.animate --no-movie -F 24"
    "./main.exe -i inputs/elephant.ray --ppm -a inputs/elephant.animate --no-movie -F 24 -W 100 -H 100"
)

# Array of commit hashes to test (newest to oldest)
commits=(
    "04f1a833f78bb146c2cda83b92920a98fe30e6a3" # FIRST COMMIT NAIVE
    "53197b8cc73cdab012cc130efc9eaee67e0102d8" # second commit, bvh
    "c6ad1c97ce4b3313ec86b4c7626508f4b550577d" # third commit, bvh but better
    "c1455f7b714ad2db894ac4cd12522f3a2948cc22" # fourth commit, multithreading
    "3091dc43052dcca31b453f2a7bf7f8c9b1138e01" # fifth commit, vector buffer
    "9b143d9496d9481b691574282b33ea305c626cb6" # sixth commit, final
)

# Create output CSV file
echo "Commit,Command,Time(seconds)" > timing_results.csv

# For each commit
for commit in "${commits[@]}"; do
    echo "Testing commit: $(git rev-parse --short $commit)"
    
    # Checkout the commit
    git checkout $commit
    
    # Rebuild the project
    make clean && make
    
    # Run each command
    for cmd in "${commands[@]}"; do
        echo "Running: $cmd"
        
        # Run command and capture output
        output=$($cmd 2>&1)
        
        # Extract time using grep and awk
        time=$(echo "$output" | grep "Total time to create images=" | awk -F'=' '{print $2}' | awk -F' ' '{print $1}')
        
        # Save to CSV
        echo "$(git rev-parse --short $commit),\"$cmd\",$time" >> timing_results.csv
    done
done

# Return to original branch
git checkout -

echo "Results saved to timing_results.csv"

# Print a summary
echo -e "\nSummary:"
cat timing_results.csv