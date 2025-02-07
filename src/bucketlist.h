#ifndef __BUCKET_LIST_H__
#define __BUCKET_LIST_H__

#include <list>
#include <memory>

template <typename T> struct Bucket { std::unique_ptr<T[]> items; };

template <typename T, size_t bucket_size>
class BucketList {
public:
    BucketList() : size(0) {}

    class iterator {
    public:
        iterator(std::list<Bucket<T>>::iterator list_iter, size_t list_size)
            : bucket_iter(list_iter), index(0), list_size(list_size) {}

        T* get() { return &(bucket_iter->items[index % bucket_size]); }

        bool at_end() { return index == list_size; }

        iterator& operator++() {
            ++index;
            if (index % bucket_size) {
                std::next(bucket_iter);
            }
            return *this;
        }

    private:
        std::list<Bucket<T>>::iterator bucket_iter;
        size_t                         index;
        size_t                         list_size;
    };

    iterator begin() {
        return iterator(buckets.begin(), size);
    }

    T* add(T&& elem) {
        if (size % bucket_size == 0) {
            buckets.emplace_back(std::make_unique<T[]>(bucket_size));
        }
        T* new_elem = &(buckets.back().items[size % bucket_size]);
        *new_elem   = elem;
        ++size;
        return new_elem;
    }

private:
    size_t               size;
    std::list<Bucket<T>> buckets;
};

#endif