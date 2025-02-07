
main.exe:     file format elf64-x86-64


Disassembly of section .text:

0000000000005120 <_start>:
    5120:	f3 0f 1e fa          	endbr64 
    5124:	31 ed                	xor    %ebp,%ebp
    5126:	49 89 d1             	mov    %rdx,%r9
    5129:	5e                   	pop    %rsi
    512a:	48 89 e2             	mov    %rsp,%rdx
    512d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    5131:	50                   	push   %rax
    5132:	54                   	push   %rsp
    5133:	4c 8d 05 86 aa 00 00 	lea    0xaa86(%rip),%r8        # fbc0 <__libc_csu_fini>
    513a:	48 8d 0d 0f aa 00 00 	lea    0xaa0f(%rip),%rcx        # fb50 <__libc_csu_init>
    5141:	48 8d 3d 88 20 00 00 	lea    0x2088(%rip),%rdi        # 71d0 <main>
    5148:	ff 15 4a c2 00 00    	callq  *0xc24a(%rip)        # 11398 <__libc_start_main@GLIBC_2.2.5>
    514e:	f4                   	hlt    
    514f:	cc                   	int3   

0000000000005150 <deregister_tm_clones>:
    5150:	48 8d 3d 91 d2 00 00 	lea    0xd291(%rip),%rdi        # 123e8 <__TMC_END__>
    5157:	48 8d 05 8a d2 00 00 	lea    0xd28a(%rip),%rax        # 123e8 <__TMC_END__>
    515e:	48 39 f8             	cmp    %rdi,%rax
    5161:	74 15                	je     5178 <deregister_tm_clones+0x28>
    5163:	48 8b 05 3e c2 00 00 	mov    0xc23e(%rip),%rax        # 113a8 <_ITM_deregisterTMCloneTable@Base>
    516a:	48 85 c0             	test   %rax,%rax
    516d:	74 09                	je     5178 <deregister_tm_clones+0x28>
    516f:	ff e0                	jmpq   *%rax
    5171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5178:	c3                   	retq   
    5179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000005180 <register_tm_clones>:
    5180:	48 8d 3d 61 d2 00 00 	lea    0xd261(%rip),%rdi        # 123e8 <__TMC_END__>
    5187:	48 8d 35 5a d2 00 00 	lea    0xd25a(%rip),%rsi        # 123e8 <__TMC_END__>
    518e:	48 29 fe             	sub    %rdi,%rsi
    5191:	48 89 f0             	mov    %rsi,%rax
    5194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    5198:	48 c1 f8 03          	sar    $0x3,%rax
    519c:	48 01 c6             	add    %rax,%rsi
    519f:	48 d1 fe             	sar    %rsi
    51a2:	74 14                	je     51b8 <register_tm_clones+0x38>
    51a4:	48 8b 05 05 c2 00 00 	mov    0xc205(%rip),%rax        # 113b0 <_ITM_registerTMCloneTable@Base>
    51ab:	48 85 c0             	test   %rax,%rax
    51ae:	74 08                	je     51b8 <register_tm_clones+0x38>
    51b0:	ff e0                	jmpq   *%rax
    51b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    51b8:	c3                   	retq   
    51b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000051c0 <__do_global_dtors_aux>:
    51c0:	f3 0f 1e fa          	endbr64 
    51c4:	80 3d 65 d3 00 00 00 	cmpb   $0x0,0xd365(%rip)        # 12530 <completed.8061>
    51cb:	75 2b                	jne    51f8 <__do_global_dtors_aux+0x38>
    51cd:	55                   	push   %rbp
    51ce:	48 83 3d e2 c1 00 00 	cmpq   $0x0,0xc1e2(%rip)        # 113b8 <__cxa_finalize@GLIBC_2.2.5>
    51d5:	00 
    51d6:	48 89 e5             	mov    %rsp,%rbp
    51d9:	74 0c                	je     51e7 <__do_global_dtors_aux+0x27>
    51db:	48 8b 3d ee d1 00 00 	mov    0xd1ee(%rip),%rdi        # 123d0 <__dso_handle>
    51e2:	e8 29 aa 00 00       	callq  fc10 <__cxa_finalize@plt>
    51e7:	e8 64 ff ff ff       	callq  5150 <deregister_tm_clones>
    51ec:	c6 05 3d d3 00 00 01 	movb   $0x1,0xd33d(%rip)        # 12530 <completed.8061>
    51f3:	5d                   	pop    %rbp
    51f4:	c3                   	retq   
    51f5:	0f 1f 00             	nopl   (%rax)
    51f8:	c3                   	retq   
    51f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000005200 <frame_dummy>:
    5200:	f3 0f 1e fa          	endbr64 
    5204:	e9 77 ff ff ff       	jmpq   5180 <register_tm_clones>
    5209:	cc                   	int3   
    520a:	cc                   	int3   
    520b:	cc                   	int3   
    520c:	cc                   	int3   
    520d:	cc                   	int3   
    520e:	cc                   	int3   
    520f:	cc                   	int3   

0000000000005210 <_Z5tdiffP7timevalS0_>:
    5210:	48 8b 06             	mov    (%rsi),%rax
    5213:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
    5217:	48 2b 07             	sub    (%rdi),%rax
    521a:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    521f:	48 2b 4f 08          	sub    0x8(%rdi),%rcx
    5223:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
    5228:	f2 0f 59 0d 28 c7 ff 	mulsd  -0x38d8(%rip),%xmm1        # 1958 <_IO_stdin_used+0x58>
    522f:	ff 
    5230:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    5234:	0f 57 c0             	xorps  %xmm0,%xmm0
    5237:	f2 0f 5a c1          	cvtsd2ss %xmm1,%xmm0
    523b:	c3                   	retq   
    523c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000005240 <_Z8getColorhhh>:
    5240:	55                   	push   %rbp
    5241:	41 56                	push   %r14
    5243:	53                   	push   %rbx
    5244:	89 d3                	mov    %edx,%ebx
    5246:	89 f5                	mov    %esi,%ebp
    5248:	41 89 fe             	mov    %edi,%r14d
    524b:	bf 03 00 00 00       	mov    $0x3,%edi
    5250:	e8 cb a9 00 00       	callq  fc20 <malloc@plt>
    5255:	44 88 30             	mov    %r14b,(%rax)
    5258:	40 88 68 01          	mov    %bpl,0x1(%rax)
    525c:	88 58 02             	mov    %bl,0x2(%rax)
    525f:	5b                   	pop    %rbx
    5260:	41 5e                	pop    %r14
    5262:	5d                   	pop    %rbp
    5263:	c3                   	retq   
    5264:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    526b:	00 00 00 00 00 

0000000000005270 <_Z3getiii>:
    5270:	48 8b 05 c9 d2 00 00 	mov    0xd2c9(%rip),%rax        # 12540 <DATA>
    5277:	0f af 35 5a d1 00 00 	imul   0xd15a(%rip),%esi        # 123d8 <W>
    527e:	01 fe                	add    %edi,%esi
    5280:	8d 0c 76             	lea    (%rsi,%rsi,2),%ecx
    5283:	01 d1                	add    %edx,%ecx
    5285:	48 63 c9             	movslq %ecx,%rcx
    5288:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
    528c:	c3                   	retq   
    528d:	0f 1f 00             	nopl   (%rax)

0000000000005290 <_Z6getPosii>:
    5290:	0f af 35 41 d1 00 00 	imul   0xd141(%rip),%esi        # 123d8 <W>
    5297:	01 fe                	add    %edi,%esi
    5299:	8d 04 76             	lea    (%rsi,%rsi,2),%eax
    529c:	48 98                	cltq   
    529e:	48 03 05 9b d2 00 00 	add    0xd29b(%rip),%rax        # 12540 <DATA>
    52a5:	c3                   	retq   
    52a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    52ad:	00 00 00 

00000000000052b0 <_Z3setiihhh>:
    52b0:	48 8b 05 89 d2 00 00 	mov    0xd289(%rip),%rax        # 12540 <DATA>
    52b7:	44 8b 0d 1a d1 00 00 	mov    0xd11a(%rip),%r9d        # 123d8 <W>
    52be:	44 0f af ce          	imul   %esi,%r9d
    52c2:	41 01 f9             	add    %edi,%r9d
    52c5:	4d 63 c9             	movslq %r9d,%r9
    52c8:	4f 8d 0c 49          	lea    (%r9,%r9,2),%r9
    52cc:	42 88 14 08          	mov    %dl,(%rax,%r9,1)
    52d0:	48 8b 05 69 d2 00 00 	mov    0xd269(%rip),%rax        # 12540 <DATA>
    52d7:	8b 15 fb d0 00 00    	mov    0xd0fb(%rip),%edx        # 123d8 <W>
    52dd:	0f af d6             	imul   %esi,%edx
    52e0:	01 fa                	add    %edi,%edx
    52e2:	48 63 d2             	movslq %edx,%rdx
    52e5:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
    52e9:	88 4c 10 01          	mov    %cl,0x1(%rax,%rdx,1)
    52ed:	48 8b 05 4c d2 00 00 	mov    0xd24c(%rip),%rax        # 12540 <DATA>
    52f4:	0f af 35 dd d0 00 00 	imul   0xd0dd(%rip),%esi        # 123d8 <W>
    52fb:	01 fe                	add    %edi,%esi
    52fd:	48 63 ce             	movslq %esi,%rcx
    5300:	48 8d 0c 49          	lea    (%rcx,%rcx,2),%rcx
    5304:	44 88 44 08 02       	mov    %r8b,0x2(%rax,%rcx,1)
    5309:	c3                   	retq   
    530a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000005310 <_Z7refreshP8Autonoma>:
    5310:	8b 0d c2 d0 00 00    	mov    0xd0c2(%rip),%ecx        # 123d8 <W>
    5316:	8b 05 c0 d0 00 00    	mov    0xd0c0(%rip),%eax        # 123dc <H>
    531c:	0f af c1             	imul   %ecx,%eax
    531f:	85 c0                	test   %eax,%eax
    5321:	0f 8e 7f 01 00 00    	jle    54a6 <_Z7refreshP8Autonoma+0x196>
    5327:	55                   	push   %rbp
    5328:	41 57                	push   %r15
    532a:	41 56                	push   %r14
    532c:	41 55                	push   %r13
    532e:	41 54                	push   %r12
    5330:	53                   	push   %rbx
    5331:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
    5338:	48 89 fb             	mov    %rdi,%rbx
    533b:	48 8d 47 48          	lea    0x48(%rdi),%rax
    533f:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    5344:	45 31 f6             	xor    %r14d,%r14d
    5347:	4c 8d a4 24 98 00 00 	lea    0x98(%rsp),%r12
    534e:	00 
    534f:	48 8d ac 24 b0 00 00 	lea    0xb0(%rsp),%rbp
    5356:	00 
    5357:	45 31 ed             	xor    %r13d,%r13d
    535a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5360:	44 89 e8             	mov    %r13d,%eax
    5363:	99                   	cltd   
    5364:	f7 f9                	idiv   %ecx
    5366:	0f 57 d2             	xorps  %xmm2,%xmm2
    5369:	f2 0f 2a d2          	cvtsi2sd %edx,%xmm2
    536d:	0f 57 c0             	xorps  %xmm0,%xmm0
    5370:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    5374:	f2 0f 5e d0          	divsd  %xmm0,%xmm2
    5378:	f2 0f 58 15 d0 c5 ff 	addsd  -0x3a30(%rip),%xmm2        # 1950 <_IO_stdin_used+0x50>
    537f:	ff 
    5380:	f2 0f 10 43 18       	movsd  0x18(%rbx),%xmm0
    5385:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    5389:	f2 0f 10 4b 20       	movsd  0x20(%rbx),%xmm1
    538e:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    5392:	f2 0f 59 53 28       	mulsd  0x28(%rbx),%xmm2
    5397:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    539c:	e8 bf 8b 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    53a1:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    53a6:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    53ab:	0f 10 44 24 50       	movups 0x50(%rsp),%xmm0
    53b0:	0f 11 04 24          	movups %xmm0,(%rsp)
    53b4:	4c 89 e7             	mov    %r12,%rdi
    53b7:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    53bc:	e8 8f 8e 00 00       	callq  e250 <_ZN6VectorplES_>
    53c1:	44 89 e8             	mov    %r13d,%eax
    53c4:	99                   	cltd   
    53c5:	f7 3d 0d d0 00 00    	idivl  0xd00d(%rip)        # 123d8 <W>
    53cb:	0f 57 c0             	xorps  %xmm0,%xmm0
    53ce:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    53d2:	0f 57 c9             	xorps  %xmm1,%xmm1
    53d5:	f2 0f 2a 0d ff cf 00 	cvtsi2sdl 0xcfff(%rip),%xmm1        # 123dc <H>
    53dc:	00 
    53dd:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    53e1:	f2 0f 10 15 87 c5 ff 	movsd  -0x3a79(%rip),%xmm2        # 1970 <_IO_stdin_used+0x70>
    53e8:	ff 
    53e9:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
    53ed:	f2 0f 10 43 30       	movsd  0x30(%rbx),%xmm0
    53f2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    53f6:	f2 0f 10 4b 38       	movsd  0x38(%rbx),%xmm1
    53fb:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    53ff:	f2 0f 59 53 40       	mulsd  0x40(%rbx),%xmm2
    5404:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    5409:	e8 52 8b 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    540e:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    5413:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    5418:	0f 10 44 24 38       	movups 0x38(%rsp),%xmm0
    541d:	0f 11 04 24          	movups %xmm0,(%rsp)
    5421:	48 89 ef             	mov    %rbp,%rdi
    5424:	4c 89 e6             	mov    %r12,%rsi
    5427:	e8 24 8e 00 00       	callq  e250 <_ZN6VectorplES_>
    542c:	4c 8b 3d 0d d1 00 00 	mov    0xd10d(%rip),%r15        # 12540 <DATA>
    5433:	4d 01 f7             	add    %r14,%r15
    5436:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
    543b:	48 89 de             	mov    %rbx,%rsi
    543e:	48 89 ea             	mov    %rbp,%rdx
    5441:	e8 da 95 00 00       	callq  ea20 <_ZN3RayC1ERK6VectorS2_>
    5446:	0f 10 44 24 68       	movups 0x68(%rsp),%xmm0
    544b:	0f 10 4c 24 78       	movups 0x78(%rsp),%xmm1
    5450:	0f 10 94 24 88 00 00 	movups 0x88(%rsp),%xmm2
    5457:	00 
    5458:	0f 11 54 24 20       	movups %xmm2,0x20(%rsp)
    545d:	0f 11 4c 24 10       	movups %xmm1,0x10(%rsp)
    5462:	0f 11 04 24          	movups %xmm0,(%rsp)
    5466:	4c 89 ff             	mov    %r15,%rdi
    5469:	48 89 de             	mov    %rbx,%rsi
    546c:	31 d2                	xor    %edx,%edx
    546e:	e8 7d 60 00 00       	callq  b4f0 <_Z9calcColorPhP8Autonoma3Rayj>
    5473:	49 ff c5             	inc    %r13
    5476:	48 63 05 5f cf 00 00 	movslq 0xcf5f(%rip),%rax        # 123dc <H>
    547d:	48 63 0d 54 cf 00 00 	movslq 0xcf54(%rip),%rcx        # 123d8 <W>
    5484:	48 0f af c1          	imul   %rcx,%rax
    5488:	49 83 c6 03          	add    $0x3,%r14
    548c:	49 39 c5             	cmp    %rax,%r13
    548f:	0f 8c cb fe ff ff    	jl     5360 <_Z7refreshP8Autonoma+0x50>
    5495:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
    549c:	5b                   	pop    %rbx
    549d:	41 5c                	pop    %r12
    549f:	41 5d                	pop    %r13
    54a1:	41 5e                	pop    %r14
    54a3:	41 5f                	pop    %r15
    54a5:	5d                   	pop    %rbp
    54a6:	c3                   	retq   
    54a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    54ae:	00 00 

00000000000054b0 <_Z9outputPPMP8_IO_FILE>:
    54b0:	53                   	push   %rbx
    54b1:	48 89 fb             	mov    %rdi,%rbx
    54b4:	8b 15 1e cf 00 00    	mov    0xcf1e(%rip),%edx        # 123d8 <W>
    54ba:	8b 0d 1c cf 00 00    	mov    0xcf1c(%rip),%ecx        # 123dc <H>
    54c0:	48 8d 35 d9 c9 ff ff 	lea    -0x3627(%rip),%rsi        # 1ea0 <_IO_stdin_used+0x5a0>
    54c7:	31 c0                	xor    %eax,%eax
    54c9:	e8 62 a7 00 00       	callq  fc30 <fprintf@plt>
    54ce:	48 8b 3d 6b d0 00 00 	mov    0xd06b(%rip),%rdi        # 12540 <DATA>
    54d5:	8b 05 fd ce 00 00    	mov    0xcefd(%rip),%eax        # 123d8 <W>
    54db:	0f af 05 fa ce 00 00 	imul   0xcefa(%rip),%eax        # 123dc <H>
    54e2:	8d 04 40             	lea    (%rax,%rax,2),%eax
    54e5:	48 63 d0             	movslq %eax,%rdx
    54e8:	be 01 00 00 00       	mov    $0x1,%esi
    54ed:	48 89 d9             	mov    %rbx,%rcx
    54f0:	5b                   	pop    %rbx
    54f1:	e9 4a a7 00 00       	jmpq   fc40 <fwrite@plt>
    54f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    54fd:	00 00 00 

0000000000005500 <_Z9outputPPMPc>:
    5500:	53                   	push   %rbx
    5501:	48 8d 35 1b ca ff ff 	lea    -0x35e5(%rip),%rsi        # 1f23 <_IO_stdin_used+0x623>
    5508:	e8 43 a7 00 00       	callq  fc50 <fopen@plt>
    550d:	48 89 c3             	mov    %rax,%rbx
    5510:	8b 15 c2 ce 00 00    	mov    0xcec2(%rip),%edx        # 123d8 <W>
    5516:	8b 0d c0 ce 00 00    	mov    0xcec0(%rip),%ecx        # 123dc <H>
    551c:	48 8d 35 7d c9 ff ff 	lea    -0x3683(%rip),%rsi        # 1ea0 <_IO_stdin_used+0x5a0>
    5523:	48 89 c7             	mov    %rax,%rdi
    5526:	31 c0                	xor    %eax,%eax
    5528:	e8 03 a7 00 00       	callq  fc30 <fprintf@plt>
    552d:	48 8b 3d 0c d0 00 00 	mov    0xd00c(%rip),%rdi        # 12540 <DATA>
    5534:	8b 05 9e ce 00 00    	mov    0xce9e(%rip),%eax        # 123d8 <W>
    553a:	0f af 05 9b ce 00 00 	imul   0xce9b(%rip),%eax        # 123dc <H>
    5541:	8d 04 40             	lea    (%rax,%rax,2),%eax
    5544:	48 63 d0             	movslq %eax,%rdx
    5547:	be 01 00 00 00       	mov    $0x1,%esi
    554c:	48 89 d9             	mov    %rbx,%rcx
    554f:	e8 ec a6 00 00       	callq  fc40 <fwrite@plt>
    5554:	48 89 df             	mov    %rbx,%rdi
    5557:	5b                   	pop    %rbx
    5558:	e9 03 a7 00 00       	jmpq   fc60 <fclose@plt>
    555d:	0f 1f 00             	nopl   (%rax)

0000000000005560 <_Z6outputPc>:
    5560:	53                   	push   %rbx
    5561:	48 81 ec d0 07 00 00 	sub    $0x7d0,%rsp
    5568:	48 89 f9             	mov    %rdi,%rcx
    556b:	48 8d 15 a5 c4 ff ff 	lea    -0x3b5b(%rip),%rdx        # 1a17 <_IO_stdin_used+0x117>
    5572:	48 89 e3             	mov    %rsp,%rbx
    5575:	be d0 07 00 00       	mov    $0x7d0,%esi
    557a:	48 89 df             	mov    %rbx,%rdi
    557d:	31 c0                	xor    %eax,%eax
    557f:	e8 ec a6 00 00       	callq  fc70 <snprintf@plt>
    5584:	48 89 df             	mov    %rbx,%rdi
    5587:	e8 f4 a6 00 00       	callq  fc80 <puts@plt>
    558c:	48 8d 35 90 c9 ff ff 	lea    -0x3670(%rip),%rsi        # 1f23 <_IO_stdin_used+0x623>
    5593:	48 89 df             	mov    %rbx,%rdi
    5596:	e8 f5 a6 00 00       	callq  fc90 <popen@plt>
    559b:	48 89 c3             	mov    %rax,%rbx
    559e:	8b 15 34 ce 00 00    	mov    0xce34(%rip),%edx        # 123d8 <W>
    55a4:	8b 0d 32 ce 00 00    	mov    0xce32(%rip),%ecx        # 123dc <H>
    55aa:	48 8d 35 ef c8 ff ff 	lea    -0x3711(%rip),%rsi        # 1ea0 <_IO_stdin_used+0x5a0>
    55b1:	48 89 c7             	mov    %rax,%rdi
    55b4:	31 c0                	xor    %eax,%eax
    55b6:	e8 75 a6 00 00       	callq  fc30 <fprintf@plt>
    55bb:	48 8b 3d 7e cf 00 00 	mov    0xcf7e(%rip),%rdi        # 12540 <DATA>
    55c2:	8b 05 10 ce 00 00    	mov    0xce10(%rip),%eax        # 123d8 <W>
    55c8:	0f af 05 0d ce 00 00 	imul   0xce0d(%rip),%eax        # 123dc <H>
    55cf:	8d 04 40             	lea    (%rax,%rax,2),%eax
    55d2:	48 63 d0             	movslq %eax,%rdx
    55d5:	be 01 00 00 00       	mov    $0x1,%esi
    55da:	48 89 d9             	mov    %rbx,%rcx
    55dd:	e8 5e a6 00 00       	callq  fc40 <fwrite@plt>
    55e2:	48 89 df             	mov    %rbx,%rdi
    55e5:	48 81 c4 d0 07 00 00 	add    $0x7d0,%rsp
    55ec:	5b                   	pop    %rbx
    55ed:	e9 ae a6 00 00       	jmpq   fca0 <pclose@plt>
    55f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    55f9:	1f 84 00 00 00 00 00 

0000000000005600 <_Z5streqPKcS0_>:
    5600:	50                   	push   %rax
    5601:	e8 aa a6 00 00       	callq  fcb0 <strcmp@plt>
    5606:	31 c9                	xor    %ecx,%ecx
    5608:	85 c0                	test   %eax,%eax
    560a:	0f 94 c1             	sete   %cl
    560d:	89 c8                	mov    %ecx,%eax
    560f:	59                   	pop    %rcx
    5610:	c3                   	retq   
    5611:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    5618:	0f 1f 84 00 00 00 00 
    561f:	00 

0000000000005620 <_Z12parseTextureP8_IO_FILEb>:
    5620:	55                   	push   %rbp
    5621:	41 57                	push   %r15
    5623:	41 56                	push   %r14
    5625:	41 55                	push   %r13
    5627:	41 54                	push   %r12
    5629:	53                   	push   %rbx
    562a:	48 81 ec e8 04 00 00 	sub    $0x4e8,%rsp
    5631:	41 89 f4             	mov    %esi,%r12d
    5634:	48 89 fb             	mov    %rdi,%rbx
    5637:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
    563e:	00 
    563f:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    5646:	00 
    5647:	48 c7 04 24 e8 03 00 	movq   $0x3e8,(%rsp)
    564e:	00 
    564f:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
    5656:	00 
    5657:	48 89 e6             	mov    %rsp,%rsi
    565a:	ba 0a 00 00 00       	mov    $0xa,%edx
    565f:	48 89 d9             	mov    %rbx,%rcx
    5662:	e8 59 a6 00 00       	callq  fcc0 <__getdelim@plt>
    5667:	83 f8 ff             	cmp    $0xffffffff,%eax
    566a:	74 50                	je     56bc <_Z12parseTextureP8_IO_FILEb+0x9c>
    566c:	48 bd 01 04 00 00 08 	movabs $0x800000401,%rbp
    5673:	00 00 00 
    5676:	4c 8d bc 24 90 00 00 	lea    0x90(%rsp),%r15
    567d:	00 
    567e:	49 89 e6             	mov    %rsp,%r14
    5681:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    5688:	0f 1f 84 00 00 00 00 
    568f:	00 
    5690:	0f b6 84 24 00 01 00 	movzbl 0x100(%rsp),%eax
    5697:	00 
    5698:	48 83 f8 23          	cmp    $0x23,%rax
    569c:	77 34                	ja     56d2 <_Z12parseTextureP8_IO_FILEb+0xb2>
    569e:	48 0f a3 c5          	bt     %rax,%rbp
    56a2:	73 2e                	jae    56d2 <_Z12parseTextureP8_IO_FILEb+0xb2>
    56a4:	4c 89 ff             	mov    %r15,%rdi
    56a7:	4c 89 f6             	mov    %r14,%rsi
    56aa:	ba 0a 00 00 00       	mov    $0xa,%edx
    56af:	48 89 d9             	mov    %rbx,%rcx
    56b2:	e8 09 a6 00 00       	callq  fcc0 <__getdelim@plt>
    56b7:	83 f8 ff             	cmp    $0xffffffff,%eax
    56ba:	75 d4                	jne    5690 <_Z12parseTextureP8_IO_FILEb+0x70>
    56bc:	48 8d 3d 8b c3 ff ff 	lea    -0x3c75(%rip),%rdi        # 1a4e <_IO_stdin_used+0x14e>
    56c3:	e8 b8 a5 00 00       	callq  fc80 <puts@plt>
    56c8:	bf 01 00 00 00       	mov    $0x1,%edi
    56cd:	e8 fe a5 00 00       	callq  fcd0 <exit@plt>
    56d2:	48 8d 35 0f c4 ff ff 	lea    -0x3bf1(%rip),%rsi        # 1ae8 <_IO_stdin_used+0x1e8>
    56d9:	4c 8d bc 24 00 01 00 	lea    0x100(%rsp),%r15
    56e0:	00 
    56e1:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    56e6:	4c 89 ff             	mov    %r15,%rdi
    56e9:	31 c0                	xor    %eax,%eax
    56eb:	e8 f0 a5 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    56f0:	b8 6e 75 6c 6c       	mov    $0x6c6c756e,%eax
    56f5:	33 44 24 40          	xor    0x40(%rsp),%eax
    56f9:	0f b6 4c 24 44       	movzbl 0x44(%rsp),%ecx
    56fe:	09 c1                	or     %eax,%ecx
    5700:	0f 84 04 01 00 00    	je     580a <_Z12parseTextureP8_IO_FILEb+0x1ea>
    5706:	b8 63 6f 6c 6f       	mov    $0x6f6c6f63,%eax
    570b:	33 44 24 40          	xor    0x40(%rsp),%eax
    570f:	0f b7 4c 24 44       	movzwl 0x44(%rsp),%ecx
    5714:	83 f1 72             	xor    $0x72,%ecx
    5717:	09 c1                	or     %eax,%ecx
    5719:	0f 84 fc 00 00 00    	je     581b <_Z12parseTextureP8_IO_FILEb+0x1fb>
    571f:	b8 69 6d 61 67       	mov    $0x67616d69,%eax
    5724:	33 44 24 40          	xor    0x40(%rsp),%eax
    5728:	0f b7 4c 24 44       	movzwl 0x44(%rsp),%ecx
    572d:	83 f1 65             	xor    $0x65,%ecx
    5730:	09 c1                	or     %eax,%ecx
    5732:	0f 84 62 03 00 00    	je     5a9a <_Z12parseTextureP8_IO_FILEb+0x47a>
    5738:	48 b8 6d 61 73 6b 65 	movabs $0x6d6964656b73616d,%rax
    573f:	64 69 6d 
    5742:	48 33 44 24 40       	xor    0x40(%rsp),%rax
    5747:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    574b:	48 81 f1 61 67 65 00 	xor    $0x656761,%rcx
    5752:	48 09 c1             	or     %rax,%rcx
    5755:	0f 84 f5 03 00 00    	je     5b50 <_Z12parseTextureP8_IO_FILEb+0x530>
    575b:	48 b8 69 6e 6c 69 6e 	movabs $0x6d69656e696c6e69,%rax
    5762:	65 69 6d 
    5765:	48 33 44 24 40       	xor    0x40(%rsp),%rax
    576a:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
    576e:	48 81 f1 61 67 65 00 	xor    $0x656761,%rcx
    5775:	48 09 c1             	or     %rax,%rcx
    5778:	0f 85 c6 04 00 00    	jne    5c44 <_Z12parseTextureP8_IO_FILEb+0x624>
    577e:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
    5783:	48 c7 44 24 18 e8 03 	movq   $0x3e8,0x18(%rsp)
    578a:	00 00 
    578c:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    5791:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    5796:	ba 0a 00 00 00       	mov    $0xa,%edx
    579b:	48 89 d9             	mov    %rbx,%rcx
    579e:	e8 1d a5 00 00       	callq  fcc0 <__getdelim@plt>
    57a3:	83 f8 ff             	cmp    $0xffffffff,%eax
    57a6:	74 4c                	je     57f4 <_Z12parseTextureP8_IO_FILEb+0x1d4>
    57a8:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
    57ad:	4c 8d 7c 24 18       	lea    0x18(%rsp),%r15
    57b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    57b9:	1f 84 00 00 00 00 00 
    57c0:	0f b6 84 24 00 01 00 	movzbl 0x100(%rsp),%eax
    57c7:	00 
    57c8:	48 83 f8 23          	cmp    $0x23,%rax
    57cc:	0f 87 37 01 00 00    	ja     5909 <_Z12parseTextureP8_IO_FILEb+0x2e9>
    57d2:	48 0f a3 c5          	bt     %rax,%rbp
    57d6:	0f 83 2d 01 00 00    	jae    5909 <_Z12parseTextureP8_IO_FILEb+0x2e9>
    57dc:	4c 89 f7             	mov    %r14,%rdi
    57df:	4c 89 fe             	mov    %r15,%rsi
    57e2:	ba 0a 00 00 00       	mov    $0xa,%edx
    57e7:	48 89 d9             	mov    %rbx,%rcx
    57ea:	e8 d1 a4 00 00       	callq  fcc0 <__getdelim@plt>
    57ef:	83 f8 ff             	cmp    $0xffffffff,%eax
    57f2:	75 cc                	jne    57c0 <_Z12parseTextureP8_IO_FILEb+0x1a0>
    57f4:	48 8d 3d ff c8 ff ff 	lea    -0x3701(%rip),%rdi        # 20fa <_IO_stdin_used+0x7fa>
    57fb:	e8 80 a4 00 00       	callq  fc80 <puts@plt>
    5800:	bf 01 00 00 00       	mov    $0x1,%edi
    5805:	e8 c6 a4 00 00       	callq  fcd0 <exit@plt>
    580a:	45 84 e4             	test   %r12b,%r12b
    580d:	0f 84 1b 04 00 00    	je     5c2e <_Z12parseTextureP8_IO_FILEb+0x60e>
    5813:	45 31 f6             	xor    %r14d,%r14d
    5816:	e9 e8 03 00 00       	jmpq   5c03 <_Z12parseTextureP8_IO_FILEb+0x5e3>
    581b:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
    5820:	48 c7 44 24 18 e8 03 	movq   $0x3e8,0x18(%rsp)
    5827:	00 00 
    5829:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    582e:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    5833:	ba 0a 00 00 00       	mov    $0xa,%edx
    5838:	48 89 d9             	mov    %rbx,%rcx
    583b:	e8 80 a4 00 00       	callq  fcc0 <__getdelim@plt>
    5840:	83 f8 ff             	cmp    $0xffffffff,%eax
    5843:	74 37                	je     587c <_Z12parseTextureP8_IO_FILEb+0x25c>
    5845:	4c 8d 7c 24 20       	lea    0x20(%rsp),%r15
    584a:	4c 8d 64 24 18       	lea    0x18(%rsp),%r12
    584f:	90                   	nop
    5850:	0f b6 84 24 00 01 00 	movzbl 0x100(%rsp),%eax
    5857:	00 
    5858:	48 83 f8 23          	cmp    $0x23,%rax
    585c:	77 34                	ja     5892 <_Z12parseTextureP8_IO_FILEb+0x272>
    585e:	48 0f a3 c5          	bt     %rax,%rbp
    5862:	73 2e                	jae    5892 <_Z12parseTextureP8_IO_FILEb+0x272>
    5864:	4c 89 ff             	mov    %r15,%rdi
    5867:	4c 89 e6             	mov    %r12,%rsi
    586a:	ba 0a 00 00 00       	mov    $0xa,%edx
    586f:	48 89 d9             	mov    %rbx,%rcx
    5872:	e8 49 a4 00 00       	callq  fcc0 <__getdelim@plt>
    5877:	83 f8 ff             	cmp    $0xffffffff,%eax
    587a:	75 d4                	jne    5850 <_Z12parseTextureP8_IO_FILEb+0x230>
    587c:	48 8d 3d e1 c5 ff ff 	lea    -0x3a1f(%rip),%rdi        # 1e64 <_IO_stdin_used+0x564>
    5883:	e8 f8 a3 00 00       	callq  fc80 <puts@plt>
    5888:	bf 01 00 00 00       	mov    $0x1,%edi
    588d:	e8 3e a4 00 00       	callq  fcd0 <exit@plt>
    5892:	4c 8d 54 24 10       	lea    0x10(%rsp),%r10
    5897:	48 8d 35 87 c6 ff ff 	lea    -0x3979(%rip),%rsi        # 1f25 <_IO_stdin_used+0x625>
    589e:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    58a5:	00 
    58a6:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    58ab:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    58b0:	4c 8d 44 24 2c       	lea    0x2c(%rsp),%r8
    58b5:	4c 8d 8c 24 90 00 00 	lea    0x90(%rsp),%r9
    58bc:	00 
    58bd:	31 c0                	xor    %eax,%eax
    58bf:	41 52                	push   %r10
    58c1:	41 56                	push   %r14
    58c3:	e8 18 a4 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    58c8:	48 83 c4 10          	add    $0x10,%rsp
    58cc:	bf 28 00 00 00       	mov    $0x28,%edi
    58d1:	e8 1a a4 00 00       	callq  fcf0 <_Znwm@plt>
    58d6:	49 89 c6             	mov    %rax,%r14
    58d9:	0f b6 74 24 0c       	movzbl 0xc(%rsp),%esi
    58de:	0f b6 54 24 08       	movzbl 0x8(%rsp),%edx
    58e3:	0f b6 4c 24 2c       	movzbl 0x2c(%rsp),%ecx
    58e8:	f2 0f 10 84 24 90 00 	movsd  0x90(%rsp),%xmm0
    58ef:	00 00 
    58f1:	f2 0f 10 0c 24       	movsd  (%rsp),%xmm1
    58f6:	f2 0f 10 54 24 10    	movsd  0x10(%rsp),%xmm2
    58fc:	48 89 c7             	mov    %rax,%rdi
    58ff:	e8 5c 92 00 00       	callq  eb60 <_ZN12ColorTextureC1Ehhhddd>
    5904:	e9 fa 02 00 00       	jmpq   5c03 <_Z12parseTextureP8_IO_FILEb+0x5e3>
    5909:	48 83 ec 08          	sub    $0x8,%rsp
    590d:	4c 8d 54 24 18       	lea    0x18(%rsp),%r10
    5912:	48 8d 35 fb c9 ff ff 	lea    -0x3605(%rip),%rsi        # 2314 <_IO_stdin_used+0xa14>
    5919:	48 8d bc 24 08 01 00 	lea    0x108(%rsp),%rdi
    5920:	00 
    5921:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx
    5926:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    592b:	4c 8d 84 24 98 00 00 	lea    0x98(%rsp),%r8
    5932:	00 
    5933:	4c 8d 4c 24 08       	lea    0x8(%rsp),%r9
    5938:	31 c0                	xor    %eax,%eax
    593a:	41 52                	push   %r10
    593c:	e8 9f a3 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    5941:	48 83 c4 10          	add    $0x10,%rsp
    5945:	bf 30 00 00 00       	mov    $0x30,%edi
    594a:	e8 a1 a3 00 00       	callq  fcf0 <_Znwm@plt>
    594f:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    5953:	8b 54 24 08          	mov    0x8(%rsp),%edx
    5957:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    595c:	48 89 c7             	mov    %rax,%rdi
    595f:	e8 9c 99 00 00       	callq  f300 <_ZN12ImageTextureC1Ejj>
    5964:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    5968:	85 c9                	test   %ecx,%ecx
    596a:	4c 8d bc 24 00 01 00 	lea    0x100(%rsp),%r15
    5971:	00 
    5972:	0f 8e f2 00 00 00    	jle    5a6a <_Z12parseTextureP8_IO_FILEb+0x44a>
    5978:	8b 44 24 08          	mov    0x8(%rsp),%eax
    597c:	85 c0                	test   %eax,%eax
    597e:	0f 8e e6 00 00 00    	jle    5a6a <_Z12parseTextureP8_IO_FILEb+0x44a>
    5984:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
    5989:	4c 8d 6c 24 18       	lea    0x18(%rsp),%r13
    598e:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%rsp)
    5995:	00 
    5996:	eb 1e                	jmp    59b6 <_Z12parseTextureP8_IO_FILEb+0x396>
    5998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    599f:	00 
    59a0:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    59a4:	8b 54 24 28          	mov    0x28(%rsp),%edx
    59a8:	ff c2                	inc    %edx
    59aa:	89 54 24 28          	mov    %edx,0x28(%rsp)
    59ae:	39 ca                	cmp    %ecx,%edx
    59b0:	0f 8d b4 00 00 00    	jge    5a6a <_Z12parseTextureP8_IO_FILEb+0x44a>
    59b6:	85 c0                	test   %eax,%eax
    59b8:	7e ea                	jle    59a4 <_Z12parseTextureP8_IO_FILEb+0x384>
    59ba:	45 31 f6             	xor    %r14d,%r14d
    59bd:	eb 57                	jmp    5a16 <_Z12parseTextureP8_IO_FILEb+0x3f6>
    59bf:	90                   	nop
    59c0:	4c 8d bc 24 00 01 00 	lea    0x100(%rsp),%r15
    59c7:	00 
    59c8:	4c 89 ff             	mov    %r15,%rdi
    59cb:	48 8d 35 ca cb ff ff 	lea    -0x3436(%rip),%rsi        # 259c <_IO_stdin_used+0xc9c>
    59d2:	48 8d 54 24 2c       	lea    0x2c(%rsp),%rdx
    59d7:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    59dc:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
    59e1:	31 c0                	xor    %eax,%eax
    59e3:	e8 f8 a2 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    59e8:	0f b6 4c 24 2c       	movzbl 0x2c(%rsp),%ecx
    59ed:	44 0f b6 44 24 3c    	movzbl 0x3c(%rsp),%r8d
    59f3:	44 0f b6 4c 24 38    	movzbl 0x38(%rsp),%r9d
    59f9:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    59fe:	8b 74 24 28          	mov    0x28(%rsp),%esi
    5a02:	44 89 f2             	mov    %r14d,%edx
    5a05:	e8 c6 98 00 00       	callq  f2d0 <_ZN12ImageTexture8setColorEjjhhh>
    5a0a:	41 ff c6             	inc    %r14d
    5a0d:	8b 44 24 08          	mov    0x8(%rsp),%eax
    5a11:	41 39 c6             	cmp    %eax,%r14d
    5a14:	7d 8a                	jge    59a0 <_Z12parseTextureP8_IO_FILEb+0x380>
    5a16:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
    5a1b:	48 c7 44 24 18 e8 03 	movq   $0x3e8,0x18(%rsp)
    5a22:	00 00 
    5a24:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    5a2b:	00 00 00 00 00 
    5a30:	4c 89 e7             	mov    %r12,%rdi
    5a33:	4c 89 ee             	mov    %r13,%rsi
    5a36:	ba 0a 00 00 00       	mov    $0xa,%edx
    5a3b:	48 89 d9             	mov    %rbx,%rcx
    5a3e:	e8 7d a2 00 00       	callq  fcc0 <__getdelim@plt>
    5a43:	83 f8 ff             	cmp    $0xffffffff,%eax
    5a46:	0f 84 cc 01 00 00    	je     5c18 <_Z12parseTextureP8_IO_FILEb+0x5f8>
    5a4c:	0f b6 84 24 00 01 00 	movzbl 0x100(%rsp),%eax
    5a53:	00 
    5a54:	48 83 f8 23          	cmp    $0x23,%rax
    5a58:	0f 87 62 ff ff ff    	ja     59c0 <_Z12parseTextureP8_IO_FILEb+0x3a0>
    5a5e:	48 0f a3 c5          	bt     %rax,%rbp
    5a62:	0f 83 58 ff ff ff    	jae    59c0 <_Z12parseTextureP8_IO_FILEb+0x3a0>
    5a68:	eb c6                	jmp    5a30 <_Z12parseTextureP8_IO_FILEb+0x410>
    5a6a:	f2 0f 10 84 24 90 00 	movsd  0x90(%rsp),%xmm0
    5a71:	00 00 
    5a73:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
    5a78:	f2 41 0f 11 46 08    	movsd  %xmm0,0x8(%r14)
    5a7e:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    5a83:	f2 41 0f 11 46 10    	movsd  %xmm0,0x10(%r14)
    5a89:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    5a8f:	f2 41 0f 11 46 18    	movsd  %xmm0,0x18(%r14)
    5a95:	e9 69 01 00 00       	jmpq   5c03 <_Z12parseTextureP8_IO_FILEb+0x5e3>
    5a9a:	4c 89 3c 24          	mov    %r15,(%rsp)
    5a9e:	48 c7 44 24 10 e8 03 	movq   $0x3e8,0x10(%rsp)
    5aa5:	00 00 
    5aa7:	48 89 e7             	mov    %rsp,%rdi
    5aaa:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    5aaf:	ba 0a 00 00 00       	mov    $0xa,%edx
    5ab4:	48 89 d9             	mov    %rbx,%rcx
    5ab7:	e8 04 a2 00 00       	callq  fcc0 <__getdelim@plt>
    5abc:	83 f8 ff             	cmp    $0xffffffff,%eax
    5abf:	74 3b                	je     5afc <_Z12parseTextureP8_IO_FILEb+0x4dc>
    5ac1:	49 89 e6             	mov    %rsp,%r14
    5ac4:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
    5ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5ad0:	0f b6 84 24 00 01 00 	movzbl 0x100(%rsp),%eax
    5ad7:	00 
    5ad8:	48 83 f8 23          	cmp    $0x23,%rax
    5adc:	77 34                	ja     5b12 <_Z12parseTextureP8_IO_FILEb+0x4f2>
    5ade:	48 0f a3 c5          	bt     %rax,%rbp
    5ae2:	73 2e                	jae    5b12 <_Z12parseTextureP8_IO_FILEb+0x4f2>
    5ae4:	4c 89 f7             	mov    %r14,%rdi
    5ae7:	4c 89 fe             	mov    %r15,%rsi
    5aea:	ba 0a 00 00 00       	mov    $0xa,%edx
    5aef:	48 89 d9             	mov    %rbx,%rcx
    5af2:	e8 c9 a1 00 00       	callq  fcc0 <__getdelim@plt>
    5af7:	83 f8 ff             	cmp    $0xffffffff,%eax
    5afa:	75 d4                	jne    5ad0 <_Z12parseTextureP8_IO_FILEb+0x4b0>
    5afc:	48 8d 3d 07 c2 ff ff 	lea    -0x3df9(%rip),%rdi        # 1d0a <_IO_stdin_used+0x40a>
    5b03:	e8 78 a1 00 00       	callq  fc80 <puts@plt>
    5b08:	bf 01 00 00 00       	mov    $0x1,%edi
    5b0d:	e8 be a1 00 00       	callq  fcd0 <exit@plt>
    5b12:	48 8d 35 36 ca ff ff 	lea    -0x35ca(%rip),%rsi        # 254f <_IO_stdin_used+0xc4f>
    5b19:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    5b20:	00 
    5b21:	48 8d 9c 24 90 00 00 	lea    0x90(%rsp),%rbx
    5b28:	00 
    5b29:	48 89 da             	mov    %rbx,%rdx
    5b2c:	31 c0                	xor    %eax,%eax
    5b2e:	e8 ad a1 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    5b33:	bf 30 00 00 00       	mov    $0x30,%edi
    5b38:	e8 b3 a1 00 00       	callq  fcf0 <_Znwm@plt>
    5b3d:	49 89 c6             	mov    %rax,%r14
    5b40:	48 89 c7             	mov    %rax,%rdi
    5b43:	48 89 de             	mov    %rbx,%rsi
    5b46:	e8 35 9d 00 00       	callq  f880 <_ZN12ImageTextureC1EPKc>
    5b4b:	e9 b3 00 00 00       	jmpq   5c03 <_Z12parseTextureP8_IO_FILEb+0x5e3>
    5b50:	4c 89 3c 24          	mov    %r15,(%rsp)
    5b54:	48 c7 44 24 10 e8 03 	movq   $0x3e8,0x10(%rsp)
    5b5b:	00 00 
    5b5d:	48 89 e7             	mov    %rsp,%rdi
    5b60:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    5b65:	ba 0a 00 00 00       	mov    $0xa,%edx
    5b6a:	48 89 d9             	mov    %rbx,%rcx
    5b6d:	e8 4e a1 00 00       	callq  fcc0 <__getdelim@plt>
    5b72:	83 f8 ff             	cmp    $0xffffffff,%eax
    5b75:	74 35                	je     5bac <_Z12parseTextureP8_IO_FILEb+0x58c>
    5b77:	49 89 e6             	mov    %rsp,%r14
    5b7a:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
    5b7f:	90                   	nop
    5b80:	0f b6 84 24 00 01 00 	movzbl 0x100(%rsp),%eax
    5b87:	00 
    5b88:	48 83 f8 23          	cmp    $0x23,%rax
    5b8c:	77 34                	ja     5bc2 <_Z12parseTextureP8_IO_FILEb+0x5a2>
    5b8e:	48 0f a3 c5          	bt     %rax,%rbp
    5b92:	73 2e                	jae    5bc2 <_Z12parseTextureP8_IO_FILEb+0x5a2>
    5b94:	4c 89 f7             	mov    %r14,%rdi
    5b97:	4c 89 fe             	mov    %r15,%rsi
    5b9a:	ba 0a 00 00 00       	mov    $0xa,%edx
    5b9f:	48 89 d9             	mov    %rbx,%rcx
    5ba2:	e8 19 a1 00 00       	callq  fcc0 <__getdelim@plt>
    5ba7:	83 f8 ff             	cmp    $0xffffffff,%eax
    5baa:	75 d4                	jne    5b80 <_Z12parseTextureP8_IO_FILEb+0x560>
    5bac:	48 8d 3d 57 c1 ff ff 	lea    -0x3ea9(%rip),%rdi        # 1d0a <_IO_stdin_used+0x40a>
    5bb3:	e8 c8 a0 00 00       	callq  fc80 <puts@plt>
    5bb8:	bf 01 00 00 00       	mov    $0x1,%edi
    5bbd:	e8 0e a1 00 00       	callq  fcd0 <exit@plt>
    5bc2:	48 8d 35 86 c9 ff ff 	lea    -0x367a(%rip),%rsi        # 254f <_IO_stdin_used+0xc4f>
    5bc9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    5bd0:	00 
    5bd1:	48 8d 9c 24 90 00 00 	lea    0x90(%rsp),%rbx
    5bd8:	00 
    5bd9:	48 89 da             	mov    %rbx,%rdx
    5bdc:	31 c0                	xor    %eax,%eax
    5bde:	e8 fd a0 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    5be3:	bf 30 00 00 00       	mov    $0x30,%edi
    5be8:	e8 03 a1 00 00       	callq  fcf0 <_Znwm@plt>
    5bed:	49 89 c6             	mov    %rax,%r14
    5bf0:	48 89 c7             	mov    %rax,%rdi
    5bf3:	48 89 de             	mov    %rbx,%rsi
    5bf6:	e8 85 9c 00 00       	callq  f880 <_ZN12ImageTextureC1EPKc>
    5bfb:	4c 89 f7             	mov    %r14,%rdi
    5bfe:	e8 ad 90 00 00       	callq  ecb0 <_ZN12ImageTexture14maskImageAlphaEv>
    5c03:	4c 89 f0             	mov    %r14,%rax
    5c06:	48 81 c4 e8 04 00 00 	add    $0x4e8,%rsp
    5c0d:	5b                   	pop    %rbx
    5c0e:	41 5c                	pop    %r12
    5c10:	41 5d                	pop    %r13
    5c12:	41 5e                	pop    %r14
    5c14:	41 5f                	pop    %r15
    5c16:	5d                   	pop    %rbp
    5c17:	c3                   	retq   
    5c18:	48 8d 3d 2a c2 ff ff 	lea    -0x3dd6(%rip),%rdi        # 1e49 <_IO_stdin_used+0x549>
    5c1f:	e8 5c a0 00 00       	callq  fc80 <puts@plt>
    5c24:	bf 01 00 00 00       	mov    $0x1,%edi
    5c29:	e8 a2 a0 00 00       	callq  fcd0 <exit@plt>
    5c2e:	48 8d 3d 4f c8 ff ff 	lea    -0x37b1(%rip),%rdi        # 2484 <_IO_stdin_used+0xb84>
    5c35:	e8 46 a0 00 00       	callq  fc80 <puts@plt>
    5c3a:	bf 01 00 00 00       	mov    $0x1,%edi
    5c3f:	e8 8c a0 00 00       	callq  fcd0 <exit@plt>
    5c44:	48 8d 3d a7 c3 ff ff 	lea    -0x3c59(%rip),%rdi        # 1ff2 <_IO_stdin_used+0x6f2>
    5c4b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    5c50:	31 c0                	xor    %eax,%eax
    5c52:	e8 a9 a0 00 00       	callq  fd00 <printf@plt>
    5c57:	bf 01 00 00 00       	mov    $0x1,%edi
    5c5c:	e8 6f a0 00 00       	callq  fcd0 <exit@plt>
    5c61:	eb 17                	jmp    5c7a <_Z12parseTextureP8_IO_FILEb+0x65a>
    5c63:	eb 15                	jmp    5c7a <_Z12parseTextureP8_IO_FILEb+0x65a>
    5c65:	48 89 c3             	mov    %rax,%rbx
    5c68:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    5c6d:	e8 9e a0 00 00       	callq  fd10 <_ZdlPv@plt>
    5c72:	48 89 df             	mov    %rbx,%rdi
    5c75:	e8 a6 a0 00 00       	callq  fd20 <_Unwind_Resume@plt>
    5c7a:	48 89 c3             	mov    %rax,%rbx
    5c7d:	4c 89 f7             	mov    %r14,%rdi
    5c80:	e8 8b a0 00 00       	callq  fd10 <_ZdlPv@plt>
    5c85:	48 89 df             	mov    %rbx,%rdi
    5c88:	e8 93 a0 00 00       	callq  fd20 <_Unwind_Resume@plt>
    5c8d:	0f 1f 00             	nopl   (%rax)

0000000000005c90 <_Z10getVectorsP8_IO_FILEi>:
    5c90:	55                   	push   %rbp
    5c91:	41 57                	push   %r15
    5c93:	41 56                	push   %r14
    5c95:	41 55                	push   %r13
    5c97:	41 54                	push   %r12
    5c99:	53                   	push   %rbx
    5c9a:	48 83 ec 18          	sub    $0x18,%rsp
    5c9e:	89 f5                	mov    %esi,%ebp
    5ca0:	48 89 fb             	mov    %rdi,%rbx
    5ca3:	4c 63 fe             	movslq %esi,%r15
    5ca6:	4a 8d 04 fd 00 00 00 	lea    0x0(,%r15,8),%rax
    5cad:	00 
    5cae:	48 8d 3c 40          	lea    (%rax,%rax,2),%rdi
    5cb2:	e8 69 9f 00 00       	callq  fc20 <malloc@plt>
    5cb7:	49 89 c6             	mov    %rax,%r14
    5cba:	45 85 ff             	test   %r15d,%r15d
    5cbd:	7e 73                	jle    5d32 <_Z10getVectorsP8_IO_FILEi+0xa2>
    5cbf:	89 e8                	mov    %ebp,%eax
    5cc1:	48 c1 e0 03          	shl    $0x3,%rax
    5cc5:	4c 8d 3c 40          	lea    (%rax,%rax,2),%r15
    5cc9:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    5cce:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
    5cd3:	45 31 e4             	xor    %r12d,%r12d
    5cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5cdd:	00 00 00 
    5ce0:	48 89 df             	mov    %rbx,%rdi
    5ce3:	48 8d 35 bb c5 ff ff 	lea    -0x3a45(%rip),%rsi        # 22a5 <_IO_stdin_used+0x9a5>
    5cea:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx
    5cef:	4c 89 e9             	mov    %r13,%rcx
    5cf2:	49 89 e8             	mov    %rbp,%r8
    5cf5:	31 c0                	xor    %eax,%eax
    5cf7:	e8 34 a0 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    5cfc:	83 f8 ff             	cmp    $0xffffffff,%eax
    5cff:	74 43                	je     5d44 <_Z10getVectorsP8_IO_FILEi+0xb4>
    5d01:	f3 0f 10 44 24 10    	movss  0x10(%rsp),%xmm0
    5d07:	f3 0f 10 4c 24 14    	movss  0x14(%rsp),%xmm1
    5d0d:	0f 14 c8             	unpcklps %xmm0,%xmm1
    5d10:	0f 5a c1             	cvtps2pd %xmm1,%xmm0
    5d13:	43 0f 11 04 26       	movups %xmm0,(%r14,%r12,1)
    5d18:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
    5d1e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    5d22:	f2 43 0f 11 44 26 10 	movsd  %xmm0,0x10(%r14,%r12,1)
    5d29:	49 83 c4 18          	add    $0x18,%r12
    5d2d:	4d 39 e7             	cmp    %r12,%r15
    5d30:	75 ae                	jne    5ce0 <_Z10getVectorsP8_IO_FILEi+0x50>
    5d32:	4c 89 f0             	mov    %r14,%rax
    5d35:	48 83 c4 18          	add    $0x18,%rsp
    5d39:	5b                   	pop    %rbx
    5d3a:	41 5c                	pop    %r12
    5d3c:	41 5d                	pop    %r13
    5d3e:	41 5e                	pop    %r14
    5d40:	41 5f                	pop    %r15
    5d42:	5d                   	pop    %rbp
    5d43:	c3                   	retq   
    5d44:	48 8d 3d 1e c5 ff ff 	lea    -0x3ae2(%rip),%rdi        # 2269 <_IO_stdin_used+0x969>
    5d4b:	e8 30 9f 00 00       	callq  fc80 <puts@plt>
    5d50:	bf 01 00 00 00       	mov    $0x1,%edi
    5d55:	e8 76 9f 00 00       	callq  fcd0 <exit@plt>
    5d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000005d60 <_Z12getTrianglesP8_IO_FILEi>:
    5d60:	55                   	push   %rbp
    5d61:	41 57                	push   %r15
    5d63:	41 56                	push   %r14
    5d65:	41 55                	push   %r13
    5d67:	41 54                	push   %r12
    5d69:	53                   	push   %rbx
    5d6a:	50                   	push   %rax
    5d6b:	41 89 f7             	mov    %esi,%r15d
    5d6e:	48 89 fb             	mov    %rdi,%rbx
    5d71:	43 8d 2c 7f          	lea    (%r15,%r15,2),%ebp
    5d75:	48 63 fd             	movslq %ebp,%rdi
    5d78:	48 c1 e7 02          	shl    $0x2,%rdi
    5d7c:	e8 9f 9e 00 00       	callq  fc20 <malloc@plt>
    5d81:	49 89 c6             	mov    %rax,%r14
    5d84:	45 85 ff             	test   %r15d,%r15d
    5d87:	7e 43                	jle    5dcc <_Z12getTrianglesP8_IO_FILEi+0x6c>
    5d89:	4c 8d 3d 0c c8 ff ff 	lea    -0x37f4(%rip),%r15        # 259c <_IO_stdin_used+0xc9c>
    5d90:	45 31 ed             	xor    %r13d,%r13d
    5d93:	4d 89 f4             	mov    %r14,%r12
    5d96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5d9d:	00 00 00 
    5da0:	49 8d 4c 24 04       	lea    0x4(%r12),%rcx
    5da5:	4d 8d 44 24 08       	lea    0x8(%r12),%r8
    5daa:	48 89 df             	mov    %rbx,%rdi
    5dad:	4c 89 fe             	mov    %r15,%rsi
    5db0:	4c 89 e2             	mov    %r12,%rdx
    5db3:	31 c0                	xor    %eax,%eax
    5db5:	e8 76 9f 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    5dba:	83 f8 ff             	cmp    $0xffffffff,%eax
    5dbd:	74 1f                	je     5dde <_Z12getTrianglesP8_IO_FILEi+0x7e>
    5dbf:	49 83 c4 0c          	add    $0xc,%r12
    5dc3:	41 83 c5 03          	add    $0x3,%r13d
    5dc7:	44 39 ed             	cmp    %r13d,%ebp
    5dca:	7f d4                	jg     5da0 <_Z12getTrianglesP8_IO_FILEi+0x40>
    5dcc:	4c 89 f0             	mov    %r14,%rax
    5dcf:	48 83 c4 08          	add    $0x8,%rsp
    5dd3:	5b                   	pop    %rbx
    5dd4:	41 5c                	pop    %r12
    5dd6:	41 5d                	pop    %r13
    5dd8:	41 5e                	pop    %r14
    5dda:	41 5f                	pop    %r15
    5ddc:	5d                   	pop    %rbp
    5ddd:	c3                   	retq   
    5dde:	48 8d 3d 0b bc ff ff 	lea    -0x43f5(%rip),%rdi        # 19f0 <_IO_stdin_used+0xf0>
    5de5:	e8 96 9e 00 00       	callq  fc80 <puts@plt>
    5dea:	bf 01 00 00 00       	mov    $0x1,%edi
    5def:	e8 dc 9e 00 00       	callq  fcd0 <exit@plt>
    5df4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    5dfb:	00 00 00 00 00 

0000000000005e00 <_Z12createInputsPKc>:
    5e00:	55                   	push   %rbp
    5e01:	41 57                	push   %r15
    5e03:	41 56                	push   %r14
    5e05:	41 55                	push   %r13
    5e07:	41 54                	push   %r12
    5e09:	53                   	push   %rbx
    5e0a:	48 81 ec 48 06 00 00 	sub    $0x648,%rsp
    5e11:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
    5e18:	00 00 00 00 00 
    5e1d:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
    5e24:	00 00 40 
    5e27:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
    5e2e:	00 
    5e2f:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    5e36:	00 00 
    5e38:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
    5e3f:	00 00 
    5e41:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
    5e48:	00 00 
    5e4a:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
    5e51:	00 00 
    5e53:	48 85 ff             	test   %rdi,%rdi
    5e56:	0f 84 0c 01 00 00    	je     5f68 <_Z12createInputsPKc+0x168>
    5e5c:	48 8d 35 7e c2 ff ff 	lea    -0x3d82(%rip),%rsi        # 20e1 <_IO_stdin_used+0x7e1>
    5e63:	49 89 fe             	mov    %rdi,%r14
    5e66:	e8 e5 9d 00 00       	callq  fc50 <fopen@plt>
    5e6b:	48 85 c0             	test   %rax,%rax
    5e6e:	0f 84 61 0d 00 00    	je     6bd5 <_Z12createInputsPKc+0xdd5>
    5e74:	48 89 c3             	mov    %rax,%rbx
    5e77:	48 8d 84 24 60 02 00 	lea    0x260(%rsp),%rax
    5e7e:	00 
    5e7f:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
    5e86:	00 
    5e87:	48 c7 84 24 10 01 00 	movq   $0x3e8,0x110(%rsp)
    5e8e:	00 e8 03 00 00 
    5e93:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
    5e9a:	00 
    5e9b:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
    5ea2:	00 
    5ea3:	ba 0a 00 00 00       	mov    $0xa,%edx
    5ea8:	48 89 d9             	mov    %rbx,%rcx
    5eab:	e8 10 9e 00 00       	callq  fcc0 <__getdelim@plt>
    5eb0:	83 f8 ff             	cmp    $0xffffffff,%eax
    5eb3:	74 47                	je     5efc <_Z12createInputsPKc+0xfc>
    5eb5:	49 bc 01 04 00 00 08 	movabs $0x800000401,%r12
    5ebc:	00 00 00 
    5ebf:	4c 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%r14
    5ec6:	00 
    5ec7:	4c 8d bc 24 10 01 00 	lea    0x110(%rsp),%r15
    5ece:	00 
    5ecf:	90                   	nop
    5ed0:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    5ed7:	00 
    5ed8:	48 83 f8 23          	cmp    $0x23,%rax
    5edc:	77 34                	ja     5f12 <_Z12createInputsPKc+0x112>
    5ede:	49 0f a3 c4          	bt     %rax,%r12
    5ee2:	73 2e                	jae    5f12 <_Z12createInputsPKc+0x112>
    5ee4:	4c 89 f7             	mov    %r14,%rdi
    5ee7:	4c 89 fe             	mov    %r15,%rsi
    5eea:	ba 0a 00 00 00       	mov    $0xa,%edx
    5eef:	48 89 d9             	mov    %rbx,%rcx
    5ef2:	e8 c9 9d 00 00       	callq  fcc0 <__getdelim@plt>
    5ef7:	83 f8 ff             	cmp    $0xffffffff,%eax
    5efa:	75 d4                	jne    5ed0 <_Z12createInputsPKc+0xd0>
    5efc:	48 8d 3d 33 c2 ff ff 	lea    -0x3dcd(%rip),%rdi        # 2136 <_IO_stdin_used+0x836>
    5f03:	e8 78 9d 00 00       	callq  fc80 <puts@plt>
    5f08:	bf 01 00 00 00       	mov    $0x1,%edi
    5f0d:	e8 be 9d 00 00       	callq  fcd0 <exit@plt>
    5f12:	4c 8d 54 24 60       	lea    0x60(%rsp),%r10
    5f17:	4c 8d 5c 24 68       	lea    0x68(%rsp),%r11
    5f1c:	48 8d 35 f0 c5 ff ff 	lea    -0x3a10(%rip),%rsi        # 2513 <_IO_stdin_used+0xc13>
    5f23:	48 8d bc 24 60 02 00 	lea    0x260(%rsp),%rdi
    5f2a:	00 
    5f2b:	48 8d 94 24 88 00 00 	lea    0x88(%rsp),%rdx
    5f32:	00 
    5f33:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
    5f3a:	00 
    5f3b:	4c 8d 44 24 78       	lea    0x78(%rsp),%r8
    5f40:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
    5f45:	31 c0                	xor    %eax,%eax
    5f47:	41 52                	push   %r10
    5f49:	41 53                	push   %r11
    5f4b:	e8 90 9d 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    5f50:	48 83 c4 10          	add    $0x10,%rsp
    5f54:	48 89 df             	mov    %rbx,%rdi
    5f57:	31 f6                	xor    %esi,%esi
    5f59:	e8 c2 f6 ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    5f5e:	49 89 c6             	mov    %rax,%r14
    5f61:	48 85 c0             	test   %rax,%rax
    5f64:	75 20                	jne    5f86 <_Z12createInputsPKc+0x186>
    5f66:	eb 02                	jmp    5f6a <_Z12createInputsPKc+0x16a>
    5f68:	31 db                	xor    %ebx,%ebx
    5f6a:	bf 30 00 00 00       	mov    $0x30,%edi
    5f6f:	e8 7c 9d 00 00       	callq  fcf0 <_Znwm@plt>
    5f74:	49 89 c6             	mov    %rax,%r14
    5f77:	48 8d 35 d5 c5 ff ff 	lea    -0x3a2b(%rip),%rsi        # 2553 <_IO_stdin_used+0xc53>
    5f7e:	48 89 c7             	mov    %rax,%rdi
    5f81:	e8 fa 98 00 00       	callq  f880 <_ZN12ImageTextureC1EPKc>
    5f86:	bf d8 00 00 00       	mov    $0xd8,%edi
    5f8b:	e8 60 9d 00 00       	callq  fcf0 <_Znwm@plt>
    5f90:	49 89 c7             	mov    %rax,%r15
    5f93:	f2 0f 10 84 24 88 00 	movsd  0x88(%rsp),%xmm0
    5f9a:	00 00 
    5f9c:	f2 0f 10 8c 24 80 00 	movsd  0x80(%rsp),%xmm1
    5fa3:	00 00 
    5fa5:	f2 0f 10 54 24 78    	movsd  0x78(%rsp),%xmm2
    5fab:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
    5fb2:	00 
    5fb3:	e8 a8 7f 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    5fb8:	f2 0f 10 44 24 70    	movsd  0x70(%rsp),%xmm0
    5fbe:	f2 0f 10 4c 24 68    	movsd  0x68(%rsp),%xmm1
    5fc4:	f2 0f 10 54 24 60    	movsd  0x60(%rsp),%xmm2
    5fca:	48 8d bc 24 60 02 00 	lea    0x260(%rsp),%rdi
    5fd1:	00 
    5fd2:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
    5fd9:	00 
    5fda:	e8 c1 25 00 00       	callq  85a0 <_ZN6CameraC1ERK6Vectorddd>
    5fdf:	4c 8d a4 24 60 02 00 	lea    0x260(%rsp),%r12
    5fe6:	00 
    5fe7:	4c 89 ff             	mov    %r15,%rdi
    5fea:	4c 89 e6             	mov    %r12,%rsi
    5fed:	4c 89 f2             	mov    %r14,%rdx
    5ff0:	e8 7b 34 00 00       	callq  9470 <_ZN8AutonomaC1ERK6CameraP7Texture>
    5ff5:	48 85 db             	test   %rbx,%rbx
    5ff8:	74 40                	je     603a <_Z12createInputsPKc+0x23a>
    5ffa:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
    5fff:	4c 89 a4 24 a0 00 00 	mov    %r12,0xa0(%rsp)
    6006:	00 
    6007:	48 c7 84 24 10 01 00 	movq   $0x3e8,0x110(%rsp)
    600e:	00 e8 03 00 00 
    6013:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
    601a:	00 
    601b:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
    6022:	00 
    6023:	ba 0a 00 00 00       	mov    $0xa,%edx
    6028:	48 89 d9             	mov    %rbx,%rcx
    602b:	e8 90 9c 00 00       	callq  fcc0 <__getdelim@plt>
    6030:	83 f8 ff             	cmp    $0xffffffff,%eax
    6033:	75 1a                	jne    604f <_Z12createInputsPKc+0x24f>
    6035:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
    603a:	4c 89 f8             	mov    %r15,%rax
    603d:	48 81 c4 48 06 00 00 	add    $0x648,%rsp
    6044:	5b                   	pop    %rbx
    6045:	41 5c                	pop    %r12
    6047:	41 5d                	pop    %r13
    6049:	41 5e                	pop    %r14
    604b:	41 5f                	pop    %r15
    604d:	5d                   	pop    %rbp
    604e:	c3                   	retq   
    604f:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
    6054:	48 8d 6c 24 28       	lea    0x28(%rsp),%rbp
    6059:	49 bd 01 04 00 00 08 	movabs $0x800000401,%r13
    6060:	00 00 00 
    6063:	4c 8d 74 24 50       	lea    0x50(%rsp),%r14
    6068:	eb 65                	jmp    60cf <_Z12createInputsPKc+0x2cf>
    606a:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    606f:	4c 89 fe             	mov    %r15,%rsi
    6072:	e8 79 34 00 00       	callq  94f0 <_ZN8Autonoma8addShapeEP5Shape>
    6077:	48 89 df             	mov    %rbx,%rdi
    607a:	be 01 00 00 00       	mov    $0x1,%esi
    607f:	e8 9c f5 ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6084:	49 89 87 a0 00 00 00 	mov    %rax,0xa0(%r15)
    608b:	48 8d 6c 24 28       	lea    0x28(%rsp),%rbp
    6090:	4c 89 a4 24 a0 00 00 	mov    %r12,0xa0(%rsp)
    6097:	00 
    6098:	48 c7 84 24 10 01 00 	movq   $0x3e8,0x110(%rsp)
    609f:	00 e8 03 00 00 
    60a4:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
    60ab:	00 
    60ac:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
    60b3:	00 
    60b4:	ba 0a 00 00 00       	mov    $0xa,%edx
    60b9:	48 89 d9             	mov    %rbx,%rcx
    60bc:	e8 ff 9b 00 00       	callq  fcc0 <__getdelim@plt>
    60c1:	83 f8 ff             	cmp    $0xffffffff,%eax
    60c4:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
    60c9:	0f 84 66 ff ff ff    	je     6035 <_Z12createInputsPKc+0x235>
    60cf:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    60d6:	00 
    60d7:	48 83 f8 23          	cmp    $0x23,%rax
    60db:	77 33                	ja     6110 <_Z12createInputsPKc+0x310>
    60dd:	49 0f a3 c5          	bt     %rax,%r13
    60e1:	73 2d                	jae    6110 <_Z12createInputsPKc+0x310>
    60e3:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
    60ea:	00 
    60eb:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
    60f2:	00 
    60f3:	ba 0a 00 00 00       	mov    $0xa,%edx
    60f8:	48 89 d9             	mov    %rbx,%rcx
    60fb:	e8 c0 9b 00 00       	callq  fcc0 <__getdelim@plt>
    6100:	83 f8 ff             	cmp    $0xffffffff,%eax
    6103:	75 ca                	jne    60cf <_Z12createInputsPKc+0x2cf>
    6105:	e9 2b ff ff ff       	jmpq   6035 <_Z12createInputsPKc+0x235>
    610a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6110:	4c 89 e7             	mov    %r12,%rdi
    6113:	48 8d 35 ce b9 ff ff 	lea    -0x4632(%rip),%rsi        # 1ae8 <_IO_stdin_used+0x1e8>
    611a:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
    6121:	00 
    6122:	31 c0                	xor    %eax,%eax
    6124:	e8 b7 9b 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6129:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    6130:	b9 6c 69 67 68       	mov    $0x6867696c,%ecx
    6135:	31 c8                	xor    %ecx,%eax
    6137:	0f b7 8c 24 84 01 00 	movzwl 0x184(%rsp),%ecx
    613e:	00 
    613f:	83 f1 74             	xor    $0x74,%ecx
    6142:	09 c1                	or     %eax,%ecx
    6144:	0f 84 a2 00 00 00    	je     61ec <_Z12createInputsPKc+0x3ec>
    614a:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    6151:	b9 70 6c 61 6e       	mov    $0x6e616c70,%ecx
    6156:	31 c8                	xor    %ecx,%eax
    6158:	0f b7 8c 24 84 01 00 	movzwl 0x184(%rsp),%ecx
    615f:	00 
    6160:	83 f1 65             	xor    $0x65,%ecx
    6163:	09 c1                	or     %eax,%ecx
    6165:	0f 84 86 01 00 00    	je     62f1 <_Z12createInputsPKc+0x4f1>
    616b:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    6172:	b9 64 69 73 6b       	mov    $0x6b736964,%ecx
    6177:	31 c8                	xor    %ecx,%eax
    6179:	0f b6 8c 24 84 01 00 	movzbl 0x184(%rsp),%ecx
    6180:	00 
    6181:	09 c1                	or     %eax,%ecx
    6183:	0f 84 59 02 00 00    	je     63e2 <_Z12createInputsPKc+0x5e2>
    6189:	81 bc 24 80 01 00 00 	cmpl   $0x786f62,0x180(%rsp)
    6190:	62 6f 78 00 
    6194:	0f 85 38 03 00 00    	jne    64d2 <_Z12createInputsPKc+0x6d2>
    619a:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    619f:	48 c7 44 24 50 e8 03 	movq   $0x3e8,0x50(%rsp)
    61a6:	00 00 
    61a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    61af:	00 
    61b0:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    61b5:	4c 89 f6             	mov    %r14,%rsi
    61b8:	ba 0a 00 00 00       	mov    $0xa,%edx
    61bd:	48 89 d9             	mov    %rbx,%rcx
    61c0:	e8 fb 9a 00 00       	callq  fcc0 <__getdelim@plt>
    61c5:	83 f8 ff             	cmp    $0xffffffff,%eax
    61c8:	0f 84 af 09 00 00    	je     6b7d <_Z12createInputsPKc+0xd7d>
    61ce:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    61d5:	00 
    61d6:	48 83 f8 23          	cmp    $0x23,%rax
    61da:	0f 87 ae 03 00 00    	ja     658e <_Z12createInputsPKc+0x78e>
    61e0:	49 0f a3 c5          	bt     %rax,%r13
    61e4:	0f 83 a4 03 00 00    	jae    658e <_Z12createInputsPKc+0x78e>
    61ea:	eb c4                	jmp    61b0 <_Z12createInputsPKc+0x3b0>
    61ec:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
    61f1:	48 c7 44 24 28 e8 03 	movq   $0x3e8,0x28(%rsp)
    61f8:	00 00 
    61fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6200:	4c 89 ff             	mov    %r15,%rdi
    6203:	48 89 ee             	mov    %rbp,%rsi
    6206:	ba 0a 00 00 00       	mov    $0xa,%edx
    620b:	48 89 d9             	mov    %rbx,%rcx
    620e:	e8 ad 9a 00 00       	callq  fcc0 <__getdelim@plt>
    6213:	83 f8 ff             	cmp    $0xffffffff,%eax
    6216:	0f 84 1f 09 00 00    	je     6b3b <_Z12createInputsPKc+0xd3b>
    621c:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    6223:	00 
    6224:	48 83 f8 23          	cmp    $0x23,%rax
    6228:	77 08                	ja     6232 <_Z12createInputsPKc+0x432>
    622a:	49 0f a3 c5          	bt     %rax,%r13
    622e:	73 02                	jae    6232 <_Z12createInputsPKc+0x432>
    6230:	eb ce                	jmp    6200 <_Z12createInputsPKc+0x400>
    6232:	4c 89 e7             	mov    %r12,%rdi
    6235:	48 8d 35 5c b7 ff ff 	lea    -0x48a4(%rip),%rsi        # 1998 <_IO_stdin_used+0x98>
    623c:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
    6243:	00 
    6244:	48 8d 8c 24 10 01 00 	lea    0x110(%rsp),%rcx
    624b:	00 
    624c:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    6251:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
    6256:	31 c0                	xor    %eax,%eax
    6258:	4c 8d 54 24 10       	lea    0x10(%rsp),%r10
    625d:	41 52                	push   %r10
    625f:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
    6264:	41 52                	push   %r10
    6266:	e8 75 9a 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    626b:	48 83 c4 10          	add    $0x10,%rsp
    626f:	bf 20 00 00 00       	mov    $0x20,%edi
    6274:	e8 77 9a 00 00       	callq  fcf0 <_Znwm@plt>
    6279:	49 89 c7             	mov    %rax,%r15
    627c:	f2 0f 10 84 24 a0 00 	movsd  0xa0(%rsp),%xmm0
    6283:	00 00 
    6285:	f2 0f 10 8c 24 10 01 	movsd  0x110(%rsp),%xmm1
    628c:	00 00 
    628e:	f2 0f 10 54 24 30    	movsd  0x30(%rsp),%xmm2
    6294:	4c 89 e7             	mov    %r12,%rdi
    6297:	e8 c4 7c 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    629c:	0f b6 6c 24 20       	movzbl 0x20(%rsp),%ebp
    62a1:	44 0f b6 64 24 18    	movzbl 0x18(%rsp),%r12d
    62a7:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
    62ac:	88 44 24 48          	mov    %al,0x48(%rsp)
    62b0:	bf 03 00 00 00       	mov    $0x3,%edi
    62b5:	e8 66 99 00 00       	callq  fc20 <malloc@plt>
    62ba:	40 88 28             	mov    %bpl,(%rax)
    62bd:	44 88 60 01          	mov    %r12b,0x1(%rax)
    62c1:	4c 8d a4 24 60 02 00 	lea    0x260(%rsp),%r12
    62c8:	00 
    62c9:	0f b6 4c 24 48       	movzbl 0x48(%rsp),%ecx
    62ce:	88 48 02             	mov    %cl,0x2(%rax)
    62d1:	4c 89 ff             	mov    %r15,%rdi
    62d4:	4c 89 e6             	mov    %r12,%rsi
    62d7:	48 89 c2             	mov    %rax,%rdx
    62da:	e8 31 30 00 00       	callq  9310 <_ZN5LightC1ERK6VectorPh>
    62df:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    62e4:	4c 89 fe             	mov    %r15,%rsi
    62e7:	e8 c4 33 00 00       	callq  96b0 <_ZN8Autonoma8addLightEP5Light>
    62ec:	e9 9a fd ff ff       	jmpq   608b <_Z12createInputsPKc+0x28b>
    62f1:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    62f6:	48 c7 44 24 50 e8 03 	movq   $0x3e8,0x50(%rsp)
    62fd:	00 00 
    62ff:	90                   	nop
    6300:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    6305:	4c 89 f6             	mov    %r14,%rsi
    6308:	ba 0a 00 00 00       	mov    $0xa,%edx
    630d:	48 89 d9             	mov    %rbx,%rcx
    6310:	e8 ab 99 00 00       	callq  fcc0 <__getdelim@plt>
    6315:	83 f8 ff             	cmp    $0xffffffff,%eax
    6318:	0f 84 33 08 00 00    	je     6b51 <_Z12createInputsPKc+0xd51>
    631e:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    6325:	00 
    6326:	48 83 f8 23          	cmp    $0x23,%rax
    632a:	77 08                	ja     6334 <_Z12createInputsPKc+0x534>
    632c:	49 0f a3 c5          	bt     %rax,%r13
    6330:	73 02                	jae    6334 <_Z12createInputsPKc+0x534>
    6332:	eb cc                	jmp    6300 <_Z12createInputsPKc+0x500>
    6334:	4c 89 e7             	mov    %r12,%rdi
    6337:	48 8d 35 43 be ff ff 	lea    -0x41bd(%rip),%rsi        # 2181 <_IO_stdin_used+0x881>
    633e:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
    6345:	00 
    6346:	48 8d 8c 24 10 01 00 	lea    0x110(%rsp),%rcx
    634d:	00 
    634e:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    6353:	4d 89 f9             	mov    %r15,%r9
    6356:	31 c0                	xor    %eax,%eax
    6358:	4c 8d 54 24 10       	lea    0x10(%rsp),%r10
    635d:	41 52                	push   %r10
    635f:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
    6364:	41 52                	push   %r10
    6366:	4c 8d 54 24 30       	lea    0x30(%rsp),%r10
    636b:	41 52                	push   %r10
    636d:	55                   	push   %rbp
    636e:	e8 6d 99 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6373:	48 83 c4 20          	add    $0x20,%rsp
    6377:	48 89 df             	mov    %rbx,%rdi
    637a:	31 f6                	xor    %esi,%esi
    637c:	e8 9f f2 ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6381:	48 89 c5             	mov    %rax,%rbp
    6384:	bf f8 00 00 00       	mov    $0xf8,%edi
    6389:	e8 62 99 00 00       	callq  fcf0 <_Znwm@plt>
    638e:	49 89 c7             	mov    %rax,%r15
    6391:	f2 0f 10 84 24 a0 00 	movsd  0xa0(%rsp),%xmm0
    6398:	00 00 
    639a:	f2 0f 10 8c 24 10 01 	movsd  0x110(%rsp),%xmm1
    63a1:	00 00 
    63a3:	f2 0f 10 54 24 30    	movsd  0x30(%rsp),%xmm2
    63a9:	4c 89 e7             	mov    %r12,%rdi
    63ac:	e8 af 7b 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    63b1:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
    63b7:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    63bd:	f2 0f 10 54 24 20    	movsd  0x20(%rsp),%xmm2
    63c3:	f2 0f 10 5c 24 18    	movsd  0x18(%rsp),%xmm3
    63c9:	f2 0f 10 64 24 10    	movsd  0x10(%rsp),%xmm4
    63cf:	4c 89 ff             	mov    %r15,%rdi
    63d2:	4c 89 e6             	mov    %r12,%rsi
    63d5:	48 89 ea             	mov    %rbp,%rdx
    63d8:	e8 c3 38 00 00       	callq  9ca0 <_ZN5PlaneC1ERK6VectorP7Textureddddd>
    63dd:	e9 88 fc ff ff       	jmpq   606a <_Z12createInputsPKc+0x26a>
    63e2:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    63e7:	48 c7 44 24 50 e8 03 	movq   $0x3e8,0x50(%rsp)
    63ee:	00 00 
    63f0:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    63f5:	4c 89 f6             	mov    %r14,%rsi
    63f8:	ba 0a 00 00 00       	mov    $0xa,%edx
    63fd:	48 89 d9             	mov    %rbx,%rcx
    6400:	e8 bb 98 00 00       	callq  fcc0 <__getdelim@plt>
    6405:	83 f8 ff             	cmp    $0xffffffff,%eax
    6408:	0f 84 59 07 00 00    	je     6b67 <_Z12createInputsPKc+0xd67>
    640e:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    6415:	00 
    6416:	48 83 f8 23          	cmp    $0x23,%rax
    641a:	77 08                	ja     6424 <_Z12createInputsPKc+0x624>
    641c:	49 0f a3 c5          	bt     %rax,%r13
    6420:	73 02                	jae    6424 <_Z12createInputsPKc+0x624>
    6422:	eb cc                	jmp    63f0 <_Z12createInputsPKc+0x5f0>
    6424:	4c 89 e7             	mov    %r12,%rdi
    6427:	48 8d 35 53 bd ff ff 	lea    -0x42ad(%rip),%rsi        # 2181 <_IO_stdin_used+0x881>
    642e:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
    6435:	00 
    6436:	48 8d 8c 24 10 01 00 	lea    0x110(%rsp),%rcx
    643d:	00 
    643e:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    6443:	4d 89 f9             	mov    %r15,%r9
    6446:	31 c0                	xor    %eax,%eax
    6448:	4c 8d 54 24 10       	lea    0x10(%rsp),%r10
    644d:	41 52                	push   %r10
    644f:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
    6454:	41 52                	push   %r10
    6456:	4c 8d 54 24 30       	lea    0x30(%rsp),%r10
    645b:	41 52                	push   %r10
    645d:	55                   	push   %rbp
    645e:	e8 7d 98 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6463:	48 83 c4 20          	add    $0x20,%rsp
    6467:	48 89 df             	mov    %rbx,%rdi
    646a:	31 f6                	xor    %esi,%esi
    646c:	e8 af f1 ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6471:	48 89 c5             	mov    %rax,%rbp
    6474:	bf f8 00 00 00       	mov    $0xf8,%edi
    6479:	e8 72 98 00 00       	callq  fcf0 <_Znwm@plt>
    647e:	49 89 c7             	mov    %rax,%r15
    6481:	f2 0f 10 84 24 a0 00 	movsd  0xa0(%rsp),%xmm0
    6488:	00 00 
    648a:	f2 0f 10 8c 24 10 01 	movsd  0x110(%rsp),%xmm1
    6491:	00 00 
    6493:	f2 0f 10 54 24 30    	movsd  0x30(%rsp),%xmm2
    6499:	4c 89 e7             	mov    %r12,%rdi
    649c:	e8 bf 7a 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    64a1:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
    64a7:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    64ad:	f2 0f 10 54 24 20    	movsd  0x20(%rsp),%xmm2
    64b3:	f2 0f 10 5c 24 18    	movsd  0x18(%rsp),%xmm3
    64b9:	f2 0f 10 64 24 10    	movsd  0x10(%rsp),%xmm4
    64bf:	4c 89 ff             	mov    %r15,%rdi
    64c2:	4c 89 e6             	mov    %r12,%rsi
    64c5:	48 89 ea             	mov    %rbp,%rdx
    64c8:	e8 43 26 00 00       	callq  8b10 <_ZN4DiskC1ERK6VectorP7Textureddddd>
    64cd:	e9 98 fb ff ff       	jmpq   606a <_Z12createInputsPKc+0x26a>
    64d2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
    64d9:	00 
    64da:	48 b9 74 72 69 61 6e 	movabs $0x656c676e61697274,%rcx
    64e1:	67 6c 65 
    64e4:	48 31 c8             	xor    %rcx,%rax
    64e7:	0f b6 8c 24 88 01 00 	movzbl 0x188(%rsp),%ecx
    64ee:	00 
    64ef:	48 09 c1             	or     %rax,%rcx
    64f2:	0f 84 b3 03 00 00    	je     68ab <_Z12createInputsPKc+0xaab>
    64f8:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    64ff:	b9 73 70 68 65       	mov    $0x65687073,%ecx
    6504:	31 c8                	xor    %ecx,%eax
    6506:	8b 8c 24 83 01 00 00 	mov    0x183(%rsp),%ecx
    650d:	ba 65 72 65 00       	mov    $0x657265,%edx
    6512:	31 d1                	xor    %edx,%ecx
    6514:	09 c1                	or     %eax,%ecx
    6516:	0f 84 33 05 00 00    	je     6a4f <_Z12createInputsPKc+0xc4f>
    651c:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    6523:	b9 6d 65 73 68       	mov    $0x6873656d,%ecx
    6528:	31 c8                	xor    %ecx,%eax
    652a:	0f b6 8c 24 84 01 00 	movzbl 0x184(%rsp),%ecx
    6531:	00 
    6532:	09 c1                	or     %eax,%ecx
    6534:	0f 85 b6 06 00 00    	jne    6bf0 <_Z12createInputsPKc+0xdf0>
    653a:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
    653f:	48 c7 44 24 18 e8 03 	movq   $0x3e8,0x18(%rsp)
    6546:	00 00 
    6548:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    654f:	00 
    6550:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
    6555:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    655a:	ba 0a 00 00 00       	mov    $0xa,%edx
    655f:	48 89 d9             	mov    %rbx,%rcx
    6562:	e8 59 97 00 00       	callq  fcc0 <__getdelim@plt>
    6567:	83 f8 ff             	cmp    $0xffffffff,%eax
    656a:	0f 84 23 06 00 00    	je     6b93 <_Z12createInputsPKc+0xd93>
    6570:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    6577:	00 
    6578:	48 83 f8 23          	cmp    $0x23,%rax
    657c:	0f 87 ba 00 00 00    	ja     663c <_Z12createInputsPKc+0x83c>
    6582:	49 0f a3 c5          	bt     %rax,%r13
    6586:	0f 83 b0 00 00 00    	jae    663c <_Z12createInputsPKc+0x83c>
    658c:	eb c2                	jmp    6550 <_Z12createInputsPKc+0x750>
    658e:	4c 89 e7             	mov    %r12,%rdi
    6591:	48 8d 35 e9 bb ff ff 	lea    -0x4417(%rip),%rsi        # 2181 <_IO_stdin_used+0x881>
    6598:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
    659f:	00 
    65a0:	48 8d 8c 24 10 01 00 	lea    0x110(%rsp),%rcx
    65a7:	00 
    65a8:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    65ad:	4d 89 f9             	mov    %r15,%r9
    65b0:	31 c0                	xor    %eax,%eax
    65b2:	4c 8d 54 24 10       	lea    0x10(%rsp),%r10
    65b7:	41 52                	push   %r10
    65b9:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
    65be:	41 52                	push   %r10
    65c0:	4c 8d 54 24 30       	lea    0x30(%rsp),%r10
    65c5:	41 52                	push   %r10
    65c7:	55                   	push   %rbp
    65c8:	e8 13 97 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    65cd:	48 83 c4 20          	add    $0x20,%rsp
    65d1:	48 89 df             	mov    %rbx,%rdi
    65d4:	31 f6                	xor    %esi,%esi
    65d6:	e8 45 f0 ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    65db:	48 89 c5             	mov    %rax,%rbp
    65de:	bf f8 00 00 00       	mov    $0xf8,%edi
    65e3:	e8 08 97 00 00       	callq  fcf0 <_Znwm@plt>
    65e8:	49 89 c7             	mov    %rax,%r15
    65eb:	f2 0f 10 84 24 a0 00 	movsd  0xa0(%rsp),%xmm0
    65f2:	00 00 
    65f4:	f2 0f 10 8c 24 10 01 	movsd  0x110(%rsp),%xmm1
    65fb:	00 00 
    65fd:	f2 0f 10 54 24 30    	movsd  0x30(%rsp),%xmm2
    6603:	4c 89 e7             	mov    %r12,%rdi
    6606:	e8 55 79 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    660b:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
    6611:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    6617:	f2 0f 10 54 24 20    	movsd  0x20(%rsp),%xmm2
    661d:	f2 0f 10 5c 24 18    	movsd  0x18(%rsp),%xmm3
    6623:	f2 0f 10 64 24 10    	movsd  0x10(%rsp),%xmm4
    6629:	4c 89 ff             	mov    %r15,%rdi
    662c:	4c 89 e6             	mov    %r12,%rsi
    662f:	48 89 ea             	mov    %rbp,%rdx
    6632:	e8 c9 12 00 00       	callq  7900 <_ZN3BoxC1ERK6VectorP7Textureddddd>
    6637:	e9 2e fa ff ff       	jmpq   606a <_Z12createInputsPKc+0x26a>
    663c:	48 83 ec 08          	sub    $0x8,%rsp
    6640:	4c 89 e7             	mov    %r12,%rdi
    6643:	48 8d 35 65 bc ff ff 	lea    -0x439b(%rip),%rsi        # 22af <_IO_stdin_used+0x9af>
    664a:	4c 8d a4 24 a8 00 00 	lea    0xa8(%rsp),%r12
    6651:	00 
    6652:	4c 89 e2             	mov    %r12,%rdx
    6655:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    665a:	4c 8d 84 24 18 01 00 	lea    0x118(%rsp),%r8
    6661:	00 
    6662:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
    6667:	31 c0                	xor    %eax,%eax
    6669:	55                   	push   %rbp
    666a:	41 57                	push   %r15
    666c:	4c 8d 54 24 48       	lea    0x48(%rsp),%r10
    6671:	41 52                	push   %r10
    6673:	e8 68 96 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6678:	48 83 c4 20          	add    $0x20,%rsp
    667c:	48 89 df             	mov    %rbx,%rdi
    667f:	31 f6                	xor    %esi,%esi
    6681:	e8 9a ef ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6686:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    668d:	00 
    668e:	48 89 df             	mov    %rbx,%rdi
    6691:	be 01 00 00 00       	mov    $0x1,%esi
    6696:	e8 85 ef ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    669b:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    66a2:	00 
    66a3:	4c 89 e7             	mov    %r12,%rdi
    66a6:	4c 8d 3d 34 ba ff ff 	lea    -0x45cc(%rip),%r15        # 20e1 <_IO_stdin_used+0x7e1>
    66ad:	4c 89 fe             	mov    %r15,%rsi
    66b0:	e8 9b 95 00 00       	callq  fc50 <fopen@plt>
    66b5:	48 89 c5             	mov    %rax,%rbp
    66b8:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
    66bf:	00 
    66c0:	4c 89 fe             	mov    %r15,%rsi
    66c3:	e8 88 95 00 00       	callq  fc50 <fopen@plt>
    66c8:	48 85 ed             	test   %rbp,%rbp
    66cb:	0f 84 5f 05 00 00    	je     6c30 <_Z12createInputsPKc+0xe30>
    66d1:	49 89 c4             	mov    %rax,%r12
    66d4:	48 85 c0             	test   %rax,%rax
    66d7:	0f 84 33 05 00 00    	je     6c10 <_Z12createInputsPKc+0xe10>
    66dd:	8b 74 24 10          	mov    0x10(%rsp),%esi
    66e1:	48 89 ef             	mov    %rbp,%rdi
    66e4:	e8 a7 f5 ff ff       	callq  5c90 <_Z10getVectorsP8_IO_FILEi>
    66e9:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    66ee:	48 89 ef             	mov    %rbp,%rdi
    66f1:	e8 6a 95 00 00       	callq  fc60 <fclose@plt>
    66f6:	8b 74 24 08          	mov    0x8(%rsp),%esi
    66fa:	4c 89 e7             	mov    %r12,%rdi
    66fd:	e8 5e f6 ff ff       	callq  5d60 <_Z12getTrianglesP8_IO_FILEi>
    6702:	48 89 c5             	mov    %rax,%rbp
    6705:	4c 89 e7             	mov    %r12,%rdi
    6708:	e8 53 95 00 00       	callq  fc60 <fclose@plt>
    670d:	f2 0f 10 44 24 30    	movsd  0x30(%rsp),%xmm0
    6713:	f2 0f 10 4c 24 40    	movsd  0x40(%rsp),%xmm1
    6719:	f2 0f 10 54 24 28    	movsd  0x28(%rsp),%xmm2
    671f:	48 8d bc 24 60 02 00 	lea    0x260(%rsp),%rdi
    6726:	00 
    6727:	e8 34 78 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    672c:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
    6731:	0f 8e 67 01 00 00    	jle    689e <_Z12createInputsPKc+0xa9e>
    6737:	48 83 c5 08          	add    $0x8,%rbp
    673b:	45 31 ff             	xor    %r15d,%r15d
    673e:	66 90                	xchg   %ax,%ax
    6740:	bf 00 01 00 00       	mov    $0x100,%edi
    6745:	e8 a6 95 00 00       	callq  fcf0 <_Znwm@plt>
    674a:	49 89 c4             	mov    %rax,%r12
    674d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    6750:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    6754:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
    6759:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    675d:	48 83 ec 20          	sub    $0x20,%rsp
    6761:	48 8b 84 24 90 02 00 	mov    0x290(%rsp),%rax
    6768:	00 
    6769:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    676e:	0f 10 84 24 80 02 00 	movups 0x280(%rsp),%xmm0
    6775:	00 
    6776:	0f 11 04 24          	movups %xmm0,(%rsp)
    677a:	48 8d bc 24 20 02 00 	lea    0x220(%rsp),%rdi
    6781:	00 
    6782:	e8 c9 7a 00 00       	callq  e250 <_ZN6VectorplES_>
    6787:	48 83 c4 20          	add    $0x20,%rsp
    678b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    678e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    6792:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
    6797:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    679b:	48 83 ec 20          	sub    $0x20,%rsp
    679f:	48 8b 84 24 90 02 00 	mov    0x290(%rsp),%rax
    67a6:	00 
    67a7:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    67ac:	0f 10 84 24 80 02 00 	movups 0x280(%rsp),%xmm0
    67b3:	00 
    67b4:	0f 11 04 24          	movups %xmm0,(%rsp)
    67b8:	48 8d bc 24 08 02 00 	lea    0x208(%rsp),%rdi
    67bf:	00 
    67c0:	e8 8b 7a 00 00       	callq  e250 <_ZN6VectorplES_>
    67c5:	48 83 c4 20          	add    $0x20,%rsp
    67c9:	8b 45 00             	mov    0x0(%rbp),%eax
    67cc:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    67d0:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
    67d5:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    67d9:	48 83 ec 20          	sub    $0x20,%rsp
    67dd:	48 8b 84 24 90 02 00 	mov    0x290(%rsp),%rax
    67e4:	00 
    67e5:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    67ea:	0f 10 84 24 80 02 00 	movups 0x280(%rsp),%xmm0
    67f1:	00 
    67f2:	0f 11 04 24          	movups %xmm0,(%rsp)
    67f6:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
    67fd:	00 
    67fe:	e8 4d 7a 00 00       	callq  e250 <_ZN6VectorplES_>
    6803:	48 83 c4 20          	add    $0x20,%rsp
    6807:	48 83 ec 50          	sub    $0x50,%rsp
    680b:	48 8b 84 24 30 02 00 	mov    0x230(%rsp),%rax
    6812:	00 
    6813:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    6818:	0f 10 84 24 20 02 00 	movups 0x220(%rsp),%xmm0
    681f:	00 
    6820:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    6825:	48 8b 84 24 48 02 00 	mov    0x248(%rsp),%rax
    682c:	00 
    682d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    6832:	0f 10 84 24 38 02 00 	movups 0x238(%rsp),%xmm0
    6839:	00 
    683a:	0f 11 44 24 18       	movups %xmm0,0x18(%rsp)
    683f:	48 8b 84 24 60 02 00 	mov    0x260(%rsp),%rax
    6846:	00 
    6847:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    684c:	0f 10 84 24 50 02 00 	movups 0x250(%rsp),%xmm0
    6853:	00 
    6854:	0f 11 04 24          	movups %xmm0,(%rsp)
    6858:	4c 89 e7             	mov    %r12,%rdi
    685b:	48 8b b4 24 e8 00 00 	mov    0xe8(%rsp),%rsi
    6862:	00 
    6863:	e8 68 66 00 00       	callq  ced0 <_ZN8TriangleC1E6VectorS0_S0_P7Texture>
    6868:	48 83 c4 50          	add    $0x50,%rsp
    686c:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    6871:	4c 89 e6             	mov    %r12,%rsi
    6874:	e8 77 2c 00 00       	callq  94f0 <_ZN8Autonoma8addShapeEP5Shape>
    6879:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    6880:	00 
    6881:	49 89 84 24 a0 00 00 	mov    %rax,0xa0(%r12)
    6888:	00 
    6889:	49 ff c7             	inc    %r15
    688c:	48 63 44 24 08       	movslq 0x8(%rsp),%rax
    6891:	48 83 c5 0c          	add    $0xc,%rbp
    6895:	49 39 c7             	cmp    %rax,%r15
    6898:	0f 8c a2 fe ff ff    	jl     6740 <_Z12createInputsPKc+0x940>
    689e:	4c 8d a4 24 60 02 00 	lea    0x260(%rsp),%r12
    68a5:	00 
    68a6:	e9 e0 f7 ff ff       	jmpq   608b <_Z12createInputsPKc+0x28b>
    68ab:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
    68b0:	48 c7 44 24 58 e8 03 	movq   $0x3e8,0x58(%rsp)
    68b7:	00 00 
    68b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    68c0:	4c 89 f7             	mov    %r14,%rdi
    68c3:	48 8d 74 24 58       	lea    0x58(%rsp),%rsi
    68c8:	ba 0a 00 00 00       	mov    $0xa,%edx
    68cd:	48 89 d9             	mov    %rbx,%rcx
    68d0:	e8 eb 93 00 00       	callq  fcc0 <__getdelim@plt>
    68d5:	83 f8 ff             	cmp    $0xffffffff,%eax
    68d8:	0f 84 cb 02 00 00    	je     6ba9 <_Z12createInputsPKc+0xda9>
    68de:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    68e5:	00 
    68e6:	48 83 f8 23          	cmp    $0x23,%rax
    68ea:	77 08                	ja     68f4 <_Z12createInputsPKc+0xaf4>
    68ec:	49 0f a3 c5          	bt     %rax,%r13
    68f0:	73 02                	jae    68f4 <_Z12createInputsPKc+0xaf4>
    68f2:	eb cc                	jmp    68c0 <_Z12createInputsPKc+0xac0>
    68f4:	48 83 ec 08          	sub    $0x8,%rsp
    68f8:	49 89 ea             	mov    %rbp,%r10
    68fb:	4c 89 e5             	mov    %r12,%rbp
    68fe:	4c 89 e7             	mov    %r12,%rdi
    6901:	48 8d 35 3c b2 ff ff 	lea    -0x4dc4(%rip),%rsi        # 1b44 <_IO_stdin_used+0x244>
    6908:	48 8d 94 24 a8 00 00 	lea    0xa8(%rsp),%rdx
    690f:	00 
    6910:	48 8d 8c 24 18 01 00 	lea    0x118(%rsp),%rcx
    6917:	00 
    6918:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
    691d:	4d 89 f9             	mov    %r15,%r9
    6920:	31 c0                	xor    %eax,%eax
    6922:	4c 8d 5c 24 10       	lea    0x10(%rsp),%r11
    6927:	41 53                	push   %r11
    6929:	4c 8d 5c 24 20       	lea    0x20(%rsp),%r11
    692e:	41 53                	push   %r11
    6930:	4c 8d 5c 24 30       	lea    0x30(%rsp),%r11
    6935:	41 53                	push   %r11
    6937:	4c 8d 5c 24 40       	lea    0x40(%rsp),%r11
    693c:	41 53                	push   %r11
    693e:	41 52                	push   %r10
    6940:	e8 9b 93 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6945:	48 83 c4 30          	add    $0x30,%rsp
    6949:	48 89 df             	mov    %rbx,%rdi
    694c:	31 f6                	xor    %esi,%esi
    694e:	e8 cd ec ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6953:	49 89 c4             	mov    %rax,%r12
    6956:	bf 00 01 00 00       	mov    $0x100,%edi
    695b:	e8 90 93 00 00       	callq  fcf0 <_Znwm@plt>
    6960:	49 89 c7             	mov    %rax,%r15
    6963:	f2 0f 10 84 24 a0 00 	movsd  0xa0(%rsp),%xmm0
    696a:	00 00 
    696c:	f2 0f 10 8c 24 10 01 	movsd  0x110(%rsp),%xmm1
    6973:	00 00 
    6975:	f2 0f 10 54 24 30    	movsd  0x30(%rsp),%xmm2
    697b:	48 8d bc 24 48 02 00 	lea    0x248(%rsp),%rdi
    6982:	00 
    6983:	e8 d8 75 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    6988:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
    698e:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    6994:	f2 0f 10 54 24 20    	movsd  0x20(%rsp),%xmm2
    699a:	48 8d bc 24 30 02 00 	lea    0x230(%rsp),%rdi
    69a1:	00 
    69a2:	e8 b9 75 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    69a7:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    69ad:	f2 0f 10 4c 24 10    	movsd  0x10(%rsp),%xmm1
    69b3:	f2 0f 10 54 24 08    	movsd  0x8(%rsp),%xmm2
    69b9:	48 8d bc 24 18 02 00 	lea    0x218(%rsp),%rdi
    69c0:	00 
    69c1:	e8 9a 75 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    69c6:	48 83 ec 50          	sub    $0x50,%rsp
    69ca:	48 8b 84 24 78 02 00 	mov    0x278(%rsp),%rax
    69d1:	00 
    69d2:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    69d7:	0f 10 84 24 68 02 00 	movups 0x268(%rsp),%xmm0
    69de:	00 
    69df:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    69e4:	48 8b 84 24 90 02 00 	mov    0x290(%rsp),%rax
    69eb:	00 
    69ec:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    69f1:	0f 10 84 24 80 02 00 	movups 0x280(%rsp),%xmm0
    69f8:	00 
    69f9:	0f 11 44 24 18       	movups %xmm0,0x18(%rsp)
    69fe:	48 8b 84 24 a8 02 00 	mov    0x2a8(%rsp),%rax
    6a05:	00 
    6a06:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    6a0b:	0f 10 84 24 98 02 00 	movups 0x298(%rsp),%xmm0
    6a12:	00 
    6a13:	0f 11 04 24          	movups %xmm0,(%rsp)
    6a17:	4c 89 ff             	mov    %r15,%rdi
    6a1a:	4c 89 e6             	mov    %r12,%rsi
    6a1d:	e8 ae 64 00 00       	callq  ced0 <_ZN8TriangleC1E6VectorS0_S0_P7Texture>
    6a22:	48 83 c4 50          	add    $0x50,%rsp
    6a26:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    6a2b:	4c 89 fe             	mov    %r15,%rsi
    6a2e:	e8 bd 2a 00 00       	callq  94f0 <_ZN8Autonoma8addShapeEP5Shape>
    6a33:	48 89 df             	mov    %rbx,%rdi
    6a36:	be 01 00 00 00       	mov    $0x1,%esi
    6a3b:	e8 e0 eb ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6a40:	49 89 87 a0 00 00 00 	mov    %rax,0xa0(%r15)
    6a47:	49 89 ec             	mov    %rbp,%r12
    6a4a:	e9 3c f6 ff ff       	jmpq   608b <_Z12createInputsPKc+0x28b>
    6a4f:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
    6a54:	48 c7 44 24 08 e8 03 	movq   $0x3e8,0x8(%rsp)
    6a5b:	00 00 
    6a5d:	0f 1f 00             	nopl   (%rax)
    6a60:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    6a65:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    6a6a:	ba 0a 00 00 00       	mov    $0xa,%edx
    6a6f:	48 89 d9             	mov    %rbx,%rcx
    6a72:	e8 49 92 00 00       	callq  fcc0 <__getdelim@plt>
    6a77:	83 f8 ff             	cmp    $0xffffffff,%eax
    6a7a:	0f 84 3f 01 00 00    	je     6bbf <_Z12createInputsPKc+0xdbf>
    6a80:	0f b6 84 24 60 02 00 	movzbl 0x260(%rsp),%eax
    6a87:	00 
    6a88:	48 83 f8 23          	cmp    $0x23,%rax
    6a8c:	77 08                	ja     6a96 <_Z12createInputsPKc+0xc96>
    6a8e:	49 0f a3 c5          	bt     %rax,%r13
    6a92:	73 02                	jae    6a96 <_Z12createInputsPKc+0xc96>
    6a94:	eb ca                	jmp    6a60 <_Z12createInputsPKc+0xc60>
    6a96:	48 83 ec 08          	sub    $0x8,%rsp
    6a9a:	4c 89 e7             	mov    %r12,%rdi
    6a9d:	48 8d 35 fd b4 ff ff 	lea    -0x4b03(%rip),%rsi        # 1fa1 <_IO_stdin_used+0x6a1>
    6aa4:	48 8d 94 24 a8 00 00 	lea    0xa8(%rsp),%rdx
    6aab:	00 
    6aac:	48 8d 8c 24 18 01 00 	lea    0x118(%rsp),%rcx
    6ab3:	00 
    6ab4:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
    6ab9:	4d 89 f9             	mov    %r15,%r9
    6abc:	31 c0                	xor    %eax,%eax
    6abe:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
    6ac3:	41 52                	push   %r10
    6ac5:	4c 8d 54 24 30       	lea    0x30(%rsp),%r10
    6aca:	41 52                	push   %r10
    6acc:	55                   	push   %rbp
    6acd:	e8 0e 92 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6ad2:	48 83 c4 20          	add    $0x20,%rsp
    6ad6:	48 89 df             	mov    %rbx,%rdi
    6ad9:	31 f6                	xor    %esi,%esi
    6adb:	e8 40 eb ff ff       	callq  5620 <_Z12parseTextureP8_IO_FILEb>
    6ae0:	48 89 c5             	mov    %rax,%rbp
    6ae3:	bf b0 00 00 00       	mov    $0xb0,%edi
    6ae8:	e8 03 92 00 00       	callq  fcf0 <_Znwm@plt>
    6aed:	49 89 c7             	mov    %rax,%r15
    6af0:	f2 0f 10 84 24 a0 00 	movsd  0xa0(%rsp),%xmm0
    6af7:	00 00 
    6af9:	f2 0f 10 8c 24 10 01 	movsd  0x110(%rsp),%xmm1
    6b00:	00 00 
    6b02:	f2 0f 10 54 24 30    	movsd  0x30(%rsp),%xmm2
    6b08:	4c 89 e7             	mov    %r12,%rdi
    6b0b:	e8 50 74 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    6b10:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
    6b16:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    6b1c:	f2 0f 10 54 24 20    	movsd  0x20(%rsp),%xmm2
    6b22:	f2 0f 10 5c 24 18    	movsd  0x18(%rsp),%xmm3
    6b28:	4c 89 ff             	mov    %r15,%rdi
    6b2b:	4c 89 e6             	mov    %r12,%rsi
    6b2e:	48 89 ea             	mov    %rbp,%rdx
    6b31:	e8 da 53 00 00       	callq  bf10 <_ZN6SphereC1ERK6VectorP7Texturedddd>
    6b36:	e9 2f f5 ff ff       	jmpq   606a <_Z12createInputsPKc+0x26a>
    6b3b:	48 8d 3d 6c b3 ff ff 	lea    -0x4c94(%rip),%rdi        # 1eae <_IO_stdin_used+0x5ae>
    6b42:	e8 39 91 00 00       	callq  fc80 <puts@plt>
    6b47:	bf 01 00 00 00       	mov    $0x1,%edi
    6b4c:	e8 7f 91 00 00       	callq  fcd0 <exit@plt>
    6b51:	48 8d 3d 70 b7 ff ff 	lea    -0x4890(%rip),%rdi        # 22c8 <_IO_stdin_used+0x9c8>
    6b58:	e8 23 91 00 00       	callq  fc80 <puts@plt>
    6b5d:	bf 01 00 00 00       	mov    $0x1,%edi
    6b62:	e8 69 91 00 00       	callq  fcd0 <exit@plt>
    6b67:	48 8d 3d 05 af ff ff 	lea    -0x50fb(%rip),%rdi        # 1a73 <_IO_stdin_used+0x173>
    6b6e:	e8 0d 91 00 00       	callq  fc80 <puts@plt>
    6b73:	bf 01 00 00 00       	mov    $0x1,%edi
    6b78:	e8 53 91 00 00       	callq  fcd0 <exit@plt>
    6b7d:	48 8d 3d 13 b1 ff ff 	lea    -0x4eed(%rip),%rdi        # 1c97 <_IO_stdin_used+0x397>
    6b84:	e8 f7 90 00 00       	callq  fc80 <puts@plt>
    6b89:	bf 01 00 00 00       	mov    $0x1,%edi
    6b8e:	e8 3d 91 00 00       	callq  fcd0 <exit@plt>
    6b93:	48 8d 3d 05 b9 ff ff 	lea    -0x46fb(%rip),%rdi        # 249f <_IO_stdin_used+0xb9f>
    6b9a:	e8 e1 90 00 00       	callq  fc80 <puts@plt>
    6b9f:	bf 01 00 00 00       	mov    $0x1,%edi
    6ba4:	e8 27 91 00 00       	callq  fcd0 <exit@plt>
    6ba9:	48 8d 3d 0c b2 ff ff 	lea    -0x4df4(%rip),%rdi        # 1dbc <_IO_stdin_used+0x4bc>
    6bb0:	e8 cb 90 00 00       	callq  fc80 <puts@plt>
    6bb5:	bf 01 00 00 00       	mov    $0x1,%edi
    6bba:	e8 11 91 00 00       	callq  fcd0 <exit@plt>
    6bbf:	48 8d 3d 58 b0 ff ff 	lea    -0x4fa8(%rip),%rdi        # 1c1e <_IO_stdin_used+0x31e>
    6bc6:	e8 b5 90 00 00       	callq  fc80 <puts@plt>
    6bcb:	bf 01 00 00 00       	mov    $0x1,%edi
    6bd0:	e8 fb 90 00 00       	callq  fcd0 <exit@plt>
    6bd5:	48 8d 3d 4b b7 ff ff 	lea    -0x48b5(%rip),%rdi        # 2327 <_IO_stdin_used+0xa27>
    6bdc:	4c 89 f6             	mov    %r14,%rsi
    6bdf:	31 c0                	xor    %eax,%eax
    6be1:	e8 1a 91 00 00       	callq  fd00 <printf@plt>
    6be6:	bf 01 00 00 00       	mov    $0x1,%edi
    6beb:	e8 e0 90 00 00       	callq  fcd0 <exit@plt>
    6bf0:	48 8d 3d 44 b3 ff ff 	lea    -0x4cbc(%rip),%rdi        # 1f3b <_IO_stdin_used+0x63b>
    6bf7:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
    6bfe:	00 
    6bff:	31 c0                	xor    %eax,%eax
    6c01:	e8 fa 90 00 00       	callq  fd00 <printf@plt>
    6c06:	bf 01 00 00 00       	mov    $0x1,%edi
    6c0b:	e8 c0 90 00 00       	callq  fcd0 <exit@plt>
    6c10:	48 8d 3d 48 b8 ff ff 	lea    -0x47b8(%rip),%rdi        # 245f <_IO_stdin_used+0xb5f>
    6c17:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
    6c1e:	00 
    6c1f:	31 c0                	xor    %eax,%eax
    6c21:	e8 da 90 00 00       	callq  fd00 <printf@plt>
    6c26:	bf 01 00 00 00       	mov    $0x1,%edi
    6c2b:	e8 a0 90 00 00       	callq  fcd0 <exit@plt>
    6c30:	48 8d 3d f5 b8 ff ff 	lea    -0x470b(%rip),%rdi        # 252c <_IO_stdin_used+0xc2c>
    6c37:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
    6c3e:	00 
    6c3f:	31 c0                	xor    %eax,%eax
    6c41:	e8 ba 90 00 00       	callq  fd00 <printf@plt>
    6c46:	bf 01 00 00 00       	mov    $0x1,%edi
    6c4b:	e8 80 90 00 00       	callq  fcd0 <exit@plt>
    6c50:	eb 1d                	jmp    6c6f <_Z12createInputsPKc+0xe6f>
    6c52:	eb 1b                	jmp    6c6f <_Z12createInputsPKc+0xe6f>
    6c54:	48 89 c3             	mov    %rax,%rbx
    6c57:	4c 89 f7             	mov    %r14,%rdi
    6c5a:	e8 b1 90 00 00       	callq  fd10 <_ZdlPv@plt>
    6c5f:	48 89 df             	mov    %rbx,%rdi
    6c62:	e8 b9 90 00 00       	callq  fd20 <_Unwind_Resume@plt>
    6c67:	eb 06                	jmp    6c6f <_Z12createInputsPKc+0xe6f>
    6c69:	eb 04                	jmp    6c6f <_Z12createInputsPKc+0xe6f>
    6c6b:	eb 02                	jmp    6c6f <_Z12createInputsPKc+0xe6f>
    6c6d:	eb 00                	jmp    6c6f <_Z12createInputsPKc+0xe6f>
    6c6f:	48 89 c3             	mov    %rax,%rbx
    6c72:	4c 89 ff             	mov    %r15,%rdi
    6c75:	e8 96 90 00 00       	callq  fd10 <_ZdlPv@plt>
    6c7a:	48 89 df             	mov    %rbx,%rdi
    6c7d:	e8 9e 90 00 00       	callq  fd20 <_Unwind_Resume@plt>
    6c82:	48 89 c3             	mov    %rax,%rbx
    6c85:	4c 89 e7             	mov    %r12,%rdi
    6c88:	e8 83 90 00 00       	callq  fd10 <_ZdlPv@plt>
    6c8d:	48 89 df             	mov    %rbx,%rdi
    6c90:	e8 8b 90 00 00       	callq  fd20 <_Unwind_Resume@plt>
    6c95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6c9c:	00 00 00 00 

0000000000006ca0 <_Z8identityddd>:
    6ca0:	f2 0f 10 1d a0 ac ff 	movsd  -0x5360(%rip),%xmm3        # 1948 <_IO_stdin_used+0x48>
    6ca7:	ff 
    6ca8:	f2 0f 5c d8          	subsd  %xmm0,%xmm3
    6cac:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    6cb0:	f2 0f 59 d9          	mulsd  %xmm1,%xmm3
    6cb4:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    6cb8:	c3                   	retq   
    6cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000006cc0 <_Z5expfnddd>:
    6cc0:	48 83 ec 18          	sub    $0x18,%rsp
    6cc4:	f2 0f 11 4c 24 10    	movsd  %xmm1,0x10(%rsp)
    6cca:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
    6cce:	f2 0f 11 54 24 08    	movsd  %xmm2,0x8(%rsp)
    6cd4:	f2 0f 59 05 4c ac ff 	mulsd  -0x53b4(%rip),%xmm0        # 1928 <_IO_stdin_used+0x28>
    6cdb:	ff 
    6cdc:	e8 5f 90 00 00       	callq  fd40 <exp@plt>
    6ce1:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    6ce7:	f2 0f 5e 05 51 ac ff 	divsd  -0x53af(%rip),%xmm0        # 1940 <_IO_stdin_used+0x40>
    6cee:	ff 
    6cef:	f2 0f 58 44 24 10    	addsd  0x10(%rsp),%xmm0
    6cf5:	48 83 c4 18          	add    $0x18,%rsp
    6cf9:	c3                   	retq   
    6cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000006d00 <_Z5sinfnddd>:
    6d00:	48 83 ec 18          	sub    $0x18,%rsp
    6d04:	f2 0f 11 4c 24 10    	movsd  %xmm1,0x10(%rsp)
    6d0a:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
    6d0e:	f2 0f 11 54 24 08    	movsd  %xmm2,0x8(%rsp)
    6d14:	f2 0f 59 05 6c ac ff 	mulsd  -0x5394(%rip),%xmm0        # 1988 <_IO_stdin_used+0x88>
    6d1b:	ff 
    6d1c:	e8 2f 90 00 00       	callq  fd50 <sin@plt>
    6d21:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    6d27:	f2 0f 58 44 24 10    	addsd  0x10(%rsp),%xmm0
    6d2d:	48 83 c4 18          	add    $0x18,%rsp
    6d31:	c3                   	retq   
    6d32:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    6d39:	1f 84 00 00 00 00 00 

0000000000006d40 <_Z5cosfnddd>:
    6d40:	48 83 ec 18          	sub    $0x18,%rsp
    6d44:	f2 0f 11 4c 24 10    	movsd  %xmm1,0x10(%rsp)
    6d4a:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
    6d4e:	f2 0f 11 54 24 08    	movsd  %xmm2,0x8(%rsp)
    6d54:	f2 0f 59 05 2c ac ff 	mulsd  -0x53d4(%rip),%xmm0        # 1988 <_IO_stdin_used+0x88>
    6d5b:	ff 
    6d5c:	e8 ff 8f 00 00       	callq  fd60 <cos@plt>
    6d61:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    6d67:	f2 0f 58 44 24 10    	addsd  0x10(%rsp),%xmm0
    6d6d:	48 83 c4 18          	add    $0x18,%rsp
    6d71:	c3                   	retq   
    6d72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    6d79:	1f 84 00 00 00 00 00 

0000000000006d80 <_Z8setFramePKcP8Autonomaii>:
    6d80:	55                   	push   %rbp
    6d81:	41 57                	push   %r15
    6d83:	41 56                	push   %r14
    6d85:	41 55                	push   %r13
    6d87:	41 54                	push   %r12
    6d89:	53                   	push   %rbx
    6d8a:	48 81 ec 18 05 00 00 	sub    $0x518,%rsp
    6d91:	48 89 f3             	mov    %rsi,%rbx
    6d94:	48 85 ff             	test   %rdi,%rdi
    6d97:	74 46                	je     6ddf <_Z8setFramePKcP8Autonomaii+0x5f>
    6d99:	89 cd                	mov    %ecx,%ebp
    6d9b:	41 89 d4             	mov    %edx,%r12d
    6d9e:	48 8d 35 3c b3 ff ff 	lea    -0x4cc4(%rip),%rsi        # 20e1 <_IO_stdin_used+0x7e1>
    6da5:	e8 a6 8e 00 00       	callq  fc50 <fopen@plt>
    6daa:	49 89 c6             	mov    %rax,%r14
    6dad:	4c 8d bc 24 30 01 00 	lea    0x130(%rsp),%r15
    6db4:	00 
    6db5:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
    6dba:	48 c7 44 24 08 e8 03 	movq   $0x3e8,0x8(%rsp)
    6dc1:	00 00 
    6dc3:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    6dc8:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    6dcd:	ba 0a 00 00 00       	mov    $0xa,%edx
    6dd2:	48 89 c1             	mov    %rax,%rcx
    6dd5:	e8 e6 8e 00 00       	callq  fcc0 <__getdelim@plt>
    6dda:	83 f8 ff             	cmp    $0xffffffff,%eax
    6ddd:	75 1a                	jne    6df9 <_Z8setFramePKcP8Autonomaii+0x79>
    6ddf:	48 89 df             	mov    %rbx,%rdi
    6de2:	e8 29 e5 ff ff       	callq  5310 <_Z7refreshP8Autonoma>
    6de7:	48 81 c4 18 05 00 00 	add    $0x518,%rsp
    6dee:	5b                   	pop    %rbx
    6def:	41 5c                	pop    %r12
    6df1:	41 5d                	pop    %r13
    6df3:	41 5e                	pop    %r14
    6df5:	41 5f                	pop    %r15
    6df7:	5d                   	pop    %rbp
    6df8:	c3                   	retq   
    6df9:	f2 41 0f 2a cc       	cvtsi2sd %r12d,%xmm1
    6dfe:	f2 0f 2a c5          	cvtsi2sd %ebp,%xmm0
    6e02:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    6e06:	f2 0f 11 4c 24 78    	movsd  %xmm1,0x78(%rsp)
    6e0c:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    6e11:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
    6e16:	49 bd 01 04 00 00 08 	movabs $0x800000401,%r13
    6e1d:	00 00 00 
    6e20:	eb 2c                	jmp    6e4e <_Z8setFramePKcP8Autonomaii+0xce>
    6e22:	48 8b 07             	mov    (%rdi),%rax
    6e25:	ff 50 38             	callq  *0x38(%rax)
    6e28:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
    6e2d:	48 c7 44 24 08 e8 03 	movq   $0x3e8,0x8(%rsp)
    6e34:	00 00 
    6e36:	48 89 ef             	mov    %rbp,%rdi
    6e39:	4c 89 e6             	mov    %r12,%rsi
    6e3c:	ba 0a 00 00 00       	mov    $0xa,%edx
    6e41:	4c 89 f1             	mov    %r14,%rcx
    6e44:	e8 77 8e 00 00       	callq  fcc0 <__getdelim@plt>
    6e49:	83 f8 ff             	cmp    $0xffffffff,%eax
    6e4c:	74 91                	je     6ddf <_Z8setFramePKcP8Autonomaii+0x5f>
    6e4e:	0f b6 84 24 30 01 00 	movzbl 0x130(%rsp),%eax
    6e55:	00 
    6e56:	48 83 f8 23          	cmp    $0x23,%rax
    6e5a:	77 06                	ja     6e62 <_Z8setFramePKcP8Autonomaii+0xe2>
    6e5c:	49 0f a3 c5          	bt     %rax,%r13
    6e60:	72 d4                	jb     6e36 <_Z8setFramePKcP8Autonomaii+0xb6>
    6e62:	4c 89 ff             	mov    %r15,%rdi
    6e65:	48 8d 35 04 ad ff ff 	lea    -0x52fc(%rip),%rsi        # 1b70 <_IO_stdin_used+0x270>
    6e6c:	48 8d 94 24 90 00 00 	lea    0x90(%rsp),%rdx
    6e73:	00 
    6e74:	48 8d 8c 24 e0 00 00 	lea    0xe0(%rsp),%rcx
    6e7b:	00 
    6e7c:	4c 8d 44 24 1c       	lea    0x1c(%rsp),%r8
    6e81:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
    6e86:	31 c0                	xor    %eax,%eax
    6e88:	4c 8d 94 24 80 00 00 	lea    0x80(%rsp),%r10
    6e8f:	00 
    6e90:	41 52                	push   %r10
    6e92:	4c 8d 94 24 90 00 00 	lea    0x90(%rsp),%r10
    6e99:	00 
    6e9a:	41 52                	push   %r10
    6e9c:	e8 3f 8e 00 00       	callq  fce0 <__isoc99_sscanf@plt>
    6ea1:	48 83 c4 10          	add    $0x10,%rsp
    6ea5:	8b 84 24 90 00 00 00 	mov    0x90(%rsp),%eax
    6eac:	b9 6c 69 6e 65       	mov    $0x656e696c,%ecx
    6eb1:	31 c8                	xor    %ecx,%eax
    6eb3:	8b 8c 24 93 00 00 00 	mov    0x93(%rsp),%ecx
    6eba:	ba 65 61 72 00       	mov    $0x726165,%edx
    6ebf:	31 d1                	xor    %edx,%ecx
    6ec1:	09 c1                	or     %eax,%ecx
    6ec3:	48 8d 05 d6 fd ff ff 	lea    -0x22a(%rip),%rax        # 6ca0 <_Z8identityddd>
    6eca:	74 3a                	je     6f06 <_Z8setFramePKcP8Autonomaii+0x186>
    6ecc:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
    6ed3:	81 f9 73 69 6e 00    	cmp    $0x6e6973,%ecx
    6ed9:	74 24                	je     6eff <_Z8setFramePKcP8Autonomaii+0x17f>
    6edb:	48 8d 05 de fd ff ff 	lea    -0x222(%rip),%rax        # 6cc0 <_Z5expfnddd>
    6ee2:	81 f9 65 78 70 00    	cmp    $0x707865,%ecx
    6ee8:	74 1c                	je     6f06 <_Z8setFramePKcP8Autonomaii+0x186>
    6eea:	81 f9 63 6f 73 00    	cmp    $0x736f63,%ecx
    6ef0:	0f 85 9e 02 00 00    	jne    7194 <_Z8setFramePKcP8Autonomaii+0x414>
    6ef6:	48 8d 05 43 fe ff ff 	lea    -0x1bd(%rip),%rax        # 6d40 <_Z5cosfnddd>
    6efd:	eb 07                	jmp    6f06 <_Z8setFramePKcP8Autonomaii+0x186>
    6eff:	48 8d 05 fa fd ff ff 	lea    -0x206(%rip),%rax        # 6d00 <_Z5sinfnddd>
    6f06:	f2 0f 10 8c 24 88 00 	movsd  0x88(%rsp),%xmm1
    6f0d:	00 00 
    6f0f:	f2 0f 10 94 24 80 00 	movsd  0x80(%rsp),%xmm2
    6f16:	00 00 
    6f18:	f2 0f 10 44 24 78    	movsd  0x78(%rsp),%xmm0
    6f1e:	ff d0                	callq  *%rax
    6f20:	8b 84 24 e0 00 00 00 	mov    0xe0(%rsp),%eax
    6f27:	b9 63 61 6d 65       	mov    $0x656d6163,%ecx
    6f2c:	31 c8                	xor    %ecx,%eax
    6f2e:	8b 8c 24 e3 00 00 00 	mov    0xe3(%rsp),%ecx
    6f35:	ba 65 72 61 00       	mov    $0x617265,%edx
    6f3a:	31 d1                	xor    %edx,%ecx
    6f3c:	09 c1                	or     %eax,%ecx
    6f3e:	0f 84 39 01 00 00    	je     707d <_Z8setFramePKcP8Autonomaii+0x2fd>
    6f44:	8b 84 24 e0 00 00 00 	mov    0xe0(%rsp),%eax
    6f4b:	b9 6f 62 6a 65       	mov    $0x656a626f,%ecx
    6f50:	31 c8                	xor    %ecx,%eax
    6f52:	8b 8c 24 e3 00 00 00 	mov    0xe3(%rsp),%ecx
    6f59:	ba 65 63 74 00       	mov    $0x746365,%edx
    6f5e:	31 d1                	xor    %edx,%ecx
    6f60:	09 c1                	or     %eax,%ecx
    6f62:	0f 85 0f 02 00 00    	jne    7177 <_Z8setFramePKcP8Autonomaii+0x3f7>
    6f68:	8b 74 24 1c          	mov    0x1c(%rsp),%esi
    6f6c:	48 8b 83 b8 00 00 00 	mov    0xb8(%rbx),%rax
    6f73:	85 f6                	test   %esi,%esi
    6f75:	7e 1a                	jle    6f91 <_Z8setFramePKcP8Autonomaii+0x211>
    6f77:	48 8b 8b c0 00 00 00 	mov    0xc0(%rbx),%rcx
    6f7e:	89 f2                	mov    %esi,%edx
    6f80:	48 39 c8             	cmp    %rcx,%rax
    6f83:	0f 84 d6 01 00 00    	je     715f <_Z8setFramePKcP8Autonomaii+0x3df>
    6f89:	48 8b 40 10          	mov    0x10(%rax),%rax
    6f8d:	ff ca                	dec    %edx
    6f8f:	75 ef                	jne    6f80 <_Z8setFramePKcP8Autonomaii+0x200>
    6f91:	48 8b 38             	mov    (%rax),%rdi
    6f94:	81 7c 24 20 79 61 77 	cmpl   $0x776179,0x20(%rsp)
    6f9b:	00 
    6f9c:	0f 84 80 fe ff ff    	je     6e22 <_Z8setFramePKcP8Autonomaii+0xa2>
    6fa2:	8b 44 24 20          	mov    0x20(%rsp),%eax
    6fa6:	b9 70 69 74 63       	mov    $0x63746970,%ecx
    6fab:	31 c8                	xor    %ecx,%eax
    6fad:	0f b7 4c 24 24       	movzwl 0x24(%rsp),%ecx
    6fb2:	83 f1 68             	xor    $0x68,%ecx
    6fb5:	09 c1                	or     %eax,%ecx
    6fb7:	0f 84 23 01 00 00    	je     70e0 <_Z8setFramePKcP8Autonomaii+0x360>
    6fbd:	8b 44 24 20          	mov    0x20(%rsp),%eax
    6fc1:	b9 72 6f 6c 6c       	mov    $0x6c6c6f72,%ecx
    6fc6:	31 c8                	xor    %ecx,%eax
    6fc8:	0f b6 4c 24 24       	movzbl 0x24(%rsp),%ecx
    6fcd:	09 c1                	or     %eax,%ecx
    6fcf:	0f 84 16 01 00 00    	je     70eb <_Z8setFramePKcP8Autonomaii+0x36b>
    6fd5:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    6fda:	48 b9 74 65 78 74 75 	movabs $0x5865727574786574,%rcx
    6fe1:	72 65 58 
    6fe4:	48 31 c8             	xor    %rcx,%rax
    6fe7:	0f b6 4c 24 28       	movzbl 0x28(%rsp),%ecx
    6fec:	48 09 c1             	or     %rax,%rcx
    6fef:	0f 84 0e 01 00 00    	je     7103 <_Z8setFramePKcP8Autonomaii+0x383>
    6ff5:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    6ffa:	48 b9 74 65 78 74 75 	movabs $0x5965727574786574,%rcx
    7001:	72 65 59 
    7004:	48 31 c8             	xor    %rcx,%rax
    7007:	0f b6 4c 24 28       	movzbl 0x28(%rsp),%ecx
    700c:	48 09 c1             	or     %rax,%rcx
    700f:	0f 84 05 01 00 00    	je     711a <_Z8setFramePKcP8Autonomaii+0x39a>
    7015:	8b 44 24 20          	mov    0x20(%rsp),%eax
    7019:	b9 6d 61 70 58       	mov    $0x5870616d,%ecx
    701e:	31 c8                	xor    %ecx,%eax
    7020:	0f b6 4c 24 24       	movzbl 0x24(%rsp),%ecx
    7025:	09 c1                	or     %eax,%ecx
    7027:	0f 84 0b 01 00 00    	je     7138 <_Z8setFramePKcP8Autonomaii+0x3b8>
    702d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    7031:	b9 6d 61 70 59       	mov    $0x5970616d,%ecx
    7036:	31 c8                	xor    %ecx,%eax
    7038:	0f b6 4c 24 24       	movzbl 0x24(%rsp),%ecx
    703d:	09 c1                	or     %eax,%ecx
    703f:	0f 84 00 01 00 00    	je     7145 <_Z8setFramePKcP8Autonomaii+0x3c5>
    7045:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    704a:	48 b9 6d 61 70 4f 66 	movabs $0x5966664f70616d,%rcx
    7051:	66 59 00 
    7054:	48 39 c8             	cmp    %rcx,%rax
    7057:	0f 84 f5 00 00 00    	je     7152 <_Z8setFramePKcP8Autonomaii+0x3d2>
    705d:	48 b9 6d 61 70 4f 66 	movabs $0x5866664f70616d,%rcx
    7064:	66 58 00 
    7067:	48 39 c8             	cmp    %rcx,%rax
    706a:	0f 85 4d 01 00 00    	jne    71bd <_Z8setFramePKcP8Autonomaii+0x43d>
    7070:	f2 0f 11 87 90 00 00 	movsd  %xmm0,0x90(%rdi)
    7077:	00 
    7078:	e9 ab fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    707d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    7081:	3d 79 61 77 00       	cmp    $0x776179,%eax
    7086:	75 0d                	jne    7095 <_Z8setFramePKcP8Autonomaii+0x315>
    7088:	48 89 df             	mov    %rbx,%rdi
    708b:	e8 c0 15 00 00       	callq  8650 <_ZN6Camera6setYawEd>
    7090:	e9 93 fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    7095:	8b 4c 24 20          	mov    0x20(%rsp),%ecx
    7099:	ba 70 69 74 63       	mov    $0x63746970,%edx
    709e:	31 d1                	xor    %edx,%ecx
    70a0:	0f b7 54 24 24       	movzwl 0x24(%rsp),%edx
    70a5:	83 f2 68             	xor    $0x68,%edx
    70a8:	09 ca                	or     %ecx,%edx
    70aa:	74 4a                	je     70f6 <_Z8setFramePKcP8Autonomaii+0x376>
    70ac:	8b 4c 24 20          	mov    0x20(%rsp),%ecx
    70b0:	ba 72 6f 6c 6c       	mov    $0x6c6c6f72,%edx
    70b5:	31 d1                	xor    %edx,%ecx
    70b7:	0f b6 54 24 24       	movzbl 0x24(%rsp),%edx
    70bc:	09 ca                	or     %ecx,%edx
    70be:	74 4d                	je     710d <_Z8setFramePKcP8Autonomaii+0x38d>
    70c0:	66 83 f8 7a          	cmp    $0x7a,%ax
    70c4:	74 68                	je     712e <_Z8setFramePKcP8Autonomaii+0x3ae>
    70c6:	0f b7 c0             	movzwl %ax,%eax
    70c9:	83 f8 79             	cmp    $0x79,%eax
    70cc:	74 56                	je     7124 <_Z8setFramePKcP8Autonomaii+0x3a4>
    70ce:	83 f8 78             	cmp    $0x78,%eax
    70d1:	0f 85 dd 00 00 00    	jne    71b4 <_Z8setFramePKcP8Autonomaii+0x434>
    70d7:	f2 0f 11 03          	movsd  %xmm0,(%rbx)
    70db:	e9 48 fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    70e0:	48 8b 07             	mov    (%rdi),%rax
    70e3:	ff 50 40             	callq  *0x40(%rax)
    70e6:	e9 3d fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    70eb:	48 8b 07             	mov    (%rdi),%rax
    70ee:	ff 50 48             	callq  *0x48(%rax)
    70f1:	e9 32 fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    70f6:	48 89 df             	mov    %rbx,%rdi
    70f9:	e8 22 17 00 00       	callq  8820 <_ZN6Camera8setPitchEd>
    70fe:	e9 25 fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    7103:	f2 0f 11 47 70       	movsd  %xmm0,0x70(%rdi)
    7108:	e9 1b fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    710d:	48 89 df             	mov    %rbx,%rdi
    7110:	e8 7b 18 00 00       	callq  8990 <_ZN6Camera7setRollEd>
    7115:	e9 0e fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    711a:	f2 0f 11 47 78       	movsd  %xmm0,0x78(%rdi)
    711f:	e9 04 fd ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    7124:	f2 0f 11 43 08       	movsd  %xmm0,0x8(%rbx)
    7129:	e9 fa fc ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    712e:	f2 0f 11 43 10       	movsd  %xmm0,0x10(%rbx)
    7133:	e9 f0 fc ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    7138:	f2 0f 11 87 80 00 00 	movsd  %xmm0,0x80(%rdi)
    713f:	00 
    7140:	e9 e3 fc ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    7145:	f2 0f 11 87 88 00 00 	movsd  %xmm0,0x88(%rdi)
    714c:	00 
    714d:	e9 d6 fc ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    7152:	f2 0f 11 87 98 00 00 	movsd  %xmm0,0x98(%rdi)
    7159:	00 
    715a:	e9 c9 fc ff ff       	jmpq   6e28 <_Z8setFramePKcP8Autonomaii+0xa8>
    715f:	48 8d 3d 58 ae ff ff 	lea    -0x51a8(%rip),%rdi        # 1fbe <_IO_stdin_used+0x6be>
    7166:	31 c0                	xor    %eax,%eax
    7168:	e8 93 8b 00 00       	callq  fd00 <printf@plt>
    716d:	bf 01 00 00 00       	mov    $0x1,%edi
    7172:	e8 59 8b 00 00       	callq  fcd0 <exit@plt>
    7177:	48 8d 3d dc ad ff ff 	lea    -0x5224(%rip),%rdi        # 1f5a <_IO_stdin_used+0x65a>
    717e:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    7183:	31 c0                	xor    %eax,%eax
    7185:	e8 76 8b 00 00       	callq  fd00 <printf@plt>
    718a:	bf 01 00 00 00       	mov    $0x1,%edi
    718f:	e8 3c 8b 00 00       	callq  fcd0 <exit@plt>
    7194:	48 8d 3d aa b1 ff ff 	lea    -0x4e56(%rip),%rdi        # 2345 <_IO_stdin_used+0xa45>
    719b:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
    71a2:	00 
    71a3:	31 c0                	xor    %eax,%eax
    71a5:	e8 56 8b 00 00       	callq  fd00 <printf@plt>
    71aa:	bf 01 00 00 00       	mov    $0x1,%edi
    71af:	e8 1c 8b 00 00       	callq  fcd0 <exit@plt>
    71b4:	48 8d 3d 3d ac ff ff 	lea    -0x53c3(%rip),%rdi        # 1df8 <_IO_stdin_used+0x4f8>
    71bb:	eb c1                	jmp    717e <_Z8setFramePKcP8Autonomaii+0x3fe>
    71bd:	48 8d 3d 98 ae ff ff 	lea    -0x5168(%rip),%rdi        # 205c <_IO_stdin_used+0x75c>
    71c4:	eb b8                	jmp    717e <_Z8setFramePKcP8Autonomaii+0x3fe>
    71c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    71cd:	00 00 00 

00000000000071d0 <main>:
    71d0:	55                   	push   %rbp
    71d1:	41 57                	push   %r15
    71d3:	41 56                	push   %r14
    71d5:	41 55                	push   %r13
    71d7:	41 54                	push   %r12
    71d9:	53                   	push   %rbx
    71da:	48 81 ec e8 08 00 00 	sub    $0x8e8,%rsp
    71e1:	83 ff 02             	cmp    $0x2,%edi
    71e4:	0f 8c 66 02 00 00    	jl     7450 <main+0x280>
    71ea:	49 89 f4             	mov    %rsi,%r12
    71ed:	89 fd                	mov    %edi,%ebp
    71ef:	41 b7 01             	mov    $0x1,%r15b
    71f2:	bb 01 00 00 00       	mov    $0x1,%ebx
    71f7:	b0 01                	mov    $0x1,%al
    71f9:	89 44 24 10          	mov    %eax,0x10(%rsp)
    71fd:	31 c0                	xor    %eax,%eax
    71ff:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    7204:	31 c0                	xor    %eax,%eax
    7206:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    720b:	31 c0                	xor    %eax,%eax
    720d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    7212:	41 be 01 00 00 00    	mov    $0x1,%r14d
    7218:	eb 29                	jmp    7243 <main+0x73>
    721a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7220:	48 63 c3             	movslq %ebx,%rax
    7223:	49 8b 3c c4          	mov    (%r12,%rax,8),%rdi
    7227:	31 f6                	xor    %esi,%esi
    7229:	ba 0a 00 00 00       	mov    $0xa,%edx
    722e:	e8 3d 8b 00 00       	callq  fd70 <strtol@plt>
    7233:	89 05 a3 b1 00 00    	mov    %eax,0xb1a3(%rip)        # 123dc <H>
    7239:	ff c3                	inc    %ebx
    723b:	39 eb                	cmp    %ebp,%ebx
    723d:	0f 8d 38 02 00 00    	jge    747b <main+0x2ab>
    7243:	48 63 c3             	movslq %ebx,%rax
    7246:	4d 8b 2c c4          	mov    (%r12,%rax,8),%r13
    724a:	4c 89 ef             	mov    %r13,%rdi
    724d:	48 8d 35 b3 aa ff ff 	lea    -0x554d(%rip),%rsi        # 1d07 <_IO_stdin_used+0x407>
    7254:	e8 57 8a 00 00       	callq  fcb0 <strcmp@plt>
    7259:	85 c0                	test   %eax,%eax
    725b:	0f 84 df 00 00 00    	je     7340 <main+0x170>
    7261:	4c 89 ef             	mov    %r13,%rdi
    7264:	48 8d 35 19 a9 ff ff 	lea    -0x56e7(%rip),%rsi        # 1b84 <_IO_stdin_used+0x284>
    726b:	e8 40 8a 00 00       	callq  fcb0 <strcmp@plt>
    7270:	85 c0                	test   %eax,%eax
    7272:	0f 84 e8 00 00 00    	je     7360 <main+0x190>
    7278:	4c 89 ef             	mov    %r13,%rdi
    727b:	48 8d 35 da b1 ff ff 	lea    -0x4e26(%rip),%rsi        # 245c <_IO_stdin_used+0xb5c>
    7282:	e8 29 8a 00 00       	callq  fcb0 <strcmp@plt>
    7287:	85 c0                	test   %eax,%eax
    7289:	0f 84 03 01 00 00    	je     7392 <main+0x1c2>
    728f:	4c 89 ef             	mov    %r13,%rdi
    7292:	48 8d 35 ee a8 ff ff 	lea    -0x5712(%rip),%rsi        # 1b87 <_IO_stdin_used+0x287>
    7299:	e8 12 8a 00 00       	callq  fcb0 <strcmp@plt>
    729e:	85 c0                	test   %eax,%eax
    72a0:	0f 84 1b 01 00 00    	je     73c1 <main+0x1f1>
    72a6:	4c 89 ef             	mov    %r13,%rdi
    72a9:	48 8d 35 d1 b1 ff ff 	lea    -0x4e2f(%rip),%rsi        # 2481 <_IO_stdin_used+0xb81>
    72b0:	e8 fb 89 00 00       	callq  fcb0 <strcmp@plt>
    72b5:	85 c0                	test   %eax,%eax
    72b7:	0f 84 29 01 00 00    	je     73e6 <main+0x216>
    72bd:	4c 89 ef             	mov    %r13,%rdi
    72c0:	48 8d 35 18 ad ff ff 	lea    -0x52e8(%rip),%rsi        # 1fdf <_IO_stdin_used+0x6df>
    72c7:	e8 e4 89 00 00       	callq  fcb0 <strcmp@plt>
    72cc:	85 c0                	test   %eax,%eax
    72ce:	0f 84 37 01 00 00    	je     740b <main+0x23b>
    72d4:	4c 89 ef             	mov    %r13,%rdi
    72d7:	48 8d 35 63 ab ff ff 	lea    -0x549d(%rip),%rsi        # 1e41 <_IO_stdin_used+0x541>
    72de:	e8 cd 89 00 00       	callq  fcb0 <strcmp@plt>
    72e3:	85 c0                	test   %eax,%eax
    72e5:	0f 84 45 01 00 00    	je     7430 <main+0x260>
    72eb:	4c 89 ef             	mov    %r13,%rdi
    72ee:	48 8d 35 1e ad ff ff 	lea    -0x52e2(%rip),%rsi        # 2013 <_IO_stdin_used+0x713>
    72f5:	e8 b6 89 00 00       	callq  fcb0 <strcmp@plt>
    72fa:	85 c0                	test   %eax,%eax
    72fc:	0f 84 39 01 00 00    	je     743b <main+0x26b>
    7302:	4c 89 ef             	mov    %r13,%rdi
    7305:	48 8d 35 c0 b0 ff ff 	lea    -0x4f40(%rip),%rsi        # 23cc <_IO_stdin_used+0xacc>
    730c:	e8 9f 89 00 00       	callq  fcb0 <strcmp@plt>
    7311:	85 c0                	test   %eax,%eax
    7313:	0f 84 2f 01 00 00    	je     7448 <main+0x278>
    7319:	4c 89 ef             	mov    %r13,%rdi
    731c:	48 8d 35 fb ac ff ff 	lea    -0x5305(%rip),%rsi        # 201e <_IO_stdin_used+0x71e>
    7323:	e8 88 89 00 00       	callq  fcb0 <strcmp@plt>
    7328:	41 b7 01             	mov    $0x1,%r15b
    732b:	85 c0                	test   %eax,%eax
    732d:	0f 84 06 ff ff ff    	je     7239 <main+0x69>
    7333:	e9 27 05 00 00       	jmpq   785f <main+0x68f>
    7338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    733f:	00 
    7340:	ff c3                	inc    %ebx
    7342:	39 eb                	cmp    %ebp,%ebx
    7344:	0f 8c d6 fe ff ff    	jl     7220 <main+0x50>
    734a:	48 8d 3d d0 ae ff ff 	lea    -0x5130(%rip),%rdi        # 2221 <_IO_stdin_used+0x921>
    7351:	31 c0                	xor    %eax,%eax
    7353:	e8 a8 89 00 00       	callq  fd00 <printf@plt>
    7358:	e9 c3 fe ff ff       	jmpq   7220 <main+0x50>
    735d:	0f 1f 00             	nopl   (%rax)
    7360:	ff c3                	inc    %ebx
    7362:	39 eb                	cmp    %ebp,%ebx
    7364:	7c 0e                	jl     7374 <main+0x1a4>
    7366:	48 8d 3d 41 a6 ff ff 	lea    -0x59bf(%rip),%rdi        # 19ae <_IO_stdin_used+0xae>
    736d:	31 c0                	xor    %eax,%eax
    736f:	e8 8c 89 00 00       	callq  fd00 <printf@plt>
    7374:	48 63 c3             	movslq %ebx,%rax
    7377:	49 8b 3c c4          	mov    (%r12,%rax,8),%rdi
    737b:	31 f6                	xor    %esi,%esi
    737d:	ba 0a 00 00 00       	mov    $0xa,%edx
    7382:	e8 e9 89 00 00       	callq  fd70 <strtol@plt>
    7387:	89 05 4b b0 00 00    	mov    %eax,0xb04b(%rip)        # 123d8 <W>
    738d:	e9 a7 fe ff ff       	jmpq   7239 <main+0x69>
    7392:	ff c3                	inc    %ebx
    7394:	39 eb                	cmp    %ebp,%ebx
    7396:	7c 0e                	jl     73a6 <main+0x1d6>
    7398:	48 8d 3d 42 ae ff ff 	lea    -0x51be(%rip),%rdi        # 21e1 <_IO_stdin_used+0x8e1>
    739f:	31 c0                	xor    %eax,%eax
    73a1:	e8 5a 89 00 00       	callq  fd00 <printf@plt>
    73a6:	48 63 c3             	movslq %ebx,%rax
    73a9:	49 8b 3c c4          	mov    (%r12,%rax,8),%rdi
    73ad:	31 f6                	xor    %esi,%esi
    73af:	ba 0a 00 00 00       	mov    $0xa,%edx
    73b4:	e8 b7 89 00 00       	callq  fd70 <strtol@plt>
    73b9:	49 89 c6             	mov    %rax,%r14
    73bc:	e9 78 fe ff ff       	jmpq   7239 <main+0x69>
    73c1:	ff c3                	inc    %ebx
    73c3:	39 eb                	cmp    %ebp,%ebx
    73c5:	7c 0e                	jl     73d5 <main+0x205>
    73c7:	48 8d 3d d4 ad ff ff 	lea    -0x522c(%rip),%rdi        # 21a2 <_IO_stdin_used+0x8a2>
    73ce:	31 c0                	xor    %eax,%eax
    73d0:	e8 2b 89 00 00       	callq  fd00 <printf@plt>
    73d5:	48 63 c3             	movslq %ebx,%rax
    73d8:	49 8b 04 c4          	mov    (%r12,%rax,8),%rax
    73dc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    73e1:	e9 53 fe ff ff       	jmpq   7239 <main+0x69>
    73e6:	ff c3                	inc    %ebx
    73e8:	39 eb                	cmp    %ebp,%ebx
    73ea:	7c 0e                	jl     73fa <main+0x22a>
    73ec:	48 8d 3d 72 b1 ff ff 	lea    -0x4e8e(%rip),%rdi        # 2565 <_IO_stdin_used+0xc65>
    73f3:	31 c0                	xor    %eax,%eax
    73f5:	e8 06 89 00 00       	callq  fd00 <printf@plt>
    73fa:	48 63 c3             	movslq %ebx,%rax
    73fd:	49 8b 04 c4          	mov    (%r12,%rax,8),%rax
    7401:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    7406:	e9 2e fe ff ff       	jmpq   7239 <main+0x69>
    740b:	ff c3                	inc    %ebx
    740d:	39 eb                	cmp    %ebp,%ebx
    740f:	7c 0e                	jl     741f <main+0x24f>
    7411:	48 8d 3d 73 af ff ff 	lea    -0x508d(%rip),%rdi        # 238b <_IO_stdin_used+0xa8b>
    7418:	31 c0                	xor    %eax,%eax
    741a:	e8 e1 88 00 00       	callq  fd00 <printf@plt>
    741f:	48 63 c3             	movslq %ebx,%rax
    7422:	49 8b 04 c4          	mov    (%r12,%rax,8),%rax
    7426:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    742b:	e9 09 fe ff ff       	jmpq   7239 <main+0x69>
    7430:	b0 01                	mov    $0x1,%al
    7432:	89 44 24 10          	mov    %eax,0x10(%rsp)
    7436:	e9 fe fd ff ff       	jmpq   7239 <main+0x69>
    743b:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    7442:	00 
    7443:	e9 f1 fd ff ff       	jmpq   7239 <main+0x69>
    7448:	45 31 ff             	xor    %r15d,%r15d
    744b:	e9 e9 fd ff ff       	jmpq   7239 <main+0x69>
    7450:	48 8d 05 53 a9 ff ff 	lea    -0x56ad(%rip),%rax        # 1daa <_IO_stdin_used+0x4aa>
    7457:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    745c:	41 be 01 00 00 00    	mov    $0x1,%r14d
    7462:	31 c0                	xor    %eax,%eax
    7464:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    7469:	31 c0                	xor    %eax,%eax
    746b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7470:	31 c0                	xor    %eax,%eax
    7472:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7477:	31 ff                	xor    %edi,%edi
    7479:	eb 50                	jmp    74cb <main+0x2fb>
    747b:	41 f6 c7 01          	test   $0x1,%r15b
    747f:	0f 94 c0             	sete   %al
    7482:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    7487:	f6 44 24 10 01       	testb  $0x1,0x10(%rsp)
    748c:	0f 94 c0             	sete   %al
    748f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7494:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
    749a:	75 2a                	jne    74c6 <main+0x2f6>
    749c:	41 f6 c7 01          	test   $0x1,%r15b
    74a0:	48 8d 05 41 ac ff ff 	lea    -0x53bf(%rip),%rax        # 20e8 <_IO_stdin_used+0x7e8>
    74a7:	48 8d 0d fc a8 ff ff 	lea    -0x5704(%rip),%rcx        # 1daa <_IO_stdin_used+0x4aa>
    74ae:	48 0f 44 c8          	cmove  %rax,%rcx
    74b2:	41 83 fe 01          	cmp    $0x1,%r14d
    74b6:	48 8d 05 9a ad ff ff 	lea    -0x5266(%rip),%rax        # 2257 <_IO_stdin_used+0x957>
    74bd:	48 0f 44 c1          	cmove  %rcx,%rax
    74c1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    74c6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    74cb:	e8 30 e9 ff ff       	callq  5e00 <_Z12createInputsPKc>
    74d0:	49 89 c5             	mov    %rax,%r13
    74d3:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    74d8:	31 f6                	xor    %esi,%esi
    74da:	e8 a1 88 00 00       	callq  fd80 <gettimeofday@plt>
    74df:	45 85 f6             	test   %r14d,%r14d
    74e2:	0f 8e b5 02 00 00    	jle    779d <main+0x5cd>
    74e8:	80 7c 24 28 00       	cmpb   $0x0,0x28(%rsp)
    74ed:	0f 84 e4 00 00 00    	je     75d7 <main+0x407>
    74f3:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    74f8:	48 8d 1d 3e a5 ff ff 	lea    -0x5ac2(%rip),%rbx        # 1a3d <_IO_stdin_used+0x13d>
    74ff:	31 ed                	xor    %ebp,%ebp
    7501:	e9 92 00 00 00       	jmpq   7598 <main+0x3c8>
    7506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    750d:	00 00 00 
    7510:	48 8d 15 d1 a5 ff ff 	lea    -0x5a2f(%rip),%rdx        # 1ae8 <_IO_stdin_used+0x1e8>
    7517:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    751c:	31 c0                	xor    %eax,%eax
    751e:	e8 4d 87 00 00       	callq  fc70 <snprintf@plt>
    7523:	4c 89 e7             	mov    %r12,%rdi
    7526:	48 8d 35 f6 a9 ff ff 	lea    -0x560a(%rip),%rsi        # 1f23 <_IO_stdin_used+0x623>
    752d:	e8 1e 87 00 00       	callq  fc50 <fopen@plt>
    7532:	49 89 c7             	mov    %rax,%r15
    7535:	8b 15 9d ae 00 00    	mov    0xae9d(%rip),%edx        # 123d8 <W>
    753b:	8b 0d 9b ae 00 00    	mov    0xae9b(%rip),%ecx        # 123dc <H>
    7541:	48 89 c7             	mov    %rax,%rdi
    7544:	48 8d 35 55 a9 ff ff 	lea    -0x56ab(%rip),%rsi        # 1ea0 <_IO_stdin_used+0x5a0>
    754b:	31 c0                	xor    %eax,%eax
    754d:	e8 de 86 00 00       	callq  fc30 <fprintf@plt>
    7552:	48 8b 3d e7 af 00 00 	mov    0xafe7(%rip),%rdi        # 12540 <DATA>
    7559:	8b 05 79 ae 00 00    	mov    0xae79(%rip),%eax        # 123d8 <W>
    755f:	0f af 05 76 ae 00 00 	imul   0xae76(%rip),%eax        # 123dc <H>
    7566:	8d 04 40             	lea    (%rax,%rax,2),%eax
    7569:	48 63 d0             	movslq %eax,%rdx
    756c:	be 01 00 00 00       	mov    $0x1,%esi
    7571:	4c 89 f9             	mov    %r15,%rcx
    7574:	e8 c7 86 00 00       	callq  fc40 <fwrite@plt>
    7579:	4c 89 ff             	mov    %r15,%rdi
    757c:	e8 df 86 00 00       	callq  fc60 <fclose@plt>
    7581:	48 89 df             	mov    %rbx,%rdi
    7584:	89 ee                	mov    %ebp,%esi
    7586:	31 c0                	xor    %eax,%eax
    7588:	e8 73 87 00 00       	callq  fd00 <printf@plt>
    758d:	ff c5                	inc    %ebp
    758f:	41 39 ee             	cmp    %ebp,%r14d
    7592:	0f 84 05 02 00 00    	je     779d <main+0x5cd>
    7598:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    759d:	4c 89 ee             	mov    %r13,%rsi
    75a0:	89 ea                	mov    %ebp,%edx
    75a2:	44 89 f1             	mov    %r14d,%ecx
    75a5:	e8 d6 f7 ff ff       	callq  6d80 <_Z8setFramePKcP8Autonomaii>
    75aa:	be c8 00 00 00       	mov    $0xc8,%esi
    75af:	4c 89 e7             	mov    %r12,%rdi
    75b2:	41 83 fe 01          	cmp    $0x1,%r14d
    75b6:	0f 84 54 ff ff ff    	je     7510 <main+0x340>
    75bc:	48 8d 15 1f aa ff ff 	lea    -0x55e1(%rip),%rdx        # 1fe2 <_IO_stdin_used+0x6e2>
    75c3:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    75c8:	41 89 e8             	mov    %ebp,%r8d
    75cb:	31 c0                	xor    %eax,%eax
    75cd:	e8 9e 86 00 00       	callq  fc70 <snprintf@plt>
    75d2:	e9 4c ff ff ff       	jmpq   7523 <main+0x353>
    75d7:	41 83 fe 01          	cmp    $0x1,%r14d
    75db:	0f 85 d0 00 00 00    	jne    76b1 <main+0x4e1>
    75e1:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    75e6:	4c 89 ee             	mov    %r13,%rsi
    75e9:	31 d2                	xor    %edx,%edx
    75eb:	b9 01 00 00 00       	mov    $0x1,%ecx
    75f0:	e8 8b f7 ff ff       	callq  6d80 <_Z8setFramePKcP8Autonomaii>
    75f5:	48 8d 15 ec a4 ff ff 	lea    -0x5b14(%rip),%rdx        # 1ae8 <_IO_stdin_used+0x1e8>
    75fc:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
    7601:	be c8 00 00 00       	mov    $0xc8,%esi
    7606:	48 89 df             	mov    %rbx,%rdi
    7609:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    760e:	31 c0                	xor    %eax,%eax
    7610:	e8 5b 86 00 00       	callq  fc70 <snprintf@plt>
    7615:	48 8d 15 fb a3 ff ff 	lea    -0x5c05(%rip),%rdx        # 1a17 <_IO_stdin_used+0x117>
    761c:	4c 8d bc 24 10 01 00 	lea    0x110(%rsp),%r15
    7623:	00 
    7624:	be d0 07 00 00       	mov    $0x7d0,%esi
    7629:	4c 89 ff             	mov    %r15,%rdi
    762c:	48 89 d9             	mov    %rbx,%rcx
    762f:	31 c0                	xor    %eax,%eax
    7631:	e8 3a 86 00 00       	callq  fc70 <snprintf@plt>
    7636:	4c 89 ff             	mov    %r15,%rdi
    7639:	e8 42 86 00 00       	callq  fc80 <puts@plt>
    763e:	48 8d 35 de a8 ff ff 	lea    -0x5722(%rip),%rsi        # 1f23 <_IO_stdin_used+0x623>
    7645:	4c 89 ff             	mov    %r15,%rdi
    7648:	e8 43 86 00 00       	callq  fc90 <popen@plt>
    764d:	48 89 c3             	mov    %rax,%rbx
    7650:	8b 15 82 ad 00 00    	mov    0xad82(%rip),%edx        # 123d8 <W>
    7656:	8b 0d 80 ad 00 00    	mov    0xad80(%rip),%ecx        # 123dc <H>
    765c:	48 8d 35 3d a8 ff ff 	lea    -0x57c3(%rip),%rsi        # 1ea0 <_IO_stdin_used+0x5a0>
    7663:	48 89 c7             	mov    %rax,%rdi
    7666:	31 c0                	xor    %eax,%eax
    7668:	e8 c3 85 00 00       	callq  fc30 <fprintf@plt>
    766d:	48 8b 3d cc ae 00 00 	mov    0xaecc(%rip),%rdi        # 12540 <DATA>
    7674:	8b 05 5e ad 00 00    	mov    0xad5e(%rip),%eax        # 123d8 <W>
    767a:	0f af 05 5b ad 00 00 	imul   0xad5b(%rip),%eax        # 123dc <H>
    7681:	8d 04 40             	lea    (%rax,%rax,2),%eax
    7684:	48 63 d0             	movslq %eax,%rdx
    7687:	be 01 00 00 00       	mov    $0x1,%esi
    768c:	48 89 d9             	mov    %rbx,%rcx
    768f:	e8 ac 85 00 00       	callq  fc40 <fwrite@plt>
    7694:	48 89 df             	mov    %rbx,%rdi
    7697:	e8 04 86 00 00       	callq  fca0 <pclose@plt>
    769c:	48 8d 3d 9a a3 ff ff 	lea    -0x5c66(%rip),%rdi        # 1a3d <_IO_stdin_used+0x13d>
    76a3:	31 f6                	xor    %esi,%esi
    76a5:	31 c0                	xor    %eax,%eax
    76a7:	e8 54 86 00 00       	callq  fd00 <printf@plt>
    76ac:	e9 ec 00 00 00       	jmpq   779d <main+0x5cd>
    76b1:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
    76b6:	4c 8d a4 24 10 01 00 	lea    0x110(%rsp),%r12
    76bd:	00 
    76be:	45 31 ff             	xor    %r15d,%r15d
    76c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    76c8:	0f 1f 84 00 00 00 00 
    76cf:	00 
    76d0:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    76d5:	4c 89 ee             	mov    %r13,%rsi
    76d8:	44 89 fa             	mov    %r15d,%edx
    76db:	44 89 f1             	mov    %r14d,%ecx
    76de:	e8 9d f6 ff ff       	callq  6d80 <_Z8setFramePKcP8Autonomaii>
    76e3:	be c8 00 00 00       	mov    $0xc8,%esi
    76e8:	48 89 ef             	mov    %rbp,%rdi
    76eb:	48 8d 15 25 a4 ff ff 	lea    -0x5bdb(%rip),%rdx        # 1b17 <_IO_stdin_used+0x217>
    76f2:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    76f7:	45 89 f8             	mov    %r15d,%r8d
    76fa:	31 c0                	xor    %eax,%eax
    76fc:	e8 6f 85 00 00       	callq  fc70 <snprintf@plt>
    7701:	be d0 07 00 00       	mov    $0x7d0,%esi
    7706:	4c 89 e7             	mov    %r12,%rdi
    7709:	48 8d 15 07 a3 ff ff 	lea    -0x5cf9(%rip),%rdx        # 1a17 <_IO_stdin_used+0x117>
    7710:	48 89 e9             	mov    %rbp,%rcx
    7713:	31 c0                	xor    %eax,%eax
    7715:	e8 56 85 00 00       	callq  fc70 <snprintf@plt>
    771a:	4c 89 e7             	mov    %r12,%rdi
    771d:	e8 5e 85 00 00       	callq  fc80 <puts@plt>
    7722:	4c 89 e7             	mov    %r12,%rdi
    7725:	48 8d 35 f7 a7 ff ff 	lea    -0x5809(%rip),%rsi        # 1f23 <_IO_stdin_used+0x623>
    772c:	e8 5f 85 00 00       	callq  fc90 <popen@plt>
    7731:	48 89 c3             	mov    %rax,%rbx
    7734:	8b 15 9e ac 00 00    	mov    0xac9e(%rip),%edx        # 123d8 <W>
    773a:	8b 0d 9c ac 00 00    	mov    0xac9c(%rip),%ecx        # 123dc <H>
    7740:	48 89 c7             	mov    %rax,%rdi
    7743:	48 8d 35 56 a7 ff ff 	lea    -0x58aa(%rip),%rsi        # 1ea0 <_IO_stdin_used+0x5a0>
    774a:	31 c0                	xor    %eax,%eax
    774c:	e8 df 84 00 00       	callq  fc30 <fprintf@plt>
    7751:	48 8b 3d e8 ad 00 00 	mov    0xade8(%rip),%rdi        # 12540 <DATA>
    7758:	8b 05 7a ac 00 00    	mov    0xac7a(%rip),%eax        # 123d8 <W>
    775e:	0f af 05 77 ac 00 00 	imul   0xac77(%rip),%eax        # 123dc <H>
    7765:	8d 04 40             	lea    (%rax,%rax,2),%eax
    7768:	48 63 d0             	movslq %eax,%rdx
    776b:	be 01 00 00 00       	mov    $0x1,%esi
    7770:	48 89 d9             	mov    %rbx,%rcx
    7773:	e8 c8 84 00 00       	callq  fc40 <fwrite@plt>
    7778:	48 89 df             	mov    %rbx,%rdi
    777b:	e8 20 85 00 00       	callq  fca0 <pclose@plt>
    7780:	48 8d 3d b6 a2 ff ff 	lea    -0x5d4a(%rip),%rdi        # 1a3d <_IO_stdin_used+0x13d>
    7787:	44 89 fe             	mov    %r15d,%esi
    778a:	31 c0                	xor    %eax,%eax
    778c:	e8 6f 85 00 00       	callq  fd00 <printf@plt>
    7791:	41 ff c7             	inc    %r15d
    7794:	45 39 fe             	cmp    %r15d,%r14d
    7797:	0f 85 33 ff ff ff    	jne    76d0 <main+0x500>
    779d:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
    77a4:	00 
    77a5:	31 f6                	xor    %esi,%esi
    77a7:	e8 d4 85 00 00       	callq  fd80 <gettimeofday@plt>
    77ac:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    77b3:	00 
    77b4:	48 8b 8c 24 18 01 00 	mov    0x118(%rsp),%rcx
    77bb:	00 
    77bc:	48 2b 44 24 30       	sub    0x30(%rsp),%rax
    77c1:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    77c6:	48 2b 4c 24 38       	sub    0x38(%rsp),%rcx
    77cb:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
    77d0:	f2 0f 59 0d 80 a1 ff 	mulsd  -0x5e80(%rip),%xmm1        # 1958 <_IO_stdin_used+0x58>
    77d7:	ff 
    77d8:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    77dc:	0f 57 c0             	xorps  %xmm0,%xmm0
    77df:	f2 0f 5a c1          	cvtsd2ss %xmm1,%xmm0
    77e3:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    77e7:	48 8d 3d 7e a4 ff ff 	lea    -0x5b82(%rip),%rdi        # 1c6c <_IO_stdin_used+0x36c>
    77ee:	b0 01                	mov    $0x1,%al
    77f0:	e8 0b 85 00 00       	callq  fd00 <printf@plt>
    77f5:	41 83 fe 02          	cmp    $0x2,%r14d
    77f9:	0f 9c c0             	setl   %al
    77fc:	0a 44 24 10          	or     0x10(%rsp),%al
    7800:	bb 00 00 00 00       	mov    $0x0,%ebx
    7805:	75 44                	jne    784b <main+0x67b>
    7807:	48 8d 05 8c a3 ff ff 	lea    -0x5c74(%rip),%rax        # 1b9a <_IO_stdin_used+0x29a>
    780e:	48 8d 15 bd ab ff ff 	lea    -0x5443(%rip),%rdx        # 23d2 <_IO_stdin_used+0xad2>
    7815:	80 7c 24 28 00       	cmpb   $0x0,0x28(%rsp)
    781a:	48 0f 45 d0          	cmovne %rax,%rdx
    781e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    7823:	48 89 0c 24          	mov    %rcx,(%rsp)
    7827:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
    782c:	be c8 00 00 00       	mov    $0xc8,%esi
    7831:	48 89 df             	mov    %rbx,%rdi
    7834:	49 89 c8             	mov    %rcx,%r8
    7837:	49 89 c9             	mov    %rcx,%r9
    783a:	31 c0                	xor    %eax,%eax
    783c:	e8 2f 84 00 00       	callq  fc70 <snprintf@plt>
    7841:	48 89 df             	mov    %rbx,%rdi
    7844:	e8 47 85 00 00       	callq  fd90 <system@plt>
    7849:	89 c3                	mov    %eax,%ebx
    784b:	89 d8                	mov    %ebx,%eax
    784d:	48 81 c4 e8 08 00 00 	add    $0x8e8,%rsp
    7854:	5b                   	pop    %rbx
    7855:	41 5c                	pop    %r12
    7857:	41 5d                	pop    %r13
    7859:	41 5e                	pop    %r14
    785b:	41 5f                	pop    %r15
    785d:	5d                   	pop    %rbp
    785e:	c3                   	retq   
    785f:	48 8d 35 83 a1 ff ff 	lea    -0x5e7d(%rip),%rsi        # 19e9 <_IO_stdin_used+0xe9>
    7866:	4c 89 ef             	mov    %r13,%rdi
    7869:	e8 42 84 00 00       	callq  fcb0 <strcmp@plt>
    786e:	49 8b 14 24          	mov    (%r12),%rdx
    7872:	85 c0                	test   %eax,%eax
    7874:	74 18                	je     788e <main+0x6be>
    7876:	48 8d 3d 74 a2 ff ff 	lea    -0x5d8c(%rip),%rdi        # 1af1 <_IO_stdin_used+0x1f1>
    787d:	4c 89 ee             	mov    %r13,%rsi
    7880:	31 c0                	xor    %eax,%eax
    7882:	e8 79 84 00 00       	callq  fd00 <printf@plt>
    7887:	bb 01 00 00 00       	mov    $0x1,%ebx
    788c:	eb bd                	jmp    784b <main+0x67b>
    788e:	48 8d 3d 91 a4 ff ff 	lea    -0x5b6f(%rip),%rdi        # 1d26 <_IO_stdin_used+0x426>
    7895:	31 db                	xor    %ebx,%ebx
    7897:	48 89 d6             	mov    %rdx,%rsi
    789a:	31 c0                	xor    %eax,%eax
    789c:	e8 5f 84 00 00       	callq  fd00 <printf@plt>
    78a1:	eb a8                	jmp    784b <main+0x67b>
    78a3:	cc                   	int3   
    78a4:	cc                   	int3   
    78a5:	cc                   	int3   
    78a6:	cc                   	int3   
    78a7:	cc                   	int3   
    78a8:	cc                   	int3   
    78a9:	cc                   	int3   
    78aa:	cc                   	int3   
    78ab:	cc                   	int3   
    78ac:	cc                   	int3   
    78ad:	cc                   	int3   
    78ae:	cc                   	int3   
    78af:	cc                   	int3   

00000000000078b0 <_GLOBAL__sub_I_main.cpp>:
    78b0:	53                   	push   %rbx
    78b1:	48 8d 1d 80 ac 00 00 	lea    0xac80(%rip),%rbx        # 12538 <_ZStL8__ioinit>
    78b8:	48 89 df             	mov    %rbx,%rdi
    78bb:	e8 e0 84 00 00       	callq  fda0 <_ZNSt8ios_base4InitC1Ev@plt>
    78c0:	48 8b 3d f9 9a 00 00 	mov    0x9af9(%rip),%rdi        # 113c0 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    78c7:	48 8d 15 02 ab 00 00 	lea    0xab02(%rip),%rdx        # 123d0 <__dso_handle>
    78ce:	48 89 de             	mov    %rbx,%rsi
    78d1:	e8 da 84 00 00       	callq  fdb0 <__cxa_atexit@plt>
    78d6:	8b 05 fc aa 00 00    	mov    0xaafc(%rip),%eax        # 123d8 <W>
    78dc:	0f af 05 f9 aa 00 00 	imul   0xaaf9(%rip),%eax        # 123dc <H>
    78e3:	8d 04 40             	lea    (%rax,%rax,2),%eax
    78e6:	48 63 f8             	movslq %eax,%rdi
    78e9:	e8 32 83 00 00       	callq  fc20 <malloc@plt>
    78ee:	48 89 05 4b ac 00 00 	mov    %rax,0xac4b(%rip)        # 12540 <DATA>
    78f5:	5b                   	pop    %rbx
    78f6:	c3                   	retq   
    78f7:	cc                   	int3   
    78f8:	cc                   	int3   
    78f9:	cc                   	int3   
    78fa:	cc                   	int3   
    78fb:	cc                   	int3   
    78fc:	cc                   	int3   
    78fd:	cc                   	int3   
    78fe:	cc                   	int3   
    78ff:	cc                   	int3   

0000000000007900 <_ZN3BoxC1ERK6VectorP7Textureddddd>:
    7900:	55                   	push   %rbp
    7901:	48 89 e5             	mov    %rsp,%rbp
    7904:	48 83 ec 50          	sub    $0x50,%rsp
    7908:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    790c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    7910:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7914:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    7919:	f2 0f 11 4d d8       	movsd  %xmm1,-0x28(%rbp)
    791e:	f2 0f 11 55 d0       	movsd  %xmm2,-0x30(%rbp)
    7923:	f2 0f 11 5d c8       	movsd  %xmm3,-0x38(%rbp)
    7928:	f2 0f 11 65 c0       	movsd  %xmm4,-0x40(%rbp)
    792d:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    7931:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    7935:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    7939:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    793d:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    7942:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
    7947:	f2 0f 10 55 d0       	movsd  -0x30(%rbp),%xmm2
    794c:	f2 0f 10 5d c8       	movsd  -0x38(%rbp),%xmm3
    7951:	f2 0f 10 65 c0       	movsd  -0x40(%rbp),%xmm4
    7956:	e8 45 23 00 00       	callq  9ca0 <_ZN5PlaneC1ERK6VectorP7Textureddddd>
    795b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    795f:	48 8d 0d 22 95 00 00 	lea    0x9522(%rip),%rcx        # 10e88 <_ZTV3Box>
    7966:	48 83 c1 10          	add    $0x10,%rcx
    796a:	48 89 08             	mov    %rcx,(%rax)
    796d:	48 83 c4 50          	add    $0x50,%rsp
    7971:	5d                   	pop    %rbp
    7972:	c3                   	retq   
    7973:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    797a:	84 00 00 00 00 00 

0000000000007980 <_ZN3BoxC1ERK6VectorP7Texturedddd>:
    7980:	55                   	push   %rbp
    7981:	48 89 e5             	mov    %rsp,%rbp
    7984:	48 83 ec 40          	sub    $0x40,%rsp
    7988:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    798c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    7990:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7994:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    7999:	f2 0f 11 4d d8       	movsd  %xmm1,-0x28(%rbp)
    799e:	f2 0f 11 55 d0       	movsd  %xmm2,-0x30(%rbp)
    79a3:	f2 0f 11 5d c8       	movsd  %xmm3,-0x38(%rbp)
    79a8:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    79ac:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
    79b0:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    79b4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    79b8:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    79bd:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
    79c2:	f2 0f 10 55 d0       	movsd  -0x30(%rbp),%xmm2
    79c7:	f2 0f 10 5d c8       	movsd  -0x38(%rbp),%xmm3
    79cc:	f2 0f 10 65 c8       	movsd  -0x38(%rbp),%xmm4
    79d1:	e8 ca 22 00 00       	callq  9ca0 <_ZN5PlaneC1ERK6VectorP7Textureddddd>
    79d6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    79da:	48 8d 0d a7 94 00 00 	lea    0x94a7(%rip),%rcx        # 10e88 <_ZTV3Box>
    79e1:	48 83 c1 10          	add    $0x10,%rcx
    79e5:	48 89 08             	mov    %rcx,(%rax)
    79e8:	48 83 c4 40          	add    $0x40,%rsp
    79ec:	5d                   	pop    %rbp
    79ed:	c3                   	retq   
    79ee:	66 90                	xchg   %ax,%ax

00000000000079f0 <_ZN3Box15getIntersectionE3Ray>:
    79f0:	55                   	push   %rbp
    79f1:	48 89 e5             	mov    %rsp,%rbp
    79f4:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
    79fb:	48 8d 75 10          	lea    0x10(%rbp),%rsi
    79ff:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
    7a06:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    7a0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7a0e:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    7a15:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
    7a19:	ba 30 00 00 00       	mov    $0x30,%edx
    7a1e:	e8 9d 83 00 00       	callq  fdc0 <memcpy@plt>
    7a23:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
    7a2a:	0f 10 45 b8          	movups -0x48(%rbp),%xmm0
    7a2e:	0f 10 4d c8          	movups -0x38(%rbp),%xmm1
    7a32:	0f 10 55 d8          	movups -0x28(%rbp),%xmm2
    7a36:	48 89 e0             	mov    %rsp,%rax
    7a39:	0f 11 50 20          	movups %xmm2,0x20(%rax)
    7a3d:	0f 11 48 10          	movups %xmm1,0x10(%rax)
    7a41:	0f 11 00             	movups %xmm0,(%rax)
    7a44:	e8 e7 2b 00 00       	callq  a630 <_ZN5Plane15getIntersectionE3Ray>
    7a49:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    7a50:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    7a57:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    7a5c:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    7a63:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
    7a67:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    7a6e:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    7a72:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    7a79:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    7a7d:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    7a84:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    7a8b:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    7a92:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    7a99:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    7aa0:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    7aa4:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    7aab:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    7ab2:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    7ab9:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    7ac0:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    7ac7:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    7ace:	48 83 c6 18          	add    $0x18,%rsi
    7ad2:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    7ad7:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    7ade:	e8 bd 67 00 00       	callq  e2a0 <_ZN6VectormlEd>
    7ae3:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    7aea:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    7af1:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    7af8:	48 8b 08             	mov    (%rax),%rcx
    7afb:	48 89 0c 24          	mov    %rcx,(%rsp)
    7aff:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7b03:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7b08:	48 8b 40 10          	mov    0x10(%rax),%rax
    7b0c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7b11:	e8 3a 67 00 00       	callq  e250 <_ZN6VectorplES_>
    7b16:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    7b1d:	48 8b 48 50          	mov    0x50(%rax),%rcx
    7b21:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
    7b28:	48 8b 48 58          	mov    0x58(%rax),%rcx
    7b2c:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
    7b33:	48 8b 40 60          	mov    0x60(%rax),%rax
    7b37:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    7b3e:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
    7b45:	48 8d b5 28 ff ff ff 	lea    -0xd8(%rbp),%rsi
    7b4c:	48 8d 85 f8 fe ff ff 	lea    -0x108(%rbp),%rax
    7b53:	48 8b 08             	mov    (%rax),%rcx
    7b56:	48 89 0c 24          	mov    %rcx,(%rsp)
    7b5a:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7b5e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7b63:	48 8b 40 10          	mov    0x10(%rax),%rax
    7b67:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7b6c:	e8 8f 66 00 00       	callq  e200 <_ZN6VectormiES_>
    7b71:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
    7b75:	48 8d 75 88          	lea    -0x78(%rbp),%rsi
    7b79:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    7b80:	48 8d 8d 58 ff ff ff 	lea    -0xa8(%rbp),%rcx
    7b87:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    7b8e:	4c 8b 06             	mov    (%rsi),%r8
    7b91:	4c 89 04 24          	mov    %r8,(%rsp)
    7b95:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    7b99:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    7b9e:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    7ba2:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    7ba7:	48 8b 32             	mov    (%rdx),%rsi
    7baa:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    7baf:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    7bb3:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    7bb8:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    7bbc:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    7bc1:	48 8b 11             	mov    (%rcx),%rdx
    7bc4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    7bc9:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    7bcd:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    7bd2:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    7bd6:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    7bdb:	48 8b 08             	mov    (%rax),%rcx
    7bde:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    7be3:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7be7:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    7bec:	48 8b 40 10          	mov    0x10(%rax),%rax
    7bf0:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    7bf5:	e8 b6 6a 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    7bfa:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    7bff:	f2 0f 11 85 f0 fe ff 	movsd  %xmm0,-0x110(%rbp)
    7c06:	ff 
    7c07:	e8 94 06 00 00       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    7c0c:	0f 28 c8             	movaps %xmm0,%xmm1
    7c0f:	f2 0f 10 85 f0 fe ff 	movsd  -0x110(%rbp),%xmm0
    7c16:	ff 
    7c17:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7c1b:	0f 85 15 00 00 00    	jne    7c36 <_ZN3Box15getIntersectionE3Ray+0x246>
    7c21:	0f 8a 0f 00 00 00    	jp     7c36 <_ZN3Box15getIntersectionE3Ray+0x246>
    7c27:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    7c2c:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    7c31:	e9 10 01 00 00       	jmpq   7d46 <_ZN3Box15getIntersectionE3Ray+0x356>
    7c36:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    7c3b:	0f 57 c9             	xorps  %xmm1,%xmm1
    7c3e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7c42:	0f 82 12 00 00 00    	jb     7c5a <_ZN3Box15getIntersectionE3Ray+0x26a>
    7c48:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    7c4d:	f2 0f 11 85 d8 fe ff 	movsd  %xmm0,-0x128(%rbp)
    7c54:	ff 
    7c55:	e9 24 00 00 00       	jmpq   7c7e <_ZN3Box15getIntersectionE3Ray+0x28e>
    7c5a:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    7c5f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    7c64:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    7c6b:	00 00 80 
    7c6e:	48 31 c8             	xor    %rcx,%rax
    7c71:	66 48 0f 6e c0       	movq   %rax,%xmm0
    7c76:	f2 0f 11 85 d8 fe ff 	movsd  %xmm0,-0x128(%rbp)
    7c7d:	ff 
    7c7e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    7c85:	f2 0f 10 85 d8 fe ff 	movsd  -0x128(%rbp),%xmm0
    7c8c:	ff 
    7c8d:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    7c92:	f2 0f 10 15 86 9c ff 	movsd  -0x637a(%rip),%xmm2        # 1920 <_IO_stdin_used+0x20>
    7c99:	ff 
    7c9a:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    7c9e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7ca2:	0f 87 72 00 00 00    	ja     7d1a <_ZN3Box15getIntersectionE3Ray+0x32a>
    7ca8:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
    7cad:	0f 57 c9             	xorps  %xmm1,%xmm1
    7cb0:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7cb4:	0f 82 12 00 00 00    	jb     7ccc <_ZN3Box15getIntersectionE3Ray+0x2dc>
    7cba:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
    7cbf:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
    7cc6:	ff 
    7cc7:	e9 24 00 00 00       	jmpq   7cf0 <_ZN3Box15getIntersectionE3Ray+0x300>
    7ccc:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
    7cd1:	66 48 0f 7e c0       	movq   %xmm0,%rax
    7cd6:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    7cdd:	00 00 80 
    7ce0:	48 31 c8             	xor    %rcx,%rax
    7ce3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    7ce8:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
    7cef:	ff 
    7cf0:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    7cf7:	f2 0f 10 85 d0 fe ff 	movsd  -0x130(%rbp),%xmm0
    7cfe:	ff 
    7cff:	f2 0f 10 48 78       	movsd  0x78(%rax),%xmm1
    7d04:	f2 0f 10 15 14 9c ff 	movsd  -0x63ec(%rip),%xmm2        # 1920 <_IO_stdin_used+0x20>
    7d0b:	ff 
    7d0c:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    7d10:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7d14:	0f 86 12 00 00 00    	jbe    7d2c <_ZN3Box15getIntersectionE3Ray+0x33c>
    7d1a:	e8 81 05 00 00       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    7d1f:	f2 0f 11 85 c8 fe ff 	movsd  %xmm0,-0x138(%rbp)
    7d26:	ff 
    7d27:	e9 0d 00 00 00       	jmpq   7d39 <_ZN3Box15getIntersectionE3Ray+0x349>
    7d2c:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    7d31:	f2 0f 11 85 c8 fe ff 	movsd  %xmm0,-0x138(%rbp)
    7d38:	ff 
    7d39:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
    7d40:	ff 
    7d41:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    7d46:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    7d4b:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
    7d52:	5d                   	pop    %rbp
    7d53:	c3                   	retq   
    7d54:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    7d5b:	00 00 00 00 00 

0000000000007d60 <_ZN3Box20getLightIntersectionE3RayPd>:
    7d60:	55                   	push   %rbp
    7d61:	48 89 e5             	mov    %rsp,%rbp
    7d64:	48 81 ec e0 01 00 00 	sub    $0x1e0,%rsp
    7d6b:	48 89 f8             	mov    %rdi,%rax
    7d6e:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    7d72:	48 89 bd b0 fe ff ff 	mov    %rdi,-0x150(%rbp)
    7d79:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7d7d:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    7d81:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7d85:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
    7d8c:	48 83 c7 18          	add    $0x18,%rdi
    7d90:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    7d97:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    7d9b:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    7da2:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    7da6:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    7dad:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    7db1:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    7db5:	48 8b 08             	mov    (%rax),%rcx
    7db8:	48 89 0c 24          	mov    %rcx,(%rsp)
    7dbc:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7dc0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7dc5:	48 8b 40 10          	mov    0x10(%rax),%rax
    7dc9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7dce:	e8 3d 68 00 00       	callq  e610 <_ZN6Vector3dotES_>
    7dd3:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
    7dda:	48 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%rdi
    7de1:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    7de6:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    7ded:	48 8b 08             	mov    (%rax),%rcx
    7df0:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    7df4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7df8:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    7dfc:	48 8b 40 10          	mov    0x10(%rax),%rax
    7e00:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    7e04:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    7e08:	48 8b 08             	mov    (%rax),%rcx
    7e0b:	48 89 0c 24          	mov    %rcx,(%rsp)
    7e0f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7e13:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7e18:	48 8b 40 10          	mov    0x10(%rax),%rax
    7e1c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7e21:	e8 ea 67 00 00       	callq  e610 <_ZN6Vector3dotES_>
    7e26:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    7e2d:	f2 0f 58 80 f0 00 00 	addsd  0xf0(%rax),%xmm0
    7e34:	00 
    7e35:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    7e3a:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    7e3f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    7e44:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    7e4b:	00 00 80 
    7e4e:	48 31 c8             	xor    %rcx,%rax
    7e51:	66 48 0f 6e c0       	movq   %rax,%xmm0
    7e56:	f2 0f 5e 45 e0       	divsd  -0x20(%rbp),%xmm0
    7e5b:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    7e60:	0f 57 c0             	xorps  %xmm0,%xmm0
    7e63:	66 0f 2e 45 a0       	ucomisd -0x60(%rbp),%xmm0
    7e68:	0f 83 17 00 00 00    	jae    7e85 <_ZN3Box20getLightIntersectionE3RayPd+0x125>
    7e6e:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    7e73:	f2 0f 10 0d cd 9a ff 	movsd  -0x6533(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    7e7a:	ff 
    7e7b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7e7f:	0f 82 09 00 00 00    	jb     7e8e <_ZN3Box20getLightIntersectionE3RayPd+0x12e>
    7e85:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    7e89:	e9 fc 03 00 00       	jmpq   828a <_ZN3Box20getLightIntersectionE3RayPd+0x52a>
    7e8e:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    7e95:	48 8b b5 b0 fe ff ff 	mov    -0x150(%rbp),%rsi
    7e9c:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    7ea3:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    7eaa:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    7eb1:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    7eb8:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    7ebf:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    7ec3:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    7eca:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    7ed1:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    7ed8:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    7edf:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    7ee6:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    7eed:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    7ef4:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
    7efb:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    7f02:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
    7f09:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    7f10:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    7f17:	48 83 c6 18          	add    $0x18,%rsi
    7f1b:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    7f20:	48 8d bd f8 fe ff ff 	lea    -0x108(%rbp),%rdi
    7f27:	e8 74 63 00 00       	callq  e2a0 <_ZN6VectormlEd>
    7f2c:	48 8b b5 b0 fe ff ff 	mov    -0x150(%rbp),%rsi
    7f33:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    7f3a:	48 8d 85 f8 fe ff ff 	lea    -0x108(%rbp),%rax
    7f41:	48 8b 08             	mov    (%rax),%rcx
    7f44:	48 89 0c 24          	mov    %rcx,(%rsp)
    7f48:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7f4c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7f51:	48 8b 40 10          	mov    0x10(%rax),%rax
    7f55:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7f5a:	e8 f1 62 00 00       	callq  e250 <_ZN6VectorplES_>
    7f5f:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    7f66:	48 8b 48 50          	mov    0x50(%rax),%rcx
    7f6a:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
    7f71:	48 8b 48 58          	mov    0x58(%rax),%rcx
    7f75:	48 89 8d e8 fe ff ff 	mov    %rcx,-0x118(%rbp)
    7f7c:	48 8b 40 60          	mov    0x60(%rax),%rax
    7f80:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    7f87:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    7f8e:	48 8d b5 10 ff ff ff 	lea    -0xf0(%rbp),%rsi
    7f95:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    7f9c:	48 8b 08             	mov    (%rax),%rcx
    7f9f:	48 89 0c 24          	mov    %rcx,(%rsp)
    7fa3:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7fa7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7fac:	48 8b 40 10          	mov    0x10(%rax),%rax
    7fb0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7fb5:	e8 46 62 00 00       	callq  e200 <_ZN6VectormiES_>
    7fba:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    7fbe:	48 8d b5 70 ff ff ff 	lea    -0x90(%rbp),%rsi
    7fc5:	48 8d 95 58 ff ff ff 	lea    -0xa8(%rbp),%rdx
    7fcc:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
    7fd3:	48 8d 85 28 ff ff ff 	lea    -0xd8(%rbp),%rax
    7fda:	4c 8b 06             	mov    (%rsi),%r8
    7fdd:	4c 89 04 24          	mov    %r8,(%rsp)
    7fe1:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    7fe5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    7fea:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    7fee:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    7ff3:	48 8b 32             	mov    (%rdx),%rsi
    7ff6:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    7ffb:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    7fff:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    8004:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    8008:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    800d:	48 8b 11             	mov    (%rcx),%rdx
    8010:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    8015:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    8019:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    801e:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    8022:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    8027:	48 8b 08             	mov    (%rax),%rcx
    802a:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    802f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8033:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    8038:	48 8b 40 10          	mov    0x10(%rax),%rax
    803c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    8041:	e8 6a 66 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    8046:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    804b:	0f 57 c9             	xorps  %xmm1,%xmm1
    804e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8052:	0f 82 12 00 00 00    	jb     806a <_ZN3Box20getLightIntersectionE3RayPd+0x30a>
    8058:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    805d:	f2 0f 11 85 a8 fe ff 	movsd  %xmm0,-0x158(%rbp)
    8064:	ff 
    8065:	e9 24 00 00 00       	jmpq   808e <_ZN3Box20getLightIntersectionE3RayPd+0x32e>
    806a:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    806f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    8074:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    807b:	00 00 80 
    807e:	48 31 c8             	xor    %rcx,%rax
    8081:	66 48 0f 6e c0       	movq   %rax,%xmm0
    8086:	f2 0f 11 85 a8 fe ff 	movsd  %xmm0,-0x158(%rbp)
    808d:	ff 
    808e:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    8095:	f2 0f 10 85 a8 fe ff 	movsd  -0x158(%rbp),%xmm0
    809c:	ff 
    809d:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    80a2:	f2 0f 10 15 76 98 ff 	movsd  -0x678a(%rip),%xmm2        # 1920 <_IO_stdin_used+0x20>
    80a9:	ff 
    80aa:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    80ae:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    80b2:	0f 87 72 00 00 00    	ja     812a <_ZN3Box20getLightIntersectionE3RayPd+0x3ca>
    80b8:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    80bd:	0f 57 c9             	xorps  %xmm1,%xmm1
    80c0:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    80c4:	0f 82 12 00 00 00    	jb     80dc <_ZN3Box20getLightIntersectionE3RayPd+0x37c>
    80ca:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    80cf:	f2 0f 11 85 a0 fe ff 	movsd  %xmm0,-0x160(%rbp)
    80d6:	ff 
    80d7:	e9 24 00 00 00       	jmpq   8100 <_ZN3Box20getLightIntersectionE3RayPd+0x3a0>
    80dc:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    80e1:	66 48 0f 7e c0       	movq   %xmm0,%rax
    80e6:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    80ed:	00 00 80 
    80f0:	48 31 c8             	xor    %rcx,%rax
    80f3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    80f8:	f2 0f 11 85 a0 fe ff 	movsd  %xmm0,-0x160(%rbp)
    80ff:	ff 
    8100:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    8107:	f2 0f 10 85 a0 fe ff 	movsd  -0x160(%rbp),%xmm0
    810e:	ff 
    810f:	f2 0f 10 48 78       	movsd  0x78(%rax),%xmm1
    8114:	f2 0f 10 15 04 98 ff 	movsd  -0x67fc(%rip),%xmm2        # 1920 <_IO_stdin_used+0x20>
    811b:	ff 
    811c:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    8120:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8124:	0f 86 09 00 00 00    	jbe    8133 <_ZN3Box20getLightIntersectionE3RayPd+0x3d3>
    812a:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    812e:	e9 57 01 00 00       	jmpq   828a <_ZN3Box20getLightIntersectionE3RayPd+0x52a>
    8133:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    813a:	48 8b 40 68          	mov    0x68(%rax),%rax
    813e:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    8143:	f2 0f 10 0d 45 98 ff 	movsd  -0x67bb(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    814a:	ff 
    814b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    814f:	0f 86 09 00 00 00    	jbe    815e <_ZN3Box20getLightIntersectionE3RayPd+0x3fe>
    8155:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    8159:	e9 2c 01 00 00       	jmpq   828a <_ZN3Box20getLightIntersectionE3RayPd+0x52a>
    815e:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    8165:	48 8b 48 68          	mov    0x68(%rax),%rcx
    8169:	48 89 8d 88 fe ff ff 	mov    %rcx,-0x178(%rbp)
    8170:	48 8d 8d dc fe ff ff 	lea    -0x124(%rbp),%rcx
    8177:	48 89 8d 90 fe ff ff 	mov    %rcx,-0x170(%rbp)
    817e:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    8183:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    8188:	f2 0f 10 0d e0 97 ff 	movsd  -0x6820(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    818f:	ff 
    8190:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    8194:	e8 47 78 00 00       	callq  f9e0 <_Z3fixd>
    8199:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    81a0:	f2 0f 11 85 98 fe ff 	movsd  %xmm0,-0x168(%rbp)
    81a7:	ff 
    81a8:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    81ad:	f2 0f 5e 40 78       	divsd  0x78(%rax),%xmm0
    81b2:	f2 0f 10 0d b6 97 ff 	movsd  -0x684a(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    81b9:	ff 
    81ba:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    81be:	e8 1d 78 00 00       	callq  f9e0 <_Z3fixd>
    81c3:	48 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%rdi
    81ca:	48 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%rsi
    81d1:	0f 28 c8             	movaps %xmm0,%xmm1
    81d4:	f2 0f 10 85 98 fe ff 	movsd  -0x168(%rbp),%xmm0
    81db:	ff 
    81dc:	48 8b 07             	mov    (%rdi),%rax
    81df:	48 8d 95 d0 fe ff ff 	lea    -0x130(%rbp),%rdx
    81e6:	48 8d 8d c8 fe ff ff 	lea    -0x138(%rbp),%rcx
    81ed:	4c 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%r8
    81f4:	ff 10                	callq  *(%rax)
    81f6:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
    81fd:	ff 
    81fe:	f2 0f 10 0d 8a 97 ff 	movsd  -0x6876(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    8205:	ff 
    8206:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    820a:	0f 86 09 00 00 00    	jbe    8219 <_ZN3Box20getLightIntersectionE3RayPd+0x4b9>
    8210:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    8214:	e9 71 00 00 00       	jmpq   828a <_ZN3Box20getLightIntersectionE3RayPd+0x52a>
    8219:	0f b6 85 dc fe ff ff 	movzbl -0x124(%rbp),%eax
    8220:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    8224:	f2 0f 10 0d e4 96 ff 	movsd  -0x691c(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    822b:	ff 
    822c:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    8230:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8234:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    8238:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    823c:	0f b6 85 dd fe ff ff 	movzbl -0x123(%rbp),%eax
    8243:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    8247:	f2 0f 10 0d c1 96 ff 	movsd  -0x693f(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    824e:	ff 
    824f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    8253:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8257:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    825c:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    8261:	0f b6 85 de fe ff ff 	movzbl -0x122(%rbp),%eax
    8268:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    826c:	f2 0f 10 0d 9c 96 ff 	movsd  -0x6964(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    8273:	ff 
    8274:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    8278:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    827c:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    8281:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    8286:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    828a:	8a 45 ff             	mov    -0x1(%rbp),%al
    828d:	24 01                	and    $0x1,%al
    828f:	0f b6 c0             	movzbl %al,%eax
    8292:	48 81 c4 e0 01 00 00 	add    $0x1e0,%rsp
    8299:	5d                   	pop    %rbp
    829a:	c3                   	retq   
    829b:	cc                   	int3   
    829c:	cc                   	int3   
    829d:	cc                   	int3   
    829e:	cc                   	int3   
    829f:	cc                   	int3   

00000000000082a0 <_ZNSt14numeric_limitsIdE8infinityEv>:
    82a0:	55                   	push   %rbp
    82a1:	48 89 e5             	mov    %rsp,%rbp
    82a4:	f2 0f 10 05 d4 96 ff 	movsd  -0x692c(%rip),%xmm0        # 1980 <_IO_stdin_used+0x80>
    82ab:	ff 
    82ac:	5d                   	pop    %rbp
    82ad:	c3                   	retq   
    82ae:	cc                   	int3   
    82af:	cc                   	int3   

00000000000082b0 <_ZN6CameraC1ERK6Vector>:
    82b0:	55                   	push   %rbp
    82b1:	48 89 e5             	mov    %rsp,%rbp
    82b4:	48 83 ec 10          	sub    $0x10,%rsp
    82b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    82bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    82c0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    82c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    82c8:	48 8b 08             	mov    (%rax),%rcx
    82cb:	48 89 0f             	mov    %rcx,(%rdi)
    82ce:	48 8b 48 08          	mov    0x8(%rax),%rcx
    82d2:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    82d6:	48 8b 40 10          	mov    0x10(%rax),%rax
    82da:	48 89 47 10          	mov    %rax,0x10(%rdi)
    82de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    82e2:	48 8b 08             	mov    (%rax),%rcx
    82e5:	48 89 4f 18          	mov    %rcx,0x18(%rdi)
    82e9:	48 8b 48 08          	mov    0x8(%rax),%rcx
    82ed:	48 89 4f 20          	mov    %rcx,0x20(%rdi)
    82f1:	48 8b 40 10          	mov    0x10(%rax),%rax
    82f5:	48 89 47 28          	mov    %rax,0x28(%rdi)
    82f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    82fd:	48 8b 08             	mov    (%rax),%rcx
    8300:	48 89 4f 30          	mov    %rcx,0x30(%rdi)
    8304:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8308:	48 89 4f 38          	mov    %rcx,0x38(%rdi)
    830c:	48 8b 40 10          	mov    0x10(%rax),%rax
    8310:	48 89 47 40          	mov    %rax,0x40(%rdi)
    8314:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8318:	48 8b 08             	mov    (%rax),%rcx
    831b:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
    831f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8323:	48 89 4f 50          	mov    %rcx,0x50(%rdi)
    8327:	48 8b 40 10          	mov    0x10(%rax),%rax
    832b:	48 89 47 58          	mov    %rax,0x58(%rdi)
    832f:	0f 57 d2             	xorps  %xmm2,%xmm2
    8332:	0f 28 c2             	movaps %xmm2,%xmm0
    8335:	0f 28 ca             	movaps %xmm2,%xmm1
    8338:	e8 13 00 00 00       	callq  8350 <_ZN6Camera9setAnglesEddd>
    833d:	48 83 c4 10          	add    $0x10,%rsp
    8341:	5d                   	pop    %rbp
    8342:	c3                   	retq   
    8343:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    834a:	84 00 00 00 00 00 

0000000000008350 <_ZN6Camera9setAnglesEddd>:
    8350:	55                   	push   %rbp
    8351:	48 89 e5             	mov    %rsp,%rbp
    8354:	48 83 ec 30          	sub    $0x30,%rsp
    8358:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    835c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    8361:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
    8366:	f2 0f 11 55 e0       	movsd  %xmm2,-0x20(%rbp)
    836b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    836f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    8373:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    8378:	f2 0f 11 80 90 00 00 	movsd  %xmm0,0x90(%rax)
    837f:	00 
    8380:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    8385:	f2 0f 11 80 98 00 00 	movsd  %xmm0,0x98(%rax)
    838c:	00 
    838d:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    8392:	f2 0f 11 80 a0 00 00 	movsd  %xmm0,0xa0(%rax)
    8399:	00 
    839a:	f2 0f 10 80 90 00 00 	movsd  0x90(%rax),%xmm0
    83a1:	00 
    83a2:	e8 b9 79 00 00       	callq  fd60 <cos@plt>
    83a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    83ab:	f2 0f 11 40 60       	movsd  %xmm0,0x60(%rax)
    83b0:	f2 0f 10 80 90 00 00 	movsd  0x90(%rax),%xmm0
    83b7:	00 
    83b8:	e8 93 79 00 00       	callq  fd50 <sin@plt>
    83bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    83c1:	f2 0f 11 40 68       	movsd  %xmm0,0x68(%rax)
    83c6:	f2 0f 10 80 98 00 00 	movsd  0x98(%rax),%xmm0
    83cd:	00 
    83ce:	e8 8d 79 00 00       	callq  fd60 <cos@plt>
    83d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    83d7:	f2 0f 11 40 70       	movsd  %xmm0,0x70(%rax)
    83dc:	f2 0f 10 80 98 00 00 	movsd  0x98(%rax),%xmm0
    83e3:	00 
    83e4:	e8 67 79 00 00       	callq  fd50 <sin@plt>
    83e9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    83ed:	f2 0f 11 40 78       	movsd  %xmm0,0x78(%rax)
    83f2:	f2 0f 10 80 a0 00 00 	movsd  0xa0(%rax),%xmm0
    83f9:	00 
    83fa:	e8 61 79 00 00       	callq  fd60 <cos@plt>
    83ff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8403:	f2 0f 11 80 80 00 00 	movsd  %xmm0,0x80(%rax)
    840a:	00 
    840b:	f2 0f 10 80 a0 00 00 	movsd  0xa0(%rax),%xmm0
    8412:	00 
    8413:	e8 38 79 00 00       	callq  fd50 <sin@plt>
    8418:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    841c:	f2 0f 11 80 88 00 00 	movsd  %xmm0,0x88(%rax)
    8423:	00 
    8424:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    8429:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    842e:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8435:	00 
    8436:	f2 0f 10 48 78       	movsd  0x78(%rax),%xmm1
    843b:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8442:	00 
    8443:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8447:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    844b:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    8450:	f2 0f 10 40 78       	movsd  0x78(%rax),%xmm0
    8455:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    845c:	00 
    845d:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    8462:	f2 0f 59 48 70       	mulsd  0x70(%rax),%xmm1
    8467:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    846e:	00 
    846f:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    8474:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    847b:	00 00 80 
    847e:	48 31 d1             	xor    %rdx,%rcx
    8481:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    8486:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    848a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    848e:	f2 0f 11 40 50       	movsd  %xmm0,0x50(%rax)
    8493:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8498:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    849d:	f2 0f 11 40 58       	movsd  %xmm0,0x58(%rax)
    84a2:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    84a7:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    84ac:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    84b3:	00 00 80 
    84b6:	48 31 d1             	xor    %rdx,%rcx
    84b9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    84be:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    84c3:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    84ca:	00 
    84cb:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    84d0:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    84d7:	00 
    84d8:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    84dc:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    84e0:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    84e5:	f2 0f 10 40 70       	movsd  0x70(%rax),%xmm0
    84ea:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    84f1:	00 
    84f2:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    84f7:	f2 0f 59 48 78       	mulsd  0x78(%rax),%xmm1
    84fc:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8503:	00 
    8504:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8508:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    850c:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    8511:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8516:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    851b:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8522:	00 00 80 
    8525:	48 31 d1             	xor    %rdx,%rcx
    8528:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    852d:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    8532:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    8537:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    853c:	f2 0f 59 80 80 00 00 	mulsd  0x80(%rax),%xmm0
    8543:	00 
    8544:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    8549:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    854e:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    8553:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    855a:	00 00 80 
    855d:	48 31 d1             	xor    %rdx,%rcx
    8560:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    8565:	f2 0f 59 80 88 00 00 	mulsd  0x88(%rax),%xmm0
    856c:	00 
    856d:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    8572:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    8577:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    857c:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8583:	00 00 80 
    8586:	48 31 d1             	xor    %rdx,%rcx
    8589:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    858e:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    8593:	48 83 c4 30          	add    $0x30,%rsp
    8597:	5d                   	pop    %rbp
    8598:	c3                   	retq   
    8599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000085a0 <_ZN6CameraC1ERK6Vectorddd>:
    85a0:	55                   	push   %rbp
    85a1:	48 89 e5             	mov    %rsp,%rbp
    85a4:	48 83 ec 30          	sub    $0x30,%rsp
    85a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    85ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    85b0:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    85b5:	f2 0f 11 4d e0       	movsd  %xmm1,-0x20(%rbp)
    85ba:	f2 0f 11 55 d8       	movsd  %xmm2,-0x28(%rbp)
    85bf:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    85c3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    85c7:	48 8b 08             	mov    (%rax),%rcx
    85ca:	48 89 0f             	mov    %rcx,(%rdi)
    85cd:	48 8b 48 08          	mov    0x8(%rax),%rcx
    85d1:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    85d5:	48 8b 40 10          	mov    0x10(%rax),%rax
    85d9:	48 89 47 10          	mov    %rax,0x10(%rdi)
    85dd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    85e1:	48 8b 08             	mov    (%rax),%rcx
    85e4:	48 89 4f 18          	mov    %rcx,0x18(%rdi)
    85e8:	48 8b 48 08          	mov    0x8(%rax),%rcx
    85ec:	48 89 4f 20          	mov    %rcx,0x20(%rdi)
    85f0:	48 8b 40 10          	mov    0x10(%rax),%rax
    85f4:	48 89 47 28          	mov    %rax,0x28(%rdi)
    85f8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    85fc:	48 8b 08             	mov    (%rax),%rcx
    85ff:	48 89 4f 30          	mov    %rcx,0x30(%rdi)
    8603:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8607:	48 89 4f 38          	mov    %rcx,0x38(%rdi)
    860b:	48 8b 40 10          	mov    0x10(%rax),%rax
    860f:	48 89 47 40          	mov    %rax,0x40(%rdi)
    8613:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8617:	48 8b 08             	mov    (%rax),%rcx
    861a:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
    861e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8622:	48 89 4f 50          	mov    %rcx,0x50(%rdi)
    8626:	48 8b 40 10          	mov    0x10(%rax),%rax
    862a:	48 89 47 58          	mov    %rax,0x58(%rdi)
    862e:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    8633:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
    8638:	f2 0f 10 55 d8       	movsd  -0x28(%rbp),%xmm2
    863d:	e8 0e fd ff ff       	callq  8350 <_ZN6Camera9setAnglesEddd>
    8642:	48 83 c4 30          	add    $0x30,%rsp
    8646:	5d                   	pop    %rbp
    8647:	c3                   	retq   
    8648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    864f:	00 

0000000000008650 <_ZN6Camera6setYawEd>:
    8650:	55                   	push   %rbp
    8651:	48 89 e5             	mov    %rsp,%rbp
    8654:	48 83 ec 20          	sub    $0x20,%rsp
    8658:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    865c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    8661:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8665:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    8669:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    866e:	f2 0f 11 80 90 00 00 	movsd  %xmm0,0x90(%rax)
    8675:	00 
    8676:	f2 0f 10 80 90 00 00 	movsd  0x90(%rax),%xmm0
    867d:	00 
    867e:	e8 dd 76 00 00       	callq  fd60 <cos@plt>
    8683:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8687:	f2 0f 11 40 60       	movsd  %xmm0,0x60(%rax)
    868c:	f2 0f 10 80 90 00 00 	movsd  0x90(%rax),%xmm0
    8693:	00 
    8694:	e8 b7 76 00 00       	callq  fd50 <sin@plt>
    8699:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    869d:	f2 0f 11 40 68       	movsd  %xmm0,0x68(%rax)
    86a2:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    86a7:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    86ac:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    86b3:	00 
    86b4:	f2 0f 10 48 78       	movsd  0x78(%rax),%xmm1
    86b9:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    86c0:	00 
    86c1:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    86c5:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    86c9:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    86ce:	f2 0f 10 40 78       	movsd  0x78(%rax),%xmm0
    86d3:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    86da:	00 
    86db:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    86e0:	f2 0f 59 48 70       	mulsd  0x70(%rax),%xmm1
    86e5:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    86ec:	00 
    86ed:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    86f2:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    86f9:	00 00 80 
    86fc:	48 31 d1             	xor    %rdx,%rcx
    86ff:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    8704:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8708:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    870c:	f2 0f 11 40 50       	movsd  %xmm0,0x50(%rax)
    8711:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8716:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    871b:	f2 0f 11 40 58       	movsd  %xmm0,0x58(%rax)
    8720:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    8725:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    872a:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8731:	00 00 80 
    8734:	48 31 d1             	xor    %rdx,%rcx
    8737:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    873c:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    8741:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8748:	00 
    8749:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    874e:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8755:	00 
    8756:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    875a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    875e:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    8763:	f2 0f 10 40 70       	movsd  0x70(%rax),%xmm0
    8768:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    876f:	00 
    8770:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    8775:	f2 0f 59 48 78       	mulsd  0x78(%rax),%xmm1
    877a:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8781:	00 
    8782:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8786:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    878a:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    878f:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8794:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    8799:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    87a0:	00 00 80 
    87a3:	48 31 d1             	xor    %rdx,%rcx
    87a6:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    87ab:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    87b0:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    87b5:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    87ba:	f2 0f 59 80 80 00 00 	mulsd  0x80(%rax),%xmm0
    87c1:	00 
    87c2:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    87c7:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    87cc:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    87d1:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    87d8:	00 00 80 
    87db:	48 31 d1             	xor    %rdx,%rcx
    87de:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    87e3:	f2 0f 59 80 88 00 00 	mulsd  0x88(%rax),%xmm0
    87ea:	00 
    87eb:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    87f0:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    87f5:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    87fa:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8801:	00 00 80 
    8804:	48 31 d1             	xor    %rdx,%rcx
    8807:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    880c:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    8811:	48 83 c4 20          	add    $0x20,%rsp
    8815:	5d                   	pop    %rbp
    8816:	c3                   	retq   
    8817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    881e:	00 00 

0000000000008820 <_ZN6Camera8setPitchEd>:
    8820:	55                   	push   %rbp
    8821:	48 89 e5             	mov    %rsp,%rbp
    8824:	48 83 ec 20          	sub    $0x20,%rsp
    8828:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    882c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    8831:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8835:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    8839:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    883e:	f2 0f 11 80 98 00 00 	movsd  %xmm0,0x98(%rax)
    8845:	00 
    8846:	f2 0f 10 80 98 00 00 	movsd  0x98(%rax),%xmm0
    884d:	00 
    884e:	e8 0d 75 00 00       	callq  fd60 <cos@plt>
    8853:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8857:	f2 0f 11 40 70       	movsd  %xmm0,0x70(%rax)
    885c:	f2 0f 10 80 98 00 00 	movsd  0x98(%rax),%xmm0
    8863:	00 
    8864:	e8 e7 74 00 00       	callq  fd50 <sin@plt>
    8869:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    886d:	f2 0f 11 40 78       	movsd  %xmm0,0x78(%rax)
    8872:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    8877:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    887c:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8883:	00 
    8884:	f2 0f 10 48 78       	movsd  0x78(%rax),%xmm1
    8889:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8890:	00 
    8891:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8895:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8899:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    889e:	f2 0f 10 40 78       	movsd  0x78(%rax),%xmm0
    88a3:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    88aa:	00 
    88ab:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    88b0:	f2 0f 59 48 70       	mulsd  0x70(%rax),%xmm1
    88b5:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    88bc:	00 
    88bd:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    88c2:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    88c9:	00 00 80 
    88cc:	48 31 d1             	xor    %rdx,%rcx
    88cf:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    88d4:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    88d8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    88dc:	f2 0f 11 40 50       	movsd  %xmm0,0x50(%rax)
    88e1:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    88e6:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    88eb:	f2 0f 11 40 58       	movsd  %xmm0,0x58(%rax)
    88f0:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    88f5:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    88fa:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8901:	00 00 80 
    8904:	48 31 d1             	xor    %rdx,%rcx
    8907:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    890c:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    8911:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8918:	00 
    8919:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    891e:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8925:	00 
    8926:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    892a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    892e:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    8933:	f2 0f 10 40 70       	movsd  0x70(%rax),%xmm0
    8938:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    893f:	00 
    8940:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    8945:	f2 0f 59 48 78       	mulsd  0x78(%rax),%xmm1
    894a:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8951:	00 
    8952:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8956:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    895a:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    895f:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8964:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    8969:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8970:	00 00 80 
    8973:	48 31 d1             	xor    %rdx,%rcx
    8976:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    897b:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    8980:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    8985:	48 83 c4 20          	add    $0x20,%rsp
    8989:	5d                   	pop    %rbp
    898a:	c3                   	retq   
    898b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000008990 <_ZN6Camera7setRollEd>:
    8990:	55                   	push   %rbp
    8991:	48 89 e5             	mov    %rsp,%rbp
    8994:	48 83 ec 20          	sub    $0x20,%rsp
    8998:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    899c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    89a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    89a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    89a9:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    89ae:	f2 0f 11 80 a0 00 00 	movsd  %xmm0,0xa0(%rax)
    89b5:	00 
    89b6:	f2 0f 10 80 a0 00 00 	movsd  0xa0(%rax),%xmm0
    89bd:	00 
    89be:	e8 9d 73 00 00       	callq  fd60 <cos@plt>
    89c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    89c7:	f2 0f 11 80 80 00 00 	movsd  %xmm0,0x80(%rax)
    89ce:	00 
    89cf:	f2 0f 10 80 a0 00 00 	movsd  0xa0(%rax),%xmm0
    89d6:	00 
    89d7:	e8 74 73 00 00       	callq  fd50 <sin@plt>
    89dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    89e0:	f2 0f 11 80 88 00 00 	movsd  %xmm0,0x88(%rax)
    89e7:	00 
    89e8:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    89ed:	f2 0f 59 40 70       	mulsd  0x70(%rax),%xmm0
    89f2:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    89f9:	00 
    89fa:	f2 0f 10 48 78       	movsd  0x78(%rax),%xmm1
    89ff:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8a06:	00 
    8a07:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8a0b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8a0f:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    8a14:	f2 0f 10 40 78       	movsd  0x78(%rax),%xmm0
    8a19:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8a20:	00 
    8a21:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    8a26:	f2 0f 59 48 70       	mulsd  0x70(%rax),%xmm1
    8a2b:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8a32:	00 
    8a33:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    8a38:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8a3f:	00 00 80 
    8a42:	48 31 d1             	xor    %rdx,%rcx
    8a45:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    8a4a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8a4e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8a52:	f2 0f 11 40 50       	movsd  %xmm0,0x50(%rax)
    8a57:	f2 0f 10 40 68       	movsd  0x68(%rax),%xmm0
    8a5c:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    8a61:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8a68:	00 00 80 
    8a6b:	48 31 d1             	xor    %rdx,%rcx
    8a6e:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    8a73:	f2 0f 59 40 78       	mulsd  0x78(%rax),%xmm0
    8a78:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8a7f:	00 
    8a80:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    8a85:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8a8c:	00 
    8a8d:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8a91:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8a95:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    8a9a:	f2 0f 10 40 70       	movsd  0x70(%rax),%xmm0
    8a9f:	f2 0f 10 90 80 00 00 	movsd  0x80(%rax),%xmm2
    8aa6:	00 
    8aa7:	f2 0f 10 48 68       	movsd  0x68(%rax),%xmm1
    8aac:	f2 0f 59 48 78       	mulsd  0x78(%rax),%xmm1
    8ab1:	f2 0f 59 88 88 00 00 	mulsd  0x88(%rax),%xmm1
    8ab8:	00 
    8ab9:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    8abd:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8ac1:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    8ac6:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8acb:	f2 0f 59 80 80 00 00 	mulsd  0x80(%rax),%xmm0
    8ad2:	00 
    8ad3:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    8ad8:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    8add:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    8ae2:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    8ae9:	00 00 80 
    8aec:	48 31 d1             	xor    %rdx,%rcx
    8aef:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    8af4:	f2 0f 59 80 88 00 00 	mulsd  0x88(%rax),%xmm0
    8afb:	00 
    8afc:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    8b01:	48 83 c4 20          	add    $0x20,%rsp
    8b05:	5d                   	pop    %rbp
    8b06:	c3                   	retq   
    8b07:	cc                   	int3   
    8b08:	cc                   	int3   
    8b09:	cc                   	int3   
    8b0a:	cc                   	int3   
    8b0b:	cc                   	int3   
    8b0c:	cc                   	int3   
    8b0d:	cc                   	int3   
    8b0e:	cc                   	int3   
    8b0f:	cc                   	int3   

0000000000008b10 <_ZN4DiskC1ERK6VectorP7Textureddddd>:
    8b10:	55                   	push   %rbp
    8b11:	48 89 e5             	mov    %rsp,%rbp
    8b14:	48 83 ec 50          	sub    $0x50,%rsp
    8b18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8b1c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    8b20:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    8b24:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    8b29:	f2 0f 11 4d d8       	movsd  %xmm1,-0x28(%rbp)
    8b2e:	f2 0f 11 55 d0       	movsd  %xmm2,-0x30(%rbp)
    8b33:	f2 0f 11 5d c8       	movsd  %xmm3,-0x38(%rbp)
    8b38:	f2 0f 11 65 c0       	movsd  %xmm4,-0x40(%rbp)
    8b3d:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    8b41:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    8b45:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    8b49:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    8b4d:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    8b52:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
    8b57:	f2 0f 10 55 d0       	movsd  -0x30(%rbp),%xmm2
    8b5c:	f2 0f 10 5d c8       	movsd  -0x38(%rbp),%xmm3
    8b61:	f2 0f 10 65 c0       	movsd  -0x40(%rbp),%xmm4
    8b66:	e8 35 11 00 00       	callq  9ca0 <_ZN5PlaneC1ERK6VectorP7Textureddddd>
    8b6b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8b6f:	48 8d 0d 8a 83 00 00 	lea    0x838a(%rip),%rcx        # 10f00 <_ZTV4Disk>
    8b76:	48 83 c1 10          	add    $0x10,%rcx
    8b7a:	48 89 08             	mov    %rcx,(%rax)
    8b7d:	48 83 c4 50          	add    $0x50,%rsp
    8b81:	5d                   	pop    %rbp
    8b82:	c3                   	retq   
    8b83:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    8b8a:	84 00 00 00 00 00 

0000000000008b90 <_ZN4Disk15getIntersectionE3Ray>:
    8b90:	55                   	push   %rbp
    8b91:	48 89 e5             	mov    %rsp,%rbp
    8b94:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    8b9b:	48 8d 75 10          	lea    0x10(%rbp),%rsi
    8b9f:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
    8ba6:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    8baa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8bae:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    8bb5:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
    8bb9:	ba 30 00 00 00       	mov    $0x30,%edx
    8bbe:	e8 fd 71 00 00       	callq  fdc0 <memcpy@plt>
    8bc3:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
    8bca:	0f 10 45 b8          	movups -0x48(%rbp),%xmm0
    8bce:	0f 10 4d c8          	movups -0x38(%rbp),%xmm1
    8bd2:	0f 10 55 d8          	movups -0x28(%rbp),%xmm2
    8bd6:	48 89 e0             	mov    %rsp,%rax
    8bd9:	0f 11 50 20          	movups %xmm2,0x20(%rax)
    8bdd:	0f 11 48 10          	movups %xmm1,0x10(%rax)
    8be1:	0f 11 00             	movups %xmm0,(%rax)
    8be4:	e8 47 1a 00 00       	callq  a630 <_ZN5Plane15getIntersectionE3Ray>
    8be9:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    8bee:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    8bf3:	f2 0f 11 85 f0 fe ff 	movsd  %xmm0,-0x110(%rbp)
    8bfa:	ff 
    8bfb:	e8 a0 f6 ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    8c00:	0f 28 c8             	movaps %xmm0,%xmm1
    8c03:	f2 0f 10 85 f0 fe ff 	movsd  -0x110(%rbp),%xmm0
    8c0a:	ff 
    8c0b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8c0f:	0f 85 15 00 00 00    	jne    8c2a <_ZN4Disk15getIntersectionE3Ray+0x9a>
    8c15:	0f 8a 0f 00 00 00    	jp     8c2a <_ZN4Disk15getIntersectionE3Ray+0x9a>
    8c1b:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    8c20:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    8c25:	e9 25 02 00 00       	jmpq   8e4f <_ZN4Disk15getIntersectionE3Ray+0x2bf>
    8c2a:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    8c31:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    8c38:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    8c3f:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
    8c43:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    8c4a:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    8c4e:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    8c55:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    8c59:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    8c60:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    8c67:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    8c6e:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    8c75:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    8c7c:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    8c80:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    8c87:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    8c8e:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    8c95:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    8c9c:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    8ca3:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    8caa:	48 83 c6 18          	add    $0x18,%rsi
    8cae:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    8cb3:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    8cba:	e8 e1 55 00 00       	callq  e2a0 <_ZN6VectormlEd>
    8cbf:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    8cc6:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    8ccd:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    8cd4:	48 8b 08             	mov    (%rax),%rcx
    8cd7:	48 89 0c 24          	mov    %rcx,(%rsp)
    8cdb:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8cdf:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    8ce4:	48 8b 40 10          	mov    0x10(%rax),%rax
    8ce8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    8ced:	e8 5e 55 00 00       	callq  e250 <_ZN6VectorplES_>
    8cf2:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    8cf9:	48 8b 48 50          	mov    0x50(%rax),%rcx
    8cfd:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
    8d04:	48 8b 48 58          	mov    0x58(%rax),%rcx
    8d08:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
    8d0f:	48 8b 40 60          	mov    0x60(%rax),%rax
    8d13:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    8d1a:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
    8d21:	48 8d b5 28 ff ff ff 	lea    -0xd8(%rbp),%rsi
    8d28:	48 8d 85 f8 fe ff ff 	lea    -0x108(%rbp),%rax
    8d2f:	48 8b 08             	mov    (%rax),%rcx
    8d32:	48 89 0c 24          	mov    %rcx,(%rsp)
    8d36:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8d3a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    8d3f:	48 8b 40 10          	mov    0x10(%rax),%rax
    8d43:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    8d48:	e8 b3 54 00 00       	callq  e200 <_ZN6VectormiES_>
    8d4d:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
    8d51:	48 8d 75 88          	lea    -0x78(%rbp),%rsi
    8d55:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    8d5c:	48 8d 8d 58 ff ff ff 	lea    -0xa8(%rbp),%rcx
    8d63:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    8d6a:	4c 8b 06             	mov    (%rsi),%r8
    8d6d:	4c 89 04 24          	mov    %r8,(%rsp)
    8d71:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    8d75:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    8d7a:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    8d7e:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    8d83:	48 8b 32             	mov    (%rdx),%rsi
    8d86:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    8d8b:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    8d8f:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    8d94:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    8d98:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    8d9d:	48 8b 11             	mov    (%rcx),%rdx
    8da0:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    8da5:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    8da9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    8dae:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    8db2:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    8db7:	48 8b 08             	mov    (%rax),%rcx
    8dba:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    8dbf:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8dc3:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    8dc8:	48 8b 40 10          	mov    0x10(%rax),%rax
    8dcc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    8dd1:	e8 da 58 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    8dd6:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    8ddd:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    8de2:	f2 0f 59 45 a0       	mulsd  -0x60(%rbp),%xmm0
    8de7:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    8dec:	f2 0f 59 48 70       	mulsd  0x70(%rax),%xmm1
    8df1:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    8df5:	f2 0f 10 4d a8       	movsd  -0x58(%rbp),%xmm1
    8dfa:	f2 0f 59 4d a8       	mulsd  -0x58(%rbp),%xmm1
    8dff:	f2 0f 10 50 78       	movsd  0x78(%rax),%xmm2
    8e04:	f2 0f 59 50 78       	mulsd  0x78(%rax),%xmm2
    8e09:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    8e0d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8e11:	f2 0f 10 0d 2f 8b ff 	movsd  -0x74d1(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    8e18:	ff 
    8e19:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8e1d:	0f 86 12 00 00 00    	jbe    8e35 <_ZN4Disk15getIntersectionE3Ray+0x2a5>
    8e23:	e8 78 f4 ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    8e28:	f2 0f 11 85 d8 fe ff 	movsd  %xmm0,-0x128(%rbp)
    8e2f:	ff 
    8e30:	e9 0d 00 00 00       	jmpq   8e42 <_ZN4Disk15getIntersectionE3Ray+0x2b2>
    8e35:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    8e3a:	f2 0f 11 85 d8 fe ff 	movsd  %xmm0,-0x128(%rbp)
    8e41:	ff 
    8e42:	f2 0f 10 85 d8 fe ff 	movsd  -0x128(%rbp),%xmm0
    8e49:	ff 
    8e4a:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    8e4f:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    8e54:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    8e5b:	5d                   	pop    %rbp
    8e5c:	c3                   	retq   
    8e5d:	0f 1f 00             	nopl   (%rax)

0000000000008e60 <_ZN4Disk20getLightIntersectionE3RayPd>:
    8e60:	55                   	push   %rbp
    8e61:	48 89 e5             	mov    %rsp,%rbp
    8e64:	48 81 ec d0 01 00 00 	sub    $0x1d0,%rsp
    8e6b:	48 89 f8             	mov    %rdi,%rax
    8e6e:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    8e72:	48 89 bd b0 fe ff ff 	mov    %rdi,-0x150(%rbp)
    8e79:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    8e7d:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    8e81:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8e85:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
    8e8c:	48 83 c7 18          	add    $0x18,%rdi
    8e90:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    8e97:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    8e9b:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    8ea2:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    8ea6:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    8ead:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    8eb1:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    8eb5:	48 8b 08             	mov    (%rax),%rcx
    8eb8:	48 89 0c 24          	mov    %rcx,(%rsp)
    8ebc:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8ec0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    8ec5:	48 8b 40 10          	mov    0x10(%rax),%rax
    8ec9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    8ece:	e8 3d 57 00 00       	callq  e610 <_ZN6Vector3dotES_>
    8ed3:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
    8eda:	48 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%rdi
    8ee1:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    8ee6:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    8eed:	48 8b 08             	mov    (%rax),%rcx
    8ef0:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    8ef4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8ef8:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    8efc:	48 8b 40 10          	mov    0x10(%rax),%rax
    8f00:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    8f04:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    8f08:	48 8b 08             	mov    (%rax),%rcx
    8f0b:	48 89 0c 24          	mov    %rcx,(%rsp)
    8f0f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    8f13:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    8f18:	48 8b 40 10          	mov    0x10(%rax),%rax
    8f1c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    8f21:	e8 ea 56 00 00       	callq  e610 <_ZN6Vector3dotES_>
    8f26:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    8f2d:	f2 0f 58 80 f0 00 00 	addsd  0xf0(%rax),%xmm0
    8f34:	00 
    8f35:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    8f3a:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    8f3f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    8f44:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    8f4b:	00 00 80 
    8f4e:	48 31 c8             	xor    %rcx,%rax
    8f51:	66 48 0f 6e c0       	movq   %rax,%xmm0
    8f56:	f2 0f 5e 45 e0       	divsd  -0x20(%rbp),%xmm0
    8f5b:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    8f60:	0f 57 c0             	xorps  %xmm0,%xmm0
    8f63:	66 0f 2e 45 a0       	ucomisd -0x60(%rbp),%xmm0
    8f68:	0f 83 17 00 00 00    	jae    8f85 <_ZN4Disk20getLightIntersectionE3RayPd+0x125>
    8f6e:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    8f73:	f2 0f 10 0d cd 89 ff 	movsd  -0x7633(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    8f7a:	ff 
    8f7b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8f7f:	0f 82 09 00 00 00    	jb     8f8e <_ZN4Disk20getLightIntersectionE3RayPd+0x12e>
    8f85:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    8f89:	e9 65 03 00 00       	jmpq   92f3 <_ZN4Disk20getLightIntersectionE3RayPd+0x493>
    8f8e:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    8f95:	48 8b b5 b0 fe ff ff 	mov    -0x150(%rbp),%rsi
    8f9c:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    8fa3:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    8faa:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    8fb1:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    8fb8:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    8fbf:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    8fc3:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    8fca:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    8fd1:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    8fd8:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    8fdf:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    8fe6:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    8fed:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    8ff4:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
    8ffb:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    9002:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
    9009:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    9010:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    9017:	48 83 c6 18          	add    $0x18,%rsi
    901b:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    9020:	48 8d bd f8 fe ff ff 	lea    -0x108(%rbp),%rdi
    9027:	e8 74 52 00 00       	callq  e2a0 <_ZN6VectormlEd>
    902c:	48 8b b5 b0 fe ff ff 	mov    -0x150(%rbp),%rsi
    9033:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    903a:	48 8d 85 f8 fe ff ff 	lea    -0x108(%rbp),%rax
    9041:	48 8b 08             	mov    (%rax),%rcx
    9044:	48 89 0c 24          	mov    %rcx,(%rsp)
    9048:	48 8b 48 08          	mov    0x8(%rax),%rcx
    904c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    9051:	48 8b 40 10          	mov    0x10(%rax),%rax
    9055:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    905a:	e8 f1 51 00 00       	callq  e250 <_ZN6VectorplES_>
    905f:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    9066:	48 8b 48 50          	mov    0x50(%rax),%rcx
    906a:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
    9071:	48 8b 48 58          	mov    0x58(%rax),%rcx
    9075:	48 89 8d e8 fe ff ff 	mov    %rcx,-0x118(%rbp)
    907c:	48 8b 40 60          	mov    0x60(%rax),%rax
    9080:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    9087:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    908e:	48 8d b5 10 ff ff ff 	lea    -0xf0(%rbp),%rsi
    9095:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    909c:	48 8b 08             	mov    (%rax),%rcx
    909f:	48 89 0c 24          	mov    %rcx,(%rsp)
    90a3:	48 8b 48 08          	mov    0x8(%rax),%rcx
    90a7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    90ac:	48 8b 40 10          	mov    0x10(%rax),%rax
    90b0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    90b5:	e8 46 51 00 00       	callq  e200 <_ZN6VectormiES_>
    90ba:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    90be:	48 8d b5 70 ff ff ff 	lea    -0x90(%rbp),%rsi
    90c5:	48 8d 95 58 ff ff ff 	lea    -0xa8(%rbp),%rdx
    90cc:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
    90d3:	48 8d 85 28 ff ff ff 	lea    -0xd8(%rbp),%rax
    90da:	4c 8b 06             	mov    (%rsi),%r8
    90dd:	4c 89 04 24          	mov    %r8,(%rsp)
    90e1:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    90e5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    90ea:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    90ee:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    90f3:	48 8b 32             	mov    (%rdx),%rsi
    90f6:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    90fb:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    90ff:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    9104:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    9108:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    910d:	48 8b 11             	mov    (%rcx),%rdx
    9110:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    9115:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    9119:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    911e:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    9122:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    9127:	48 8b 08             	mov    (%rax),%rcx
    912a:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    912f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9133:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    9138:	48 8b 40 10          	mov    0x10(%rax),%rax
    913c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    9141:	e8 6a 55 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    9146:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    914d:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    9152:	f2 0f 59 45 88       	mulsd  -0x78(%rbp),%xmm0
    9157:	f2 0f 10 48 70       	movsd  0x70(%rax),%xmm1
    915c:	f2 0f 59 48 70       	mulsd  0x70(%rax),%xmm1
    9161:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    9165:	f2 0f 10 4d 90       	movsd  -0x70(%rbp),%xmm1
    916a:	f2 0f 59 4d 90       	mulsd  -0x70(%rbp),%xmm1
    916f:	f2 0f 10 50 78       	movsd  0x78(%rax),%xmm2
    9174:	f2 0f 59 50 78       	mulsd  0x78(%rax),%xmm2
    9179:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    917d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9181:	f2 0f 10 0d bf 87 ff 	movsd  -0x7841(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    9188:	ff 
    9189:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    918d:	0f 86 09 00 00 00    	jbe    919c <_ZN4Disk20getLightIntersectionE3RayPd+0x33c>
    9193:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    9197:	e9 57 01 00 00       	jmpq   92f3 <_ZN4Disk20getLightIntersectionE3RayPd+0x493>
    919c:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    91a3:	48 8b 40 68          	mov    0x68(%rax),%rax
    91a7:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    91ac:	f2 0f 10 0d dc 87 ff 	movsd  -0x7824(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    91b3:	ff 
    91b4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    91b8:	0f 86 09 00 00 00    	jbe    91c7 <_ZN4Disk20getLightIntersectionE3RayPd+0x367>
    91be:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    91c2:	e9 2c 01 00 00       	jmpq   92f3 <_ZN4Disk20getLightIntersectionE3RayPd+0x493>
    91c7:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    91ce:	48 8b 48 68          	mov    0x68(%rax),%rcx
    91d2:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
    91d9:	48 8d 8d dc fe ff ff 	lea    -0x124(%rbp),%rcx
    91e0:	48 89 8d a0 fe ff ff 	mov    %rcx,-0x160(%rbp)
    91e7:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    91ec:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    91f1:	f2 0f 10 0d 77 87 ff 	movsd  -0x7889(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    91f8:	ff 
    91f9:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    91fd:	e8 de 67 00 00       	callq  f9e0 <_Z3fixd>
    9202:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    9209:	f2 0f 11 85 a8 fe ff 	movsd  %xmm0,-0x158(%rbp)
    9210:	ff 
    9211:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    9216:	f2 0f 5e 40 78       	divsd  0x78(%rax),%xmm0
    921b:	f2 0f 10 0d 4d 87 ff 	movsd  -0x78b3(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    9222:	ff 
    9223:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    9227:	e8 b4 67 00 00       	callq  f9e0 <_Z3fixd>
    922c:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    9233:	48 8b b5 a0 fe ff ff 	mov    -0x160(%rbp),%rsi
    923a:	0f 28 c8             	movaps %xmm0,%xmm1
    923d:	f2 0f 10 85 a8 fe ff 	movsd  -0x158(%rbp),%xmm0
    9244:	ff 
    9245:	48 8b 07             	mov    (%rdi),%rax
    9248:	48 8d 95 d0 fe ff ff 	lea    -0x130(%rbp),%rdx
    924f:	48 8d 8d c8 fe ff ff 	lea    -0x138(%rbp),%rcx
    9256:	4c 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%r8
    925d:	ff 10                	callq  *(%rax)
    925f:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
    9266:	ff 
    9267:	f2 0f 10 0d 21 87 ff 	movsd  -0x78df(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    926e:	ff 
    926f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9273:	0f 86 09 00 00 00    	jbe    9282 <_ZN4Disk20getLightIntersectionE3RayPd+0x422>
    9279:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    927d:	e9 71 00 00 00       	jmpq   92f3 <_ZN4Disk20getLightIntersectionE3RayPd+0x493>
    9282:	0f b6 85 dc fe ff ff 	movzbl -0x124(%rbp),%eax
    9289:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    928d:	f2 0f 10 0d 7b 86 ff 	movsd  -0x7985(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    9294:	ff 
    9295:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    9299:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    929d:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    92a1:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    92a5:	0f b6 85 dd fe ff ff 	movzbl -0x123(%rbp),%eax
    92ac:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    92b0:	f2 0f 10 0d 58 86 ff 	movsd  -0x79a8(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    92b7:	ff 
    92b8:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    92bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    92c0:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    92c5:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    92ca:	0f b6 85 de fe ff ff 	movzbl -0x122(%rbp),%eax
    92d1:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    92d5:	f2 0f 10 0d 33 86 ff 	movsd  -0x79cd(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    92dc:	ff 
    92dd:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    92e1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    92e5:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    92ea:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    92ef:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    92f3:	8a 45 ff             	mov    -0x1(%rbp),%al
    92f6:	24 01                	and    $0x1,%al
    92f8:	0f b6 c0             	movzbl %al,%eax
    92fb:	48 81 c4 d0 01 00 00 	add    $0x1d0,%rsp
    9302:	5d                   	pop    %rbp
    9303:	c3                   	retq   
    9304:	cc                   	int3   
    9305:	cc                   	int3   
    9306:	cc                   	int3   
    9307:	cc                   	int3   
    9308:	cc                   	int3   
    9309:	cc                   	int3   
    930a:	cc                   	int3   
    930b:	cc                   	int3   
    930c:	cc                   	int3   
    930d:	cc                   	int3   
    930e:	cc                   	int3   
    930f:	cc                   	int3   

0000000000009310 <_ZN5LightC1ERK6VectorPh>:
    9310:	55                   	push   %rbp
    9311:	48 89 e5             	mov    %rsp,%rbp
    9314:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9318:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    931c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    9320:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9324:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    9328:	48 8b 11             	mov    (%rcx),%rdx
    932b:	48 89 50 08          	mov    %rdx,0x8(%rax)
    932f:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    9333:	48 89 50 10          	mov    %rdx,0x10(%rax)
    9337:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    933b:	48 89 48 18          	mov    %rcx,0x18(%rax)
    933f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9343:	48 89 08             	mov    %rcx,(%rax)
    9346:	5d                   	pop    %rbp
    9347:	c3                   	retq   
    9348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    934f:	00 

0000000000009350 <_ZN5Light8getColorEhhh>:
    9350:	55                   	push   %rbp
    9351:	48 89 e5             	mov    %rsp,%rbp
    9354:	48 83 ec 20          	sub    $0x20,%rsp
    9358:	88 c8                	mov    %cl,%al
    935a:	88 d1                	mov    %dl,%cl
    935c:	40 88 f2             	mov    %sil,%dl
    935f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9363:	88 55 f7             	mov    %dl,-0x9(%rbp)
    9366:	88 4d f6             	mov    %cl,-0xa(%rbp)
    9369:	88 45 f5             	mov    %al,-0xb(%rbp)
    936c:	bf 03 00 00 00       	mov    $0x3,%edi
    9371:	e8 aa 68 00 00       	callq  fc20 <malloc@plt>
    9376:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    937a:	8a 4d f7             	mov    -0x9(%rbp),%cl
    937d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9381:	88 08                	mov    %cl,(%rax)
    9383:	8a 4d f6             	mov    -0xa(%rbp),%cl
    9386:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    938a:	88 48 01             	mov    %cl,0x1(%rax)
    938d:	8a 4d f5             	mov    -0xb(%rbp),%cl
    9390:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9394:	88 48 02             	mov    %cl,0x2(%rax)
    9397:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    939b:	48 83 c4 20          	add    $0x20,%rsp
    939f:	5d                   	pop    %rbp
    93a0:	c3                   	retq   
    93a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    93a8:	0f 1f 84 00 00 00 00 
    93af:	00 

00000000000093b0 <_ZN8AutonomaC1ERK6Camera>:
    93b0:	55                   	push   %rbp
    93b1:	48 89 e5             	mov    %rsp,%rbp
    93b4:	48 83 ec 30          	sub    $0x30,%rsp
    93b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    93bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    93c0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    93c4:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
    93c8:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    93cc:	ba a8 00 00 00       	mov    $0xa8,%edx
    93d1:	e8 ea 69 00 00       	callq  fdc0 <memcpy@plt>
    93d6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    93da:	48 c7 80 b8 00 00 00 	movq   $0x0,0xb8(%rax)
    93e1:	00 00 00 00 
    93e5:	48 c7 80 c0 00 00 00 	movq   $0x0,0xc0(%rax)
    93ec:	00 00 00 00 
    93f0:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    93f7:	00 00 00 00 
    93fb:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    9402:	00 00 00 00 
    9406:	c7 80 b0 00 00 00 0a 	movl   $0xa,0xb0(%rax)
    940d:	00 00 00 
    9410:	bf 28 00 00 00       	mov    $0x28,%edi
    9415:	e8 d6 68 00 00       	callq  fcf0 <_Znwm@plt>
    941a:	48 89 c7             	mov    %rax,%rdi
    941d:	48 89 f8             	mov    %rdi,%rax
    9420:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    9424:	31 c9                	xor    %ecx,%ecx
    9426:	89 ce                	mov    %ecx,%esi
    9428:	89 ca                	mov    %ecx,%edx
    942a:	e8 41 56 00 00       	callq  ea70 <_ZN12ColorTextureC1Ehhh>
    942f:	e9 00 00 00 00       	jmpq   9434 <_ZN8AutonomaC1ERK6Camera+0x84>
    9434:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    9438:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    943c:	48 89 88 a8 00 00 00 	mov    %rcx,0xa8(%rax)
    9443:	48 83 c4 30          	add    $0x30,%rsp
    9447:	5d                   	pop    %rbp
    9448:	c3                   	retq   
    9449:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    944d:	48 89 c1             	mov    %rax,%rcx
    9450:	89 d0                	mov    %edx,%eax
    9452:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    9456:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    9459:	e8 b2 68 00 00       	callq  fd10 <_ZdlPv@plt>
    945e:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    9462:	e8 b9 68 00 00       	callq  fd20 <_Unwind_Resume@plt>
    9467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    946e:	00 00 

0000000000009470 <_ZN8AutonomaC1ERK6CameraP7Texture>:
    9470:	55                   	push   %rbp
    9471:	48 89 e5             	mov    %rsp,%rbp
    9474:	48 83 ec 20          	sub    $0x20,%rsp
    9478:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    947c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9480:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    9484:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    9488:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    948c:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    9490:	ba a8 00 00 00       	mov    $0xa8,%edx
    9495:	e8 26 69 00 00       	callq  fdc0 <memcpy@plt>
    949a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    949e:	48 c7 80 b8 00 00 00 	movq   $0x0,0xb8(%rax)
    94a5:	00 00 00 00 
    94a9:	48 c7 80 c0 00 00 00 	movq   $0x0,0xc0(%rax)
    94b0:	00 00 00 00 
    94b4:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    94bb:	00 00 00 00 
    94bf:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    94c6:	00 00 00 00 
    94ca:	c7 80 b0 00 00 00 0a 	movl   $0xa,0xb0(%rax)
    94d1:	00 00 00 
    94d4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    94d8:	48 89 88 a8 00 00 00 	mov    %rcx,0xa8(%rax)
    94df:	48 83 c4 20          	add    $0x20,%rsp
    94e3:	5d                   	pop    %rbp
    94e4:	c3                   	retq   
    94e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    94ec:	00 00 00 00 

00000000000094f0 <_ZN8Autonoma8addShapeEP5Shape>:
    94f0:	55                   	push   %rbp
    94f1:	48 89 e5             	mov    %rsp,%rbp
    94f4:	48 83 ec 20          	sub    $0x20,%rsp
    94f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    94fc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9500:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9504:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    9508:	bf 18 00 00 00       	mov    $0x18,%edi
    950d:	e8 0e 67 00 00       	callq  fc20 <malloc@plt>
    9512:	48 89 c1             	mov    %rax,%rcx
    9515:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9519:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    951d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    9521:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9525:	48 89 11             	mov    %rdx,(%rcx)
    9528:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    952c:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    9533:	00 
    9534:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9538:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
    953f:	00 
    9540:	48 83 b8 b8 00 00 00 	cmpq   $0x0,0xb8(%rax)
    9547:	00 
    9548:	0f 85 1b 00 00 00    	jne    9569 <_ZN8Autonoma8addShapeEP5Shape+0x79>
    954e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9552:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9556:	48 89 88 c0 00 00 00 	mov    %rcx,0xc0(%rax)
    955d:	48 89 88 b8 00 00 00 	mov    %rcx,0xb8(%rax)
    9564:	e9 2d 00 00 00       	jmpq   9596 <_ZN8Autonoma8addShapeEP5Shape+0xa6>
    9569:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    956d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    9571:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    9578:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    957c:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    9583:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9587:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    958b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    958f:	48 89 88 c0 00 00 00 	mov    %rcx,0xc0(%rax)
    9596:	48 83 c4 20          	add    $0x20,%rsp
    959a:	5d                   	pop    %rbp
    959b:	c3                   	retq   
    959c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000095a0 <_ZN8Autonoma11removeShapeEP9ShapeNode>:
    95a0:	55                   	push   %rbp
    95a1:	48 89 e5             	mov    %rsp,%rbp
    95a4:	48 83 ec 30          	sub    $0x30,%rsp
    95a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    95ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    95b0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    95b4:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    95b8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    95bc:	48 3b 81 b8 00 00 00 	cmp    0xb8(%rcx),%rax
    95c3:	0f 85 5b 00 00 00    	jne    9624 <_ZN8Autonoma11removeShapeEP9ShapeNode+0x84>
    95c9:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    95cd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    95d1:	48 3b 81 c0 00 00 00 	cmp    0xc0(%rcx),%rax
    95d8:	0f 85 1f 00 00 00    	jne    95fd <_ZN8Autonoma11removeShapeEP9ShapeNode+0x5d>
    95de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    95e2:	48 c7 80 b8 00 00 00 	movq   $0x0,0xb8(%rax)
    95e9:	00 00 00 00 
    95ed:	48 c7 80 b8 00 00 00 	movq   $0x0,0xb8(%rax)
    95f4:	00 00 00 00 
    95f8:	e9 22 00 00 00       	jmpq   961f <_ZN8Autonoma11removeShapeEP9ShapeNode+0x7f>
    95fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9601:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    9605:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    9609:	48 89 88 b8 00 00 00 	mov    %rcx,0xb8(%rax)
    9610:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    9617:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    961e:	00 
    961f:	e9 71 00 00 00       	jmpq   9695 <_ZN8Autonoma11removeShapeEP9ShapeNode+0xf5>
    9624:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    9628:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    962c:	48 3b 81 c0 00 00 00 	cmp    0xc0(%rcx),%rax
    9633:	0f 85 27 00 00 00    	jne    9660 <_ZN8Autonoma11removeShapeEP9ShapeNode+0xc0>
    9639:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    963d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    9641:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9645:	48 89 88 c0 00 00 00 	mov    %rcx,0xc0(%rax)
    964c:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
    9653:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    965a:	00 
    965b:	e9 30 00 00 00       	jmpq   9690 <_ZN8Autonoma11removeShapeEP9ShapeNode+0xf0>
    9660:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9664:	48 8b 40 08          	mov    0x8(%rax),%rax
    9668:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    966c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9670:	48 8b 40 10          	mov    0x10(%rax),%rax
    9674:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    9678:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    967c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9680:	48 89 48 10          	mov    %rcx,0x10(%rax)
    9684:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9688:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    968c:	48 89 48 08          	mov    %rcx,0x8(%rax)
    9690:	e9 00 00 00 00       	jmpq   9695 <_ZN8Autonoma11removeShapeEP9ShapeNode+0xf5>
    9695:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    9699:	e8 32 67 00 00       	callq  fdd0 <free@plt>
    969e:	48 83 c4 30          	add    $0x30,%rsp
    96a2:	5d                   	pop    %rbp
    96a3:	c3                   	retq   
    96a4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    96ab:	00 00 00 00 00 

00000000000096b0 <_ZN8Autonoma8addLightEP5Light>:
    96b0:	55                   	push   %rbp
    96b1:	48 89 e5             	mov    %rsp,%rbp
    96b4:	48 83 ec 20          	sub    $0x20,%rsp
    96b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    96bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    96c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    96c4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    96c8:	bf 18 00 00 00       	mov    $0x18,%edi
    96cd:	e8 4e 65 00 00       	callq  fc20 <malloc@plt>
    96d2:	48 89 c1             	mov    %rax,%rcx
    96d5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    96d9:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    96dd:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    96e1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    96e5:	48 89 11             	mov    %rdx,(%rcx)
    96e8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    96ec:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    96f3:	00 
    96f4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    96f8:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
    96ff:	00 
    9700:	48 83 b8 c8 00 00 00 	cmpq   $0x0,0xc8(%rax)
    9707:	00 
    9708:	0f 85 1b 00 00 00    	jne    9729 <_ZN8Autonoma8addLightEP5Light+0x79>
    970e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9712:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9716:	48 89 88 d0 00 00 00 	mov    %rcx,0xd0(%rax)
    971d:	48 89 88 c8 00 00 00 	mov    %rcx,0xc8(%rax)
    9724:	e9 2d 00 00 00       	jmpq   9756 <_ZN8Autonoma8addLightEP5Light+0xa6>
    9729:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    972d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    9731:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    9738:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    973c:	48 8b 90 d0 00 00 00 	mov    0xd0(%rax),%rdx
    9743:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9747:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    974b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    974f:	48 89 88 d0 00 00 00 	mov    %rcx,0xd0(%rax)
    9756:	48 83 c4 20          	add    $0x20,%rsp
    975a:	5d                   	pop    %rbp
    975b:	c3                   	retq   
    975c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000009760 <_ZN8Autonoma11removeLightEP9LightNode>:
    9760:	55                   	push   %rbp
    9761:	48 89 e5             	mov    %rsp,%rbp
    9764:	48 83 ec 30          	sub    $0x30,%rsp
    9768:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    976c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9770:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    9774:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    9778:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    977c:	48 3b 81 c8 00 00 00 	cmp    0xc8(%rcx),%rax
    9783:	0f 85 5b 00 00 00    	jne    97e4 <_ZN8Autonoma11removeLightEP9LightNode+0x84>
    9789:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    978d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9791:	48 3b 81 d0 00 00 00 	cmp    0xd0(%rcx),%rax
    9798:	0f 85 1f 00 00 00    	jne    97bd <_ZN8Autonoma11removeLightEP9LightNode+0x5d>
    979e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    97a2:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    97a9:	00 00 00 00 
    97ad:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    97b4:	00 00 00 00 
    97b8:	e9 22 00 00 00       	jmpq   97df <_ZN8Autonoma11removeLightEP9LightNode+0x7f>
    97bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    97c1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    97c5:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    97c9:	48 89 88 c8 00 00 00 	mov    %rcx,0xc8(%rax)
    97d0:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    97d7:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    97de:	00 
    97df:	e9 71 00 00 00       	jmpq   9855 <_ZN8Autonoma11removeLightEP9LightNode+0xf5>
    97e4:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    97e8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    97ec:	48 3b 81 d0 00 00 00 	cmp    0xd0(%rcx),%rax
    97f3:	0f 85 27 00 00 00    	jne    9820 <_ZN8Autonoma11removeLightEP9LightNode+0xc0>
    97f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    97fd:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    9801:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9805:	48 89 88 d0 00 00 00 	mov    %rcx,0xd0(%rax)
    980c:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    9813:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    981a:	00 
    981b:	e9 30 00 00 00       	jmpq   9850 <_ZN8Autonoma11removeLightEP9LightNode+0xf0>
    9820:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9824:	48 8b 40 08          	mov    0x8(%rax),%rax
    9828:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    982c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9830:	48 8b 40 10          	mov    0x10(%rax),%rax
    9834:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    9838:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    983c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9840:	48 89 48 10          	mov    %rcx,0x10(%rax)
    9844:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9848:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    984c:	48 89 48 08          	mov    %rcx,0x8(%rax)
    9850:	e9 00 00 00 00       	jmpq   9855 <_ZN8Autonoma11removeLightEP9LightNode+0xf5>
    9855:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    9859:	e8 72 65 00 00       	callq  fdd0 <free@plt>
    985e:	48 83 c4 30          	add    $0x30,%rsp
    9862:	5d                   	pop    %rbp
    9863:	c3                   	retq   
    9864:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    986b:	00 00 00 00 00 

0000000000009870 <_Z8getLightPdP8Autonoma6VectorS2_h>:
    9870:	55                   	push   %rbp
    9871:	48 89 e5             	mov    %rsp,%rbp
    9874:	48 81 ec 60 01 00 00 	sub    $0x160,%rsp
    987b:	88 d0                	mov    %dl,%al
    987d:	48 8d 4d 28          	lea    0x28(%rbp),%rcx
    9881:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    9888:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
    988c:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
    9893:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9897:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    989b:	88 45 ef             	mov    %al,-0x11(%rbp)
    989e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    98a2:	0f 57 c0             	xorps  %xmm0,%xmm0
    98a5:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    98aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    98ae:	0f 57 c0             	xorps  %xmm0,%xmm0
    98b1:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    98b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    98ba:	0f 57 c0             	xorps  %xmm0,%xmm0
    98bd:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    98c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    98c5:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    98cc:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    98d0:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    98d5:	0f 84 b4 03 00 00    	je     9c8f <_Z8getLightPdP8Autonoma6VectorS2_h+0x41f>
    98db:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    98e2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    98e6:	48 8b 09             	mov    (%rcx),%rcx
    98e9:	48 8b 09             	mov    (%rcx),%rcx
    98ec:	0f b6 09             	movzbl (%rcx),%ecx
    98ef:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    98f3:	f2 0f 10 0d 15 80 ff 	movsd  -0x7feb(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    98fa:	ff 
    98fb:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    98ff:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    9904:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9908:	48 8b 09             	mov    (%rcx),%rcx
    990b:	48 8b 09             	mov    (%rcx),%rcx
    990e:	0f b6 49 01          	movzbl 0x1(%rcx),%ecx
    9912:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    9916:	f2 0f 10 0d f2 7f ff 	movsd  -0x800e(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    991d:	ff 
    991e:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    9922:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    9927:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    992b:	48 8b 09             	mov    (%rcx),%rcx
    992e:	48 8b 09             	mov    (%rcx),%rcx
    9931:	0f b6 49 02          	movzbl 0x2(%rcx),%ecx
    9935:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    9939:	f2 0f 10 0d cf 7f ff 	movsd  -0x8031(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    9940:	ff 
    9941:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    9945:	f2 0f 11 45 d0       	movsd  %xmm0,-0x30(%rbp)
    994a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    994e:	48 8b 31             	mov    (%rcx),%rsi
    9951:	48 83 c6 08          	add    $0x8,%rsi
    9955:	48 8b 08             	mov    (%rax),%rcx
    9958:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    995c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9960:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    9964:	48 8b 40 10          	mov    0x10(%rax),%rax
    9968:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    996c:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
    9970:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    9974:	48 8b 08             	mov    (%rax),%rcx
    9977:	48 89 0c 24          	mov    %rcx,(%rsp)
    997b:	48 8b 48 08          	mov    0x8(%rax),%rcx
    997f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    9984:	48 8b 40 10          	mov    0x10(%rax),%rax
    9988:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    998d:	e8 6e 48 00 00       	callq  e200 <_ZN6VectormiES_>
    9992:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9996:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    999d:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    99a1:	c6 45 87 00          	movb   $0x0,-0x79(%rbp)
    99a5:	31 c0                	xor    %eax,%eax
    99a7:	f6 45 87 01          	testb  $0x1,-0x79(%rbp)
    99ab:	88 85 ef fe ff ff    	mov    %al,-0x111(%rbp)
    99b1:	0f 85 0e 00 00 00    	jne    99c5 <_Z8getLightPdP8Autonoma6VectorS2_h+0x155>
    99b7:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    99bc:	0f 95 c0             	setne  %al
    99bf:	88 85 ef fe ff ff    	mov    %al,-0x111(%rbp)
    99c5:	8a 85 ef fe ff ff    	mov    -0x111(%rbp),%al
    99cb:	a8 01                	test   $0x1,%al
    99cd:	0f 85 05 00 00 00    	jne    99d8 <_Z8getLightPdP8Autonoma6VectorS2_h+0x168>
    99d3:	e9 bd 00 00 00       	jmpq   9a95 <_Z8getLightPdP8Autonoma6VectorS2_h+0x225>
    99d8:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    99dc:	48 8b 00             	mov    (%rax),%rax
    99df:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    99e6:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
    99ed:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    99f1:	f2 0f 10 05 3f 7f ff 	movsd  -0x80c1(%rip),%xmm0        # 1938 <_IO_stdin_used+0x38>
    99f8:	ff 
    99f9:	e8 a2 48 00 00       	callq  e2a0 <_ZN6VectormlEd>
    99fe:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
    9a05:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
    9a0c:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    9a13:	48 8b 08             	mov    (%rax),%rcx
    9a16:	48 89 0c 24          	mov    %rcx,(%rsp)
    9a1a:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9a1e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    9a23:	48 8b 40 10          	mov    0x10(%rax),%rax
    9a27:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    9a2c:	e8 1f 48 00 00       	callq  e250 <_ZN6VectorplES_>
    9a31:	48 8d bd 50 ff ff ff 	lea    -0xb0(%rbp),%rdi
    9a38:	48 8d b5 38 ff ff ff 	lea    -0xc8(%rbp),%rsi
    9a3f:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
    9a43:	e8 d8 4f 00 00       	callq  ea20 <_ZN3RayC1ERK6VectorS2_>
    9a48:	48 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%rdi
    9a4f:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
    9a53:	48 8b 07             	mov    (%rdi),%rax
    9a56:	48 8b 40 08          	mov    0x8(%rax),%rax
    9a5a:	0f 10 85 50 ff ff ff 	movups -0xb0(%rbp),%xmm0
    9a61:	0f 10 8d 60 ff ff ff 	movups -0xa0(%rbp),%xmm1
    9a68:	0f 10 95 70 ff ff ff 	movups -0x90(%rbp),%xmm2
    9a6f:	48 89 e1             	mov    %rsp,%rcx
    9a72:	0f 11 51 20          	movups %xmm2,0x20(%rcx)
    9a76:	0f 11 49 10          	movups %xmm1,0x10(%rcx)
    9a7a:	0f 11 01             	movups %xmm0,(%rcx)
    9a7d:	ff d0                	callq  *%rax
    9a7f:	24 01                	and    $0x1,%al
    9a81:	88 45 87             	mov    %al,-0x79(%rbp)
    9a84:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9a88:	48 8b 40 10          	mov    0x10(%rax),%rax
    9a8c:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    9a90:	e9 10 ff ff ff       	jmpq   99a5 <_Z8getLightPdP8Autonoma6VectorS2_h+0x135>
    9a95:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
    9a9c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    9aa0:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    9aa7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9aab:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    9ab2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9ab6:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    9abd:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    9ac4:	48 8b 08             	mov    (%rax),%rcx
    9ac7:	48 89 0c 24          	mov    %rcx,(%rsp)
    9acb:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9acf:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    9ad4:	48 8b 40 10          	mov    0x10(%rax),%rax
    9ad8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    9add:	e8 2e 4b 00 00       	callq  e610 <_ZN6Vector3dotES_>
    9ae2:	f2 0f 11 85 d8 fe ff 	movsd  %xmm0,-0x128(%rbp)
    9ae9:	ff 
    9aea:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
    9aee:	e8 cd 4a 00 00       	callq  e5c0 <_ZN6Vector3magEv>
    9af3:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
    9afa:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
    9b01:	ff 
    9b02:	e8 b9 4a 00 00       	callq  e5c0 <_ZN6Vector3magEv>
    9b07:	f2 0f 10 8d d0 fe ff 	movsd  -0x130(%rbp),%xmm1
    9b0e:	ff 
    9b0f:	0f 28 d0             	movaps %xmm0,%xmm2
    9b12:	f2 0f 10 85 d8 fe ff 	movsd  -0x128(%rbp),%xmm0
    9b19:	ff 
    9b1a:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    9b1e:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    9b22:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
    9b29:	ff 
    9b2a:	f6 45 87 01          	testb  $0x1,-0x79(%rbp)
    9b2e:	0f 85 4a 01 00 00    	jne    9c7e <_Z8getLightPdP8Autonoma6VectorS2_h+0x40e>
    9b34:	80 7d ef 00          	cmpb   $0x0,-0x11(%rbp)
    9b38:	0f 84 38 00 00 00    	je     9b76 <_Z8getLightPdP8Autonoma6VectorS2_h+0x306>
    9b3e:	0f 57 c0             	xorps  %xmm0,%xmm0
    9b41:	66 0f 2e 85 18 ff ff 	ucomisd -0xe8(%rbp),%xmm0
    9b48:	ff 
    9b49:	0f 86 27 00 00 00    	jbe    9b76 <_Z8getLightPdP8Autonoma6VectorS2_h+0x306>
    9b4f:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
    9b56:	ff 
    9b57:	66 48 0f 7e c0       	movq   %xmm0,%rax
    9b5c:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    9b63:	00 00 80 
    9b66:	48 31 c8             	xor    %rcx,%rax
    9b69:	66 48 0f 6e c0       	movq   %rax,%xmm0
    9b6e:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
    9b75:	ff 
    9b76:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
    9b7d:	ff 
    9b7e:	0f 57 c9             	xorps  %xmm1,%xmm1
    9b81:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9b85:	0f 86 ee 00 00 00    	jbe    9c79 <_Z8getLightPdP8Autonoma6VectorS2_h+0x409>
    9b8b:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
    9b92:	ff 
    9b93:	f2 0f 10 55 c0       	movsd  -0x40(%rbp),%xmm2
    9b98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b9c:	f2 0f 10 08          	movsd  (%rax),%xmm1
    9ba0:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9ba4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9ba8:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    9bac:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
    9bb3:	ff 
    9bb4:	f2 0f 10 55 c0       	movsd  -0x40(%rbp),%xmm2
    9bb9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9bbd:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    9bc2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9bc6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9bca:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    9bcf:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
    9bd6:	ff 
    9bd7:	f2 0f 10 55 c0       	movsd  -0x40(%rbp),%xmm2
    9bdc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9be0:	f2 0f 10 48 10       	movsd  0x10(%rax),%xmm1
    9be5:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9be9:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9bed:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    9bf2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9bf6:	f2 0f 10 00          	movsd  (%rax),%xmm0
    9bfa:	f2 0f 10 0d 46 7d ff 	movsd  -0x82ba(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    9c01:	ff 
    9c02:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9c06:	0f 86 10 00 00 00    	jbe    9c1c <_Z8getLightPdP8Autonoma6VectorS2_h+0x3ac>
    9c0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9c10:	f2 0f 10 05 30 7d ff 	movsd  -0x82d0(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    9c17:	ff 
    9c18:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    9c1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9c20:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    9c25:	f2 0f 10 0d 1b 7d ff 	movsd  -0x82e5(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    9c2c:	ff 
    9c2d:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9c31:	0f 86 11 00 00 00    	jbe    9c48 <_Z8getLightPdP8Autonoma6VectorS2_h+0x3d8>
    9c37:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9c3b:	f2 0f 10 05 05 7d ff 	movsd  -0x82fb(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    9c42:	ff 
    9c43:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    9c48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9c4c:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    9c51:	f2 0f 10 0d ef 7c ff 	movsd  -0x8311(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    9c58:	ff 
    9c59:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9c5d:	0f 86 11 00 00 00    	jbe    9c74 <_Z8getLightPdP8Autonoma6VectorS2_h+0x404>
    9c63:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9c67:	f2 0f 10 05 d9 7c ff 	movsd  -0x8327(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    9c6e:	ff 
    9c6f:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    9c74:	e9 00 00 00 00       	jmpq   9c79 <_Z8getLightPdP8Autonoma6VectorS2_h+0x409>
    9c79:	e9 00 00 00 00       	jmpq   9c7e <_Z8getLightPdP8Autonoma6VectorS2_h+0x40e>
    9c7e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9c82:	48 8b 40 10          	mov    0x10(%rax),%rax
    9c86:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    9c8a:	e9 41 fc ff ff       	jmpq   98d0 <_Z8getLightPdP8Autonoma6VectorS2_h+0x60>
    9c8f:	48 81 c4 60 01 00 00 	add    $0x160,%rsp
    9c96:	5d                   	pop    %rbp
    9c97:	c3                   	retq   
    9c98:	cc                   	int3   
    9c99:	cc                   	int3   
    9c9a:	cc                   	int3   
    9c9b:	cc                   	int3   
    9c9c:	cc                   	int3   
    9c9d:	cc                   	int3   
    9c9e:	cc                   	int3   
    9c9f:	cc                   	int3   

0000000000009ca0 <_ZN5PlaneC1ERK6VectorP7Textureddddd>:
    9ca0:	55                   	push   %rbp
    9ca1:	48 89 e5             	mov    %rsp,%rbp
    9ca4:	48 83 ec 50          	sub    $0x50,%rsp
    9ca8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9cac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9cb0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    9cb4:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    9cb9:	f2 0f 11 4d d8       	movsd  %xmm1,-0x28(%rbp)
    9cbe:	f2 0f 11 55 d0       	movsd  %xmm2,-0x30(%rbp)
    9cc3:	f2 0f 11 5d c8       	movsd  %xmm3,-0x38(%rbp)
    9cc8:	f2 0f 11 65 c0       	movsd  %xmm4,-0x40(%rbp)
    9ccd:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    9cd1:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    9cd5:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    9cd9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    9cdd:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    9ce2:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
    9ce7:	f2 0f 10 55 d0       	movsd  -0x30(%rbp),%xmm2
    9cec:	e8 cf 15 00 00       	callq  b2c0 <_ZN5ShapeC2ERK6VectorP7Textureddd>
    9cf1:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    9cf5:	48 8d 05 7c 72 00 00 	lea    0x727c(%rip),%rax        # 10f78 <_ZTV5Plane>
    9cfc:	48 83 c0 10          	add    $0x10,%rax
    9d00:	48 89 07             	mov    %rax,(%rdi)
    9d03:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9d07:	48 8b 08             	mov    (%rax),%rcx
    9d0a:	48 89 8f a8 00 00 00 	mov    %rcx,0xa8(%rdi)
    9d11:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9d15:	48 89 8f b0 00 00 00 	mov    %rcx,0xb0(%rdi)
    9d1c:	48 8b 40 10          	mov    0x10(%rax),%rax
    9d20:	48 89 87 b8 00 00 00 	mov    %rax,0xb8(%rdi)
    9d27:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9d2b:	48 8b 08             	mov    (%rax),%rcx
    9d2e:	48 89 8f c0 00 00 00 	mov    %rcx,0xc0(%rdi)
    9d35:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9d39:	48 89 8f c8 00 00 00 	mov    %rcx,0xc8(%rdi)
    9d40:	48 8b 40 10          	mov    0x10(%rax),%rax
    9d44:	48 89 87 d0 00 00 00 	mov    %rax,0xd0(%rdi)
    9d4b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9d4f:	48 8b 08             	mov    (%rax),%rcx
    9d52:	48 89 8f d8 00 00 00 	mov    %rcx,0xd8(%rdi)
    9d59:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9d5d:	48 89 8f e0 00 00 00 	mov    %rcx,0xe0(%rdi)
    9d64:	48 8b 40 10          	mov    0x10(%rax),%rax
    9d68:	48 89 87 e8 00 00 00 	mov    %rax,0xe8(%rdi)
    9d6f:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    9d74:	f2 0f 11 47 70       	movsd  %xmm0,0x70(%rdi)
    9d79:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    9d7e:	f2 0f 11 47 78       	movsd  %xmm0,0x78(%rdi)
    9d83:	f2 0f 10 47 08       	movsd  0x8(%rdi),%xmm0
    9d88:	f2 0f 10 4f 10       	movsd  0x10(%rdi),%xmm1
    9d8d:	f2 0f 10 57 18       	movsd  0x18(%rdi),%xmm2
    9d92:	48 8b 07             	mov    (%rdi),%rax
    9d95:	ff 50 30             	callq  *0x30(%rax)
    9d98:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9d9c:	48 c7 80 a0 00 00 00 	movq   $0x0,0xa0(%rax)
    9da3:	00 00 00 00 
    9da7:	f2 0f 10 40 70       	movsd  0x70(%rax),%xmm0
    9dac:	f2 0f 11 80 80 00 00 	movsd  %xmm0,0x80(%rax)
    9db3:	00 
    9db4:	f2 0f 10 40 78       	movsd  0x78(%rax),%xmm0
    9db9:	f2 0f 11 80 88 00 00 	movsd  %xmm0,0x88(%rax)
    9dc0:	00 
    9dc1:	48 83 c4 50          	add    $0x50,%rsp
    9dc5:	5d                   	pop    %rbp
    9dc6:	c3                   	retq   
    9dc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    9dce:	00 00 

0000000000009dd0 <_ZN5Plane9setAnglesEddd>:
    9dd0:	55                   	push   %rbp
    9dd1:	48 89 e5             	mov    %rsp,%rbp
    9dd4:	48 83 ec 60          	sub    $0x60,%rsp
    9dd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9ddc:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    9de1:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
    9de6:	f2 0f 11 55 e0       	movsd  %xmm2,-0x20(%rbp)
    9deb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9def:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    9df3:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    9df8:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    9dfd:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    9e02:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    9e07:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    9e0c:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    9e11:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    9e16:	e8 45 5f 00 00       	callq  fd60 <cos@plt>
    9e1b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9e1f:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    9e24:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    9e29:	e8 22 5f 00 00       	callq  fd50 <sin@plt>
    9e2e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9e32:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    9e37:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    9e3c:	e8 1f 5f 00 00       	callq  fd60 <cos@plt>
    9e41:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9e45:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    9e4a:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    9e4f:	e8 fc 5e 00 00       	callq  fd50 <sin@plt>
    9e54:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9e58:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    9e5d:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    9e62:	e8 f9 5e 00 00       	callq  fd60 <cos@plt>
    9e67:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9e6b:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    9e70:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    9e75:	e8 d6 5e 00 00       	callq  fd50 <sin@plt>
    9e7a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9e7e:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    9e83:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    9e88:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    9e8d:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    9e92:	f2 0f 10 48 30       	movsd  0x30(%rax),%xmm1
    9e97:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    9e9c:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9ea0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9ea4:	f2 0f 11 80 a8 00 00 	movsd  %xmm0,0xa8(%rax)
    9eab:	00 
    9eac:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    9eb1:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    9eb6:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    9ebb:	f2 0f 59 48 38       	mulsd  0x38(%rax),%xmm1
    9ec0:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    9ec5:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    9eca:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    9ed1:	00 00 80 
    9ed4:	48 31 d1             	xor    %rdx,%rcx
    9ed7:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    9edc:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9ee0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9ee4:	f2 0f 11 80 b0 00 00 	movsd  %xmm0,0xb0(%rax)
    9eeb:	00 
    9eec:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    9ef1:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    9ef6:	f2 0f 11 80 b8 00 00 	movsd  %xmm0,0xb8(%rax)
    9efd:	00 
    9efe:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    9f03:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    9f08:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    9f0f:	00 00 80 
    9f12:	48 31 d1             	xor    %rdx,%rcx
    9f15:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    9f1a:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    9f1f:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    9f24:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    9f29:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    9f2e:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9f32:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9f36:	f2 0f 11 80 d8 00 00 	movsd  %xmm0,0xd8(%rax)
    9f3d:	00 
    9f3e:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    9f43:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    9f48:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    9f4d:	f2 0f 59 48 30       	mulsd  0x30(%rax),%xmm1
    9f52:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    9f57:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    9f5b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    9f5f:	f2 0f 11 80 e0 00 00 	movsd  %xmm0,0xe0(%rax)
    9f66:	00 
    9f67:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    9f6c:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    9f71:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    9f78:	00 00 80 
    9f7b:	48 31 d1             	xor    %rdx,%rcx
    9f7e:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    9f83:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    9f88:	f2 0f 11 80 e8 00 00 	movsd  %xmm0,0xe8(%rax)
    9f8f:	00 
    9f90:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    9f95:	f2 0f 59 40 48       	mulsd  0x48(%rax),%xmm0
    9f9a:	f2 0f 11 80 c0 00 00 	movsd  %xmm0,0xc0(%rax)
    9fa1:	00 
    9fa2:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    9fa7:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    9fac:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    9fb3:	00 00 80 
    9fb6:	48 31 d1             	xor    %rdx,%rcx
    9fb9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    9fbe:	f2 0f 59 40 40       	mulsd  0x40(%rax),%xmm0
    9fc3:	f2 0f 11 80 c8 00 00 	movsd  %xmm0,0xc8(%rax)
    9fca:	00 
    9fcb:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    9fd0:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    9fd5:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    9fdc:	00 00 80 
    9fdf:	48 31 d1             	xor    %rdx,%rcx
    9fe2:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    9fe7:	f2 0f 11 80 d0 00 00 	movsd  %xmm0,0xd0(%rax)
    9fee:	00 
    9fef:	48 89 c7             	mov    %rax,%rdi
    9ff2:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    9ff9:	48 8b 48 50          	mov    0x50(%rax),%rcx
    9ffd:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    a001:	48 8b 48 58          	mov    0x58(%rax),%rcx
    a005:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    a009:	48 8b 40 60          	mov    0x60(%rax),%rax
    a00d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    a011:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    a015:	48 8b 08             	mov    (%rax),%rcx
    a018:	48 89 0c 24          	mov    %rcx,(%rsp)
    a01c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a020:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a025:	48 8b 40 10          	mov    0x10(%rax),%rax
    a029:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a02e:	e8 dd 45 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a033:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    a037:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a03c:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a043:	00 00 80 
    a046:	48 31 d1             	xor    %rdx,%rcx
    a049:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a04e:	f2 0f 11 80 f0 00 00 	movsd  %xmm0,0xf0(%rax)
    a055:	00 
    a056:	48 83 c4 60          	add    $0x60,%rsp
    a05a:	5d                   	pop    %rbp
    a05b:	c3                   	retq   
    a05c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000a060 <_ZN5Plane6setYawEd>:
    a060:	55                   	push   %rbp
    a061:	48 89 e5             	mov    %rsp,%rbp
    a064:	48 83 ec 50          	sub    $0x50,%rsp
    a068:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a06c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    a071:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a075:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    a079:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    a07e:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    a083:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    a088:	e8 d3 5c 00 00       	callq  fd60 <cos@plt>
    a08d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a091:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    a096:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    a09b:	e8 b0 5c 00 00       	callq  fd50 <sin@plt>
    a0a0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a0a4:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    a0a9:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a0ae:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    a0b3:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a0b8:	f2 0f 10 48 30       	movsd  0x30(%rax),%xmm1
    a0bd:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a0c2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a0c6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a0ca:	f2 0f 11 80 a8 00 00 	movsd  %xmm0,0xa8(%rax)
    a0d1:	00 
    a0d2:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    a0d7:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a0dc:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    a0e1:	f2 0f 59 48 38       	mulsd  0x38(%rax),%xmm1
    a0e6:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a0eb:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    a0f0:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a0f7:	00 00 80 
    a0fa:	48 31 d1             	xor    %rdx,%rcx
    a0fd:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    a102:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a106:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a10a:	f2 0f 11 80 b0 00 00 	movsd  %xmm0,0xb0(%rax)
    a111:	00 
    a112:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a117:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    a11c:	f2 0f 11 80 b8 00 00 	movsd  %xmm0,0xb8(%rax)
    a123:	00 
    a124:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a129:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a12e:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a135:	00 00 80 
    a138:	48 31 d1             	xor    %rdx,%rcx
    a13b:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a140:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    a145:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a14a:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    a14f:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a154:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a158:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a15c:	f2 0f 11 80 d8 00 00 	movsd  %xmm0,0xd8(%rax)
    a163:	00 
    a164:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    a169:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a16e:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    a173:	f2 0f 59 48 30       	mulsd  0x30(%rax),%xmm1
    a178:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a17d:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a181:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a185:	f2 0f 11 80 e0 00 00 	movsd  %xmm0,0xe0(%rax)
    a18c:	00 
    a18d:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a192:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a197:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a19e:	00 00 80 
    a1a1:	48 31 d1             	xor    %rdx,%rcx
    a1a4:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a1a9:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    a1ae:	f2 0f 11 80 e8 00 00 	movsd  %xmm0,0xe8(%rax)
    a1b5:	00 
    a1b6:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a1bb:	f2 0f 59 40 48       	mulsd  0x48(%rax),%xmm0
    a1c0:	f2 0f 11 80 c0 00 00 	movsd  %xmm0,0xc0(%rax)
    a1c7:	00 
    a1c8:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a1cd:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a1d2:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a1d9:	00 00 80 
    a1dc:	48 31 d1             	xor    %rdx,%rcx
    a1df:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a1e4:	f2 0f 59 40 40       	mulsd  0x40(%rax),%xmm0
    a1e9:	f2 0f 11 80 c8 00 00 	movsd  %xmm0,0xc8(%rax)
    a1f0:	00 
    a1f1:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a1f6:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a1fb:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a202:	00 00 80 
    a205:	48 31 d1             	xor    %rdx,%rcx
    a208:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a20d:	f2 0f 11 80 d0 00 00 	movsd  %xmm0,0xd0(%rax)
    a214:	00 
    a215:	48 89 c7             	mov    %rax,%rdi
    a218:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    a21f:	48 8b 48 50          	mov    0x50(%rax),%rcx
    a223:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    a227:	48 8b 48 58          	mov    0x58(%rax),%rcx
    a22b:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    a22f:	48 8b 40 60          	mov    0x60(%rax),%rax
    a233:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    a237:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    a23b:	48 8b 08             	mov    (%rax),%rcx
    a23e:	48 89 0c 24          	mov    %rcx,(%rsp)
    a242:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a246:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a24b:	48 8b 40 10          	mov    0x10(%rax),%rax
    a24f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a254:	e8 b7 43 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a259:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a25d:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a262:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a269:	00 00 80 
    a26c:	48 31 d1             	xor    %rdx,%rcx
    a26f:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a274:	f2 0f 11 80 f0 00 00 	movsd  %xmm0,0xf0(%rax)
    a27b:	00 
    a27c:	48 83 c4 50          	add    $0x50,%rsp
    a280:	5d                   	pop    %rbp
    a281:	c3                   	retq   
    a282:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    a289:	1f 84 00 00 00 00 00 

000000000000a290 <_ZN5Plane8setPitchEd>:
    a290:	55                   	push   %rbp
    a291:	48 89 e5             	mov    %rsp,%rbp
    a294:	48 83 ec 50          	sub    $0x50,%rsp
    a298:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a29c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    a2a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a2a5:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    a2a9:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    a2ae:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    a2b3:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    a2b8:	e8 a3 5a 00 00       	callq  fd60 <cos@plt>
    a2bd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a2c1:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    a2c6:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    a2cb:	e8 80 5a 00 00       	callq  fd50 <sin@plt>
    a2d0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a2d4:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    a2d9:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a2de:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    a2e3:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a2e8:	f2 0f 10 48 30       	movsd  0x30(%rax),%xmm1
    a2ed:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a2f2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a2f6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a2fa:	f2 0f 11 80 a8 00 00 	movsd  %xmm0,0xa8(%rax)
    a301:	00 
    a302:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    a307:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a30c:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    a311:	f2 0f 59 48 38       	mulsd  0x38(%rax),%xmm1
    a316:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a31b:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    a320:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a327:	00 00 80 
    a32a:	48 31 d1             	xor    %rdx,%rcx
    a32d:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    a332:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a336:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a33a:	f2 0f 11 80 b0 00 00 	movsd  %xmm0,0xb0(%rax)
    a341:	00 
    a342:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a347:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    a34c:	f2 0f 11 80 b8 00 00 	movsd  %xmm0,0xb8(%rax)
    a353:	00 
    a354:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a359:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a35e:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a365:	00 00 80 
    a368:	48 31 d1             	xor    %rdx,%rcx
    a36b:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a370:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    a375:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a37a:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    a37f:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a384:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a388:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a38c:	f2 0f 11 80 d8 00 00 	movsd  %xmm0,0xd8(%rax)
    a393:	00 
    a394:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    a399:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a39e:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    a3a3:	f2 0f 59 48 30       	mulsd  0x30(%rax),%xmm1
    a3a8:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a3ad:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a3b1:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a3b5:	f2 0f 11 80 e0 00 00 	movsd  %xmm0,0xe0(%rax)
    a3bc:	00 
    a3bd:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a3c2:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a3c7:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a3ce:	00 00 80 
    a3d1:	48 31 d1             	xor    %rdx,%rcx
    a3d4:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a3d9:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    a3de:	f2 0f 11 80 e8 00 00 	movsd  %xmm0,0xe8(%rax)
    a3e5:	00 
    a3e6:	48 89 c7             	mov    %rax,%rdi
    a3e9:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    a3f0:	48 8b 48 50          	mov    0x50(%rax),%rcx
    a3f4:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    a3f8:	48 8b 48 58          	mov    0x58(%rax),%rcx
    a3fc:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    a400:	48 8b 40 60          	mov    0x60(%rax),%rax
    a404:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    a408:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    a40c:	48 8b 08             	mov    (%rax),%rcx
    a40f:	48 89 0c 24          	mov    %rcx,(%rsp)
    a413:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a417:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a41c:	48 8b 40 10          	mov    0x10(%rax),%rax
    a420:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a425:	e8 e6 41 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a42a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a42e:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a433:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a43a:	00 00 80 
    a43d:	48 31 d1             	xor    %rdx,%rcx
    a440:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a445:	f2 0f 11 80 f0 00 00 	movsd  %xmm0,0xf0(%rax)
    a44c:	00 
    a44d:	48 83 c4 50          	add    $0x50,%rsp
    a451:	5d                   	pop    %rbp
    a452:	c3                   	retq   
    a453:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    a45a:	84 00 00 00 00 00 

000000000000a460 <_ZN5Plane7setRollEd>:
    a460:	55                   	push   %rbp
    a461:	48 89 e5             	mov    %rsp,%rbp
    a464:	48 83 ec 50          	sub    $0x50,%rsp
    a468:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a46c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    a471:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a475:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    a479:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    a47e:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    a483:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    a488:	e8 d3 58 00 00       	callq  fd60 <cos@plt>
    a48d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a491:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    a496:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    a49b:	e8 b0 58 00 00       	callq  fd50 <sin@plt>
    a4a0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a4a4:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    a4a9:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a4ae:	f2 0f 59 40 38       	mulsd  0x38(%rax),%xmm0
    a4b3:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a4b8:	f2 0f 10 48 30       	movsd  0x30(%rax),%xmm1
    a4bd:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a4c2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a4c6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a4ca:	f2 0f 11 80 a8 00 00 	movsd  %xmm0,0xa8(%rax)
    a4d1:	00 
    a4d2:	f2 0f 10 40 30       	movsd  0x30(%rax),%xmm0
    a4d7:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a4dc:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    a4e1:	f2 0f 59 48 38       	mulsd  0x38(%rax),%xmm1
    a4e6:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a4eb:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    a4f0:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a4f7:	00 00 80 
    a4fa:	48 31 d1             	xor    %rdx,%rcx
    a4fd:	66 48 0f 6e c9       	movq   %rcx,%xmm1
    a502:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a506:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a50a:	f2 0f 11 80 b0 00 00 	movsd  %xmm0,0xb0(%rax)
    a511:	00 
    a512:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    a517:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a51c:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a523:	00 00 80 
    a526:	48 31 d1             	xor    %rdx,%rcx
    a529:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a52e:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    a533:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a538:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    a53d:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a542:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a546:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a54a:	f2 0f 11 80 d8 00 00 	movsd  %xmm0,0xd8(%rax)
    a551:	00 
    a552:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    a557:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    a55c:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    a561:	f2 0f 59 48 30       	mulsd  0x30(%rax),%xmm1
    a566:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    a56b:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    a56f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    a573:	f2 0f 11 80 e0 00 00 	movsd  %xmm0,0xe0(%rax)
    a57a:	00 
    a57b:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a580:	f2 0f 59 40 48       	mulsd  0x48(%rax),%xmm0
    a585:	f2 0f 11 80 c0 00 00 	movsd  %xmm0,0xc0(%rax)
    a58c:	00 
    a58d:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    a592:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a597:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a59e:	00 00 80 
    a5a1:	48 31 d1             	xor    %rdx,%rcx
    a5a4:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a5a9:	f2 0f 59 40 40       	mulsd  0x40(%rax),%xmm0
    a5ae:	f2 0f 11 80 c8 00 00 	movsd  %xmm0,0xc8(%rax)
    a5b5:	00 
    a5b6:	48 89 c7             	mov    %rax,%rdi
    a5b9:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    a5c0:	48 8b 48 50          	mov    0x50(%rax),%rcx
    a5c4:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    a5c8:	48 8b 48 58          	mov    0x58(%rax),%rcx
    a5cc:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    a5d0:	48 8b 40 60          	mov    0x60(%rax),%rax
    a5d4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    a5d8:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    a5dc:	48 8b 08             	mov    (%rax),%rcx
    a5df:	48 89 0c 24          	mov    %rcx,(%rsp)
    a5e3:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a5e7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a5ec:	48 8b 40 10          	mov    0x10(%rax),%rax
    a5f0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a5f5:	e8 16 40 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a5fa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a5fe:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    a603:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    a60a:	00 00 80 
    a60d:	48 31 d1             	xor    %rdx,%rcx
    a610:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    a615:	f2 0f 11 80 f0 00 00 	movsd  %xmm0,0xf0(%rax)
    a61c:	00 
    a61d:	48 83 c4 50          	add    $0x50,%rsp
    a621:	5d                   	pop    %rbp
    a622:	c3                   	retq   
    a623:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    a62a:	84 00 00 00 00 00 

000000000000a630 <_ZN5Plane15getIntersectionE3Ray>:
    a630:	55                   	push   %rbp
    a631:	48 89 e5             	mov    %rsp,%rbp
    a634:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
    a63b:	48 89 f8             	mov    %rdi,%rax
    a63e:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    a642:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
    a646:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    a64a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a64e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    a652:	48 83 c7 18          	add    $0x18,%rdi
    a656:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    a65d:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    a661:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    a668:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    a66c:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    a673:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    a677:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    a67b:	48 8b 08             	mov    (%rax),%rcx
    a67e:	48 89 0c 24          	mov    %rcx,(%rsp)
    a682:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a686:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a68b:	48 8b 40 10          	mov    0x10(%rax),%rax
    a68f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a694:	e8 77 3f 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a699:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    a69d:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    a6a1:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    a6a6:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    a6ad:	48 8b 08             	mov    (%rax),%rcx
    a6b0:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
    a6b4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a6b8:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a6bc:	48 8b 40 10          	mov    0x10(%rax),%rax
    a6c0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    a6c4:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    a6c8:	48 8b 08             	mov    (%rax),%rcx
    a6cb:	48 89 0c 24          	mov    %rcx,(%rsp)
    a6cf:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a6d3:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a6d8:	48 8b 40 10          	mov    0x10(%rax),%rax
    a6dc:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a6e1:	e8 2a 3f 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a6e6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    a6ea:	f2 0f 58 80 f0 00 00 	addsd  0xf0(%rax),%xmm0
    a6f1:	00 
    a6f2:	f2 0f 11 45 d0       	movsd  %xmm0,-0x30(%rbp)
    a6f7:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    a6fc:	66 48 0f 7e c0       	movq   %xmm0,%rax
    a701:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    a708:	00 00 80 
    a70b:	48 31 c8             	xor    %rcx,%rax
    a70e:	66 48 0f 6e c0       	movq   %rax,%xmm0
    a713:	f2 0f 5e 45 f0       	divsd  -0x10(%rbp),%xmm0
    a718:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
    a71d:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
    a722:	0f 57 c9             	xorps  %xmm1,%xmm1
    a725:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    a729:	0f 86 0f 00 00 00    	jbe    a73e <_ZN5Plane15getIntersectionE3Ray+0x10e>
    a72f:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
    a734:	f2 0f 11 45 98       	movsd  %xmm0,-0x68(%rbp)
    a739:	e9 0a 00 00 00       	jmpq   a748 <_ZN5Plane15getIntersectionE3Ray+0x118>
    a73e:	e8 5d db ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    a743:	f2 0f 11 45 98       	movsd  %xmm0,-0x68(%rbp)
    a748:	f2 0f 10 45 98       	movsd  -0x68(%rbp),%xmm0
    a74d:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
    a754:	5d                   	pop    %rbp
    a755:	c3                   	retq   
    a756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a75d:	00 00 00 

000000000000a760 <_ZN5Plane20getLightIntersectionE3RayPd>:
    a760:	55                   	push   %rbp
    a761:	48 89 e5             	mov    %rsp,%rbp
    a764:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
    a76b:	48 89 f8             	mov    %rdi,%rax
    a76e:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    a772:	48 89 bd e0 fe ff ff 	mov    %rdi,-0x120(%rbp)
    a779:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    a77d:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    a781:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a785:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    a78c:	48 83 c7 18          	add    $0x18,%rdi
    a790:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    a797:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    a79b:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    a7a2:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    a7a6:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    a7ad:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    a7b1:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    a7b5:	48 8b 08             	mov    (%rax),%rcx
    a7b8:	48 89 0c 24          	mov    %rcx,(%rsp)
    a7bc:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a7c0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a7c5:	48 8b 40 10          	mov    0x10(%rax),%rax
    a7c9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a7ce:	e8 3d 3e 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a7d3:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    a7da:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
    a7e1:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    a7e6:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    a7ed:	48 8b 08             	mov    (%rax),%rcx
    a7f0:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    a7f4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a7f8:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    a7fc:	48 8b 40 10          	mov    0x10(%rax),%rax
    a800:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    a804:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    a808:	48 8b 08             	mov    (%rax),%rcx
    a80b:	48 89 0c 24          	mov    %rcx,(%rsp)
    a80f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a813:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a818:	48 8b 40 10          	mov    0x10(%rax),%rax
    a81c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a821:	e8 ea 3d 00 00       	callq  e610 <_ZN6Vector3dotES_>
    a826:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    a82d:	f2 0f 58 80 f0 00 00 	addsd  0xf0(%rax),%xmm0
    a834:	00 
    a835:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    a83a:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    a83f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    a844:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    a84b:	00 00 80 
    a84e:	48 31 c8             	xor    %rcx,%rax
    a851:	66 48 0f 6e c0       	movq   %rax,%xmm0
    a856:	f2 0f 5e 45 e0       	divsd  -0x20(%rbp),%xmm0
    a85b:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    a860:	0f 57 c0             	xorps  %xmm0,%xmm0
    a863:	66 0f 2e 45 a0       	ucomisd -0x60(%rbp),%xmm0
    a868:	0f 83 17 00 00 00    	jae    a885 <_ZN5Plane20getLightIntersectionE3RayPd+0x125>
    a86e:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    a873:	f2 0f 10 0d cd 70 ff 	movsd  -0x8f33(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    a87a:	ff 
    a87b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    a87f:	0f 82 09 00 00 00    	jb     a88e <_ZN5Plane20getLightIntersectionE3RayPd+0x12e>
    a885:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    a889:	e9 b9 02 00 00       	jmpq   ab47 <_ZN5Plane20getLightIntersectionE3RayPd+0x3e7>
    a88e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    a895:	48 8b 40 68          	mov    0x68(%rax),%rax
    a899:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    a89e:	f2 0f 10 0d ea 70 ff 	movsd  -0x8f16(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    a8a5:	ff 
    a8a6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    a8aa:	0f 86 09 00 00 00    	jbe    a8b9 <_ZN5Plane20getLightIntersectionE3RayPd+0x159>
    a8b0:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    a8b4:	e9 8e 02 00 00       	jmpq   ab47 <_ZN5Plane20getLightIntersectionE3RayPd+0x3e7>
    a8b9:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    a8c0:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    a8c7:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    a8ce:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    a8d5:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    a8dc:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    a8e3:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    a8ea:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    a8ee:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    a8f5:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    a8fc:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    a903:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    a90a:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    a911:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    a918:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    a91f:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
    a926:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    a92d:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
    a934:	48 8b 88 b8 00 00 00 	mov    0xb8(%rax),%rcx
    a93b:	48 89 8d 50 ff ff ff 	mov    %rcx,-0xb0(%rbp)
    a942:	48 8b 48 50          	mov    0x50(%rax),%rcx
    a946:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
    a94d:	48 8b 48 58          	mov    0x58(%rax),%rcx
    a951:	48 89 8d 18 ff ff ff 	mov    %rcx,-0xe8(%rbp)
    a958:	48 8b 40 60          	mov    0x60(%rax),%rax
    a95c:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
    a963:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    a96a:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    a971:	48 8b 08             	mov    (%rax),%rcx
    a974:	48 89 0c 24          	mov    %rcx,(%rsp)
    a978:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a97c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a981:	48 8b 40 10          	mov    0x10(%rax),%rax
    a985:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a98a:	e8 71 38 00 00       	callq  e200 <_ZN6VectormiES_>
    a98f:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    a993:	48 8d b5 70 ff ff ff 	lea    -0x90(%rbp),%rsi
    a99a:	48 8d 95 58 ff ff ff 	lea    -0xa8(%rbp),%rdx
    a9a1:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
    a9a8:	48 8d 85 28 ff ff ff 	lea    -0xd8(%rbp),%rax
    a9af:	4c 8b 06             	mov    (%rsi),%r8
    a9b2:	4c 89 04 24          	mov    %r8,(%rsp)
    a9b6:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    a9ba:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    a9bf:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    a9c3:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    a9c8:	48 8b 32             	mov    (%rdx),%rsi
    a9cb:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    a9d0:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    a9d4:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    a9d9:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    a9dd:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    a9e2:	48 8b 11             	mov    (%rcx),%rdx
    a9e5:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    a9ea:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    a9ee:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    a9f3:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    a9f7:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    a9fc:	48 8b 08             	mov    (%rax),%rcx
    a9ff:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    aa04:	48 8b 48 08          	mov    0x8(%rax),%rcx
    aa08:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    aa0d:	48 8b 40 10          	mov    0x10(%rax),%rax
    aa11:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    aa16:	e8 95 3c 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    aa1b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    aa22:	48 8b 48 68          	mov    0x68(%rax),%rcx
    aa26:	48 89 8d c8 fe ff ff 	mov    %rcx,-0x138(%rbp)
    aa2d:	48 8d 8d 0c ff ff ff 	lea    -0xf4(%rbp),%rcx
    aa34:	48 89 8d d0 fe ff ff 	mov    %rcx,-0x130(%rbp)
    aa3b:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    aa40:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    aa45:	f2 0f 10 0d 23 6f ff 	movsd  -0x90dd(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    aa4c:	ff 
    aa4d:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    aa51:	e8 8a 4f 00 00       	callq  f9e0 <_Z3fixd>
    aa56:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    aa5d:	f2 0f 11 85 d8 fe ff 	movsd  %xmm0,-0x128(%rbp)
    aa64:	ff 
    aa65:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    aa6a:	f2 0f 5e 40 78       	divsd  0x78(%rax),%xmm0
    aa6f:	f2 0f 10 0d f9 6e ff 	movsd  -0x9107(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    aa76:	ff 
    aa77:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    aa7b:	e8 60 4f 00 00       	callq  f9e0 <_Z3fixd>
    aa80:	48 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%rdi
    aa87:	48 8b b5 d0 fe ff ff 	mov    -0x130(%rbp),%rsi
    aa8e:	0f 28 c8             	movaps %xmm0,%xmm1
    aa91:	f2 0f 10 85 d8 fe ff 	movsd  -0x128(%rbp),%xmm0
    aa98:	ff 
    aa99:	48 8b 07             	mov    (%rdi),%rax
    aa9c:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
    aaa3:	48 8d 8d f8 fe ff ff 	lea    -0x108(%rbp),%rcx
    aaaa:	4c 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%r8
    aab1:	ff 10                	callq  *(%rax)
    aab3:	f2 0f 10 85 f8 fe ff 	movsd  -0x108(%rbp),%xmm0
    aaba:	ff 
    aabb:	f2 0f 10 0d cd 6e ff 	movsd  -0x9133(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    aac2:	ff 
    aac3:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    aac7:	0f 86 09 00 00 00    	jbe    aad6 <_ZN5Plane20getLightIntersectionE3RayPd+0x376>
    aacd:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    aad1:	e9 71 00 00 00       	jmpq   ab47 <_ZN5Plane20getLightIntersectionE3RayPd+0x3e7>
    aad6:	0f b6 85 0c ff ff ff 	movzbl -0xf4(%rbp),%eax
    aadd:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    aae1:	f2 0f 10 0d 27 6e ff 	movsd  -0x91d9(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    aae8:	ff 
    aae9:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    aaed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    aaf1:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    aaf5:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    aaf9:	0f b6 85 0d ff ff ff 	movzbl -0xf3(%rbp),%eax
    ab00:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    ab04:	f2 0f 10 0d 04 6e ff 	movsd  -0x91fc(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    ab0b:	ff 
    ab0c:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    ab10:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ab14:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    ab19:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    ab1e:	0f b6 85 0e ff ff ff 	movzbl -0xf2(%rbp),%eax
    ab25:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    ab29:	f2 0f 10 0d df 6d ff 	movsd  -0x9221(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    ab30:	ff 
    ab31:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    ab35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ab39:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    ab3e:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    ab43:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    ab47:	8a 45 ff             	mov    -0x1(%rbp),%al
    ab4a:	24 01                	and    $0x1,%al
    ab4c:	0f b6 c0             	movzbl %al,%eax
    ab4f:	48 81 c4 a0 01 00 00 	add    $0x1a0,%rsp
    ab56:	5d                   	pop    %rbp
    ab57:	c3                   	retq   
    ab58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ab5f:	00 

000000000000ab60 <_ZN5Plane4moveEv>:
    ab60:	55                   	push   %rbp
    ab61:	48 89 e5             	mov    %rsp,%rbp
    ab64:	48 83 ec 40          	sub    $0x40,%rsp
    ab68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ab6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ab70:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    ab74:	48 89 c7             	mov    %rax,%rdi
    ab77:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    ab7e:	48 8b 48 50          	mov    0x50(%rax),%rcx
    ab82:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    ab86:	48 8b 48 58          	mov    0x58(%rax),%rcx
    ab8a:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    ab8e:	48 8b 40 60          	mov    0x60(%rax),%rax
    ab92:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    ab96:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    ab9a:	48 8b 08             	mov    (%rax),%rcx
    ab9d:	48 89 0c 24          	mov    %rcx,(%rsp)
    aba1:	48 8b 48 08          	mov    0x8(%rax),%rcx
    aba5:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    abaa:	48 8b 40 10          	mov    0x10(%rax),%rax
    abae:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    abb3:	e8 58 3a 00 00       	callq  e610 <_ZN6Vector3dotES_>
    abb8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    abbc:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    abc1:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    abc8:	00 00 80 
    abcb:	48 31 d1             	xor    %rdx,%rcx
    abce:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    abd3:	f2 0f 11 80 f0 00 00 	movsd  %xmm0,0xf0(%rax)
    abda:	00 
    abdb:	48 83 c4 40          	add    $0x40,%rsp
    abdf:	5d                   	pop    %rbp
    abe0:	c3                   	retq   
    abe1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    abe8:	0f 1f 84 00 00 00 00 
    abef:	00 

000000000000abf0 <_ZN5Plane8getColorEPhPdS1_S1_P8Autonoma3Rayj>:
    abf0:	55                   	push   %rbp
    abf1:	48 89 e5             	mov    %rsp,%rbp
    abf4:	48 81 ec 60 01 00 00 	sub    $0x160,%rsp
    abfb:	48 89 f0             	mov    %rsi,%rax
    abfe:	8b 75 40             	mov    0x40(%rbp),%esi
    ac01:	48 8d 75 10          	lea    0x10(%rbp),%rsi
    ac05:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ac09:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    ac0d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    ac11:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    ac15:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
    ac19:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
    ac1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ac21:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    ac28:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    ac2f:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    ac33:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    ac3a:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    ac3e:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    ac45:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    ac49:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    ac50:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
    ac54:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    ac5b:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    ac5f:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    ac66:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    ac6a:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    ac71:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    ac78:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    ac7f:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    ac86:	48 8b 88 b8 00 00 00 	mov    0xb8(%rax),%rcx
    ac8d:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    ac91:	48 8b 48 50          	mov    0x50(%rax),%rcx
    ac95:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
    ac9c:	48 8b 48 58          	mov    0x58(%rax),%rcx
    aca0:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
    aca7:	48 8b 40 60          	mov    0x60(%rax),%rax
    acab:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    acb2:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
    acb9:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    acc0:	48 8b 08             	mov    (%rax),%rcx
    acc3:	48 89 0c 24          	mov    %rcx,(%rsp)
    acc7:	48 8b 48 08          	mov    0x8(%rax),%rcx
    accb:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    acd0:	48 8b 40 10          	mov    0x10(%rax),%rax
    acd4:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    acd9:	e8 22 35 00 00       	callq  e200 <_ZN6VectormiES_>
    acde:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
    ace2:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
    ace6:	48 8d 55 88          	lea    -0x78(%rbp),%rdx
    acea:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    acf1:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
    acf8:	4c 8b 06             	mov    (%rsi),%r8
    acfb:	4c 89 04 24          	mov    %r8,(%rsp)
    acff:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    ad03:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    ad08:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    ad0c:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    ad11:	48 8b 32             	mov    (%rdx),%rsi
    ad14:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    ad19:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    ad1d:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    ad22:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    ad26:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    ad2b:	48 8b 11             	mov    (%rcx),%rdx
    ad2e:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    ad33:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    ad37:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    ad3c:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    ad40:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    ad45:	48 8b 08             	mov    (%rax),%rcx
    ad48:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    ad4d:	48 8b 48 08          	mov    0x8(%rax),%rcx
    ad51:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    ad56:	48 8b 40 10          	mov    0x10(%rax),%rax
    ad5a:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    ad5f:	e8 4c 39 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    ad64:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    ad6b:	48 8b 48 68          	mov    0x68(%rax),%rcx
    ad6f:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
    ad76:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    ad7a:	48 89 8d 18 ff ff ff 	mov    %rcx,-0xe8(%rbp)
    ad81:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    ad85:	48 89 8d 20 ff ff ff 	mov    %rcx,-0xe0(%rbp)
    ad8c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    ad90:	48 89 8d 28 ff ff ff 	mov    %rcx,-0xd8(%rbp)
    ad97:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    ad9b:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
    ada2:	f2 0f 10 45 b8       	movsd  -0x48(%rbp),%xmm0
    ada7:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    adac:	f2 0f 10 0d bc 6b ff 	movsd  -0x9444(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    adb3:	ff 
    adb4:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    adb8:	e8 23 4c 00 00       	callq  f9e0 <_Z3fixd>
    adbd:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    adc4:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    adcb:	ff 
    adcc:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    add1:	f2 0f 5e 40 78       	divsd  0x78(%rax),%xmm0
    add6:	f2 0f 10 0d 92 6b ff 	movsd  -0x946e(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    addd:	ff 
    adde:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    ade2:	e8 f9 4b 00 00       	callq  f9e0 <_Z3fixd>
    ade7:	48 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%rdi
    adee:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
    adf5:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    adfc:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
    ae03:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
    ae0a:	0f 28 c8             	movaps %xmm0,%xmm1
    ae0d:	f2 0f 10 85 38 ff ff 	movsd  -0xc8(%rbp),%xmm0
    ae14:	ff 
    ae15:	48 8b 07             	mov    (%rdi),%rax
    ae18:	ff 10                	callq  *(%rax)
    ae1a:	48 81 c4 60 01 00 00 	add    $0x160,%rsp
    ae21:	5d                   	pop    %rbp
    ae22:	c3                   	retq   
    ae23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    ae2a:	84 00 00 00 00 00 

000000000000ae30 <_ZN5Plane10reversibleEv>:
    ae30:	55                   	push   %rbp
    ae31:	48 89 e5             	mov    %rsp,%rbp
    ae34:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ae38:	b0 01                	mov    $0x1,%al
    ae3a:	0f b6 c0             	movzbl %al,%eax
    ae3d:	5d                   	pop    %rbp
    ae3e:	c3                   	retq   
    ae3f:	90                   	nop

000000000000ae40 <_ZN5Plane9getNormalE6Vector>:
    ae40:	55                   	push   %rbp
    ae41:	48 89 e5             	mov    %rsp,%rbp
    ae44:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
    ae4b:	48 89 bd 68 fe ff ff 	mov    %rdi,-0x198(%rbp)
    ae52:	48 89 bd 70 fe ff ff 	mov    %rdi,-0x190(%rbp)
    ae59:	48 8d 45 10          	lea    0x10(%rbp),%rax
    ae5d:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    ae64:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    ae68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ae6c:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    ae73:	48 83 b8 a0 00 00 00 	cmpq   $0x0,0xa0(%rax)
    ae7a:	00 
    ae7b:	0f 85 33 00 00 00    	jne    aeb4 <_ZN5Plane9getNormalE6Vector+0x74>
    ae81:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    ae88:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
    ae8f:	48 8b 91 a8 00 00 00 	mov    0xa8(%rcx),%rdx
    ae96:	48 89 10             	mov    %rdx,(%rax)
    ae99:	48 8b 91 b0 00 00 00 	mov    0xb0(%rcx),%rdx
    aea0:	48 89 50 08          	mov    %rdx,0x8(%rax)
    aea4:	48 8b 89 b8 00 00 00 	mov    0xb8(%rcx),%rcx
    aeab:	48 89 48 10          	mov    %rcx,0x10(%rax)
    aeaf:	e9 9d 03 00 00       	jmpq   b251 <_ZN5Plane9getNormalE6Vector+0x411>
    aeb4:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    aebb:	48 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%rsi
    aec2:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    aec9:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    aecd:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    aed4:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    aed8:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    aedf:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    aee3:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    aeea:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    aeee:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    aef5:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
    aef9:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    af00:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    af04:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    af0b:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    af0f:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    af16:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    af1a:	48 8b 88 b8 00 00 00 	mov    0xb8(%rax),%rcx
    af21:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    af25:	48 8b 48 50          	mov    0x50(%rax),%rcx
    af29:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    af30:	48 8b 48 58          	mov    0x58(%rax),%rcx
    af34:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    af3b:	48 8b 40 60          	mov    0x60(%rax),%rax
    af3f:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    af46:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    af4a:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    af51:	48 8b 08             	mov    (%rax),%rcx
    af54:	48 89 0c 24          	mov    %rcx,(%rsp)
    af58:	48 8b 48 08          	mov    0x8(%rax),%rcx
    af5c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    af61:	48 8b 40 10          	mov    0x10(%rax),%rax
    af65:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    af6a:	e8 91 32 00 00       	callq  e200 <_ZN6VectormiES_>
    af6f:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
    af73:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
    af77:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    af7b:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
    af7f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    af83:	4c 8b 06             	mov    (%rsi),%r8
    af86:	4c 89 04 24          	mov    %r8,(%rsp)
    af8a:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    af8e:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    af93:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    af97:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    af9c:	48 8b 32             	mov    (%rdx),%rsi
    af9f:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    afa4:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    afa8:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    afad:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    afb1:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    afb6:	48 8b 11             	mov    (%rcx),%rdx
    afb9:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    afbe:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    afc2:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    afc7:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    afcb:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    afd0:	48 8b 08             	mov    (%rax),%rcx
    afd3:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    afd8:	48 8b 48 08          	mov    0x8(%rax),%rcx
    afdc:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    afe1:	48 8b 40 10          	mov    0x10(%rax),%rax
    afe5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    afea:	e8 c1 36 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    afef:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    aff6:	48 8b 88 a0 00 00 00 	mov    0xa0(%rax),%rcx
    affd:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    b004:	48 8d 8d 4d ff ff ff 	lea    -0xb3(%rbp),%rcx
    b00b:	48 89 8d 58 fe ff ff 	mov    %rcx,-0x1a8(%rbp)
    b012:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    b017:	f2 0f 5e 80 80 00 00 	divsd  0x80(%rax),%xmm0
    b01e:	00 
    b01f:	f2 0f 10 0d 49 69 ff 	movsd  -0x96b7(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    b026:	ff 
    b027:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    b02b:	f2 0f 58 80 90 00 00 	addsd  0x90(%rax),%xmm0
    b032:	00 
    b033:	e8 a8 49 00 00       	callq  f9e0 <_Z3fixd>
    b038:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    b03f:	f2 0f 11 85 60 fe ff 	movsd  %xmm0,-0x1a0(%rbp)
    b046:	ff 
    b047:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    b04c:	f2 0f 5e 80 88 00 00 	divsd  0x88(%rax),%xmm0
    b053:	00 
    b054:	f2 0f 10 0d 14 69 ff 	movsd  -0x96ec(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    b05b:	ff 
    b05c:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    b060:	f2 0f 58 80 98 00 00 	addsd  0x98(%rax),%xmm0
    b067:	00 
    b068:	e8 73 49 00 00       	callq  f9e0 <_Z3fixd>
    b06d:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
    b074:	48 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%rsi
    b07b:	0f 28 c8             	movaps %xmm0,%xmm1
    b07e:	f2 0f 10 85 60 fe ff 	movsd  -0x1a0(%rbp),%xmm0
    b085:	ff 
    b086:	48 8b 07             	mov    (%rdi),%rax
    b089:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    b090:	48 8d 8d 50 ff ff ff 	lea    -0xb0(%rbp),%rcx
    b097:	4c 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%r8
    b09e:	ff 10                	callq  *(%rax)
    b0a0:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    b0a7:	0f b6 b5 4d ff ff ff 	movzbl -0xb3(%rbp),%esi
    b0ae:	81 ee 80 00 00 00    	sub    $0x80,%esi
    b0b4:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    b0bb:	48 89 8d e8 fe ff ff 	mov    %rcx,-0x118(%rbp)
    b0c2:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    b0c9:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    b0d0:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    b0d7:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
    b0de:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
    b0e5:	48 8d 85 e8 fe ff ff 	lea    -0x118(%rbp),%rax
    b0ec:	48 8b 08             	mov    (%rax),%rcx
    b0ef:	48 89 0c 24          	mov    %rcx,(%rsp)
    b0f3:	48 8b 48 08          	mov    0x8(%rax),%rcx
    b0f7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    b0fc:	48 8b 40 10          	mov    0x10(%rax),%rax
    b100:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    b105:	e8 66 01 00 00       	callq  b270 <_Zmli6Vector>
    b10a:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    b111:	0f b6 b5 4e ff ff ff 	movzbl -0xb2(%rbp),%esi
    b118:	81 ee 80 00 00 00    	sub    $0x80,%esi
    b11e:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    b125:	48 89 8d b8 fe ff ff 	mov    %rcx,-0x148(%rbp)
    b12c:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    b133:	48 89 8d c0 fe ff ff 	mov    %rcx,-0x140(%rbp)
    b13a:	48 8b 80 e8 00 00 00 	mov    0xe8(%rax),%rax
    b141:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
    b148:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
    b14f:	48 8d 85 b8 fe ff ff 	lea    -0x148(%rbp),%rax
    b156:	48 8b 08             	mov    (%rax),%rcx
    b159:	48 89 0c 24          	mov    %rcx,(%rsp)
    b15d:	48 8b 48 08          	mov    0x8(%rax),%rcx
    b161:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    b166:	48 8b 40 10          	mov    0x10(%rax),%rax
    b16a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    b16f:	e8 fc 00 00 00       	callq  b270 <_Zmli6Vector>
    b174:	48 8d bd 18 ff ff ff 	lea    -0xe8(%rbp),%rdi
    b17b:	48 8d b5 00 ff ff ff 	lea    -0x100(%rbp),%rsi
    b182:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
    b189:	48 8b 08             	mov    (%rax),%rcx
    b18c:	48 89 0c 24          	mov    %rcx,(%rsp)
    b190:	48 8b 48 08          	mov    0x8(%rax),%rcx
    b194:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    b199:	48 8b 40 10          	mov    0x10(%rax),%rax
    b19d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    b1a2:	e8 a9 30 00 00       	callq  e250 <_ZN6VectorplES_>
    b1a7:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    b1ae:	0f b6 b5 4f ff ff ff 	movzbl -0xb1(%rbp),%esi
    b1b5:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    b1bc:	48 89 8d 88 fe ff ff 	mov    %rcx,-0x178(%rbp)
    b1c3:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    b1ca:	48 89 8d 90 fe ff ff 	mov    %rcx,-0x170(%rbp)
    b1d1:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    b1d8:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    b1df:	48 8d bd a0 fe ff ff 	lea    -0x160(%rbp),%rdi
    b1e6:	48 8d 85 88 fe ff ff 	lea    -0x178(%rbp),%rax
    b1ed:	48 8b 08             	mov    (%rax),%rcx
    b1f0:	48 89 0c 24          	mov    %rcx,(%rsp)
    b1f4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    b1f8:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    b1fd:	48 8b 40 10          	mov    0x10(%rax),%rax
    b201:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    b206:	e8 65 00 00 00       	callq  b270 <_Zmli6Vector>
    b20b:	48 8d bd 30 ff ff ff 	lea    -0xd0(%rbp),%rdi
    b212:	48 8d b5 18 ff ff ff 	lea    -0xe8(%rbp),%rsi
    b219:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    b220:	48 8b 08             	mov    (%rax),%rcx
    b223:	48 89 0c 24          	mov    %rcx,(%rsp)
    b227:	48 8b 48 08          	mov    0x8(%rax),%rcx
    b22b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    b230:	48 8b 40 10          	mov    0x10(%rax),%rax
    b234:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    b239:	e8 12 30 00 00       	callq  e250 <_ZN6VectorplES_>
    b23e:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
    b245:	48 8d b5 30 ff ff ff 	lea    -0xd0(%rbp),%rsi
    b24c:	e8 ff 33 00 00       	callq  e650 <_ZN6Vector9normalizeEv>
    b251:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    b258:	48 81 c4 10 02 00 00 	add    $0x210,%rsp
    b25f:	5d                   	pop    %rbp
    b260:	c3                   	retq   
    b261:	cc                   	int3   
    b262:	cc                   	int3   
    b263:	cc                   	int3   
    b264:	cc                   	int3   
    b265:	cc                   	int3   
    b266:	cc                   	int3   
    b267:	cc                   	int3   
    b268:	cc                   	int3   
    b269:	cc                   	int3   
    b26a:	cc                   	int3   
    b26b:	cc                   	int3   
    b26c:	cc                   	int3   
    b26d:	cc                   	int3   
    b26e:	cc                   	int3   
    b26f:	cc                   	int3   

000000000000b270 <_Zmli6Vector>:
    b270:	55                   	push   %rbp
    b271:	48 89 e5             	mov    %rsp,%rbp
    b274:	48 83 ec 10          	sub    $0x10,%rsp
    b278:	48 89 f8             	mov    %rdi,%rax
    b27b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    b27f:	48 8d 45 10          	lea    0x10(%rbp),%rax
    b283:	89 75 fc             	mov    %esi,-0x4(%rbp)
    b286:	f2 0f 2a 45 fc       	cvtsi2sdl -0x4(%rbp),%xmm0
    b28b:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    b28f:	f2 0f 2a 4d fc       	cvtsi2sdl -0x4(%rbp),%xmm1
    b294:	f2 0f 59 48 08       	mulsd  0x8(%rax),%xmm1
    b299:	f2 0f 2a 55 fc       	cvtsi2sdl -0x4(%rbp),%xmm2
    b29e:	f2 0f 59 50 10       	mulsd  0x10(%rax),%xmm2
    b2a3:	e8 b8 2c 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    b2a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b2ac:	48 83 c4 10          	add    $0x10,%rsp
    b2b0:	5d                   	pop    %rbp
    b2b1:	c3                   	retq   
    b2b2:	cc                   	int3   
    b2b3:	cc                   	int3   
    b2b4:	cc                   	int3   
    b2b5:	cc                   	int3   
    b2b6:	cc                   	int3   
    b2b7:	cc                   	int3   
    b2b8:	cc                   	int3   
    b2b9:	cc                   	int3   
    b2ba:	cc                   	int3   
    b2bb:	cc                   	int3   
    b2bc:	cc                   	int3   
    b2bd:	cc                   	int3   
    b2be:	cc                   	int3   
    b2bf:	cc                   	int3   

000000000000b2c0 <_ZN5ShapeC2ERK6VectorP7Textureddd>:
    b2c0:	55                   	push   %rbp
    b2c1:	48 89 e5             	mov    %rsp,%rbp
    b2c4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b2c8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b2cc:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    b2d0:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    b2d5:	f2 0f 11 4d d8       	movsd  %xmm1,-0x28(%rbp)
    b2da:	f2 0f 11 55 d0       	movsd  %xmm2,-0x30(%rbp)
    b2df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b2e3:	48 8d 0d 16 5d 00 00 	lea    0x5d16(%rip),%rcx        # 11000 <_ZTV5Shape>
    b2ea:	48 83 c1 10          	add    $0x10,%rcx
    b2ee:	48 89 08             	mov    %rcx,(%rax)
    b2f1:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    b2f6:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    b2fb:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    b300:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    b305:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    b30a:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    b30f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b313:	48 8b 11             	mov    (%rcx),%rdx
    b316:	48 89 50 50          	mov    %rdx,0x50(%rax)
    b31a:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    b31e:	48 89 50 58          	mov    %rdx,0x58(%rax)
    b322:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    b326:	48 89 48 60          	mov    %rcx,0x60(%rax)
    b32a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    b32e:	48 89 48 68          	mov    %rcx,0x68(%rax)
    b332:	5d                   	pop    %rbp
    b333:	c3                   	retq   
    b334:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    b33b:	00 00 00 00 00 

000000000000b340 <_ZN5Shape9setAnglesEddd>:
    b340:	55                   	push   %rbp
    b341:	48 89 e5             	mov    %rsp,%rbp
    b344:	48 83 ec 30          	sub    $0x30,%rsp
    b348:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b34c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    b351:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
    b356:	f2 0f 11 55 e0       	movsd  %xmm2,-0x20(%rbp)
    b35b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b35f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    b363:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    b368:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    b36d:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    b372:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    b377:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    b37c:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    b381:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    b386:	e8 d5 49 00 00       	callq  fd60 <cos@plt>
    b38b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b38f:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    b394:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    b399:	e8 b2 49 00 00       	callq  fd50 <sin@plt>
    b39e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b3a2:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    b3a7:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    b3ac:	e8 af 49 00 00       	callq  fd60 <cos@plt>
    b3b1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b3b5:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    b3ba:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    b3bf:	e8 8c 49 00 00       	callq  fd50 <sin@plt>
    b3c4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b3c8:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    b3cd:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    b3d2:	e8 89 49 00 00       	callq  fd60 <cos@plt>
    b3d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b3db:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    b3e0:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    b3e5:	e8 66 49 00 00       	callq  fd50 <sin@plt>
    b3ea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b3ee:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    b3f3:	48 83 c4 30          	add    $0x30,%rsp
    b3f7:	5d                   	pop    %rbp
    b3f8:	c3                   	retq   
    b3f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000b400 <_ZN5Shape6setYawEd>:
    b400:	55                   	push   %rbp
    b401:	48 89 e5             	mov    %rsp,%rbp
    b404:	48 83 ec 20          	sub    $0x20,%rsp
    b408:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b40c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    b411:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b415:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    b419:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    b41e:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    b423:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    b428:	e8 33 49 00 00       	callq  fd60 <cos@plt>
    b42d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b431:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    b436:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    b43b:	e8 10 49 00 00       	callq  fd50 <sin@plt>
    b440:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b444:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    b449:	48 83 c4 20          	add    $0x20,%rsp
    b44d:	5d                   	pop    %rbp
    b44e:	c3                   	retq   
    b44f:	90                   	nop

000000000000b450 <_ZN5Shape8setPitchEd>:
    b450:	55                   	push   %rbp
    b451:	48 89 e5             	mov    %rsp,%rbp
    b454:	48 83 ec 20          	sub    $0x20,%rsp
    b458:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b45c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    b461:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b465:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    b469:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    b46e:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    b473:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    b478:	e8 e3 48 00 00       	callq  fd60 <cos@plt>
    b47d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b481:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    b486:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    b48b:	e8 c0 48 00 00       	callq  fd50 <sin@plt>
    b490:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b494:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    b499:	48 83 c4 20          	add    $0x20,%rsp
    b49d:	5d                   	pop    %rbp
    b49e:	c3                   	retq   
    b49f:	90                   	nop

000000000000b4a0 <_ZN5Shape7setRollEd>:
    b4a0:	55                   	push   %rbp
    b4a1:	48 89 e5             	mov    %rsp,%rbp
    b4a4:	48 83 ec 20          	sub    $0x20,%rsp
    b4a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b4ac:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    b4b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b4b5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    b4b9:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    b4be:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    b4c3:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    b4c8:	e8 93 48 00 00       	callq  fd60 <cos@plt>
    b4cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b4d1:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    b4d6:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    b4db:	e8 70 48 00 00       	callq  fd50 <sin@plt>
    b4e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b4e4:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    b4e9:	48 83 c4 20          	add    $0x20,%rsp
    b4ed:	5d                   	pop    %rbp
    b4ee:	c3                   	retq   
    b4ef:	90                   	nop

000000000000b4f0 <_Z9calcColorPhP8Autonoma3Rayj>:
    b4f0:	55                   	push   %rbp
    b4f1:	48 89 e5             	mov    %rsp,%rbp
    b4f4:	48 81 ec c0 04 00 00 	sub    $0x4c0,%rsp
    b4fb:	48 8d 45 10          	lea    0x10(%rbp),%rax
    b4ff:	48 89 85 28 fc ff ff 	mov    %rax,-0x3d8(%rbp)
    b506:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b50a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b50e:	89 55 ec             	mov    %edx,-0x14(%rbp)
    b511:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b515:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    b51c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    b520:	48 8b 05 a1 70 ff ff 	mov    -0x8f5f(%rip),%rax        # 25c8 <_ZTS5Shape+0xb>
    b527:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    b52b:	48 8b 05 9e 70 ff ff 	mov    -0x8f62(%rip),%rax        # 25d0 <_ZTS5Shape+0x13>
    b532:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    b536:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    b53b:	0f 84 8b 00 00 00    	je     b5cc <_Z9calcColorPhP8Autonoma3Rayj+0xdc>
    b541:	48 8b b5 28 fc ff ff 	mov    -0x3d8(%rbp),%rsi
    b548:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b54c:	48 8b 00             	mov    (%rax),%rax
    b54f:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
    b556:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    b55a:	ba 30 00 00 00       	mov    $0x30,%edx
    b55f:	e8 5c 48 00 00       	callq  fdc0 <memcpy@plt>
    b564:	48 8b bd 20 fc ff ff 	mov    -0x3e0(%rbp),%rdi
    b56b:	48 8b 07             	mov    (%rdi),%rax
    b56e:	48 8b 00             	mov    (%rax),%rax
    b571:	0f 10 45 98          	movups -0x68(%rbp),%xmm0
    b575:	0f 10 4d a8          	movups -0x58(%rbp),%xmm1
    b579:	0f 10 55 b8          	movups -0x48(%rbp),%xmm2
    b57d:	48 89 e1             	mov    %rsp,%rcx
    b580:	0f 11 51 20          	movups %xmm2,0x20(%rcx)
    b584:	0f 11 49 10          	movups %xmm1,0x10(%rcx)
    b588:	0f 11 01             	movups %xmm0,(%rcx)
    b58b:	ff d0                	callq  *%rax
    b58d:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    b592:	f2 0f 10 4d c8       	movsd  -0x38(%rbp),%xmm1
    b597:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    b59c:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    b5a0:	0f 86 15 00 00 00    	jbe    b5bb <_Z9calcColorPhP8Autonoma3Rayj+0xcb>
    b5a6:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    b5ab:	f2 0f 11 45 d0       	movsd  %xmm0,-0x30(%rbp)
    b5b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b5b4:	48 8b 00             	mov    (%rax),%rax
    b5b7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    b5bb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b5bf:	48 8b 40 10          	mov    0x10(%rax),%rax
    b5c3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    b5c7:	e9 6a ff ff ff       	jmpq   b536 <_Z9calcColorPhP8Autonoma3Rayj+0x46>
    b5cc:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    b5d1:	f2 0f 11 85 18 fc ff 	movsd  %xmm0,-0x3e8(%rbp)
    b5d8:	ff 
    b5d9:	e8 c2 cc ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    b5de:	0f 28 c8             	movaps %xmm0,%xmm1
    b5e1:	f2 0f 10 85 18 fc ff 	movsd  -0x3e8(%rbp),%xmm0
    b5e8:	ff 
    b5e9:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    b5ed:	0f 85 31 01 00 00    	jne    b724 <_Z9calcColorPhP8Autonoma3Rayj+0x234>
    b5f3:	0f 8a 2b 01 00 00    	jp     b724 <_Z9calcColorPhP8Autonoma3Rayj+0x234>
    b5f9:	48 8b b5 28 fc ff ff 	mov    -0x3d8(%rbp),%rsi
    b600:	48 83 c6 18          	add    $0x18,%rsi
    b604:	48 8d bd 68 ff ff ff 	lea    -0x98(%rbp),%rdi
    b60b:	e8 40 30 00 00       	callq  e650 <_ZN6Vector9normalizeEv>
    b610:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    b617:	ff 
    b618:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    b61f:	ff 
    b620:	f2 0f 10 85 78 ff ff 	movsd  -0x88(%rbp),%xmm0
    b627:	ff 
    b628:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
    b62f:	ff 
    b630:	0f 57 c0             	xorps  %xmm0,%xmm0
    b633:	66 0f 2e 85 70 ff ff 	ucomisd -0x90(%rbp),%xmm0
    b63a:	ff 
    b63b:	0f 86 2c 00 00 00    	jbe    b66d <_Z9calcColorPhP8Autonoma3Rayj+0x17d>
    b641:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
    b648:	ff 
    b649:	66 48 0f 7e c0       	movq   %xmm0,%rax
    b64e:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    b655:	00 00 80 
    b658:	48 31 c8             	xor    %rcx,%rax
    b65b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    b660:	f2 0f 11 85 10 fc ff 	movsd  %xmm0,-0x3f0(%rbp)
    b667:	ff 
    b668:	e9 10 00 00 00       	jmpq   b67d <_Z9calcColorPhP8Autonoma3Rayj+0x18d>
    b66d:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
    b674:	ff 
    b675:	f2 0f 11 85 10 fc ff 	movsd  %xmm0,-0x3f0(%rbp)
    b67c:	ff 
    b67d:	f2 0f 10 85 10 fc ff 	movsd  -0x3f0(%rbp),%xmm0
    b684:	ff 
    b685:	f2 0f 11 85 50 ff ff 	movsd  %xmm0,-0xb0(%rbp)
    b68c:	ff 
    b68d:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
    b694:	ff 
    b695:	f2 0f 10 8d 60 ff ff 	movsd  -0xa0(%rbp),%xmm1
    b69c:	ff 
    b69d:	e8 3e 47 00 00       	callq  fde0 <atan2@plt>
    b6a2:	f2 0f 11 85 48 ff ff 	movsd  %xmm0,-0xb8(%rbp)
    b6a9:	ff 
    b6aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b6ae:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
    b6b5:	48 89 85 f8 fb ff ff 	mov    %rax,-0x408(%rbp)
    b6bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b6c0:	48 89 85 00 fc ff ff 	mov    %rax,-0x400(%rbp)
    b6c7:	f2 0f 10 85 48 ff ff 	movsd  -0xb8(%rbp),%xmm0
    b6ce:	ff 
    b6cf:	f2 0f 10 0d 91 62 ff 	movsd  -0x9d6f(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    b6d6:	ff 
    b6d7:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    b6db:	e8 00 43 00 00       	callq  f9e0 <_Z3fixd>
    b6e0:	f2 0f 11 85 08 fc ff 	movsd  %xmm0,-0x3f8(%rbp)
    b6e7:	ff 
    b6e8:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
    b6ef:	ff 
    b6f0:	e8 eb 42 00 00       	callq  f9e0 <_Z3fixd>
    b6f5:	48 8b bd f8 fb ff ff 	mov    -0x408(%rbp),%rdi
    b6fc:	48 8b b5 00 fc ff ff 	mov    -0x400(%rbp),%rsi
    b703:	0f 28 c8             	movaps %xmm0,%xmm1
    b706:	f2 0f 10 85 08 fc ff 	movsd  -0x3f8(%rbp),%xmm0
    b70d:	ff 
    b70e:	48 8b 07             	mov    (%rdi),%rax
    b711:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    b715:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
    b719:	4c 8d 45 88          	lea    -0x78(%rbp),%r8
    b71d:	ff 10                	callq  *(%rax)
    b71f:	e9 8b 07 00 00       	jmpq   beaf <_Z9calcColorPhP8Autonoma3Rayj+0x9bf>
    b724:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
    b72b:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    b730:	f2 0f 11 85 40 ff ff 	movsd  %xmm0,-0xc0(%rbp)
    b737:	ff 
    b738:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    b73c:	48 89 8d 38 ff ff ff 	mov    %rcx,-0xc8(%rbp)
    b743:	f2 0f 10 85 40 ff ff 	movsd  -0xc0(%rbp),%xmm0
    b74a:	ff 
    b74b:	48 89 c1             	mov    %rax,%rcx
    b74e:	48 83 c1 18          	add    $0x18,%rcx
    b752:	48 89 8d d0 fb ff ff 	mov    %rcx,-0x430(%rbp)
    b759:	48 8b 48 28          	mov    0x28(%rax),%rcx
    b75d:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
    b764:	0f 10 48 18          	movups 0x18(%rax),%xmm1
    b768:	0f 29 8d f0 fe ff ff 	movaps %xmm1,-0x110(%rbp)
    b76f:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
    b776:	48 89 e0             	mov    %rsp,%rax
    b779:	48 89 48 10          	mov    %rcx,0x10(%rax)
    b77d:	0f 28 8d f0 fe ff ff 	movaps -0x110(%rbp),%xmm1
    b784:	0f 11 08             	movups %xmm1,(%rax)
    b787:	48 8d bd 08 ff ff ff 	lea    -0xf8(%rbp),%rdi
    b78e:	48 89 bd c0 fb ff ff 	mov    %rdi,-0x440(%rbp)
    b795:	e8 26 07 00 00       	callq  bec0 <_Zmld6Vector>
    b79a:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
    b7a1:	48 8b b5 c0 fb ff ff 	mov    -0x440(%rbp),%rsi
    b7a8:	48 8b 48 10          	mov    0x10(%rax),%rcx
    b7ac:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
    b7b3:	0f 10 00             	movups (%rax),%xmm0
    b7b6:	0f 29 85 d0 fe ff ff 	movaps %xmm0,-0x130(%rbp)
    b7bd:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
    b7c4:	48 89 e0             	mov    %rsp,%rax
    b7c7:	48 89 48 10          	mov    %rcx,0x10(%rax)
    b7cb:	0f 28 85 d0 fe ff ff 	movaps -0x130(%rbp),%xmm0
    b7d2:	0f 11 00             	movups %xmm0,(%rax)
    b7d5:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
    b7dc:	48 89 bd c8 fb ff ff 	mov    %rdi,-0x438(%rbp)
    b7e3:	e8 68 2a 00 00       	callq  e250 <_ZN6VectorplES_>
    b7e8:	48 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%rsi
    b7ef:	48 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%rdx
    b7f6:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    b7fd:	48 89 85 d8 fb ff ff 	mov    %rax,-0x428(%rbp)
    b804:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b808:	48 89 85 e0 fb ff ff 	mov    %rax,-0x420(%rbp)
    b80f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b813:	48 89 85 e8 fb ff ff 	mov    %rax,-0x418(%rbp)
    b81a:	48 8d bd 88 fe ff ff 	lea    -0x178(%rbp),%rdi
    b821:	e8 fa 31 00 00       	callq  ea20 <_ZN3RayC1ERK6VectorS2_>
    b826:	48 8b bd d8 fb ff ff 	mov    -0x428(%rbp),%rdi
    b82d:	48 8b b5 e0 fb ff ff 	mov    -0x420(%rbp),%rsi
    b834:	4c 8b 8d e8 fb ff ff 	mov    -0x418(%rbp),%r9
    b83b:	8b 55 ec             	mov    -0x14(%rbp),%edx
    b83e:	48 8b 07             	mov    (%rdi),%rax
    b841:	48 8b 40 20          	mov    0x20(%rax),%rax
    b845:	0f 10 85 88 fe ff ff 	movups -0x178(%rbp),%xmm0
    b84c:	0f 10 8d 98 fe ff ff 	movups -0x168(%rbp),%xmm1
    b853:	0f 10 95 a8 fe ff ff 	movups -0x158(%rbp),%xmm2
    b85a:	48 89 e1             	mov    %rsp,%rcx
    b85d:	0f 11 51 20          	movups %xmm2,0x20(%rcx)
    b861:	0f 11 49 10          	movups %xmm1,0x10(%rcx)
    b865:	0f 11 01             	movups %xmm0,(%rcx)
    b868:	89 51 30             	mov    %edx,0x30(%rcx)
    b86b:	48 8d 95 b8 fe ff ff 	lea    -0x148(%rbp),%rdx
    b872:	48 8d 8d c8 fe ff ff 	lea    -0x138(%rbp),%rcx
    b879:	4c 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%r8
    b880:	ff d0                	callq  *%rax
    b882:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b886:	48 89 85 f0 fb ff ff 	mov    %rax,-0x410(%rbp)
    b88d:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    b894:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    b89b:	0f 10 85 20 ff ff ff 	movups -0xe0(%rbp),%xmm0
    b8a2:	0f 29 85 50 fe ff ff 	movaps %xmm0,-0x1b0(%rbp)
    b8a9:	48 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%rsi
    b8b0:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    b8b7:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    b8be:	0f 10 85 20 ff ff ff 	movups -0xe0(%rbp),%xmm0
    b8c5:	0f 29 85 20 fe ff ff 	movaps %xmm0,-0x1e0(%rbp)
    b8cc:	48 8b 06             	mov    (%rsi),%rax
    b8cf:	48 8b 40 28          	mov    0x28(%rax),%rax
    b8d3:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    b8da:	48 89 e1             	mov    %rsp,%rcx
    b8dd:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    b8e1:	0f 28 85 20 fe ff ff 	movaps -0x1e0(%rbp),%xmm0
    b8e8:	0f 11 01             	movups %xmm0,(%rcx)
    b8eb:	48 8d bd 38 fe ff ff 	lea    -0x1c8(%rbp),%rdi
    b8f2:	ff d0                	callq  *%rax
    b8f4:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
    b8fb:	48 8b 07             	mov    (%rdi),%rax
    b8fe:	48 8b 40 18          	mov    0x18(%rax),%rax
    b902:	ff d0                	callq  *%rax
    b904:	48 8b b5 f0 fb ff ff 	mov    -0x410(%rbp),%rsi
    b90b:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    b912:	48 89 e1             	mov    %rsp,%rcx
    b915:	48 89 51 28          	mov    %rdx,0x28(%rcx)
    b919:	0f 10 85 38 fe ff ff 	movups -0x1c8(%rbp),%xmm0
    b920:	0f 11 41 18          	movups %xmm0,0x18(%rcx)
    b924:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    b92b:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    b92f:	0f 28 85 50 fe ff ff 	movaps -0x1b0(%rbp),%xmm0
    b936:	0f 11 01             	movups %xmm0,(%rcx)
    b939:	0f b6 d0             	movzbl %al,%edx
    b93c:	48 8d bd 70 fe ff ff 	lea    -0x190(%rbp),%rdi
    b943:	e8 28 df ff ff       	callq  9870 <_Z8getLightPdP8Autonoma6VectorS2_h>
    b948:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b94c:	0f b6 08             	movzbl (%rax),%ecx
    b94f:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    b953:	f2 0f 10 95 b8 fe ff 	movsd  -0x148(%rbp),%xmm2
    b95a:	ff 
    b95b:	f2 0f 10 8d 70 fe ff 	movsd  -0x190(%rbp),%xmm1
    b962:	ff 
    b963:	f2 0f 10 1d dd 5f ff 	movsd  -0xa023(%rip),%xmm3        # 1948 <_IO_stdin_used+0x48>
    b96a:	ff 
    b96b:	0f 28 e3             	movaps %xmm3,%xmm4
    b96e:	f2 0f 5c e2          	subsd  %xmm2,%xmm4
    b972:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    b976:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    b97a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    b97e:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    b982:	88 08                	mov    %cl,(%rax)
    b984:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b988:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
    b98c:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    b990:	f2 0f 10 95 b8 fe ff 	movsd  -0x148(%rbp),%xmm2
    b997:	ff 
    b998:	f2 0f 10 8d 78 fe ff 	movsd  -0x188(%rbp),%xmm1
    b99f:	ff 
    b9a0:	0f 28 e3             	movaps %xmm3,%xmm4
    b9a3:	f2 0f 5c e2          	subsd  %xmm2,%xmm4
    b9a7:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    b9ab:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    b9af:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    b9b3:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    b9b7:	88 48 01             	mov    %cl,0x1(%rax)
    b9ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b9be:	0f b6 40 02          	movzbl 0x2(%rax),%eax
    b9c2:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    b9c6:	f2 0f 10 95 b8 fe ff 	movsd  -0x148(%rbp),%xmm2
    b9cd:	ff 
    b9ce:	f2 0f 10 8d 80 fe ff 	movsd  -0x180(%rbp),%xmm1
    b9d5:	ff 
    b9d6:	f2 0f 5c da          	subsd  %xmm2,%xmm3
    b9da:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    b9de:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    b9e2:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    b9e6:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    b9ea:	88 c1                	mov    %al,%cl
    b9ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b9f0:	88 48 02             	mov    %cl,0x2(%rax)
    b9f3:	8b 45 ec             	mov    -0x14(%rbp),%eax
    b9f6:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b9fa:	3b 81 b0 00 00 00    	cmp    0xb0(%rcx),%eax
    ba00:	0f 83 a9 04 00 00    	jae    beaf <_Z9calcColorPhP8Autonoma3Rayj+0x9bf>
    ba06:	f2 0f 10 05 82 5f ff 	movsd  -0xa07e(%rip),%xmm0        # 1990 <_IO_stdin_used+0x90>
    ba0d:	ff 
    ba0e:	66 0f 2e 85 c8 fe ff 	ucomisd -0x138(%rbp),%xmm0
    ba15:	ff 
    ba16:	0f 87 1a 00 00 00    	ja     ba36 <_Z9calcColorPhP8Autonoma3Rayj+0x546>
    ba1c:	f2 0f 10 85 c0 fe ff 	movsd  -0x140(%rbp),%xmm0
    ba23:	ff 
    ba24:	f2 0f 10 0d 2c 5f ff 	movsd  -0xa0d4(%rip),%xmm1        # 1958 <_IO_stdin_used+0x58>
    ba2b:	ff 
    ba2c:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    ba30:	0f 86 79 04 00 00    	jbe    beaf <_Z9calcColorPhP8Autonoma3Rayj+0x9bf>
    ba36:	f2 0f 10 85 c0 fe ff 	movsd  -0x140(%rbp),%xmm0
    ba3d:	ff 
    ba3e:	f2 0f 10 0d 12 5f ff 	movsd  -0xa0ee(%rip),%xmm1        # 1958 <_IO_stdin_used+0x58>
    ba45:	ff 
    ba46:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    ba4a:	0f 86 d2 02 00 00    	jbe    bd22 <_Z9calcColorPhP8Autonoma3Rayj+0x832>
    ba50:	48 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%rsi
    ba57:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    ba5e:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
    ba65:	0f 10 85 20 ff ff ff 	movups -0xe0(%rbp),%xmm0
    ba6c:	0f 29 85 d0 fd ff ff 	movaps %xmm0,-0x230(%rbp)
    ba73:	48 8b 06             	mov    (%rsi),%rax
    ba76:	48 8b 40 28          	mov    0x28(%rax),%rax
    ba7a:	48 8b 95 e0 fd ff ff 	mov    -0x220(%rbp),%rdx
    ba81:	48 89 e1             	mov    %rsp,%rcx
    ba84:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    ba88:	0f 28 85 d0 fd ff ff 	movaps -0x230(%rbp),%xmm0
    ba8f:	0f 11 01             	movups %xmm0,(%rcx)
    ba92:	48 8d bd e8 fd ff ff 	lea    -0x218(%rbp),%rdi
    ba99:	48 89 bd 90 fb ff ff 	mov    %rdi,-0x470(%rbp)
    baa0:	ff d0                	callq  *%rax
    baa2:	48 8b b5 90 fb ff ff 	mov    -0x470(%rbp),%rsi
    baa9:	48 8d bd 00 fe ff ff 	lea    -0x200(%rbp),%rdi
    bab0:	48 89 bd 98 fb ff ff 	mov    %rdi,-0x468(%rbp)
    bab7:	e8 94 2b 00 00       	callq  e650 <_ZN6Vector9normalizeEv>
    babc:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
    bac3:	48 83 c0 18          	add    $0x18,%rax
    bac7:	48 89 85 a8 fb ff ff 	mov    %rax,-0x458(%rbp)
    bace:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    bad5:	48 89 85 80 fd ff ff 	mov    %rax,-0x280(%rbp)
    badc:	0f 10 85 00 fe ff ff 	movups -0x200(%rbp),%xmm0
    bae3:	0f 29 85 70 fd ff ff 	movaps %xmm0,-0x290(%rbp)
    baea:	48 8b 8d 80 fd ff ff 	mov    -0x280(%rbp),%rcx
    baf1:	48 89 e0             	mov    %rsp,%rax
    baf4:	48 89 48 10          	mov    %rcx,0x10(%rax)
    baf8:	0f 28 85 70 fd ff ff 	movaps -0x290(%rbp),%xmm0
    baff:	0f 11 00             	movups %xmm0,(%rax)
    bb02:	48 8d bd 88 fd ff ff 	lea    -0x278(%rbp),%rdi
    bb09:	48 89 bd a0 fb ff ff 	mov    %rdi,-0x460(%rbp)
    bb10:	be 02 00 00 00       	mov    $0x2,%esi
    bb15:	e8 56 f7 ff ff       	callq  b270 <_Zmli6Vector>
    bb1a:	48 8b 85 28 fc ff ff 	mov    -0x3d8(%rbp),%rax
    bb21:	48 8b bd 98 fb ff ff 	mov    -0x468(%rbp),%rdi
    bb28:	48 8b 48 28          	mov    0x28(%rax),%rcx
    bb2c:	48 89 8d 60 fd ff ff 	mov    %rcx,-0x2a0(%rbp)
    bb33:	0f 10 40 18          	movups 0x18(%rax),%xmm0
    bb37:	0f 29 85 50 fd ff ff 	movaps %xmm0,-0x2b0(%rbp)
    bb3e:	48 8b 8d 60 fd ff ff 	mov    -0x2a0(%rbp),%rcx
    bb45:	48 89 e0             	mov    %rsp,%rax
    bb48:	48 89 48 10          	mov    %rcx,0x10(%rax)
    bb4c:	0f 28 85 50 fd ff ff 	movaps -0x2b0(%rbp),%xmm0
    bb53:	0f 11 00             	movups %xmm0,(%rax)
    bb56:	e8 b5 2a 00 00       	callq  e610 <_ZN6Vector3dotES_>
    bb5b:	48 8b b5 a0 fb ff ff 	mov    -0x460(%rbp),%rsi
    bb62:	48 8d bd a0 fd ff ff 	lea    -0x260(%rbp),%rdi
    bb69:	e8 32 27 00 00       	callq  e2a0 <_ZN6VectormlEd>
    bb6e:	48 8b b5 a8 fb ff ff 	mov    -0x458(%rbp),%rsi
    bb75:	48 8b 8d b0 fd ff ff 	mov    -0x250(%rbp),%rcx
    bb7c:	48 89 e0             	mov    %rsp,%rax
    bb7f:	48 89 48 10          	mov    %rcx,0x10(%rax)
    bb83:	0f 10 85 a0 fd ff ff 	movups -0x260(%rbp),%xmm0
    bb8a:	0f 11 00             	movups %xmm0,(%rax)
    bb8d:	48 8d bd b8 fd ff ff 	lea    -0x248(%rbp),%rdi
    bb94:	48 89 bd b8 fb ff ff 	mov    %rdi,-0x448(%rbp)
    bb9b:	e8 60 26 00 00       	callq  e200 <_ZN6VectormiES_>
    bba0:	48 8b b5 b8 fb ff ff 	mov    -0x448(%rbp),%rsi
    bba7:	48 8d bd f0 fc ff ff 	lea    -0x310(%rbp),%rdi
    bbae:	f2 0f 10 05 52 5d ff 	movsd  -0xa2ae(%rip),%xmm0        # 1908 <_IO_stdin_used+0x8>
    bbb5:	ff 
    bbb6:	e8 e5 26 00 00       	callq  e2a0 <_ZN6VectormlEd>
    bbbb:	48 8b 8d 00 fd ff ff 	mov    -0x300(%rbp),%rcx
    bbc2:	48 89 e0             	mov    %rsp,%rax
    bbc5:	48 89 48 10          	mov    %rcx,0x10(%rax)
    bbc9:	0f 10 85 f0 fc ff ff 	movups -0x310(%rbp),%xmm0
    bbd0:	0f 11 00             	movups %xmm0,(%rax)
    bbd3:	48 8d bd 08 fd ff ff 	lea    -0x2f8(%rbp),%rdi
    bbda:	48 89 bd b0 fb ff ff 	mov    %rdi,-0x450(%rbp)
    bbe1:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
    bbe8:	e8 63 26 00 00       	callq  e250 <_ZN6VectorplES_>
    bbed:	48 8b b5 b0 fb ff ff 	mov    -0x450(%rbp),%rsi
    bbf4:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
    bbfb:	48 8d bd 20 fd ff ff 	lea    -0x2e0(%rbp),%rdi
    bc02:	e8 19 2e 00 00       	callq  ea20 <_ZN3RayC1ERK6VectorS2_>
    bc07:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    bc0b:	0f 10 85 20 fd ff ff 	movups -0x2e0(%rbp),%xmm0
    bc12:	0f 10 8d 30 fd ff ff 	movups -0x2d0(%rbp),%xmm1
    bc19:	0f 10 95 40 fd ff ff 	movups -0x2c0(%rbp),%xmm2
    bc20:	0f 29 95 e0 fc ff ff 	movaps %xmm2,-0x320(%rbp)
    bc27:	0f 29 8d d0 fc ff ff 	movaps %xmm1,-0x330(%rbp)
    bc2e:	0f 29 85 c0 fc ff ff 	movaps %xmm0,-0x340(%rbp)
    bc35:	8b 55 ec             	mov    -0x14(%rbp),%edx
    bc38:	ff c2                	inc    %edx
    bc3a:	0f 28 85 c0 fc ff ff 	movaps -0x340(%rbp),%xmm0
    bc41:	0f 28 8d d0 fc ff ff 	movaps -0x330(%rbp),%xmm1
    bc48:	0f 28 95 e0 fc ff ff 	movaps -0x320(%rbp),%xmm2
    bc4f:	48 89 e0             	mov    %rsp,%rax
    bc52:	0f 11 50 20          	movups %xmm2,0x20(%rax)
    bc56:	0f 11 48 10          	movups %xmm1,0x10(%rax)
    bc5a:	0f 11 00             	movups %xmm0,(%rax)
    bc5d:	48 8d bd 1c fe ff ff 	lea    -0x1e4(%rbp),%rdi
    bc64:	e8 87 f8 ff ff       	callq  b4f0 <_Z9calcColorPhP8Autonoma3Rayj>
    bc69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bc6d:	0f b6 08             	movzbl (%rax),%ecx
    bc70:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    bc74:	f2 0f 10 a5 c0 fe ff 	movsd  -0x140(%rbp),%xmm4
    bc7b:	ff 
    bc7c:	f2 0f 10 15 c4 5c ff 	movsd  -0xa33c(%rip),%xmm2        # 1948 <_IO_stdin_used+0x48>
    bc83:	ff 
    bc84:	0f 28 da             	movaps %xmm2,%xmm3
    bc87:	f2 0f 5c dc          	subsd  %xmm4,%xmm3
    bc8b:	0f b6 8d 1c fe ff ff 	movzbl -0x1e4(%rbp),%ecx
    bc92:	f2 0f 2a c9          	cvtsi2sd %ecx,%xmm1
    bc96:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    bc9a:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    bc9e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    bca2:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    bca6:	88 08                	mov    %cl,(%rax)
    bca8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bcac:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
    bcb0:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    bcb4:	f2 0f 10 a5 c0 fe ff 	movsd  -0x140(%rbp),%xmm4
    bcbb:	ff 
    bcbc:	0f 28 da             	movaps %xmm2,%xmm3
    bcbf:	f2 0f 5c dc          	subsd  %xmm4,%xmm3
    bcc3:	0f b6 8d 1d fe ff ff 	movzbl -0x1e3(%rbp),%ecx
    bcca:	f2 0f 2a c9          	cvtsi2sd %ecx,%xmm1
    bcce:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    bcd2:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    bcd6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    bcda:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    bcde:	88 48 01             	mov    %cl,0x1(%rax)
    bce1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bce5:	0f b6 40 02          	movzbl 0x2(%rax),%eax
    bce9:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    bced:	f2 0f 10 9d c0 fe ff 	movsd  -0x140(%rbp),%xmm3
    bcf4:	ff 
    bcf5:	f2 0f 5c d3          	subsd  %xmm3,%xmm2
    bcf9:	0f b6 85 1e fe ff ff 	movzbl -0x1e2(%rbp),%eax
    bd00:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    bd04:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    bd08:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    bd0c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    bd10:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    bd14:	88 c1                	mov    %al,%cl
    bd16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bd1a:	88 48 02             	mov    %cl,0x2(%rax)
    bd1d:	e9 88 01 00 00       	jmpq   beaa <_Z9calcColorPhP8Autonoma3Rayj+0x9ba>
    bd22:	48 8b b5 28 fc ff ff 	mov    -0x3d8(%rbp),%rsi
    bd29:	48 83 c6 18          	add    $0x18,%rsi
    bd2d:	48 89 b5 88 fb ff ff 	mov    %rsi,-0x478(%rbp)
    bd34:	48 8d bd 60 fc ff ff 	lea    -0x3a0(%rbp),%rdi
    bd3b:	f2 0f 10 05 c5 5b ff 	movsd  -0xa43b(%rip),%xmm0        # 1908 <_IO_stdin_used+0x8>
    bd42:	ff 
    bd43:	e8 58 25 00 00       	callq  e2a0 <_ZN6VectormlEd>
    bd48:	48 8b 8d 70 fc ff ff 	mov    -0x390(%rbp),%rcx
    bd4f:	48 89 e0             	mov    %rsp,%rax
    bd52:	48 89 48 10          	mov    %rcx,0x10(%rax)
    bd56:	0f 10 85 60 fc ff ff 	movups -0x3a0(%rbp),%xmm0
    bd5d:	0f 11 00             	movups %xmm0,(%rax)
    bd60:	48 8d bd 78 fc ff ff 	lea    -0x388(%rbp),%rdi
    bd67:	48 89 bd 80 fb ff ff 	mov    %rdi,-0x480(%rbp)
    bd6e:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
    bd75:	e8 d6 24 00 00       	callq  e250 <_ZN6VectorplES_>
    bd7a:	48 8b b5 80 fb ff ff 	mov    -0x480(%rbp),%rsi
    bd81:	48 8b 95 88 fb ff ff 	mov    -0x478(%rbp),%rdx
    bd88:	48 8d bd 90 fc ff ff 	lea    -0x370(%rbp),%rdi
    bd8f:	e8 8c 2c 00 00       	callq  ea20 <_ZN3RayC1ERK6VectorS2_>
    bd94:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    bd98:	0f 10 85 90 fc ff ff 	movups -0x370(%rbp),%xmm0
    bd9f:	0f 10 8d a0 fc ff ff 	movups -0x360(%rbp),%xmm1
    bda6:	0f 10 95 b0 fc ff ff 	movups -0x350(%rbp),%xmm2
    bdad:	0f 29 95 50 fc ff ff 	movaps %xmm2,-0x3b0(%rbp)
    bdb4:	0f 29 8d 40 fc ff ff 	movaps %xmm1,-0x3c0(%rbp)
    bdbb:	0f 29 85 30 fc ff ff 	movaps %xmm0,-0x3d0(%rbp)
    bdc2:	8b 55 ec             	mov    -0x14(%rbp),%edx
    bdc5:	ff c2                	inc    %edx
    bdc7:	0f 28 85 30 fc ff ff 	movaps -0x3d0(%rbp),%xmm0
    bdce:	0f 28 8d 40 fc ff ff 	movaps -0x3c0(%rbp),%xmm1
    bdd5:	0f 28 95 50 fc ff ff 	movaps -0x3b0(%rbp),%xmm2
    bddc:	48 89 e0             	mov    %rsp,%rax
    bddf:	0f 11 50 20          	movups %xmm2,0x20(%rax)
    bde3:	0f 11 48 10          	movups %xmm1,0x10(%rax)
    bde7:	0f 11 00             	movups %xmm0,(%rax)
    bdea:	48 8d bd 1c fe ff ff 	lea    -0x1e4(%rbp),%rdi
    bdf1:	e8 fa f6 ff ff       	callq  b4f0 <_Z9calcColorPhP8Autonoma3Rayj>
    bdf6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bdfa:	0f b6 08             	movzbl (%rax),%ecx
    bdfd:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    be01:	f2 0f 10 95 c8 fe ff 	movsd  -0x138(%rbp),%xmm2
    be08:	ff 
    be09:	0f b6 8d 1c fe ff ff 	movzbl -0x1e4(%rbp),%ecx
    be10:	f2 0f 2a c9          	cvtsi2sd %ecx,%xmm1
    be14:	f2 0f 10 1d 2c 5b ff 	movsd  -0xa4d4(%rip),%xmm3        # 1948 <_IO_stdin_used+0x48>
    be1b:	ff 
    be1c:	0f 28 e3             	movaps %xmm3,%xmm4
    be1f:	f2 0f 5c e2          	subsd  %xmm2,%xmm4
    be23:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    be27:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    be2b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    be2f:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    be33:	88 08                	mov    %cl,(%rax)
    be35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    be39:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
    be3d:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    be41:	f2 0f 10 95 c8 fe ff 	movsd  -0x138(%rbp),%xmm2
    be48:	ff 
    be49:	0f b6 8d 1d fe ff ff 	movzbl -0x1e3(%rbp),%ecx
    be50:	f2 0f 2a c9          	cvtsi2sd %ecx,%xmm1
    be54:	0f 28 e3             	movaps %xmm3,%xmm4
    be57:	f2 0f 5c e2          	subsd  %xmm2,%xmm4
    be5b:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    be5f:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    be63:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    be67:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
    be6b:	88 48 01             	mov    %cl,0x1(%rax)
    be6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    be72:	0f b6 40 02          	movzbl 0x2(%rax),%eax
    be76:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    be7a:	f2 0f 10 95 c8 fe ff 	movsd  -0x138(%rbp),%xmm2
    be81:	ff 
    be82:	0f b6 85 1e fe ff ff 	movzbl -0x1e2(%rbp),%eax
    be89:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    be8d:	f2 0f 5c da          	subsd  %xmm2,%xmm3
    be91:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    be95:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    be99:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    be9d:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    bea1:	88 c1                	mov    %al,%cl
    bea3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bea7:	88 48 02             	mov    %cl,0x2(%rax)
    beaa:	e9 00 00 00 00       	jmpq   beaf <_Z9calcColorPhP8Autonoma3Rayj+0x9bf>
    beaf:	48 81 c4 c0 04 00 00 	add    $0x4c0,%rsp
    beb6:	5d                   	pop    %rbp
    beb7:	c3                   	retq   
    beb8:	cc                   	int3   
    beb9:	cc                   	int3   
    beba:	cc                   	int3   
    bebb:	cc                   	int3   
    bebc:	cc                   	int3   
    bebd:	cc                   	int3   
    bebe:	cc                   	int3   
    bebf:	cc                   	int3   

000000000000bec0 <_Zmld6Vector>:
    bec0:	55                   	push   %rbp
    bec1:	48 89 e5             	mov    %rsp,%rbp
    bec4:	48 83 ec 10          	sub    $0x10,%rsp
    bec8:	48 89 f8             	mov    %rdi,%rax
    becb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    becf:	48 8d 45 10          	lea    0x10(%rbp),%rax
    bed3:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    bed8:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    bedd:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    bee1:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
    bee6:	f2 0f 59 48 08       	mulsd  0x8(%rax),%xmm1
    beeb:	f2 0f 10 55 f8       	movsd  -0x8(%rbp),%xmm2
    bef0:	f2 0f 59 50 10       	mulsd  0x10(%rax),%xmm2
    bef5:	e8 66 20 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    befa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    befe:	48 83 c4 10          	add    $0x10,%rsp
    bf02:	5d                   	pop    %rbp
    bf03:	c3                   	retq   
    bf04:	cc                   	int3   
    bf05:	cc                   	int3   
    bf06:	cc                   	int3   
    bf07:	cc                   	int3   
    bf08:	cc                   	int3   
    bf09:	cc                   	int3   
    bf0a:	cc                   	int3   
    bf0b:	cc                   	int3   
    bf0c:	cc                   	int3   
    bf0d:	cc                   	int3   
    bf0e:	cc                   	int3   
    bf0f:	cc                   	int3   

000000000000bf10 <_ZN6SphereC1ERK6VectorP7Texturedddd>:
    bf10:	55                   	push   %rbp
    bf11:	48 89 e5             	mov    %rsp,%rbp
    bf14:	48 83 ec 40          	sub    $0x40,%rsp
    bf18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    bf1c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    bf20:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    bf24:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    bf29:	f2 0f 11 4d d8       	movsd  %xmm1,-0x28(%rbp)
    bf2e:	f2 0f 11 55 d0       	movsd  %xmm2,-0x30(%rbp)
    bf33:	f2 0f 11 5d c8       	movsd  %xmm3,-0x38(%rbp)
    bf38:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    bf3c:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
    bf40:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    bf44:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    bf48:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    bf4d:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
    bf52:	f2 0f 10 55 d0       	movsd  -0x30(%rbp),%xmm2
    bf57:	e8 64 f3 ff ff       	callq  b2c0 <_ZN5ShapeC2ERK6VectorP7Textureddd>
    bf5c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    bf60:	48 8d 0d f9 50 00 00 	lea    0x50f9(%rip),%rcx        # 11060 <_ZTV6Sphere>
    bf67:	48 83 c1 10          	add    $0x10,%rcx
    bf6b:	48 89 08             	mov    %rcx,(%rax)
    bf6e:	f2 0f 10 05 d2 59 ff 	movsd  -0xa62e(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    bf75:	ff 
    bf76:	f2 0f 11 40 78       	movsd  %xmm0,0x78(%rax)
    bf7b:	f2 0f 10 05 c5 59 ff 	movsd  -0xa63b(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    bf82:	ff 
    bf83:	f2 0f 11 40 70       	movsd  %xmm0,0x70(%rax)
    bf88:	48 c7 80 a0 00 00 00 	movq   $0x0,0xa0(%rax)
    bf8f:	00 00 00 00 
    bf93:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    bf98:	f2 0f 11 80 a8 00 00 	movsd  %xmm0,0xa8(%rax)
    bf9f:	00 
    bfa0:	48 83 c4 40          	add    $0x40,%rsp
    bfa4:	5d                   	pop    %rbp
    bfa5:	c3                   	retq   
    bfa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    bfad:	00 00 00 

000000000000bfb0 <_ZN6Sphere20getLightIntersectionE3RayPd>:
    bfb0:	55                   	push   %rbp
    bfb1:	48 89 e5             	mov    %rsp,%rbp
    bfb4:	48 81 ec 80 01 00 00 	sub    $0x180,%rsp
    bfbb:	48 89 f8             	mov    %rdi,%rax
    bfbe:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    bfc2:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
    bfc9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    bfcd:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    bfd1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    bfd5:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    bfdc:	48 83 c7 18          	add    $0x18,%rdi
    bfe0:	e8 9b 25 00 00       	callq  e580 <_ZN6Vector4mag2Ev>
    bfe5:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    bfec:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    bff3:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    bff8:	48 89 f1             	mov    %rsi,%rcx
    bffb:	48 83 c1 18          	add    $0x18,%rcx
    bfff:	48 89 8d d0 fe ff ff 	mov    %rcx,-0x130(%rbp)
    c006:	48 8b 48 50          	mov    0x50(%rax),%rcx
    c00a:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    c00e:	48 8b 48 58          	mov    0x58(%rax),%rcx
    c012:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    c016:	48 8b 40 60          	mov    0x60(%rax),%rax
    c01a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    c01e:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
    c022:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    c026:	48 8b 08             	mov    (%rax),%rcx
    c029:	48 89 0c 24          	mov    %rcx,(%rsp)
    c02d:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c031:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c036:	48 8b 40 10          	mov    0x10(%rax),%rax
    c03a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c03f:	e8 bc 21 00 00       	callq  e200 <_ZN6VectormiES_>
    c044:	48 8b bd d0 fe ff ff 	mov    -0x130(%rbp),%rdi
    c04b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    c04f:	48 8b 08             	mov    (%rax),%rcx
    c052:	48 89 0c 24          	mov    %rcx,(%rsp)
    c056:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c05a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c05f:	48 8b 40 10          	mov    0x10(%rax),%rax
    c063:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c068:	e8 a3 25 00 00       	callq  e610 <_ZN6Vector3dotES_>
    c06d:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    c074:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    c07b:	0f 28 c8             	movaps %xmm0,%xmm1
    c07e:	f2 0f 10 05 9a 58 ff 	movsd  -0xa766(%rip),%xmm0        # 1920 <_IO_stdin_used+0x20>
    c085:	ff 
    c086:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    c08a:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    c08f:	48 8b 48 50          	mov    0x50(%rax),%rcx
    c093:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    c09a:	48 8b 48 58          	mov    0x58(%rax),%rcx
    c09e:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    c0a5:	48 8b 40 60          	mov    0x60(%rax),%rax
    c0a9:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    c0ad:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    c0b1:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    c0b8:	48 8b 08             	mov    (%rax),%rcx
    c0bb:	48 89 0c 24          	mov    %rcx,(%rsp)
    c0bf:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c0c3:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c0c8:	48 8b 40 10          	mov    0x10(%rax),%rax
    c0cc:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c0d1:	e8 2a 21 00 00       	callq  e200 <_ZN6VectormiES_>
    c0d6:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    c0da:	e8 a1 24 00 00       	callq  e580 <_ZN6Vector4mag2Ev>
    c0df:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    c0e6:	0f 28 c8             	movaps %xmm0,%xmm1
    c0e9:	f2 0f 10 80 a8 00 00 	movsd  0xa8(%rax),%xmm0
    c0f0:	00 
    c0f1:	f2 0f 10 90 a8 00 00 	movsd  0xa8(%rax),%xmm2
    c0f8:	00 
    c0f9:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c0fe:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c105:	00 00 80 
    c108:	48 31 c8             	xor    %rcx,%rax
    c10b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c110:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    c114:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    c118:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    c11d:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c122:	f2 0f 10 55 d8       	movsd  -0x28(%rbp),%xmm2
    c127:	f2 0f 10 0d 01 58 ff 	movsd  -0xa7ff(%rip),%xmm1        # 1930 <_IO_stdin_used+0x30>
    c12e:	ff 
    c12f:	f2 0f 59 4d e0       	mulsd  -0x20(%rbp),%xmm1
    c134:	f2 0f 59 4d a0       	mulsd  -0x60(%rbp),%xmm1
    c139:	66 48 0f 7e c8       	movq   %xmm1,%rax
    c13e:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c145:	00 00 80 
    c148:	48 31 c8             	xor    %rcx,%rax
    c14b:	66 48 0f 6e c8       	movq   %rax,%xmm1
    c150:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    c154:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    c158:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    c15f:	ff 
    c160:	0f 57 c0             	xorps  %xmm0,%xmm0
    c163:	66 0f 2e 85 68 ff ff 	ucomisd -0x98(%rbp),%xmm0
    c16a:	ff 
    c16b:	0f 87 8b 00 00 00    	ja     c1fc <_ZN6Sphere20getLightIntersectionE3RayPd+0x24c>
    c171:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    c178:	ff 
    c179:	f2 0f 11 85 c0 fe ff 	movsd  %xmm0,-0x140(%rbp)
    c180:	ff 
    c181:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c186:	f2 0f 11 85 c8 fe ff 	movsd  %xmm0,-0x138(%rbp)
    c18d:	ff 
    c18e:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c193:	0f 57 c9             	xorps  %xmm1,%xmm1
    c196:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c19a:	0f 82 12 00 00 00    	jb     c1b2 <_ZN6Sphere20getLightIntersectionE3RayPd+0x202>
    c1a0:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c1a5:	f2 0f 11 85 b8 fe ff 	movsd  %xmm0,-0x148(%rbp)
    c1ac:	ff 
    c1ad:	e9 24 00 00 00       	jmpq   c1d6 <_ZN6Sphere20getLightIntersectionE3RayPd+0x226>
    c1b2:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c1b7:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c1bc:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c1c3:	00 00 80 
    c1c6:	48 31 c8             	xor    %rcx,%rax
    c1c9:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c1ce:	f2 0f 11 85 b8 fe ff 	movsd  %xmm0,-0x148(%rbp)
    c1d5:	ff 
    c1d6:	f2 0f 10 8d c0 fe ff 	movsd  -0x140(%rbp),%xmm1
    c1dd:	ff 
    c1de:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
    c1e5:	ff 
    c1e6:	f2 0f 10 95 b8 fe ff 	movsd  -0x148(%rbp),%xmm2
    c1ed:	ff 
    c1ee:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    c1f2:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c1f6:	0f 86 09 00 00 00    	jbe    c205 <_ZN6Sphere20getLightIntersectionE3RayPd+0x255>
    c1fc:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    c200:	e9 f0 02 00 00       	jmpq   c4f5 <_ZN6Sphere20getLightIntersectionE3RayPd+0x545>
    c205:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    c20c:	ff 
    c20d:	e8 de 3b 00 00       	callq  fdf0 <sqrt@plt>
    c212:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    c219:	ff 
    c21a:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c21f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c224:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c22b:	00 00 80 
    c22e:	48 31 c8             	xor    %rcx,%rax
    c231:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c236:	f2 0f 5c 85 60 ff ff 	subsd  -0xa0(%rbp),%xmm0
    c23d:	ff 
    c23e:	f2 0f 10 0d da 56 ff 	movsd  -0xa926(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    c245:	ff 
    c246:	f2 0f 59 4d e0       	mulsd  -0x20(%rbp),%xmm1
    c24b:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c24f:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
    c256:	ff 
    c257:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    c25c:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c261:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c268:	00 00 80 
    c26b:	48 31 c8             	xor    %rcx,%rax
    c26e:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c273:	f2 0f 58 85 60 ff ff 	addsd  -0xa0(%rbp),%xmm0
    c27a:	ff 
    c27b:	f2 0f 10 0d 9d 56 ff 	movsd  -0xa963(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    c282:	ff 
    c283:	f2 0f 59 4d e0       	mulsd  -0x20(%rbp),%xmm1
    c288:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c28c:	f2 0f 11 85 50 ff ff 	movsd  %xmm0,-0xb0(%rbp)
    c293:	ff 
    c294:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
    c29b:	ff 
    c29c:	0f 57 c9             	xorps  %xmm1,%xmm1
    c29f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c2a3:	0f 86 15 00 00 00    	jbe    c2be <_ZN6Sphere20getLightIntersectionE3RayPd+0x30e>
    c2a9:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
    c2b0:	ff 
    c2b1:	f2 0f 11 85 b0 fe ff 	movsd  %xmm0,-0x150(%rbp)
    c2b8:	ff 
    c2b9:	e9 10 00 00 00       	jmpq   c2ce <_ZN6Sphere20getLightIntersectionE3RayPd+0x31e>
    c2be:	f2 0f 10 85 50 ff ff 	movsd  -0xb0(%rbp),%xmm0
    c2c5:	ff 
    c2c6:	f2 0f 11 85 b0 fe ff 	movsd  %xmm0,-0x150(%rbp)
    c2cd:	ff 
    c2ce:	f2 0f 10 85 b0 fe ff 	movsd  -0x150(%rbp),%xmm0
    c2d5:	ff 
    c2d6:	f2 0f 11 85 48 ff ff 	movsd  %xmm0,-0xb8(%rbp)
    c2dd:	ff 
    c2de:	f2 0f 10 85 48 ff ff 	movsd  -0xb8(%rbp),%xmm0
    c2e5:	ff 
    c2e6:	f2 0f 10 0d 5a 56 ff 	movsd  -0xa9a6(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    c2ed:	ff 
    c2ee:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c2f2:	0f 82 09 00 00 00    	jb     c301 <_ZN6Sphere20getLightIntersectionE3RayPd+0x351>
    c2f8:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    c2fc:	e9 f4 01 00 00       	jmpq   c4f5 <_ZN6Sphere20getLightIntersectionE3RayPd+0x545>
    c301:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    c308:	48 83 c6 18          	add    $0x18,%rsi
    c30c:	f2 0f 10 85 48 ff ff 	movsd  -0xb8(%rbp),%xmm0
    c313:	ff 
    c314:	48 8d bd 18 ff ff ff 	lea    -0xe8(%rbp),%rdi
    c31b:	e8 80 1f 00 00       	callq  e2a0 <_ZN6VectormlEd>
    c320:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    c327:	48 8d bd 30 ff ff ff 	lea    -0xd0(%rbp),%rdi
    c32e:	48 8d 85 18 ff ff ff 	lea    -0xe8(%rbp),%rax
    c335:	48 8b 08             	mov    (%rax),%rcx
    c338:	48 89 0c 24          	mov    %rcx,(%rsp)
    c33c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c340:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c345:	48 8b 40 10          	mov    0x10(%rax),%rax
    c349:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c34e:	e8 fd 1e 00 00       	callq  e250 <_ZN6VectorplES_>
    c353:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    c35a:	f2 0f 10 40 58       	movsd  0x58(%rax),%xmm0
    c35f:	f2 0f 5c 85 38 ff ff 	subsd  -0xc8(%rbp),%xmm0
    c366:	ff 
    c367:	f2 0f 58 80 a8 00 00 	addsd  0xa8(%rax),%xmm0
    c36e:	00 
    c36f:	f2 0f 10 0d a9 55 ff 	movsd  -0xaa57(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    c376:	ff 
    c377:	f2 0f 59 88 a8 00 00 	mulsd  0xa8(%rax),%xmm1
    c37e:	00 
    c37f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c383:	f2 0f 11 85 10 ff ff 	movsd  %xmm0,-0xf0(%rbp)
    c38a:	ff 
    c38b:	f2 0f 10 85 40 ff ff 	movsd  -0xc0(%rbp),%xmm0
    c392:	ff 
    c393:	f2 0f 5c 40 60       	subsd  0x60(%rax),%xmm0
    c398:	f2 0f 10 8d 30 ff ff 	movsd  -0xd0(%rbp),%xmm1
    c39f:	ff 
    c3a0:	f2 0f 5c 48 50       	subsd  0x50(%rax),%xmm1
    c3a5:	e8 36 3a 00 00       	callq  fde0 <atan2@plt>
    c3aa:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    c3b1:	f2 0f 11 85 08 ff ff 	movsd  %xmm0,-0xf8(%rbp)
    c3b8:	ff 
    c3b9:	48 8b 48 68          	mov    0x68(%rax),%rcx
    c3bd:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
    c3c4:	48 8d 8d 04 ff ff ff 	lea    -0xfc(%rbp),%rcx
    c3cb:	48 89 8d a0 fe ff ff 	mov    %rcx,-0x160(%rbp)
    c3d2:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    c3d7:	f2 0f 58 85 10 ff ff 	addsd  -0xf0(%rbp),%xmm0
    c3de:	ff 
    c3df:	f2 0f 10 0d 81 55 ff 	movsd  -0xaa7f(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    c3e6:	ff 
    c3e7:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c3eb:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    c3f0:	e8 eb 35 00 00       	callq  f9e0 <_Z3fixd>
    c3f5:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    c3fc:	f2 0f 11 85 a8 fe ff 	movsd  %xmm0,-0x158(%rbp)
    c403:	ff 
    c404:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    c409:	f2 0f 10 0d 57 55 ff 	movsd  -0xaaa9(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    c410:	ff 
    c411:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c415:	f2 0f 5c 85 08 ff ff 	subsd  -0xf8(%rbp),%xmm0
    c41c:	ff 
    c41d:	e8 be 35 00 00       	callq  f9e0 <_Z3fixd>
    c422:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    c429:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    c430:	48 8b b5 a0 fe ff ff 	mov    -0x160(%rbp),%rsi
    c437:	0f 28 c8             	movaps %xmm0,%xmm1
    c43a:	f2 0f 10 85 a8 fe ff 	movsd  -0x158(%rbp),%xmm0
    c441:	ff 
    c442:	f2 0f 5e 48 78       	divsd  0x78(%rax),%xmm1
    c447:	48 8b 07             	mov    (%rdi),%rax
    c44a:	48 8d 95 f8 fe ff ff 	lea    -0x108(%rbp),%rdx
    c451:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    c458:	4c 8d 85 e8 fe ff ff 	lea    -0x118(%rbp),%r8
    c45f:	ff 10                	callq  *(%rax)
    c461:	f2 0f 10 85 f0 fe ff 	movsd  -0x110(%rbp),%xmm0
    c468:	ff 
    c469:	f2 0f 10 0d 1f 55 ff 	movsd  -0xaae1(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    c470:	ff 
    c471:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c475:	0f 86 09 00 00 00    	jbe    c484 <_ZN6Sphere20getLightIntersectionE3RayPd+0x4d4>
    c47b:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    c47f:	e9 71 00 00 00       	jmpq   c4f5 <_ZN6Sphere20getLightIntersectionE3RayPd+0x545>
    c484:	0f b6 85 04 ff ff ff 	movzbl -0xfc(%rbp),%eax
    c48b:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    c48f:	f2 0f 10 0d 79 54 ff 	movsd  -0xab87(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    c496:	ff 
    c497:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c49b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    c49f:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    c4a3:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    c4a7:	0f b6 85 05 ff ff ff 	movzbl -0xfb(%rbp),%eax
    c4ae:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    c4b2:	f2 0f 10 0d 56 54 ff 	movsd  -0xabaa(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    c4b9:	ff 
    c4ba:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c4be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    c4c2:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    c4c7:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    c4cc:	0f b6 85 06 ff ff ff 	movzbl -0xfa(%rbp),%eax
    c4d3:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    c4d7:	f2 0f 10 0d 31 54 ff 	movsd  -0xabcf(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    c4de:	ff 
    c4df:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c4e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    c4e7:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    c4ec:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    c4f1:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    c4f5:	8a 45 ff             	mov    -0x1(%rbp),%al
    c4f8:	24 01                	and    $0x1,%al
    c4fa:	0f b6 c0             	movzbl %al,%eax
    c4fd:	48 81 c4 80 01 00 00 	add    $0x180,%rsp
    c504:	5d                   	pop    %rbp
    c505:	c3                   	retq   
    c506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    c50d:	00 00 00 

000000000000c510 <_ZN6Sphere15getIntersectionE3Ray>:
    c510:	55                   	push   %rbp
    c511:	48 89 e5             	mov    %rsp,%rbp
    c514:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
    c51b:	48 89 f8             	mov    %rdi,%rax
    c51e:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    c522:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
    c529:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    c52d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    c531:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    c538:	48 83 c7 18          	add    $0x18,%rdi
    c53c:	e8 3f 20 00 00       	callq  e580 <_ZN6Vector4mag2Ev>
    c541:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
    c548:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    c54f:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    c554:	48 89 f1             	mov    %rsi,%rcx
    c557:	48 83 c1 18          	add    $0x18,%rcx
    c55b:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
    c562:	48 8b 48 50          	mov    0x50(%rax),%rcx
    c566:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    c56a:	48 8b 48 58          	mov    0x58(%rax),%rcx
    c56e:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
    c572:	48 8b 40 60          	mov    0x60(%rax),%rax
    c576:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    c57a:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
    c57e:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    c582:	48 8b 08             	mov    (%rax),%rcx
    c585:	48 89 0c 24          	mov    %rcx,(%rsp)
    c589:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c58d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c592:	48 8b 40 10          	mov    0x10(%rax),%rax
    c596:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c59b:	e8 60 1c 00 00       	callq  e200 <_ZN6VectormiES_>
    c5a0:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
    c5a7:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    c5ab:	48 8b 08             	mov    (%rax),%rcx
    c5ae:	48 89 0c 24          	mov    %rcx,(%rsp)
    c5b2:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c5b6:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c5bb:	48 8b 40 10          	mov    0x10(%rax),%rax
    c5bf:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c5c4:	e8 47 20 00 00       	callq  e610 <_ZN6Vector3dotES_>
    c5c9:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
    c5d0:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    c5d7:	0f 28 c8             	movaps %xmm0,%xmm1
    c5da:	f2 0f 10 05 3e 53 ff 	movsd  -0xacc2(%rip),%xmm0        # 1920 <_IO_stdin_used+0x20>
    c5e1:	ff 
    c5e2:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    c5e6:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    c5eb:	48 8b 48 50          	mov    0x50(%rax),%rcx
    c5ef:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    c5f6:	48 8b 48 58          	mov    0x58(%rax),%rcx
    c5fa:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    c5fe:	48 8b 40 60          	mov    0x60(%rax),%rax
    c602:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    c606:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    c60a:	48 8d 85 78 ff ff ff 	lea    -0x88(%rbp),%rax
    c611:	48 8b 08             	mov    (%rax),%rcx
    c614:	48 89 0c 24          	mov    %rcx,(%rsp)
    c618:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c61c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c621:	48 8b 40 10          	mov    0x10(%rax),%rax
    c625:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c62a:	e8 d1 1b 00 00       	callq  e200 <_ZN6VectormiES_>
    c62f:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    c633:	e8 48 1f 00 00       	callq  e580 <_ZN6Vector4mag2Ev>
    c638:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    c63f:	0f 28 c8             	movaps %xmm0,%xmm1
    c642:	f2 0f 10 80 a8 00 00 	movsd  0xa8(%rax),%xmm0
    c649:	00 
    c64a:	f2 0f 10 90 a8 00 00 	movsd  0xa8(%rax),%xmm2
    c651:	00 
    c652:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c657:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c65e:	00 00 80 
    c661:	48 31 c8             	xor    %rcx,%rax
    c664:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c669:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    c66d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    c671:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
    c676:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    c67b:	f2 0f 10 55 e0       	movsd  -0x20(%rbp),%xmm2
    c680:	f2 0f 10 0d a8 52 ff 	movsd  -0xad58(%rip),%xmm1        # 1930 <_IO_stdin_used+0x30>
    c687:	ff 
    c688:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    c68d:	f2 0f 59 4d a8       	mulsd  -0x58(%rbp),%xmm1
    c692:	66 48 0f 7e c8       	movq   %xmm1,%rax
    c697:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c69e:	00 00 80 
    c6a1:	48 31 c8             	xor    %rcx,%rax
    c6a4:	66 48 0f 6e c8       	movq   %rax,%xmm1
    c6a9:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    c6ad:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    c6b1:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
    c6b8:	ff 
    c6b9:	0f 57 c0             	xorps  %xmm0,%xmm0
    c6bc:	66 0f 2e 85 70 ff ff 	ucomisd -0x90(%rbp),%xmm0
    c6c3:	ff 
    c6c4:	0f 86 0f 00 00 00    	jbe    c6d9 <_ZN6Sphere15getIntersectionE3Ray+0x1c9>
    c6ca:	e8 d1 bb ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    c6cf:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    c6d4:	e9 0d 01 00 00       	jmpq   c7e6 <_ZN6Sphere15getIntersectionE3Ray+0x2d6>
    c6d9:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
    c6e0:	ff 
    c6e1:	e8 0a 37 00 00       	callq  fdf0 <sqrt@plt>
    c6e6:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    c6ed:	ff 
    c6ee:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    c6f3:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c6f8:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c6ff:	00 00 80 
    c702:	48 31 c8             	xor    %rcx,%rax
    c705:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c70a:	f2 0f 5c 85 68 ff ff 	subsd  -0x98(%rbp),%xmm0
    c711:	ff 
    c712:	f2 0f 10 0d 06 52 ff 	movsd  -0xadfa(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    c719:	ff 
    c71a:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    c71f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c723:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    c72a:	ff 
    c72b:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    c730:	66 48 0f 7e c0       	movq   %xmm0,%rax
    c735:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    c73c:	00 00 80 
    c73f:	48 31 c8             	xor    %rcx,%rax
    c742:	66 48 0f 6e c0       	movq   %rax,%xmm0
    c747:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
    c74e:	ff 
    c74f:	f2 0f 10 0d c9 51 ff 	movsd  -0xae37(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    c756:	ff 
    c757:	f2 0f 59 4d e8       	mulsd  -0x18(%rbp),%xmm1
    c75c:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c760:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
    c767:	ff 
    c768:	f2 0f 10 85 60 ff ff 	movsd  -0xa0(%rbp),%xmm0
    c76f:	ff 
    c770:	0f 57 c9             	xorps  %xmm1,%xmm1
    c773:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c777:	0f 86 15 00 00 00    	jbe    c792 <_ZN6Sphere15getIntersectionE3Ray+0x282>
    c77d:	f2 0f 10 85 60 ff ff 	movsd  -0xa0(%rbp),%xmm0
    c784:	ff 
    c785:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    c78c:	ff 
    c78d:	e9 47 00 00 00       	jmpq   c7d9 <_ZN6Sphere15getIntersectionE3Ray+0x2c9>
    c792:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
    c799:	ff 
    c79a:	0f 57 c9             	xorps  %xmm1,%xmm1
    c79d:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    c7a1:	0f 86 15 00 00 00    	jbe    c7bc <_ZN6Sphere15getIntersectionE3Ray+0x2ac>
    c7a7:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
    c7ae:	ff 
    c7af:	f2 0f 11 85 30 ff ff 	movsd  %xmm0,-0xd0(%rbp)
    c7b6:	ff 
    c7b7:	e9 0d 00 00 00       	jmpq   c7c9 <_ZN6Sphere15getIntersectionE3Ray+0x2b9>
    c7bc:	e8 df ba ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    c7c1:	f2 0f 11 85 30 ff ff 	movsd  %xmm0,-0xd0(%rbp)
    c7c8:	ff 
    c7c9:	f2 0f 10 85 30 ff ff 	movsd  -0xd0(%rbp),%xmm0
    c7d0:	ff 
    c7d1:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
    c7d8:	ff 
    c7d9:	f2 0f 10 85 38 ff ff 	movsd  -0xc8(%rbp),%xmm0
    c7e0:	ff 
    c7e1:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    c7e6:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    c7eb:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
    c7f2:	5d                   	pop    %rbp
    c7f3:	c3                   	retq   
    c7f4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    c7fb:	00 00 00 00 00 

000000000000c800 <_ZN6Sphere4moveEv>:
    c800:	55                   	push   %rbp
    c801:	48 89 e5             	mov    %rsp,%rbp
    c804:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    c808:	5d                   	pop    %rbp
    c809:	c3                   	retq   
    c80a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000c810 <_ZN6Sphere10reversibleEv>:
    c810:	55                   	push   %rbp
    c811:	48 89 e5             	mov    %rsp,%rbp
    c814:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    c818:	31 c0                	xor    %eax,%eax
    c81a:	0f b6 c0             	movzbl %al,%eax
    c81d:	5d                   	pop    %rbp
    c81e:	c3                   	retq   
    c81f:	90                   	nop

000000000000c820 <_ZN6Sphere8getColorEPhPdS1_S1_P8Autonoma3Rayj>:
    c820:	55                   	push   %rbp
    c821:	48 89 e5             	mov    %rsp,%rbp
    c824:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
    c82b:	48 89 c8             	mov    %rcx,%rax
    c82e:	8b 4d 40             	mov    0x40(%rbp),%ecx
    c831:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
    c835:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    c839:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    c83d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    c841:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    c845:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
    c849:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
    c84d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    c851:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    c855:	f2 0f 10 40 58       	movsd  0x58(%rax),%xmm0
    c85a:	f2 0f 5c 41 08       	subsd  0x8(%rcx),%xmm0
    c85f:	f2 0f 58 80 a8 00 00 	addsd  0xa8(%rax),%xmm0
    c866:	00 
    c867:	f2 0f 10 0d b1 50 ff 	movsd  -0xaf4f(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    c86e:	ff 
    c86f:	f2 0f 59 88 a8 00 00 	mulsd  0xa8(%rax),%xmm1
    c876:	00 
    c877:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c87b:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    c880:	f2 0f 10 41 10       	movsd  0x10(%rcx),%xmm0
    c885:	f2 0f 5c 40 60       	subsd  0x60(%rax),%xmm0
    c88a:	f2 0f 10 09          	movsd  (%rcx),%xmm1
    c88e:	f2 0f 5c 48 50       	subsd  0x50(%rax),%xmm1
    c893:	e8 48 35 00 00       	callq  fde0 <atan2@plt>
    c898:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    c89c:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    c8a1:	48 8b 48 68          	mov    0x68(%rax),%rcx
    c8a5:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    c8a9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    c8ad:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    c8b1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    c8b5:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    c8b9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    c8bd:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    c8c1:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    c8c5:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    c8c9:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    c8ce:	f2 0f 58 45 c0       	addsd  -0x40(%rbp),%xmm0
    c8d3:	f2 0f 10 0d 8d 50 ff 	movsd  -0xaf73(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    c8da:	ff 
    c8db:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c8df:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    c8e4:	e8 f7 30 00 00       	callq  f9e0 <_Z3fixd>
    c8e9:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    c8ed:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
    c8f2:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    c8f7:	f2 0f 10 0d 69 50 ff 	movsd  -0xaf97(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    c8fe:	ff 
    c8ff:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    c903:	f2 0f 5c 45 c8       	subsd  -0x38(%rbp),%xmm0
    c908:	f2 0f 5e 40 78       	divsd  0x78(%rax),%xmm0
    c90d:	e8 ce 30 00 00       	callq  f9e0 <_Z3fixd>
    c912:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
    c916:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
    c91a:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    c91e:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    c922:	4c 8b 45 b0          	mov    -0x50(%rbp),%r8
    c926:	0f 28 c8             	movaps %xmm0,%xmm1
    c929:	f2 0f 10 45 b8       	movsd  -0x48(%rbp),%xmm0
    c92e:	48 8b 07             	mov    (%rdi),%rax
    c931:	ff 10                	callq  *(%rax)
    c933:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
    c93a:	5d                   	pop    %rbp
    c93b:	c3                   	retq   
    c93c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000c940 <_ZN6Sphere9getNormalE6Vector>:
    c940:	55                   	push   %rbp
    c941:	48 89 e5             	mov    %rsp,%rbp
    c944:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
    c94b:	48 89 f0             	mov    %rsi,%rax
    c94e:	48 89 bd 70 fe ff ff 	mov    %rdi,-0x190(%rbp)
    c955:	48 89 bd 78 fe ff ff 	mov    %rdi,-0x188(%rbp)
    c95c:	48 8d 75 10          	lea    0x10(%rbp),%rsi
    c960:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
    c967:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    c96b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    c96f:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    c976:	48 8b 48 50          	mov    0x50(%rax),%rcx
    c97a:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    c97e:	48 8b 48 58          	mov    0x58(%rax),%rcx
    c982:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    c986:	48 8b 40 60          	mov    0x60(%rax),%rax
    c98a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    c98e:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
    c992:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    c996:	48 8b 08             	mov    (%rax),%rcx
    c999:	48 89 0c 24          	mov    %rcx,(%rsp)
    c99d:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c9a1:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    c9a6:	48 8b 40 10          	mov    0x10(%rax),%rax
    c9aa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    c9af:	e8 4c 18 00 00       	callq  e200 <_ZN6VectormiES_>
    c9b4:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    c9bb:	48 83 b8 a0 00 00 00 	cmpq   $0x0,0xa0(%rax)
    c9c2:	00 
    c9c3:	0f 85 23 00 00 00    	jne    c9ec <_ZN6Sphere9getNormalE6Vector+0xac>
    c9c9:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    c9d0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    c9d4:	48 89 08             	mov    %rcx,(%rax)
    c9d7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    c9db:	48 89 48 08          	mov    %rcx,0x8(%rax)
    c9df:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    c9e3:	48 89 48 10          	mov    %rcx,0x10(%rax)
    c9e7:	e9 24 03 00 00       	jmpq   cd10 <_ZN6Sphere9getNormalE6Vector+0x3d0>
    c9ec:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    c9f3:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
    c9fa:	f2 0f 10 40 58       	movsd  0x58(%rax),%xmm0
    c9ff:	f2 0f 5c 41 08       	subsd  0x8(%rcx),%xmm0
    ca04:	f2 0f 58 80 a8 00 00 	addsd  0xa8(%rax),%xmm0
    ca0b:	00 
    ca0c:	f2 0f 10 0d 0c 4f ff 	movsd  -0xb0f4(%rip),%xmm1        # 1920 <_IO_stdin_used+0x20>
    ca13:	ff 
    ca14:	f2 0f 59 88 a8 00 00 	mulsd  0xa8(%rax),%xmm1
    ca1b:	00 
    ca1c:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    ca20:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    ca25:	f2 0f 10 41 10       	movsd  0x10(%rcx),%xmm0
    ca2a:	f2 0f 5c 40 60       	subsd  0x60(%rax),%xmm0
    ca2f:	f2 0f 10 09          	movsd  (%rcx),%xmm1
    ca33:	f2 0f 5c 48 50       	subsd  0x50(%rax),%xmm1
    ca38:	e8 a3 33 00 00       	callq  fde0 <atan2@plt>
    ca3d:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
    ca42:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
    ca46:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    ca4a:	e8 01 1c 00 00       	callq  e650 <_ZN6Vector9normalizeEv>
    ca4f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    ca53:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    ca57:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    ca5b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    ca5f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    ca63:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    ca67:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    ca6c:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
    ca71:	f2 0f 10 55 e8       	movsd  -0x18(%rbp),%xmm2
    ca76:	66 48 0f 7e d0       	movq   %xmm2,%rax
    ca7b:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    ca82:	00 00 80 
    ca85:	48 31 c8             	xor    %rcx,%rax
    ca88:	66 48 0f 6e d0       	movq   %rax,%xmm2
    ca8d:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    ca91:	e8 ca 14 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    ca96:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    ca9b:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
    caa0:	f2 0f 10 55 e0       	movsd  -0x20(%rbp),%xmm2
    caa5:	66 48 0f 7e d0       	movq   %xmm2,%rax
    caaa:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    cab1:	00 00 80 
    cab4:	48 31 c8             	xor    %rcx,%rax
    cab7:	66 48 0f 6e d0       	movq   %rax,%xmm2
    cabc:	48 8d bd 70 ff ff ff 	lea    -0x90(%rbp),%rdi
    cac3:	e8 98 14 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    cac8:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    cacf:	48 8b 88 a0 00 00 00 	mov    0xa0(%rax),%rcx
    cad6:	48 89 8d 58 fe ff ff 	mov    %rcx,-0x1a8(%rbp)
    cadd:	48 8d 8d 55 ff ff ff 	lea    -0xab(%rbp),%rcx
    cae4:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
    caeb:	f2 0f 10 80 90 00 00 	movsd  0x90(%rax),%xmm0
    caf2:	00 
    caf3:	f2 0f 58 80 90 00 00 	addsd  0x90(%rax),%xmm0
    cafa:	00 
    cafb:	f2 0f 58 45 b8       	addsd  -0x48(%rbp),%xmm0
    cb00:	f2 0f 10 0d 60 4e ff 	movsd  -0xb1a0(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    cb07:	ff 
    cb08:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    cb0c:	f2 0f 5e 80 80 00 00 	divsd  0x80(%rax),%xmm0
    cb13:	00 
    cb14:	e8 c7 2e 00 00       	callq  f9e0 <_Z3fixd>
    cb19:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    cb20:	f2 0f 11 85 68 fe ff 	movsd  %xmm0,-0x198(%rbp)
    cb27:	ff 
    cb28:	f2 0f 10 80 98 00 00 	movsd  0x98(%rax),%xmm0
    cb2f:	00 
    cb30:	f2 0f 58 80 98 00 00 	addsd  0x98(%rax),%xmm0
    cb37:	00 
    cb38:	f2 0f 10 0d 28 4e ff 	movsd  -0xb1d8(%rip),%xmm1        # 1968 <_IO_stdin_used+0x68>
    cb3f:	ff 
    cb40:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    cb44:	f2 0f 5c 45 c0       	subsd  -0x40(%rbp),%xmm0
    cb49:	f2 0f 5e 80 88 00 00 	divsd  0x88(%rax),%xmm0
    cb50:	00 
    cb51:	e8 8a 2e 00 00       	callq  f9e0 <_Z3fixd>
    cb56:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
    cb5d:	48 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%rsi
    cb64:	0f 28 c8             	movaps %xmm0,%xmm1
    cb67:	f2 0f 10 85 68 fe ff 	movsd  -0x198(%rbp),%xmm0
    cb6e:	ff 
    cb6f:	48 8b 07             	mov    (%rdi),%rax
    cb72:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    cb79:	48 8d 8d 58 ff ff ff 	lea    -0xa8(%rbp),%rcx
    cb80:	4c 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%r8
    cb87:	ff 10                	callq  *(%rax)
    cb89:	0f b6 b5 55 ff ff ff 	movzbl -0xab(%rbp),%esi
    cb90:	81 ee 80 00 00 00    	sub    $0x80,%esi
    cb96:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    cb9a:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    cba1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    cba5:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
    cbac:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    cbb0:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    cbb7:	48 8d bd 08 ff ff ff 	lea    -0xf8(%rbp),%rdi
    cbbe:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    cbc5:	48 8b 08             	mov    (%rax),%rcx
    cbc8:	48 89 0c 24          	mov    %rcx,(%rsp)
    cbcc:	48 8b 48 08          	mov    0x8(%rax),%rcx
    cbd0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    cbd5:	48 8b 40 10          	mov    0x10(%rax),%rax
    cbd9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    cbde:	e8 8d e6 ff ff       	callq  b270 <_Zmli6Vector>
    cbe3:	0f b6 b5 56 ff ff ff 	movzbl -0xaa(%rbp),%esi
    cbea:	81 ee 80 00 00 00    	sub    $0x80,%esi
    cbf0:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    cbf7:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
    cbfe:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    cc05:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
    cc0c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    cc10:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
    cc17:	48 8d bd d8 fe ff ff 	lea    -0x128(%rbp),%rdi
    cc1e:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
    cc25:	48 8b 08             	mov    (%rax),%rcx
    cc28:	48 89 0c 24          	mov    %rcx,(%rsp)
    cc2c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    cc30:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    cc35:	48 8b 40 10          	mov    0x10(%rax),%rax
    cc39:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    cc3e:	e8 2d e6 ff ff       	callq  b270 <_Zmli6Vector>
    cc43:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
    cc4a:	48 8d b5 08 ff ff ff 	lea    -0xf8(%rbp),%rsi
    cc51:	48 8d 85 d8 fe ff ff 	lea    -0x128(%rbp),%rax
    cc58:	48 8b 08             	mov    (%rax),%rcx
    cc5b:	48 89 0c 24          	mov    %rcx,(%rsp)
    cc5f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    cc63:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    cc68:	48 8b 40 10          	mov    0x10(%rax),%rax
    cc6c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    cc71:	e8 da 15 00 00       	callq  e250 <_ZN6VectorplES_>
    cc76:	0f b6 b5 57 ff ff ff 	movzbl -0xa9(%rbp),%esi
    cc7d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    cc81:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    cc88:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    cc8c:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    cc93:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    cc97:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    cc9e:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    cca5:	48 8d 85 90 fe ff ff 	lea    -0x170(%rbp),%rax
    ccac:	48 8b 08             	mov    (%rax),%rcx
    ccaf:	48 89 0c 24          	mov    %rcx,(%rsp)
    ccb3:	48 8b 48 08          	mov    0x8(%rax),%rcx
    ccb7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    ccbc:	48 8b 40 10          	mov    0x10(%rax),%rax
    ccc0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    ccc5:	e8 a6 e5 ff ff       	callq  b270 <_Zmli6Vector>
    ccca:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
    ccd1:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
    ccd8:	48 8d 85 a8 fe ff ff 	lea    -0x158(%rbp),%rax
    ccdf:	48 8b 08             	mov    (%rax),%rcx
    cce2:	48 89 0c 24          	mov    %rcx,(%rsp)
    cce6:	48 8b 48 08          	mov    0x8(%rax),%rcx
    ccea:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    ccef:	48 8b 40 10          	mov    0x10(%rax),%rax
    ccf3:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    ccf8:	e8 53 15 00 00       	callq  e250 <_ZN6VectorplES_>
    ccfd:	48 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%rdi
    cd04:	48 8d b5 38 ff ff ff 	lea    -0xc8(%rbp),%rsi
    cd0b:	e8 40 19 00 00       	callq  e650 <_ZN6Vector9normalizeEv>
    cd10:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    cd17:	48 81 c4 c0 01 00 00 	add    $0x1c0,%rsp
    cd1e:	5d                   	pop    %rbp
    cd1f:	c3                   	retq   

000000000000cd20 <_ZN6Sphere9setAnglesEddd>:
    cd20:	55                   	push   %rbp
    cd21:	48 89 e5             	mov    %rsp,%rbp
    cd24:	48 83 ec 30          	sub    $0x30,%rsp
    cd28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    cd2c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    cd31:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
    cd36:	f2 0f 11 55 e0       	movsd  %xmm2,-0x20(%rbp)
    cd3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    cd3f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    cd43:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    cd48:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    cd4d:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    cd52:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    cd57:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    cd5c:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    cd61:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    cd66:	e8 f5 2f 00 00       	callq  fd60 <cos@plt>
    cd6b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    cd6f:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    cd74:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    cd79:	e8 d2 2f 00 00       	callq  fd50 <sin@plt>
    cd7e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    cd82:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    cd87:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    cd8c:	e8 cf 2f 00 00       	callq  fd60 <cos@plt>
    cd91:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    cd95:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    cd9a:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    cd9f:	e8 ac 2f 00 00       	callq  fd50 <sin@plt>
    cda4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    cda8:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    cdad:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    cdb2:	e8 a9 2f 00 00       	callq  fd60 <cos@plt>
    cdb7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    cdbb:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    cdc0:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    cdc5:	e8 86 2f 00 00       	callq  fd50 <sin@plt>
    cdca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    cdce:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    cdd3:	48 83 c4 30          	add    $0x30,%rsp
    cdd7:	5d                   	pop    %rbp
    cdd8:	c3                   	retq   
    cdd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000cde0 <_ZN6Sphere6setYawEd>:
    cde0:	55                   	push   %rbp
    cde1:	48 89 e5             	mov    %rsp,%rbp
    cde4:	48 83 ec 20          	sub    $0x20,%rsp
    cde8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    cdec:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    cdf1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    cdf5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    cdf9:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    cdfe:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    ce03:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    ce08:	e8 53 2f 00 00       	callq  fd60 <cos@plt>
    ce0d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ce11:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    ce16:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    ce1b:	e8 30 2f 00 00       	callq  fd50 <sin@plt>
    ce20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ce24:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    ce29:	48 83 c4 20          	add    $0x20,%rsp
    ce2d:	5d                   	pop    %rbp
    ce2e:	c3                   	retq   
    ce2f:	90                   	nop

000000000000ce30 <_ZN6Sphere8setPitchEd>:
    ce30:	55                   	push   %rbp
    ce31:	48 89 e5             	mov    %rsp,%rbp
    ce34:	48 83 ec 20          	sub    $0x20,%rsp
    ce38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ce3c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    ce41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ce45:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    ce49:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    ce4e:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    ce53:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    ce58:	e8 03 2f 00 00       	callq  fd60 <cos@plt>
    ce5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ce61:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    ce66:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    ce6b:	e8 e0 2e 00 00       	callq  fd50 <sin@plt>
    ce70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ce74:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    ce79:	48 83 c4 20          	add    $0x20,%rsp
    ce7d:	5d                   	pop    %rbp
    ce7e:	c3                   	retq   
    ce7f:	90                   	nop

000000000000ce80 <_ZN6Sphere7setRollEd>:
    ce80:	55                   	push   %rbp
    ce81:	48 89 e5             	mov    %rsp,%rbp
    ce84:	48 83 ec 20          	sub    $0x20,%rsp
    ce88:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ce8c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    ce91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ce95:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    ce99:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    ce9e:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    cea3:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    cea8:	e8 b3 2e 00 00       	callq  fd60 <cos@plt>
    cead:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ceb1:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    ceb6:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    cebb:	e8 90 2e 00 00       	callq  fd50 <sin@plt>
    cec0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    cec4:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    cec9:	48 83 c4 20          	add    $0x20,%rsp
    cecd:	5d                   	pop    %rbp
    cece:	c3                   	retq   
    cecf:	cc                   	int3   

000000000000ced0 <_ZN8TriangleC1E6VectorS0_S0_P7Texture>:
    ced0:	55                   	push   %rbp
    ced1:	48 89 e5             	mov    %rsp,%rbp
    ced4:	48 81 ec 30 02 00 00 	sub    $0x230,%rsp
    cedb:	48 8d 45 40          	lea    0x40(%rbp),%rax
    cedf:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    cee6:	48 8d 45 28          	lea    0x28(%rbp),%rax
    ceea:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    cef1:	48 8d 45 10          	lea    0x10(%rbp),%rax
    cef5:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    cefc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    cf00:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    cf04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    cf08:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    cf0f:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    cf13:	0f 57 d2             	xorps  %xmm2,%xmm2
    cf16:	0f 28 c2             	movaps %xmm2,%xmm0
    cf19:	0f 28 ca             	movaps %xmm2,%xmm1
    cf1c:	e8 3f 10 00 00       	callq  df60 <_ZN6VectorC1Eddd>
    cf21:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
    cf28:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    cf2c:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
    cf30:	0f 57 e4             	xorps  %xmm4,%xmm4
    cf33:	0f 28 c4             	movaps %xmm4,%xmm0
    cf36:	0f 28 cc             	movaps %xmm4,%xmm1
    cf39:	0f 28 d4             	movaps %xmm4,%xmm2
    cf3c:	0f 28 dc             	movaps %xmm4,%xmm3
    cf3f:	e8 5c cd ff ff       	callq  9ca0 <_ZN5PlaneC1ERK6VectorP7Textureddddd>
    cf44:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    cf4b:	48 8b b5 40 fe ff ff 	mov    -0x1c0(%rbp),%rsi
    cf52:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
    cf59:	48 8d 15 78 41 00 00 	lea    0x4178(%rip),%rdx        # 110d8 <_ZTV8Triangle>
    cf60:	48 83 c2 10          	add    $0x10,%rdx
    cf64:	48 89 11             	mov    %rdx,(%rcx)
    cf67:	48 8b 10             	mov    (%rax),%rdx
    cf6a:	48 89 51 50          	mov    %rdx,0x50(%rcx)
    cf6e:	48 8b 50 08          	mov    0x8(%rax),%rdx
    cf72:	48 89 51 58          	mov    %rdx,0x58(%rcx)
    cf76:	48 8b 50 10          	mov    0x10(%rax),%rdx
    cf7a:	48 89 51 60          	mov    %rdx,0x60(%rcx)
    cf7e:	48 8b 08             	mov    (%rax),%rcx
    cf81:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    cf85:	48 8b 48 08          	mov    0x8(%rax),%rcx
    cf89:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    cf8d:	48 8b 40 10          	mov    0x10(%rax),%rax
    cf91:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    cf95:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
    cf99:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    cf9d:	48 8b 08             	mov    (%rax),%rcx
    cfa0:	48 89 0c 24          	mov    %rcx,(%rsp)
    cfa4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    cfa8:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    cfad:	48 8b 40 10          	mov    0x10(%rax),%rax
    cfb1:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    cfb6:	e8 45 12 00 00       	callq  e200 <_ZN6VectormiES_>
    cfbb:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
    cfbf:	e8 fc 15 00 00       	callq  e5c0 <_ZN6Vector3magEv>
    cfc4:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    cfcb:	f2 0f 11 40 70       	movsd  %xmm0,0x70(%rax)
    cfd0:	f2 0f 10 40 70       	movsd  0x70(%rax),%xmm0
    cfd5:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    cfd9:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
    cfdd:	e8 ce 13 00 00       	callq  e3b0 <_ZN6VectordvEd>
    cfe2:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    cfe9:	48 8b b5 40 fe ff ff 	mov    -0x1c0(%rbp),%rsi
    cff0:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
    cff7:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    cffb:	48 89 91 c0 00 00 00 	mov    %rdx,0xc0(%rcx)
    d002:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    d006:	48 89 91 c8 00 00 00 	mov    %rdx,0xc8(%rcx)
    d00d:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    d011:	48 89 91 d0 00 00 00 	mov    %rdx,0xd0(%rcx)
    d018:	48 81 c1 c0 00 00 00 	add    $0xc0,%rcx
    d01f:	48 89 8d 48 fe ff ff 	mov    %rcx,-0x1b8(%rbp)
    d026:	48 8b 08             	mov    (%rax),%rcx
    d029:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
    d030:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d034:	48 89 8d 38 ff ff ff 	mov    %rcx,-0xc8(%rbp)
    d03b:	48 8b 40 10          	mov    0x10(%rax),%rax
    d03f:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    d046:	48 8d bd 48 ff ff ff 	lea    -0xb8(%rbp),%rdi
    d04d:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    d054:	48 8b 08             	mov    (%rax),%rcx
    d057:	48 89 0c 24          	mov    %rcx,(%rsp)
    d05b:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d05f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d064:	48 8b 40 10          	mov    0x10(%rax),%rax
    d068:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d06d:	e8 8e 11 00 00       	callq  e200 <_ZN6VectormiES_>
    d072:	48 8b b5 48 fe ff ff 	mov    -0x1b8(%rbp),%rsi
    d079:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
    d080:	48 8d 85 48 ff ff ff 	lea    -0xb8(%rbp),%rax
    d087:	48 8b 08             	mov    (%rax),%rcx
    d08a:	48 89 0c 24          	mov    %rcx,(%rsp)
    d08e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d092:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d097:	48 8b 40 10          	mov    0x10(%rax),%rax
    d09b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d0a0:	e8 1b 14 00 00       	callq  e4c0 <_ZN6Vector5crossES_>
    d0a5:	48 8d bd 78 ff ff ff 	lea    -0x88(%rbp),%rdi
    d0ac:	48 8d b5 60 ff ff ff 	lea    -0xa0(%rbp),%rsi
    d0b3:	e8 98 15 00 00       	callq  e650 <_ZN6Vector9normalizeEv>
    d0b8:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d0bf:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
    d0c6:	48 89 88 a8 00 00 00 	mov    %rcx,0xa8(%rax)
    d0cd:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
    d0d1:	48 89 88 b0 00 00 00 	mov    %rcx,0xb0(%rax)
    d0d8:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
    d0dc:	48 89 88 b8 00 00 00 	mov    %rcx,0xb8(%rax)
    d0e3:	f2 0f 10 80 d0 00 00 	movsd  0xd0(%rax),%xmm0
    d0ea:	00 
    d0eb:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    d0f0:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    d0f7:	00 00 80 
    d0fa:	48 31 d1             	xor    %rdx,%rcx
    d0fd:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    d102:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    d107:	f2 0f 10 05 51 48 ff 	movsd  -0xb7af(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d10e:	ff 
    d10f:	66 0f 2e 40 20       	ucomisd 0x20(%rax),%xmm0
    d114:	0f 86 19 00 00 00    	jbe    d133 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x263>
    d11a:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d121:	f2 0f 10 05 37 48 ff 	movsd  -0xb7c9(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d128:	ff 
    d129:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    d12e:	e9 37 00 00 00       	jmpq   d16a <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x29a>
    d133:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d13a:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    d13f:	f2 0f 10 0d 01 48 ff 	movsd  -0xb7ff(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    d146:	ff 
    d147:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d14b:	0f 86 14 00 00 00    	jbe    d165 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x295>
    d151:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d158:	f2 0f 10 05 e8 47 ff 	movsd  -0xb818(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    d15f:	ff 
    d160:	f2 0f 11 40 20       	movsd  %xmm0,0x20(%rax)
    d165:	e9 00 00 00 00       	jmpq   d16a <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x29a>
    d16a:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d171:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    d176:	e8 85 2c 00 00       	callq  fe00 <asin@plt>
    d17b:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d182:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    d187:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    d18c:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    d191:	66 48 0f 7e c0       	movq   %xmm0,%rax
    d196:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    d19d:	00 00 80 
    d1a0:	48 31 c8             	xor    %rcx,%rax
    d1a3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    d1a8:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    d1ac:	f2 0f 10 0d 94 47 ff 	movsd  -0xb86c(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    d1b3:	ff 
    d1b4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    d1b8:	e8 33 2c 00 00       	callq  fdf0 <sqrt@plt>
    d1bd:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d1c4:	f2 0f 11 40 28       	movsd  %xmm0,0x28(%rax)
    d1c9:	f2 0f 10 80 c0 00 00 	movsd  0xc0(%rax),%xmm0
    d1d0:	00 
    d1d1:	f2 0f 5e 40 28       	divsd  0x28(%rax),%xmm0
    d1d6:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    d1db:	f2 0f 10 80 c8 00 00 	movsd  0xc8(%rax),%xmm0
    d1e2:	00 
    d1e3:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    d1e8:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    d1ef:	00 00 80 
    d1f2:	48 31 d1             	xor    %rdx,%rcx
    d1f5:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    d1fa:	f2 0f 5e 40 28       	divsd  0x28(%rax),%xmm0
    d1ff:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    d204:	f2 0f 10 05 54 47 ff 	movsd  -0xb8ac(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d20b:	ff 
    d20c:	66 0f 2e 40 40       	ucomisd 0x40(%rax),%xmm0
    d211:	0f 86 19 00 00 00    	jbe    d230 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x360>
    d217:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d21e:	f2 0f 10 05 3a 47 ff 	movsd  -0xb8c6(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d225:	ff 
    d226:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    d22b:	e9 37 00 00 00       	jmpq   d267 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x397>
    d230:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d237:	f2 0f 10 40 40       	movsd  0x40(%rax),%xmm0
    d23c:	f2 0f 10 0d 04 47 ff 	movsd  -0xb8fc(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    d243:	ff 
    d244:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d248:	0f 86 14 00 00 00    	jbe    d262 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x392>
    d24e:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d255:	f2 0f 10 05 eb 46 ff 	movsd  -0xb915(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    d25c:	ff 
    d25d:	f2 0f 11 40 40       	movsd  %xmm0,0x40(%rax)
    d262:	e9 00 00 00 00       	jmpq   d267 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x397>
    d267:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d26e:	f2 0f 10 05 ea 46 ff 	movsd  -0xb916(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d275:	ff 
    d276:	66 0f 2e 40 48       	ucomisd 0x48(%rax),%xmm0
    d27b:	0f 86 19 00 00 00    	jbe    d29a <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x3ca>
    d281:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d288:	f2 0f 10 05 d0 46 ff 	movsd  -0xb930(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d28f:	ff 
    d290:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    d295:	e9 37 00 00 00       	jmpq   d2d1 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x401>
    d29a:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d2a1:	f2 0f 10 40 48       	movsd  0x48(%rax),%xmm0
    d2a6:	f2 0f 10 0d 9a 46 ff 	movsd  -0xb966(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    d2ad:	ff 
    d2ae:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d2b2:	0f 86 14 00 00 00    	jbe    d2cc <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x3fc>
    d2b8:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d2bf:	f2 0f 10 05 81 46 ff 	movsd  -0xb97f(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    d2c6:	ff 
    d2c7:	f2 0f 11 40 48       	movsd  %xmm0,0x48(%rax)
    d2cc:	e9 00 00 00 00       	jmpq   d2d1 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x401>
    d2d1:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d2d8:	f2 0f 10 40 40       	movsd  0x40(%rax),%xmm0
    d2dd:	e8 1e 2b 00 00       	callq  fe00 <asin@plt>
    d2e2:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d2e9:	f2 0f 11 40 18       	movsd  %xmm0,0x18(%rax)
    d2ee:	f2 0f 10 80 b8 00 00 	movsd  0xb8(%rax),%xmm0
    d2f5:	00 
    d2f6:	f2 0f 5e 40 28       	divsd  0x28(%rax),%xmm0
    d2fb:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    d300:	f2 0f 10 05 58 46 ff 	movsd  -0xb9a8(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d307:	ff 
    d308:	66 0f 2e 40 38       	ucomisd 0x38(%rax),%xmm0
    d30d:	0f 86 19 00 00 00    	jbe    d32c <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x45c>
    d313:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d31a:	f2 0f 10 05 3e 46 ff 	movsd  -0xb9c2(%rip),%xmm0        # 1960 <_IO_stdin_used+0x60>
    d321:	ff 
    d322:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    d327:	e9 37 00 00 00       	jmpq   d363 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x493>
    d32c:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d333:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    d338:	f2 0f 10 0d 08 46 ff 	movsd  -0xb9f8(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    d33f:	ff 
    d340:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d344:	0f 86 14 00 00 00    	jbe    d35e <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x48e>
    d34a:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d351:	f2 0f 10 05 ef 45 ff 	movsd  -0xba11(%rip),%xmm0        # 1948 <_IO_stdin_used+0x48>
    d358:	ff 
    d359:	f2 0f 11 40 38       	movsd  %xmm0,0x38(%rax)
    d35e:	e9 00 00 00 00       	jmpq   d363 <_ZN8TriangleC1E6VectorS0_S0_P7Texture+0x493>
    d363:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d36a:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    d36f:	e8 9c 2a 00 00       	callq  fe10 <acos@plt>
    d374:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d37b:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    d380:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    d385:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    d38a:	66 48 0f 7e c0       	movq   %xmm0,%rax
    d38f:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    d396:	00 00 80 
    d399:	48 31 c8             	xor    %rcx,%rax
    d39c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    d3a1:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    d3a5:	f2 0f 10 0d 9b 45 ff 	movsd  -0xba65(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    d3ac:	ff 
    d3ad:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    d3b1:	e8 3a 2a 00 00       	callq  fdf0 <sqrt@plt>
    d3b6:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d3bd:	f2 0f 11 40 30       	movsd  %xmm0,0x30(%rax)
    d3c2:	f2 0f 10 40 20       	movsd  0x20(%rax),%xmm0
    d3c7:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    d3cc:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    d3d3:	00 00 80 
    d3d6:	48 31 d1             	xor    %rdx,%rcx
    d3d9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    d3de:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    d3e3:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    d3e8:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    d3ed:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    d3f2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    d3f6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    d3fa:	f2 0f 11 80 d8 00 00 	movsd  %xmm0,0xd8(%rax)
    d401:	00 
    d402:	f2 0f 10 40 38       	movsd  0x38(%rax),%xmm0
    d407:	f2 0f 10 50 48       	movsd  0x48(%rax),%xmm2
    d40c:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    d411:	f2 0f 59 48 30       	mulsd  0x30(%rax),%xmm1
    d416:	f2 0f 59 48 40       	mulsd  0x40(%rax),%xmm1
    d41b:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    d41f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    d423:	f2 0f 11 80 e0 00 00 	movsd  %xmm0,0xe0(%rax)
    d42a:	00 
    d42b:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    d430:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    d435:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    d43c:	00 00 80 
    d43f:	48 31 d1             	xor    %rdx,%rcx
    d442:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    d447:	f2 0f 59 40 30       	mulsd  0x30(%rax),%xmm0
    d44c:	f2 0f 11 80 e8 00 00 	movsd  %xmm0,0xe8(%rax)
    d453:	00 
    d454:	48 89 c6             	mov    %rax,%rsi
    d457:	48 81 c6 a8 00 00 00 	add    $0xa8,%rsi
    d45e:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    d465:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
    d46c:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    d473:	48 89 8d 08 ff ff ff 	mov    %rcx,-0xf8(%rbp)
    d47a:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    d481:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    d488:	48 8d bd 18 ff ff ff 	lea    -0xe8(%rbp),%rdi
    d48f:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    d496:	48 8b 08             	mov    (%rax),%rcx
    d499:	48 89 0c 24          	mov    %rcx,(%rsp)
    d49d:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d4a1:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d4a6:	48 8b 40 10          	mov    0x10(%rax),%rax
    d4aa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d4af:	e8 0c 10 00 00       	callq  e4c0 <_ZN6Vector5crossES_>
    d4b4:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    d4bb:	48 8b b5 38 fe ff ff 	mov    -0x1c8(%rbp),%rsi
    d4c2:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
    d4c9:	48 8b 91 c0 00 00 00 	mov    0xc0(%rcx),%rdx
    d4d0:	48 89 95 d0 fe ff ff 	mov    %rdx,-0x130(%rbp)
    d4d7:	48 8b 91 c8 00 00 00 	mov    0xc8(%rcx),%rdx
    d4de:	48 89 95 d8 fe ff ff 	mov    %rdx,-0x128(%rbp)
    d4e5:	48 8b 91 d0 00 00 00 	mov    0xd0(%rcx),%rdx
    d4ec:	48 89 95 e0 fe ff ff 	mov    %rdx,-0x120(%rbp)
    d4f3:	48 8b 91 d8 00 00 00 	mov    0xd8(%rcx),%rdx
    d4fa:	48 89 95 b8 fe ff ff 	mov    %rdx,-0x148(%rbp)
    d501:	48 8b 91 e0 00 00 00 	mov    0xe0(%rcx),%rdx
    d508:	48 89 95 c0 fe ff ff 	mov    %rdx,-0x140(%rbp)
    d50f:	48 8b 91 e8 00 00 00 	mov    0xe8(%rcx),%rdx
    d516:	48 89 95 c8 fe ff ff 	mov    %rdx,-0x138(%rbp)
    d51d:	48 8b 91 a8 00 00 00 	mov    0xa8(%rcx),%rdx
    d524:	48 89 95 a0 fe ff ff 	mov    %rdx,-0x160(%rbp)
    d52b:	48 8b 91 b0 00 00 00 	mov    0xb0(%rcx),%rdx
    d532:	48 89 95 a8 fe ff ff 	mov    %rdx,-0x158(%rbp)
    d539:	48 8b 89 b8 00 00 00 	mov    0xb8(%rcx),%rcx
    d540:	48 89 8d b0 fe ff ff 	mov    %rcx,-0x150(%rbp)
    d547:	48 8b 08             	mov    (%rax),%rcx
    d54a:	48 89 8d 70 fe ff ff 	mov    %rcx,-0x190(%rbp)
    d551:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d555:	48 89 8d 78 fe ff ff 	mov    %rcx,-0x188(%rbp)
    d55c:	48 8b 40 10          	mov    0x10(%rax),%rax
    d560:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    d567:	48 8d bd 88 fe ff ff 	lea    -0x178(%rbp),%rdi
    d56e:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
    d575:	48 8b 08             	mov    (%rax),%rcx
    d578:	48 89 0c 24          	mov    %rcx,(%rsp)
    d57c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d580:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d585:	48 8b 40 10          	mov    0x10(%rax),%rax
    d589:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d58e:	e8 6d 0c 00 00       	callq  e200 <_ZN6VectormiES_>
    d593:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    d59a:	48 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%rsi
    d5a1:	48 8d 95 b8 fe ff ff 	lea    -0x148(%rbp),%rdx
    d5a8:	48 8d 8d a0 fe ff ff 	lea    -0x160(%rbp),%rcx
    d5af:	48 8d 85 88 fe ff ff 	lea    -0x178(%rbp),%rax
    d5b6:	4c 8b 06             	mov    (%rsi),%r8
    d5b9:	4c 89 04 24          	mov    %r8,(%rsp)
    d5bd:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    d5c1:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    d5c6:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    d5ca:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    d5cf:	48 8b 32             	mov    (%rdx),%rsi
    d5d2:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    d5d7:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    d5db:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    d5e0:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    d5e4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    d5e9:	48 8b 11             	mov    (%rcx),%rdx
    d5ec:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    d5f1:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    d5f5:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    d5fa:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    d5fe:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    d603:	48 8b 08             	mov    (%rax),%rcx
    d606:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    d60b:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d60f:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    d614:	48 8b 40 10          	mov    0x10(%rax),%rax
    d618:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    d61d:	e8 8e 10 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    d622:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d629:	f2 0f 10 85 f0 fe ff 	movsd  -0x110(%rbp),%xmm0
    d630:	ff 
    d631:	f2 0f 11 40 78       	movsd  %xmm0,0x78(%rax)
    d636:	f2 0f 10 85 e8 fe ff 	movsd  -0x118(%rbp),%xmm0
    d63d:	ff 
    d63e:	f2 0f 11 80 f8 00 00 	movsd  %xmm0,0xf8(%rax)
    d645:	00 
    d646:	48 89 c7             	mov    %rax,%rdi
    d649:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    d650:	48 8b 48 50          	mov    0x50(%rax),%rcx
    d654:	48 89 8d 58 fe ff ff 	mov    %rcx,-0x1a8(%rbp)
    d65b:	48 8b 48 58          	mov    0x58(%rax),%rcx
    d65f:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
    d666:	48 8b 40 60          	mov    0x60(%rax),%rax
    d66a:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    d671:	48 8d 85 58 fe ff ff 	lea    -0x1a8(%rbp),%rax
    d678:	48 8b 08             	mov    (%rax),%rcx
    d67b:	48 89 0c 24          	mov    %rcx,(%rsp)
    d67f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d683:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d688:	48 8b 40 10          	mov    0x10(%rax),%rax
    d68c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d691:	e8 7a 0f 00 00       	callq  e610 <_ZN6Vector3dotES_>
    d696:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    d69d:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    d6a2:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    d6a9:	00 00 80 
    d6ac:	48 31 d1             	xor    %rdx,%rcx
    d6af:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    d6b4:	f2 0f 11 80 f0 00 00 	movsd  %xmm0,0xf0(%rax)
    d6bb:	00 
    d6bc:	48 81 c4 30 02 00 00 	add    $0x230,%rsp
    d6c3:	5d                   	pop    %rbp
    d6c4:	c3                   	retq   
    d6c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    d6cc:	00 00 00 00 

000000000000d6d0 <_ZN8Triangle15getIntersectionE3Ray>:
    d6d0:	55                   	push   %rbp
    d6d1:	48 89 e5             	mov    %rsp,%rbp
    d6d4:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
    d6db:	48 8d 75 10          	lea    0x10(%rbp),%rsi
    d6df:	48 89 b5 d8 fe ff ff 	mov    %rsi,-0x128(%rbp)
    d6e6:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    d6ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    d6ee:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    d6f5:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
    d6f9:	ba 30 00 00 00       	mov    $0x30,%edx
    d6fe:	e8 bd 26 00 00       	callq  fdc0 <memcpy@plt>
    d703:	48 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%rdi
    d70a:	0f 10 45 b8          	movups -0x48(%rbp),%xmm0
    d70e:	0f 10 4d c8          	movups -0x38(%rbp),%xmm1
    d712:	0f 10 55 d8          	movups -0x28(%rbp),%xmm2
    d716:	48 89 e0             	mov    %rsp,%rax
    d719:	0f 11 50 20          	movups %xmm2,0x20(%rax)
    d71d:	0f 11 48 10          	movups %xmm1,0x10(%rax)
    d721:	0f 11 00             	movups %xmm0,(%rax)
    d724:	e8 07 cf ff ff       	callq  a630 <_ZN5Plane15getIntersectionE3Ray>
    d729:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    d72e:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    d733:	f2 0f 11 85 e8 fe ff 	movsd  %xmm0,-0x118(%rbp)
    d73a:	ff 
    d73b:	e8 60 ab ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    d740:	0f 28 c8             	movaps %xmm0,%xmm1
    d743:	f2 0f 10 85 e8 fe ff 	movsd  -0x118(%rbp),%xmm0
    d74a:	ff 
    d74b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d74f:	0f 85 15 00 00 00    	jne    d76a <_ZN8Triangle15getIntersectionE3Ray+0x9a>
    d755:	0f 8a 0f 00 00 00    	jp     d76a <_ZN8Triangle15getIntersectionE3Ray+0x9a>
    d75b:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    d760:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    d765:	e9 ab 02 00 00       	jmpq   da15 <_ZN8Triangle15getIntersectionE3Ray+0x345>
    d76a:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    d771:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    d778:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    d77f:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
    d783:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    d78a:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    d78e:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    d795:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    d799:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    d7a0:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    d7a7:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    d7ae:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    d7b5:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    d7bc:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    d7c0:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    d7c7:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    d7ce:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    d7d5:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    d7dc:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    d7e3:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    d7ea:	48 83 c6 18          	add    $0x18,%rsi
    d7ee:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    d7f3:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    d7fa:	e8 a1 0a 00 00       	callq  e2a0 <_ZN6VectormlEd>
    d7ff:	48 8b b5 d8 fe ff ff 	mov    -0x128(%rbp),%rsi
    d806:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    d80d:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    d814:	48 8b 08             	mov    (%rax),%rcx
    d817:	48 89 0c 24          	mov    %rcx,(%rsp)
    d81b:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d81f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d824:	48 8b 40 10          	mov    0x10(%rax),%rax
    d828:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d82d:	e8 1e 0a 00 00       	callq  e250 <_ZN6VectorplES_>
    d832:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    d839:	48 8b 48 50          	mov    0x50(%rax),%rcx
    d83d:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
    d844:	48 8b 48 58          	mov    0x58(%rax),%rcx
    d848:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
    d84f:	48 8b 40 60          	mov    0x60(%rax),%rax
    d853:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    d85a:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
    d861:	48 8d b5 28 ff ff ff 	lea    -0xd8(%rbp),%rsi
    d868:	48 8d 85 f8 fe ff ff 	lea    -0x108(%rbp),%rax
    d86f:	48 8b 08             	mov    (%rax),%rcx
    d872:	48 89 0c 24          	mov    %rcx,(%rsp)
    d876:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d87a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    d87f:	48 8b 40 10          	mov    0x10(%rax),%rax
    d883:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    d888:	e8 73 09 00 00       	callq  e200 <_ZN6VectormiES_>
    d88d:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
    d891:	48 8d 75 88          	lea    -0x78(%rbp),%rsi
    d895:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    d89c:	48 8d 8d 58 ff ff ff 	lea    -0xa8(%rbp),%rcx
    d8a3:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    d8aa:	4c 8b 06             	mov    (%rsi),%r8
    d8ad:	4c 89 04 24          	mov    %r8,(%rsp)
    d8b1:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    d8b5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    d8ba:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    d8be:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    d8c3:	48 8b 32             	mov    (%rdx),%rsi
    d8c6:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    d8cb:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    d8cf:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    d8d4:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    d8d8:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    d8dd:	48 8b 11             	mov    (%rcx),%rdx
    d8e0:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    d8e5:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    d8e9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    d8ee:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    d8f2:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    d8f7:	48 8b 08             	mov    (%rax),%rcx
    d8fa:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    d8ff:	48 8b 48 08          	mov    0x8(%rax),%rcx
    d903:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    d908:	48 8b 40 10          	mov    0x10(%rax),%rax
    d90c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    d911:	e8 9a 0d 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    d916:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
    d91d:	f2 0f 10 89 f8 00 00 	movsd  0xf8(%rcx),%xmm1
    d924:	00 
    d925:	f2 0f 5c 4d a0       	subsd  -0x60(%rbp),%xmm1
    d92a:	f2 0f 10 51 78       	movsd  0x78(%rcx),%xmm2
    d92f:	f2 0f 10 81 f8 00 00 	movsd  0xf8(%rcx),%xmm0
    d936:	00 
    d937:	f2 0f 5c 41 70       	subsd  0x70(%rcx),%xmm0
    d93c:	f2 0f 10 5d a8       	movsd  -0x58(%rbp),%xmm3
    d941:	f2 0f 5c 59 78       	subsd  0x78(%rcx),%xmm3
    d946:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    d94a:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    d94e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    d952:	0f 57 c0             	xorps  %xmm0,%xmm0
    d955:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d959:	0f 97 c0             	seta   %al
    d95c:	24 01                	and    $0x1,%al
    d95e:	88 85 f7 fe ff ff    	mov    %al,-0x109(%rbp)
    d964:	0f b6 85 f7 fe ff ff 	movzbl -0x109(%rbp),%eax
    d96b:	f2 0f 10 49 70       	movsd  0x70(%rcx),%xmm1
    d970:	f2 0f 59 4d a8       	mulsd  -0x58(%rbp),%xmm1
    d975:	0f 57 c0             	xorps  %xmm0,%xmm0
    d978:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d97c:	0f 97 c1             	seta   %cl
    d97f:	80 e1 01             	and    $0x1,%cl
    d982:	0f b6 c9             	movzbl %cl,%ecx
    d985:	39 c8                	cmp    %ecx,%eax
    d987:	0f 85 5c 00 00 00    	jne    d9e9 <_ZN8Triangle15getIntersectionE3Ray+0x319>
    d98d:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
    d994:	0f b6 85 f7 fe ff ff 	movzbl -0x109(%rbp),%eax
    d99b:	f2 0f 10 4d a0       	movsd  -0x60(%rbp),%xmm1
    d9a0:	f2 0f 10 51 78       	movsd  0x78(%rcx),%xmm2
    d9a5:	f2 0f 10 81 f8 00 00 	movsd  0xf8(%rcx),%xmm0
    d9ac:	00 
    d9ad:	f2 0f 59 45 a8       	mulsd  -0x58(%rbp),%xmm0
    d9b2:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    d9b7:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    d9be:	00 00 80 
    d9c1:	48 31 d1             	xor    %rdx,%rcx
    d9c4:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    d9c9:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    d9cd:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    d9d1:	0f 57 c0             	xorps  %xmm0,%xmm0
    d9d4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    d9d8:	0f 97 c1             	seta   %cl
    d9db:	80 e1 01             	and    $0x1,%cl
    d9de:	0f b6 c9             	movzbl %cl,%ecx
    d9e1:	39 c8                	cmp    %ecx,%eax
    d9e3:	0f 84 12 00 00 00    	je     d9fb <_ZN8Triangle15getIntersectionE3Ray+0x32b>
    d9e9:	e8 b2 a8 ff ff       	callq  82a0 <_ZNSt14numeric_limitsIdE8infinityEv>
    d9ee:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
    d9f5:	ff 
    d9f6:	e9 0d 00 00 00       	jmpq   da08 <_ZN8Triangle15getIntersectionE3Ray+0x338>
    d9fb:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    da00:	f2 0f 11 85 d0 fe ff 	movsd  %xmm0,-0x130(%rbp)
    da07:	ff 
    da08:	f2 0f 10 85 d0 fe ff 	movsd  -0x130(%rbp),%xmm0
    da0f:	ff 
    da10:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    da15:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    da1a:	48 81 c4 90 01 00 00 	add    $0x190,%rsp
    da21:	5d                   	pop    %rbp
    da22:	c3                   	retq   
    da23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    da2a:	84 00 00 00 00 00 

000000000000da30 <_ZN8Triangle20getLightIntersectionE3RayPd>:
    da30:	55                   	push   %rbp
    da31:	48 89 e5             	mov    %rsp,%rbp
    da34:	48 81 ec d0 01 00 00 	sub    $0x1d0,%rsp
    da3b:	48 89 f8             	mov    %rdi,%rax
    da3e:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    da42:	48 89 bd b0 fe ff ff 	mov    %rdi,-0x150(%rbp)
    da49:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    da4d:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    da51:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    da55:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
    da5c:	48 83 c7 18          	add    $0x18,%rdi
    da60:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    da67:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    da6b:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    da72:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    da76:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    da7d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    da81:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    da85:	48 8b 08             	mov    (%rax),%rcx
    da88:	48 89 0c 24          	mov    %rcx,(%rsp)
    da8c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    da90:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    da95:	48 8b 40 10          	mov    0x10(%rax),%rax
    da99:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    da9e:	e8 6d 0b 00 00       	callq  e610 <_ZN6Vector3dotES_>
    daa3:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
    daaa:	48 8b bd b8 fe ff ff 	mov    -0x148(%rbp),%rdi
    dab1:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    dab6:	48 81 c7 a8 00 00 00 	add    $0xa8,%rdi
    dabd:	48 8b 08             	mov    (%rax),%rcx
    dac0:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    dac4:	48 8b 48 08          	mov    0x8(%rax),%rcx
    dac8:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    dacc:	48 8b 40 10          	mov    0x10(%rax),%rax
    dad0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    dad4:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    dad8:	48 8b 08             	mov    (%rax),%rcx
    dadb:	48 89 0c 24          	mov    %rcx,(%rsp)
    dadf:	48 8b 48 08          	mov    0x8(%rax),%rcx
    dae3:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    dae8:	48 8b 40 10          	mov    0x10(%rax),%rax
    daec:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    daf1:	e8 1a 0b 00 00       	callq  e610 <_ZN6Vector3dotES_>
    daf6:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    dafd:	f2 0f 58 80 f0 00 00 	addsd  0xf0(%rax),%xmm0
    db04:	00 
    db05:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    db0a:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
    db0f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    db14:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    db1b:	00 00 80 
    db1e:	48 31 c8             	xor    %rcx,%rax
    db21:	66 48 0f 6e c0       	movq   %rax,%xmm0
    db26:	f2 0f 5e 45 e0       	divsd  -0x20(%rbp),%xmm0
    db2b:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    db30:	0f 57 c0             	xorps  %xmm0,%xmm0
    db33:	66 0f 2e 45 a0       	ucomisd -0x60(%rbp),%xmm0
    db38:	0f 83 17 00 00 00    	jae    db55 <_ZN8Triangle20getLightIntersectionE3RayPd+0x125>
    db3e:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    db43:	f2 0f 10 0d fd 3d ff 	movsd  -0xc203(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    db4a:	ff 
    db4b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    db4f:	0f 82 09 00 00 00    	jb     db5e <_ZN8Triangle20getLightIntersectionE3RayPd+0x12e>
    db55:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    db59:	e9 eb 03 00 00       	jmpq   df49 <_ZN8Triangle20getLightIntersectionE3RayPd+0x519>
    db5e:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    db65:	48 8b b5 b0 fe ff ff 	mov    -0x150(%rbp),%rsi
    db6c:	48 8b 88 c0 00 00 00 	mov    0xc0(%rax),%rcx
    db73:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    db7a:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
    db81:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
    db88:	48 8b 88 d0 00 00 00 	mov    0xd0(%rax),%rcx
    db8f:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    db93:	48 8b 88 d8 00 00 00 	mov    0xd8(%rax),%rcx
    db9a:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    dba1:	48 8b 88 e0 00 00 00 	mov    0xe0(%rax),%rcx
    dba8:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    dbaf:	48 8b 88 e8 00 00 00 	mov    0xe8(%rax),%rcx
    dbb6:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    dbbd:	48 8b 88 a8 00 00 00 	mov    0xa8(%rax),%rcx
    dbc4:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
    dbcb:	48 8b 88 b0 00 00 00 	mov    0xb0(%rax),%rcx
    dbd2:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
    dbd9:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    dbe0:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    dbe7:	48 83 c6 18          	add    $0x18,%rsi
    dbeb:	f2 0f 10 45 a0       	movsd  -0x60(%rbp),%xmm0
    dbf0:	48 8d bd f8 fe ff ff 	lea    -0x108(%rbp),%rdi
    dbf7:	e8 a4 06 00 00       	callq  e2a0 <_ZN6VectormlEd>
    dbfc:	48 8b b5 b0 fe ff ff 	mov    -0x150(%rbp),%rsi
    dc03:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    dc0a:	48 8d 85 f8 fe ff ff 	lea    -0x108(%rbp),%rax
    dc11:	48 8b 08             	mov    (%rax),%rcx
    dc14:	48 89 0c 24          	mov    %rcx,(%rsp)
    dc18:	48 8b 48 08          	mov    0x8(%rax),%rcx
    dc1c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    dc21:	48 8b 40 10          	mov    0x10(%rax),%rax
    dc25:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    dc2a:	e8 21 06 00 00       	callq  e250 <_ZN6VectorplES_>
    dc2f:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    dc36:	48 8b 48 50          	mov    0x50(%rax),%rcx
    dc3a:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
    dc41:	48 8b 48 58          	mov    0x58(%rax),%rcx
    dc45:	48 89 8d e8 fe ff ff 	mov    %rcx,-0x118(%rbp)
    dc4c:	48 8b 40 60          	mov    0x60(%rax),%rax
    dc50:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    dc57:	48 8d bd 28 ff ff ff 	lea    -0xd8(%rbp),%rdi
    dc5e:	48 8d b5 10 ff ff ff 	lea    -0xf0(%rbp),%rsi
    dc65:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    dc6c:	48 8b 08             	mov    (%rax),%rcx
    dc6f:	48 89 0c 24          	mov    %rcx,(%rsp)
    dc73:	48 8b 48 08          	mov    0x8(%rax),%rcx
    dc77:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    dc7c:	48 8b 40 10          	mov    0x10(%rax),%rax
    dc80:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    dc85:	e8 76 05 00 00       	callq  e200 <_ZN6VectormiES_>
    dc8a:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    dc8e:	48 8d b5 70 ff ff ff 	lea    -0x90(%rbp),%rsi
    dc95:	48 8d 95 58 ff ff ff 	lea    -0xa8(%rbp),%rdx
    dc9c:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
    dca3:	48 8d 85 28 ff ff ff 	lea    -0xd8(%rbp),%rax
    dcaa:	4c 8b 06             	mov    (%rsi),%r8
    dcad:	4c 89 04 24          	mov    %r8,(%rsp)
    dcb1:	4c 8b 46 08          	mov    0x8(%rsi),%r8
    dcb5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    dcba:	48 8b 76 10          	mov    0x10(%rsi),%rsi
    dcbe:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    dcc3:	48 8b 32             	mov    (%rdx),%rsi
    dcc6:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    dccb:	48 8b 72 08          	mov    0x8(%rdx),%rsi
    dccf:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    dcd4:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    dcd8:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    dcdd:	48 8b 11             	mov    (%rcx),%rdx
    dce0:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    dce5:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    dce9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    dcee:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    dcf2:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
    dcf7:	48 8b 08             	mov    (%rax),%rcx
    dcfa:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    dcff:	48 8b 48 08          	mov    0x8(%rax),%rcx
    dd03:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    dd08:	48 8b 40 10          	mov    0x10(%rax),%rax
    dd0c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    dd11:	e8 9a 09 00 00       	callq  e6b0 <_Z12solveScalers6VectorS_S_S_>
    dd16:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
    dd1d:	f2 0f 10 89 f8 00 00 	movsd  0xf8(%rcx),%xmm1
    dd24:	00 
    dd25:	f2 0f 5c 4d 88       	subsd  -0x78(%rbp),%xmm1
    dd2a:	f2 0f 10 51 78       	movsd  0x78(%rcx),%xmm2
    dd2f:	f2 0f 10 81 f8 00 00 	movsd  0xf8(%rcx),%xmm0
    dd36:	00 
    dd37:	f2 0f 5c 41 70       	subsd  0x70(%rcx),%xmm0
    dd3c:	f2 0f 10 5d 90       	movsd  -0x70(%rbp),%xmm3
    dd41:	f2 0f 5c 59 78       	subsd  0x78(%rcx),%xmm3
    dd46:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    dd4a:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    dd4e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    dd52:	0f 57 c0             	xorps  %xmm0,%xmm0
    dd55:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    dd59:	0f 97 c0             	seta   %al
    dd5c:	24 01                	and    $0x1,%al
    dd5e:	88 85 df fe ff ff    	mov    %al,-0x121(%rbp)
    dd64:	0f b6 85 df fe ff ff 	movzbl -0x121(%rbp),%eax
    dd6b:	f2 0f 10 49 70       	movsd  0x70(%rcx),%xmm1
    dd70:	f2 0f 59 4d 90       	mulsd  -0x70(%rbp),%xmm1
    dd75:	0f 57 c0             	xorps  %xmm0,%xmm0
    dd78:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    dd7c:	0f 97 c1             	seta   %cl
    dd7f:	80 e1 01             	and    $0x1,%cl
    dd82:	0f b6 c9             	movzbl %cl,%ecx
    dd85:	39 c8                	cmp    %ecx,%eax
    dd87:	0f 85 5c 00 00 00    	jne    dde9 <_ZN8Triangle20getLightIntersectionE3RayPd+0x3b9>
    dd8d:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
    dd94:	0f b6 85 df fe ff ff 	movzbl -0x121(%rbp),%eax
    dd9b:	f2 0f 10 4d 88       	movsd  -0x78(%rbp),%xmm1
    dda0:	f2 0f 10 51 78       	movsd  0x78(%rcx),%xmm2
    dda5:	f2 0f 10 81 f8 00 00 	movsd  0xf8(%rcx),%xmm0
    ddac:	00 
    ddad:	f2 0f 59 45 90       	mulsd  -0x70(%rbp),%xmm0
    ddb2:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    ddb7:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    ddbe:	00 00 80 
    ddc1:	48 31 d1             	xor    %rdx,%rcx
    ddc4:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    ddc9:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    ddcd:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    ddd1:	0f 57 c0             	xorps  %xmm0,%xmm0
    ddd4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    ddd8:	0f 97 c1             	seta   %cl
    dddb:	80 e1 01             	and    $0x1,%cl
    ddde:	0f b6 c9             	movzbl %cl,%ecx
    dde1:	39 c8                	cmp    %ecx,%eax
    dde3:	0f 84 09 00 00 00    	je     ddf2 <_ZN8Triangle20getLightIntersectionE3RayPd+0x3c2>
    dde9:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    dded:	e9 57 01 00 00       	jmpq   df49 <_ZN8Triangle20getLightIntersectionE3RayPd+0x519>
    ddf2:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    ddf9:	48 8b 40 68          	mov    0x68(%rax),%rax
    ddfd:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    de02:	f2 0f 10 0d 86 3b ff 	movsd  -0xc47a(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    de09:	ff 
    de0a:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    de0e:	0f 86 09 00 00 00    	jbe    de1d <_ZN8Triangle20getLightIntersectionE3RayPd+0x3ed>
    de14:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    de18:	e9 2c 01 00 00       	jmpq   df49 <_ZN8Triangle20getLightIntersectionE3RayPd+0x519>
    de1d:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    de24:	48 8b 48 68          	mov    0x68(%rax),%rcx
    de28:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
    de2f:	48 8d 8d db fe ff ff 	lea    -0x125(%rbp),%rcx
    de36:	48 89 8d a0 fe ff ff 	mov    %rcx,-0x160(%rbp)
    de3d:	f2 0f 10 45 88       	movsd  -0x78(%rbp),%xmm0
    de42:	f2 0f 5e 40 70       	divsd  0x70(%rax),%xmm0
    de47:	f2 0f 10 0d 21 3b ff 	movsd  -0xc4df(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    de4e:	ff 
    de4f:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    de53:	e8 88 1b 00 00       	callq  f9e0 <_Z3fixd>
    de58:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    de5f:	f2 0f 11 85 a8 fe ff 	movsd  %xmm0,-0x158(%rbp)
    de66:	ff 
    de67:	f2 0f 10 45 90       	movsd  -0x70(%rbp),%xmm0
    de6c:	f2 0f 5e 40 78       	divsd  0x78(%rax),%xmm0
    de71:	f2 0f 10 0d f7 3a ff 	movsd  -0xc509(%rip),%xmm1        # 1970 <_IO_stdin_used+0x70>
    de78:	ff 
    de79:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    de7d:	e8 5e 1b 00 00       	callq  f9e0 <_Z3fixd>
    de82:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    de89:	48 8b b5 a0 fe ff ff 	mov    -0x160(%rbp),%rsi
    de90:	0f 28 c8             	movaps %xmm0,%xmm1
    de93:	f2 0f 10 85 a8 fe ff 	movsd  -0x158(%rbp),%xmm0
    de9a:	ff 
    de9b:	48 8b 07             	mov    (%rdi),%rax
    de9e:	48 8d 95 d0 fe ff ff 	lea    -0x130(%rbp),%rdx
    dea5:	48 8d 8d c8 fe ff ff 	lea    -0x138(%rbp),%rcx
    deac:	4c 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%r8
    deb3:	ff 10                	callq  *(%rax)
    deb5:	f2 0f 10 85 c8 fe ff 	movsd  -0x138(%rbp),%xmm0
    debc:	ff 
    debd:	f2 0f 10 0d cb 3a ff 	movsd  -0xc535(%rip),%xmm1        # 1990 <_IO_stdin_used+0x90>
    dec4:	ff 
    dec5:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    dec9:	0f 86 09 00 00 00    	jbe    ded8 <_ZN8Triangle20getLightIntersectionE3RayPd+0x4a8>
    decf:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    ded3:	e9 71 00 00 00       	jmpq   df49 <_ZN8Triangle20getLightIntersectionE3RayPd+0x519>
    ded8:	0f b6 85 db fe ff ff 	movzbl -0x125(%rbp),%eax
    dedf:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    dee3:	f2 0f 10 0d 25 3a ff 	movsd  -0xc5db(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    deea:	ff 
    deeb:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    deef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    def3:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    def7:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    defb:	0f b6 85 dc fe ff ff 	movzbl -0x124(%rbp),%eax
    df02:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    df06:	f2 0f 10 0d 02 3a ff 	movsd  -0xc5fe(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    df0d:	ff 
    df0e:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    df12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    df16:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    df1b:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    df20:	0f b6 85 dd fe ff ff 	movzbl -0x123(%rbp),%eax
    df27:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    df2b:	f2 0f 10 0d dd 39 ff 	movsd  -0xc623(%rip),%xmm1        # 1910 <_IO_stdin_used+0x10>
    df32:	ff 
    df33:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    df37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    df3b:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    df40:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    df45:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    df49:	8a 45 ff             	mov    -0x1(%rbp),%al
    df4c:	24 01                	and    $0x1,%al
    df4e:	0f b6 c0             	movzbl %al,%eax
    df51:	48 81 c4 d0 01 00 00 	add    $0x1d0,%rsp
    df58:	5d                   	pop    %rbp
    df59:	c3                   	retq   
    df5a:	cc                   	int3   
    df5b:	cc                   	int3   
    df5c:	cc                   	int3   
    df5d:	cc                   	int3   
    df5e:	cc                   	int3   
    df5f:	cc                   	int3   

000000000000df60 <_ZN6VectorC1Eddd>:
    df60:	55                   	push   %rbp
    df61:	48 89 e5             	mov    %rsp,%rbp
    df64:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    df68:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    df6d:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
    df72:	f2 0f 11 55 e0       	movsd  %xmm2,-0x20(%rbp)
    df77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    df7b:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    df80:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    df84:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    df89:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    df8e:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    df93:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    df98:	5d                   	pop    %rbp
    df99:	c3                   	retq   
    df9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000dfa0 <_ZN6VectormIES_>:
    dfa0:	55                   	push   %rbp
    dfa1:	48 89 e5             	mov    %rsp,%rbp
    dfa4:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
    dfa8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    dfac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    dfb0:	f2 0f 10 09          	movsd  (%rcx),%xmm1
    dfb4:	f2 0f 10 00          	movsd  (%rax),%xmm0
    dfb8:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    dfbc:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    dfc0:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    dfc5:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    dfca:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    dfce:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    dfd3:	f2 0f 10 49 10       	movsd  0x10(%rcx),%xmm1
    dfd8:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    dfdd:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    dfe1:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    dfe6:	5d                   	pop    %rbp
    dfe7:	c3                   	retq   
    dfe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    dfef:	00 

000000000000dff0 <_ZN6VectorpLES_>:
    dff0:	55                   	push   %rbp
    dff1:	48 89 e5             	mov    %rsp,%rbp
    dff4:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
    dff8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    dffc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e000:	f2 0f 10 01          	movsd  (%rcx),%xmm0
    e004:	f2 0f 58 00          	addsd  (%rax),%xmm0
    e008:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e00c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    e011:	f2 0f 58 40 08       	addsd  0x8(%rax),%xmm0
    e016:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e01b:	f2 0f 10 41 10       	movsd  0x10(%rcx),%xmm0
    e020:	f2 0f 58 40 10       	addsd  0x10(%rax),%xmm0
    e025:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e02a:	5d                   	pop    %rbp
    e02b:	c3                   	retq   
    e02c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000e030 <_ZN6VectormLEd>:
    e030:	55                   	push   %rbp
    e031:	48 89 e5             	mov    %rsp,%rbp
    e034:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e038:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    e03d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e041:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    e046:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    e04a:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e04e:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    e053:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e058:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e05d:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    e062:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    e067:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e06c:	5d                   	pop    %rbp
    e06d:	c3                   	retq   
    e06e:	66 90                	xchg   %ax,%ax

000000000000e070 <_ZN6VectormLEf>:
    e070:	55                   	push   %rbp
    e071:	48 89 e5             	mov    %rsp,%rbp
    e074:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e078:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    e07d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e081:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    e086:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    e08a:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    e08e:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e092:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    e097:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    e09b:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e0a0:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e0a5:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    e0aa:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    e0ae:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    e0b3:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e0b8:	5d                   	pop    %rbp
    e0b9:	c3                   	retq   
    e0ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000e0c0 <_ZN6VectormLEi>:
    e0c0:	55                   	push   %rbp
    e0c1:	48 89 e5             	mov    %rsp,%rbp
    e0c4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e0c8:	89 75 f4             	mov    %esi,-0xc(%rbp)
    e0cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e0cf:	f2 0f 2a 45 f4       	cvtsi2sdl -0xc(%rbp),%xmm0
    e0d4:	f2 0f 59 00          	mulsd  (%rax),%xmm0
    e0d8:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e0dc:	f2 0f 2a 45 f4       	cvtsi2sdl -0xc(%rbp),%xmm0
    e0e1:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e0e6:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e0eb:	f2 0f 2a 45 f4       	cvtsi2sdl -0xc(%rbp),%xmm0
    e0f0:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    e0f5:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e0fa:	5d                   	pop    %rbp
    e0fb:	c3                   	retq   
    e0fc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000e100 <_ZN6VectordVEd>:
    e100:	55                   	push   %rbp
    e101:	48 89 e5             	mov    %rsp,%rbp
    e104:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e108:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    e10d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e111:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
    e116:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e11a:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e11e:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e122:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
    e127:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    e12c:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e130:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e135:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
    e13a:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    e13f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e143:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e148:	5d                   	pop    %rbp
    e149:	c3                   	retq   
    e14a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000e150 <_ZN6VectordVEf>:
    e150:	55                   	push   %rbp
    e151:	48 89 e5             	mov    %rsp,%rbp
    e154:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e158:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    e15d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e161:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    e166:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    e16a:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e16e:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e172:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e176:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    e17b:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    e17f:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    e184:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e188:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e18d:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    e192:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    e196:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    e19b:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e19f:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e1a4:	5d                   	pop    %rbp
    e1a5:	c3                   	retq   
    e1a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    e1ad:	00 00 00 

000000000000e1b0 <_ZN6VectordVEi>:
    e1b0:	55                   	push   %rbp
    e1b1:	48 89 e5             	mov    %rsp,%rbp
    e1b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e1b8:	89 75 f4             	mov    %esi,-0xc(%rbp)
    e1bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e1bf:	f2 0f 2a 4d f4       	cvtsi2sdl -0xc(%rbp),%xmm1
    e1c4:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e1c8:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e1cc:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    e1d0:	f2 0f 2a 4d f4       	cvtsi2sdl -0xc(%rbp),%xmm1
    e1d5:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    e1da:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e1de:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    e1e3:	f2 0f 2a 4d f4       	cvtsi2sdl -0xc(%rbp),%xmm1
    e1e8:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    e1ed:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e1f1:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    e1f6:	5d                   	pop    %rbp
    e1f7:	c3                   	retq   
    e1f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    e1ff:	00 

000000000000e200 <_ZN6VectormiES_>:
    e200:	55                   	push   %rbp
    e201:	48 89 e5             	mov    %rsp,%rbp
    e204:	48 83 ec 10          	sub    $0x10,%rsp
    e208:	48 89 f8             	mov    %rdi,%rax
    e20b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    e20f:	48 8d 45 10          	lea    0x10(%rbp),%rax
    e213:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e217:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    e21b:	f2 0f 10 01          	movsd  (%rcx),%xmm0
    e21f:	f2 0f 5c 00          	subsd  (%rax),%xmm0
    e223:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    e228:	f2 0f 5c 48 08       	subsd  0x8(%rax),%xmm1
    e22d:	f2 0f 10 51 10       	movsd  0x10(%rcx),%xmm2
    e232:	f2 0f 5c 50 10       	subsd  0x10(%rax),%xmm2
    e237:	e8 24 fd ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e23c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    e240:	48 83 c4 10          	add    $0x10,%rsp
    e244:	5d                   	pop    %rbp
    e245:	c3                   	retq   
    e246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    e24d:	00 00 00 

000000000000e250 <_ZN6VectorplES_>:
    e250:	55                   	push   %rbp
    e251:	48 89 e5             	mov    %rsp,%rbp
    e254:	48 83 ec 10          	sub    $0x10,%rsp
    e258:	48 89 f8             	mov    %rdi,%rax
    e25b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    e25f:	48 8d 45 10          	lea    0x10(%rbp),%rax
    e263:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e267:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    e26b:	f2 0f 10 01          	movsd  (%rcx),%xmm0
    e26f:	f2 0f 58 00          	addsd  (%rax),%xmm0
    e273:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    e278:	f2 0f 58 48 08       	addsd  0x8(%rax),%xmm1
    e27d:	f2 0f 10 51 10       	movsd  0x10(%rcx),%xmm2
    e282:	f2 0f 58 50 10       	addsd  0x10(%rax),%xmm2
    e287:	e8 d4 fc ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e28c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    e290:	48 83 c4 10          	add    $0x10,%rsp
    e294:	5d                   	pop    %rbp
    e295:	c3                   	retq   
    e296:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    e29d:	00 00 00 

000000000000e2a0 <_ZN6VectormlEd>:
    e2a0:	55                   	push   %rbp
    e2a1:	48 89 e5             	mov    %rsp,%rbp
    e2a4:	48 83 ec 20          	sub    $0x20,%rsp
    e2a8:	48 89 f8             	mov    %rdi,%rax
    e2ab:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    e2af:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e2b3:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    e2b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e2bc:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e2c0:	f2 0f 59 45 f0       	mulsd  -0x10(%rbp),%xmm0
    e2c5:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e2ca:	f2 0f 59 4d f0       	mulsd  -0x10(%rbp),%xmm1
    e2cf:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e2d4:	f2 0f 59 55 f0       	mulsd  -0x10(%rbp),%xmm2
    e2d9:	e8 82 fc ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e2de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e2e2:	48 83 c4 20          	add    $0x20,%rsp
    e2e6:	5d                   	pop    %rbp
    e2e7:	c3                   	retq   
    e2e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    e2ef:	00 

000000000000e2f0 <_ZN6VectormlEf>:
    e2f0:	55                   	push   %rbp
    e2f1:	48 89 e5             	mov    %rsp,%rbp
    e2f4:	48 83 ec 20          	sub    $0x20,%rsp
    e2f8:	48 89 f8             	mov    %rdi,%rax
    e2fb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    e2ff:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e303:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    e308:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e30c:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e310:	f3 0f 10 4d f4       	movss  -0xc(%rbp),%xmm1
    e315:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    e319:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    e31d:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e322:	f3 0f 10 55 f4       	movss  -0xc(%rbp),%xmm2
    e327:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
    e32b:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e32f:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e334:	f3 0f 10 5d f4       	movss  -0xc(%rbp),%xmm3
    e339:	f3 0f 5a db          	cvtss2sd %xmm3,%xmm3
    e33d:	f2 0f 59 d3          	mulsd  %xmm3,%xmm2
    e341:	e8 1a fc ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e346:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e34a:	48 83 c4 20          	add    $0x20,%rsp
    e34e:	5d                   	pop    %rbp
    e34f:	c3                   	retq   

000000000000e350 <_ZN6VectormlEi>:
    e350:	55                   	push   %rbp
    e351:	48 89 e5             	mov    %rsp,%rbp
    e354:	48 83 ec 20          	sub    $0x20,%rsp
    e358:	48 89 f8             	mov    %rdi,%rax
    e35b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    e35f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e363:	89 55 f4             	mov    %edx,-0xc(%rbp)
    e366:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e36a:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e36e:	f2 0f 2a 4d f4       	cvtsi2sdl -0xc(%rbp),%xmm1
    e373:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    e377:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e37c:	f2 0f 2a 55 f4       	cvtsi2sdl -0xc(%rbp),%xmm2
    e381:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e385:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e38a:	f2 0f 2a 5d f4       	cvtsi2sdl -0xc(%rbp),%xmm3
    e38f:	f2 0f 59 d3          	mulsd  %xmm3,%xmm2
    e393:	e8 c8 fb ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e398:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e39c:	48 83 c4 20          	add    $0x20,%rsp
    e3a0:	5d                   	pop    %rbp
    e3a1:	c3                   	retq   
    e3a2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    e3a9:	1f 84 00 00 00 00 00 

000000000000e3b0 <_ZN6VectordvEd>:
    e3b0:	55                   	push   %rbp
    e3b1:	48 89 e5             	mov    %rsp,%rbp
    e3b4:	48 83 ec 20          	sub    $0x20,%rsp
    e3b8:	48 89 f8             	mov    %rdi,%rax
    e3bb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    e3bf:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e3c3:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    e3c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e3cc:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e3d0:	f2 0f 5e 45 f0       	divsd  -0x10(%rbp),%xmm0
    e3d5:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e3da:	f2 0f 5e 4d f0       	divsd  -0x10(%rbp),%xmm1
    e3df:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e3e4:	f2 0f 5e 55 f0       	divsd  -0x10(%rbp),%xmm2
    e3e9:	e8 72 fb ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e3ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e3f2:	48 83 c4 20          	add    $0x20,%rsp
    e3f6:	5d                   	pop    %rbp
    e3f7:	c3                   	retq   
    e3f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    e3ff:	00 

000000000000e400 <_ZN6VectordvEf>:
    e400:	55                   	push   %rbp
    e401:	48 89 e5             	mov    %rsp,%rbp
    e404:	48 83 ec 20          	sub    $0x20,%rsp
    e408:	48 89 f8             	mov    %rdi,%rax
    e40b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    e40f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e413:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    e418:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e41c:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e420:	f3 0f 10 4d f4       	movss  -0xc(%rbp),%xmm1
    e425:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    e429:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e42d:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e432:	f3 0f 10 55 f4       	movss  -0xc(%rbp),%xmm2
    e437:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
    e43b:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    e43f:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e444:	f3 0f 10 5d f4       	movss  -0xc(%rbp),%xmm3
    e449:	f3 0f 5a db          	cvtss2sd %xmm3,%xmm3
    e44d:	f2 0f 5e d3          	divsd  %xmm3,%xmm2
    e451:	e8 0a fb ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e456:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e45a:	48 83 c4 20          	add    $0x20,%rsp
    e45e:	5d                   	pop    %rbp
    e45f:	c3                   	retq   

000000000000e460 <_ZN6VectordvEi>:
    e460:	55                   	push   %rbp
    e461:	48 89 e5             	mov    %rsp,%rbp
    e464:	48 83 ec 20          	sub    $0x20,%rsp
    e468:	48 89 f8             	mov    %rdi,%rax
    e46b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    e46f:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e473:	89 55 f4             	mov    %edx,-0xc(%rbp)
    e476:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e47a:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e47e:	f2 0f 2a 4d f4       	cvtsi2sdl -0xc(%rbp),%xmm1
    e483:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    e487:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e48c:	f2 0f 2a 55 f4       	cvtsi2sdl -0xc(%rbp),%xmm2
    e491:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
    e495:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e49a:	f2 0f 2a 5d f4       	cvtsi2sdl -0xc(%rbp),%xmm3
    e49f:	f2 0f 5e d3          	divsd  %xmm3,%xmm2
    e4a3:	e8 b8 fa ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e4a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e4ac:	48 83 c4 20          	add    $0x20,%rsp
    e4b0:	5d                   	pop    %rbp
    e4b1:	c3                   	retq   
    e4b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    e4b9:	1f 84 00 00 00 00 00 

000000000000e4c0 <_ZN6Vector5crossES_>:
    e4c0:	55                   	push   %rbp
    e4c1:	48 89 e5             	mov    %rsp,%rbp
    e4c4:	48 83 ec 10          	sub    $0x10,%rsp
    e4c8:	48 89 f8             	mov    %rdi,%rax
    e4cb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    e4cf:	48 8d 45 10          	lea    0x10(%rbp),%rax
    e4d3:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e4d7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    e4db:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    e4e0:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e4e5:	f2 0f 10 49 10       	movsd  0x10(%rcx),%xmm1
    e4ea:	f2 0f 59 48 08       	mulsd  0x8(%rax),%xmm1
    e4ef:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    e4f4:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    e4fb:	00 00 80 
    e4fe:	48 31 f2             	xor    %rsi,%rdx
    e501:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    e506:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e50a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e50e:	f2 0f 10 49 10       	movsd  0x10(%rcx),%xmm1
    e513:	f2 0f 10 18          	movsd  (%rax),%xmm3
    e517:	f2 0f 10 11          	movsd  (%rcx),%xmm2
    e51b:	f2 0f 59 50 10       	mulsd  0x10(%rax),%xmm2
    e520:	66 48 0f 7e d2       	movq   %xmm2,%rdx
    e525:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    e52c:	00 00 80 
    e52f:	48 31 f2             	xor    %rsi,%rdx
    e532:	66 48 0f 6e d2       	movq   %rdx,%xmm2
    e537:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    e53b:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    e53f:	f2 0f 10 11          	movsd  (%rcx),%xmm2
    e543:	f2 0f 10 60 08       	movsd  0x8(%rax),%xmm4
    e548:	f2 0f 10 59 08       	movsd  0x8(%rcx),%xmm3
    e54d:	f2 0f 59 18          	mulsd  (%rax),%xmm3
    e551:	66 48 0f 7e d8       	movq   %xmm3,%rax
    e556:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    e55d:	00 00 80 
    e560:	48 31 c8             	xor    %rcx,%rax
    e563:	66 48 0f 6e d8       	movq   %rax,%xmm3
    e568:	f2 0f 59 d4          	mulsd  %xmm4,%xmm2
    e56c:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
    e570:	e8 eb f9 ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e575:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    e579:	48 83 c4 10          	add    $0x10,%rsp
    e57d:	5d                   	pop    %rbp
    e57e:	c3                   	retq   
    e57f:	90                   	nop

000000000000e580 <_ZN6Vector4mag2Ev>:
    e580:	55                   	push   %rbp
    e581:	48 89 e5             	mov    %rsp,%rbp
    e584:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e588:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e58c:	f2 0f 10 08          	movsd  (%rax),%xmm1
    e590:	f2 0f 10 10          	movsd  (%rax),%xmm2
    e594:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    e599:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e59e:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e5a2:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e5a6:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    e5ab:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e5b0:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e5b4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e5b8:	5d                   	pop    %rbp
    e5b9:	c3                   	retq   
    e5ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000e5c0 <_ZN6Vector3magEv>:
    e5c0:	55                   	push   %rbp
    e5c1:	48 89 e5             	mov    %rsp,%rbp
    e5c4:	48 83 ec 10          	sub    $0x10,%rsp
    e5c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e5cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    e5d0:	f2 0f 10 08          	movsd  (%rax),%xmm1
    e5d4:	f2 0f 10 10          	movsd  (%rax),%xmm2
    e5d8:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    e5dd:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e5e2:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e5e6:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e5ea:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    e5ef:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e5f4:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e5f8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e5fc:	e8 ef 17 00 00       	callq  fdf0 <sqrt@plt>
    e601:	48 83 c4 10          	add    $0x10,%rsp
    e605:	5d                   	pop    %rbp
    e606:	c3                   	retq   
    e607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    e60e:	00 00 

000000000000e610 <_ZN6Vector3dotES_>:
    e610:	55                   	push   %rbp
    e611:	48 89 e5             	mov    %rsp,%rbp
    e614:	48 8d 45 10          	lea    0x10(%rbp),%rax
    e618:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    e61c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    e620:	f2 0f 10 09          	movsd  (%rcx),%xmm1
    e624:	f2 0f 10 10          	movsd  (%rax),%xmm2
    e628:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    e62d:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e632:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e636:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e63a:	f2 0f 10 41 10       	movsd  0x10(%rcx),%xmm0
    e63f:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e644:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e648:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e64c:	5d                   	pop    %rbp
    e64d:	c3                   	retq   
    e64e:	66 90                	xchg   %ax,%ax

000000000000e650 <_ZN6Vector9normalizeEv>:
    e650:	55                   	push   %rbp
    e651:	48 89 e5             	mov    %rsp,%rbp
    e654:	48 83 ec 30          	sub    $0x30,%rsp
    e658:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    e65c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    e660:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    e664:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    e668:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    e66c:	e8 4f ff ff ff       	callq  e5c0 <_ZN6Vector3magEv>
    e671:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    e675:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    e679:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    e67e:	f2 0f 10 00          	movsd  (%rax),%xmm0
    e682:	f2 0f 5e 45 f0       	divsd  -0x10(%rbp),%xmm0
    e687:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    e68c:	f2 0f 5e 4d f0       	divsd  -0x10(%rbp),%xmm1
    e691:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e696:	f2 0f 5e 55 f0       	divsd  -0x10(%rbp),%xmm2
    e69b:	e8 c0 f8 ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    e6a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    e6a4:	48 83 c4 30          	add    $0x30,%rsp
    e6a8:	5d                   	pop    %rbp
    e6a9:	c3                   	retq   
    e6aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000e6b0 <_Z12solveScalers6VectorS_S_S_>:
    e6b0:	55                   	push   %rbp
    e6b1:	48 89 e5             	mov    %rsp,%rbp
    e6b4:	48 83 ec 30          	sub    $0x30,%rsp
    e6b8:	48 89 f8             	mov    %rdi,%rax
    e6bb:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    e6bf:	48 8d 55 58          	lea    0x58(%rbp),%rdx
    e6c3:	48 8d 75 40          	lea    0x40(%rbp),%rsi
    e6c7:	48 8d 45 28          	lea    0x28(%rbp),%rax
    e6cb:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
    e6cf:	f2 0f 10 41 10       	movsd  0x10(%rcx),%xmm0
    e6d4:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e6d9:	f2 0f 10 16          	movsd  (%rsi),%xmm2
    e6dd:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    e6e2:	f2 0f 59 48 10       	mulsd  0x10(%rax),%xmm1
    e6e7:	f2 0f 59 0e          	mulsd  (%rsi),%xmm1
    e6eb:	66 49 0f 7e c8       	movq   %xmm1,%r8
    e6f0:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e6f7:	00 00 80 
    e6fa:	4d 31 c8             	xor    %r9,%r8
    e6fd:	66 49 0f 6e c8       	movq   %r8,%xmm1
    e702:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e706:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e70a:	f2 0f 10 49 10       	movsd  0x10(%rcx),%xmm1
    e70f:	f2 0f 59 08          	mulsd  (%rax),%xmm1
    e713:	f2 0f 10 56 08       	movsd  0x8(%rsi),%xmm2
    e718:	66 49 0f 7e c8       	movq   %xmm1,%r8
    e71d:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e724:	00 00 80 
    e727:	4d 31 c8             	xor    %r9,%r8
    e72a:	66 49 0f 6e c8       	movq   %r8,%xmm1
    e72f:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e733:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e737:	f2 0f 10 01          	movsd  (%rcx),%xmm0
    e73b:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    e740:	f2 0f 10 56 08       	movsd  0x8(%rsi),%xmm2
    e745:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e749:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e74d:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    e752:	f2 0f 59 08          	mulsd  (%rax),%xmm1
    e756:	f2 0f 10 56 10       	movsd  0x10(%rsi),%xmm2
    e75b:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e75f:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e763:	f2 0f 10 01          	movsd  (%rcx),%xmm0
    e767:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e76c:	f2 0f 10 56 10       	movsd  0x10(%rsi),%xmm2
    e771:	66 49 0f 7e c0       	movq   %xmm0,%r8
    e776:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e77d:	00 00 80 
    e780:	4d 31 c8             	xor    %r9,%r8
    e783:	66 49 0f 6e c0       	movq   %r8,%xmm0
    e788:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e78c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e790:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    e795:	f2 0f 10 42 10       	movsd  0x10(%rdx),%xmm0
    e79a:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e79f:	f2 0f 10 16          	movsd  (%rsi),%xmm2
    e7a3:	f2 0f 10 4a 08       	movsd  0x8(%rdx),%xmm1
    e7a8:	f2 0f 59 48 10       	mulsd  0x10(%rax),%xmm1
    e7ad:	f2 0f 59 0e          	mulsd  (%rsi),%xmm1
    e7b1:	66 49 0f 7e c8       	movq   %xmm1,%r8
    e7b6:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e7bd:	00 00 80 
    e7c0:	4d 31 c8             	xor    %r9,%r8
    e7c3:	66 49 0f 6e c8       	movq   %r8,%xmm1
    e7c8:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e7cc:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e7d0:	f2 0f 10 4a 10       	movsd  0x10(%rdx),%xmm1
    e7d5:	f2 0f 59 08          	mulsd  (%rax),%xmm1
    e7d9:	f2 0f 10 56 08       	movsd  0x8(%rsi),%xmm2
    e7de:	66 49 0f 7e c8       	movq   %xmm1,%r8
    e7e3:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e7ea:	00 00 80 
    e7ed:	4d 31 c8             	xor    %r9,%r8
    e7f0:	66 49 0f 6e c8       	movq   %r8,%xmm1
    e7f5:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e7f9:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e7fd:	f2 0f 10 02          	movsd  (%rdx),%xmm0
    e801:	f2 0f 59 40 10       	mulsd  0x10(%rax),%xmm0
    e806:	f2 0f 10 56 08       	movsd  0x8(%rsi),%xmm2
    e80b:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e80f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e813:	f2 0f 10 4a 08       	movsd  0x8(%rdx),%xmm1
    e818:	f2 0f 59 08          	mulsd  (%rax),%xmm1
    e81c:	f2 0f 10 56 10       	movsd  0x10(%rsi),%xmm2
    e821:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e825:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e829:	f2 0f 10 02          	movsd  (%rdx),%xmm0
    e82d:	f2 0f 59 40 08       	mulsd  0x8(%rax),%xmm0
    e832:	f2 0f 10 56 10       	movsd  0x10(%rsi),%xmm2
    e837:	66 49 0f 7e c0       	movq   %xmm0,%r8
    e83c:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e843:	00 00 80 
    e846:	4d 31 c8             	xor    %r9,%r8
    e849:	66 49 0f 6e c0       	movq   %r8,%xmm0
    e84e:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e852:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e856:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    e85b:	f2 0f 10 42 10       	movsd  0x10(%rdx),%xmm0
    e860:	66 49 0f 7e c0       	movq   %xmm0,%r8
    e865:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e86c:	00 00 80 
    e86f:	4d 31 c8             	xor    %r9,%r8
    e872:	66 49 0f 6e c0       	movq   %r8,%xmm0
    e877:	f2 0f 59 41 08       	mulsd  0x8(%rcx),%xmm0
    e87c:	f2 0f 10 16          	movsd  (%rsi),%xmm2
    e880:	f2 0f 10 4a 08       	movsd  0x8(%rdx),%xmm1
    e885:	f2 0f 59 49 10       	mulsd  0x10(%rcx),%xmm1
    e88a:	f2 0f 59 0e          	mulsd  (%rsi),%xmm1
    e88e:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e892:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e896:	f2 0f 10 4a 10       	movsd  0x10(%rdx),%xmm1
    e89b:	f2 0f 59 09          	mulsd  (%rcx),%xmm1
    e89f:	f2 0f 10 56 08       	movsd  0x8(%rsi),%xmm2
    e8a4:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e8a8:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e8ac:	f2 0f 10 02          	movsd  (%rdx),%xmm0
    e8b0:	f2 0f 59 41 10       	mulsd  0x10(%rcx),%xmm0
    e8b5:	f2 0f 10 56 08       	movsd  0x8(%rsi),%xmm2
    e8ba:	66 49 0f 7e c0       	movq   %xmm0,%r8
    e8bf:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e8c6:	00 00 80 
    e8c9:	4d 31 c8             	xor    %r9,%r8
    e8cc:	66 49 0f 6e c0       	movq   %r8,%xmm0
    e8d1:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e8d5:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e8d9:	f2 0f 10 4a 08       	movsd  0x8(%rdx),%xmm1
    e8de:	f2 0f 59 09          	mulsd  (%rcx),%xmm1
    e8e2:	f2 0f 10 56 10       	movsd  0x10(%rsi),%xmm2
    e8e7:	66 49 0f 7e c8       	movq   %xmm1,%r8
    e8ec:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    e8f3:	00 00 80 
    e8f6:	4d 31 c8             	xor    %r9,%r8
    e8f9:	66 49 0f 6e c8       	movq   %r8,%xmm1
    e8fe:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e902:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e906:	f2 0f 10 02          	movsd  (%rdx),%xmm0
    e90a:	f2 0f 59 41 08       	mulsd  0x8(%rcx),%xmm0
    e90f:	f2 0f 10 56 10       	movsd  0x10(%rsi),%xmm2
    e914:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e918:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e91c:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    e921:	f2 0f 10 42 10       	movsd  0x10(%rdx),%xmm0
    e926:	f2 0f 59 41 08       	mulsd  0x8(%rcx),%xmm0
    e92b:	f2 0f 10 10          	movsd  (%rax),%xmm2
    e92f:	f2 0f 10 4a 08       	movsd  0x8(%rdx),%xmm1
    e934:	f2 0f 59 49 10       	mulsd  0x10(%rcx),%xmm1
    e939:	f2 0f 59 08          	mulsd  (%rax),%xmm1
    e93d:	66 48 0f 7e ce       	movq   %xmm1,%rsi
    e942:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    e949:	00 00 80 
    e94c:	4c 31 c6             	xor    %r8,%rsi
    e94f:	66 48 0f 6e ce       	movq   %rsi,%xmm1
    e954:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e958:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e95c:	f2 0f 10 4a 10       	movsd  0x10(%rdx),%xmm1
    e961:	f2 0f 59 09          	mulsd  (%rcx),%xmm1
    e965:	f2 0f 10 50 08       	movsd  0x8(%rax),%xmm2
    e96a:	66 48 0f 7e ce       	movq   %xmm1,%rsi
    e96f:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    e976:	00 00 80 
    e979:	4c 31 c6             	xor    %r8,%rsi
    e97c:	66 48 0f 6e ce       	movq   %rsi,%xmm1
    e981:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e985:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e989:	f2 0f 10 02          	movsd  (%rdx),%xmm0
    e98d:	f2 0f 59 41 10       	mulsd  0x10(%rcx),%xmm0
    e992:	f2 0f 10 50 08       	movsd  0x8(%rax),%xmm2
    e997:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e99b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e99f:	f2 0f 10 4a 08       	movsd  0x8(%rdx),%xmm1
    e9a4:	f2 0f 59 09          	mulsd  (%rcx),%xmm1
    e9a8:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e9ad:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    e9b1:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    e9b5:	f2 0f 10 02          	movsd  (%rdx),%xmm0
    e9b9:	f2 0f 59 41 08       	mulsd  0x8(%rcx),%xmm0
    e9be:	f2 0f 10 50 10       	movsd  0x10(%rax),%xmm2
    e9c3:	66 48 0f 7e c0       	movq   %xmm0,%rax
    e9c8:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    e9cf:	00 00 80 
    e9d2:	48 31 c8             	xor    %rcx,%rax
    e9d5:	66 48 0f 6e c0       	movq   %rax,%xmm0
    e9da:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    e9de:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    e9e2:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    e9e7:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    e9ec:	f2 0f 5e 45 f8       	divsd  -0x8(%rbp),%xmm0
    e9f1:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
    e9f6:	f2 0f 5e 4d f8       	divsd  -0x8(%rbp),%xmm1
    e9fb:	f2 0f 10 55 e0       	movsd  -0x20(%rbp),%xmm2
    ea00:	f2 0f 5e 55 f8       	divsd  -0x8(%rbp),%xmm2
    ea05:	e8 56 f5 ff ff       	callq  df60 <_ZN6VectorC1Eddd>
    ea0a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ea0e:	48 83 c4 30          	add    $0x30,%rsp
    ea12:	5d                   	pop    %rbp
    ea13:	c3                   	retq   
    ea14:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    ea1b:	00 00 00 00 00 

000000000000ea20 <_ZN3RayC1ERK6VectorS2_>:
    ea20:	55                   	push   %rbp
    ea21:	48 89 e5             	mov    %rsp,%rbp
    ea24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ea28:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    ea2c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    ea30:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ea34:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    ea38:	48 8b 11             	mov    (%rcx),%rdx
    ea3b:	48 89 10             	mov    %rdx,(%rax)
    ea3e:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    ea42:	48 89 50 08          	mov    %rdx,0x8(%rax)
    ea46:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    ea4a:	48 89 48 10          	mov    %rcx,0x10(%rax)
    ea4e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    ea52:	48 8b 11             	mov    (%rcx),%rdx
    ea55:	48 89 50 18          	mov    %rdx,0x18(%rax)
    ea59:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    ea5d:	48 89 50 20          	mov    %rdx,0x20(%rax)
    ea61:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    ea65:	48 89 48 28          	mov    %rcx,0x28(%rax)
    ea69:	5d                   	pop    %rbp
    ea6a:	c3                   	retq   
    ea6b:	cc                   	int3   
    ea6c:	cc                   	int3   
    ea6d:	cc                   	int3   
    ea6e:	cc                   	int3   
    ea6f:	cc                   	int3   

000000000000ea70 <_ZN12ColorTextureC1Ehhh>:
    ea70:	55                   	push   %rbp
    ea71:	41 57                	push   %r15
    ea73:	41 56                	push   %r14
    ea75:	53                   	push   %rbx
    ea76:	50                   	push   %rax
    ea77:	89 cb                	mov    %ecx,%ebx
    ea79:	89 d5                	mov    %edx,%ebp
    ea7b:	41 89 f6             	mov    %esi,%r14d
    ea7e:	49 89 ff             	mov    %rdi,%r15
    ea81:	f2 0f 10 05 ef 2e ff 	movsd  -0xd111(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    ea88:	ff 
    ea89:	f2 0f 10 0d b7 2e ff 	movsd  -0xd149(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    ea90:	ff 
    ea91:	0f 57 d2             	xorps  %xmm2,%xmm2
    ea94:	e8 27 0f 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    ea99:	48 8d 05 c0 26 00 00 	lea    0x26c0(%rip),%rax        # 11160 <_ZTV12ColorTexture+0x10>
    eaa0:	49 89 07             	mov    %rax,(%r15)
    eaa3:	45 88 77 20          	mov    %r14b,0x20(%r15)
    eaa7:	41 88 6f 21          	mov    %bpl,0x21(%r15)
    eaab:	41 88 5f 22          	mov    %bl,0x22(%r15)
    eaaf:	48 83 c4 08          	add    $0x8,%rsp
    eab3:	5b                   	pop    %rbx
    eab4:	41 5e                	pop    %r14
    eab6:	41 5f                	pop    %r15
    eab8:	5d                   	pop    %rbp
    eab9:	c3                   	retq   
    eaba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000eac0 <_ZN12ColorTextureC1Ehhhd>:
    eac0:	55                   	push   %rbp
    eac1:	41 57                	push   %r15
    eac3:	41 56                	push   %r14
    eac5:	53                   	push   %rbx
    eac6:	50                   	push   %rax
    eac7:	0f 28 c8             	movaps %xmm0,%xmm1
    eaca:	89 cb                	mov    %ecx,%ebx
    eacc:	89 d5                	mov    %edx,%ebp
    eace:	41 89 f6             	mov    %esi,%r14d
    ead1:	49 89 ff             	mov    %rdi,%r15
    ead4:	f2 0f 10 05 9c 2e ff 	movsd  -0xd164(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    eadb:	ff 
    eadc:	0f 57 d2             	xorps  %xmm2,%xmm2
    eadf:	e8 dc 0e 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    eae4:	48 8d 05 75 26 00 00 	lea    0x2675(%rip),%rax        # 11160 <_ZTV12ColorTexture+0x10>
    eaeb:	49 89 07             	mov    %rax,(%r15)
    eaee:	45 88 77 20          	mov    %r14b,0x20(%r15)
    eaf2:	41 88 6f 21          	mov    %bpl,0x21(%r15)
    eaf6:	41 88 5f 22          	mov    %bl,0x22(%r15)
    eafa:	48 83 c4 08          	add    $0x8,%rsp
    eafe:	5b                   	pop    %rbx
    eaff:	41 5e                	pop    %r14
    eb01:	41 5f                	pop    %r15
    eb03:	5d                   	pop    %rbp
    eb04:	c3                   	retq   
    eb05:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    eb0c:	00 00 00 00 

000000000000eb10 <_ZN12ColorTextureC1Ehhhdd>:
    eb10:	55                   	push   %rbp
    eb11:	41 57                	push   %r15
    eb13:	41 56                	push   %r14
    eb15:	53                   	push   %rbx
    eb16:	50                   	push   %rax
    eb17:	0f 28 d1             	movaps %xmm1,%xmm2
    eb1a:	0f 28 c8             	movaps %xmm0,%xmm1
    eb1d:	89 cb                	mov    %ecx,%ebx
    eb1f:	89 d5                	mov    %edx,%ebp
    eb21:	41 89 f6             	mov    %esi,%r14d
    eb24:	49 89 ff             	mov    %rdi,%r15
    eb27:	f2 0f 10 05 49 2e ff 	movsd  -0xd1b7(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    eb2e:	ff 
    eb2f:	e8 8c 0e 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    eb34:	48 8d 05 25 26 00 00 	lea    0x2625(%rip),%rax        # 11160 <_ZTV12ColorTexture+0x10>
    eb3b:	49 89 07             	mov    %rax,(%r15)
    eb3e:	45 88 77 20          	mov    %r14b,0x20(%r15)
    eb42:	41 88 6f 21          	mov    %bpl,0x21(%r15)
    eb46:	41 88 5f 22          	mov    %bl,0x22(%r15)
    eb4a:	48 83 c4 08          	add    $0x8,%rsp
    eb4e:	5b                   	pop    %rbx
    eb4f:	41 5e                	pop    %r14
    eb51:	41 5f                	pop    %r15
    eb53:	5d                   	pop    %rbp
    eb54:	c3                   	retq   
    eb55:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    eb5c:	00 00 00 00 

000000000000eb60 <_ZN12ColorTextureC1Ehhhddd>:
    eb60:	55                   	push   %rbp
    eb61:	41 57                	push   %r15
    eb63:	41 56                	push   %r14
    eb65:	53                   	push   %rbx
    eb66:	50                   	push   %rax
    eb67:	0f 28 d9             	movaps %xmm1,%xmm3
    eb6a:	0f 28 c8             	movaps %xmm0,%xmm1
    eb6d:	89 cb                	mov    %ecx,%ebx
    eb6f:	89 d5                	mov    %edx,%ebp
    eb71:	41 89 f6             	mov    %esi,%r14d
    eb74:	49 89 ff             	mov    %rdi,%r15
    eb77:	0f 28 c2             	movaps %xmm2,%xmm0
    eb7a:	0f 28 d3             	movaps %xmm3,%xmm2
    eb7d:	e8 3e 0e 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    eb82:	48 8d 05 d7 25 00 00 	lea    0x25d7(%rip),%rax        # 11160 <_ZTV12ColorTexture+0x10>
    eb89:	49 89 07             	mov    %rax,(%r15)
    eb8c:	45 88 77 20          	mov    %r14b,0x20(%r15)
    eb90:	41 88 6f 21          	mov    %bpl,0x21(%r15)
    eb94:	41 88 5f 22          	mov    %bl,0x22(%r15)
    eb98:	48 83 c4 08          	add    $0x8,%rsp
    eb9c:	5b                   	pop    %rbx
    eb9d:	41 5e                	pop    %r14
    eb9f:	41 5f                	pop    %r15
    eba1:	5d                   	pop    %rbp
    eba2:	c3                   	retq   
    eba3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    ebaa:	84 00 00 00 00 00 

000000000000ebb0 <_ZN12ColorTextureC1EPc>:
    ebb0:	53                   	push   %rbx
    ebb1:	48 89 fb             	mov    %rdi,%rbx
    ebb4:	f2 0f 10 05 bc 2d ff 	movsd  -0xd244(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    ebbb:	ff 
    ebbc:	f2 0f 10 0d 84 2d ff 	movsd  -0xd27c(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    ebc3:	ff 
    ebc4:	0f 57 d2             	xorps  %xmm2,%xmm2
    ebc7:	e8 f4 0d 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    ebcc:	48 8d 05 8d 25 00 00 	lea    0x258d(%rip),%rax        # 11160 <_ZTV12ColorTexture+0x10>
    ebd3:	48 89 03             	mov    %rax,(%rbx)
    ebd6:	5b                   	pop    %rbx
    ebd7:	c3                   	retq   
    ebd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ebdf:	00 

000000000000ebe0 <_ZN12ColorTexture8getColorEPhPdS1_S1_dd>:
    ebe0:	0f b6 47 20          	movzbl 0x20(%rdi),%eax
    ebe4:	88 06                	mov    %al,(%rsi)
    ebe6:	0f b6 47 21          	movzbl 0x21(%rdi),%eax
    ebea:	88 46 01             	mov    %al,0x1(%rsi)
    ebed:	0f b6 47 22          	movzbl 0x22(%rdi),%eax
    ebf1:	88 46 02             	mov    %al,0x2(%rsi)
    ebf4:	f2 0f 10 47 08       	movsd  0x8(%rdi),%xmm0
    ebf9:	f2 0f 11 01          	movsd  %xmm0,(%rcx)
    ebfd:	f2 0f 10 47 10       	movsd  0x10(%rdi),%xmm0
    ec02:	f2 41 0f 11 00       	movsd  %xmm0,(%r8)
    ec07:	f2 0f 10 47 18       	movsd  0x18(%rdi),%xmm0
    ec0c:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
    ec10:	c3                   	retq   
    ec11:	cc                   	int3   
    ec12:	cc                   	int3   
    ec13:	cc                   	int3   
    ec14:	cc                   	int3   
    ec15:	cc                   	int3   
    ec16:	cc                   	int3   
    ec17:	cc                   	int3   
    ec18:	cc                   	int3   
    ec19:	cc                   	int3   
    ec1a:	cc                   	int3   
    ec1b:	cc                   	int3   
    ec1c:	cc                   	int3   
    ec1d:	cc                   	int3   
    ec1e:	cc                   	int3   
    ec1f:	cc                   	int3   

000000000000ec20 <_ZN12ImageTexture8getColorEPhPdS1_S1_dd>:
    ec20:	8b 47 20             	mov    0x20(%rdi),%eax
    ec23:	44 8b 4f 24          	mov    0x24(%rdi),%r9d
    ec27:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    ec2c:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    ec30:	f2 44 0f 2c d2       	cvttsd2si %xmm2,%r10d
    ec35:	0f 57 c0             	xorps  %xmm0,%xmm0
    ec38:	f2 49 0f 2a c1       	cvtsi2sd %r9,%xmm0
    ec3d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    ec41:	f2 44 0f 2c c8       	cvttsd2si %xmm0,%r9d
    ec46:	44 0f af c8          	imul   %eax,%r9d
    ec4a:	45 01 d1             	add    %r10d,%r9d
    ec4d:	41 c1 e1 02          	shl    $0x2,%r9d
    ec51:	48 8b 47 28          	mov    0x28(%rdi),%rax
    ec55:	4d 63 c9             	movslq %r9d,%r9
    ec58:	42 0f b6 04 08       	movzbl (%rax,%r9,1),%eax
    ec5d:	88 06                	mov    %al,(%rsi)
    ec5f:	48 8b 47 28          	mov    0x28(%rdi),%rax
    ec63:	42 0f b6 44 08 01    	movzbl 0x1(%rax,%r9,1),%eax
    ec69:	88 46 01             	mov    %al,0x1(%rsi)
    ec6c:	48 8b 47 28          	mov    0x28(%rdi),%rax
    ec70:	42 0f b6 44 08 02    	movzbl 0x2(%rax,%r9,1),%eax
    ec76:	88 46 02             	mov    %al,0x2(%rsi)
    ec79:	48 8b 47 28          	mov    0x28(%rdi),%rax
    ec7d:	42 0f b6 44 08 03    	movzbl 0x3(%rax,%r9,1),%eax
    ec83:	0f 57 c0             	xorps  %xmm0,%xmm0
    ec86:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    ec8a:	f2 0f 59 47 08       	mulsd  0x8(%rdi),%xmm0
    ec8f:	f2 0f 5e 05 79 2c ff 	divsd  -0xd387(%rip),%xmm0        # 1910 <_IO_stdin_used+0x10>
    ec96:	ff 
    ec97:	f2 0f 11 01          	movsd  %xmm0,(%rcx)
    ec9b:	f2 0f 10 47 10       	movsd  0x10(%rdi),%xmm0
    eca0:	f2 41 0f 11 00       	movsd  %xmm0,(%r8)
    eca5:	f2 0f 10 47 18       	movsd  0x18(%rdi),%xmm0
    ecaa:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
    ecae:	c3                   	retq   
    ecaf:	90                   	nop

000000000000ecb0 <_ZN12ImageTexture14maskImageAlphaEv>:
    ecb0:	8b 47 24             	mov    0x24(%rdi),%eax
    ecb3:	ff c8                	dec    %eax
    ecb5:	78 07                	js     ecbe <_ZN12ImageTexture14maskImageAlphaEv+0xe>
    ecb7:	8b 4f 20             	mov    0x20(%rdi),%ecx
    ecba:	85 c9                	test   %ecx,%ecx
    ecbc:	75 0d                	jne    eccb <_ZN12ImageTexture14maskImageAlphaEv+0x1b>
    ecbe:	c3                   	retq   
    ecbf:	90                   	nop
    ecc0:	31 c9                	xor    %ecx,%ecx
    ecc2:	8d 50 ff             	lea    -0x1(%rax),%edx
    ecc5:	85 c0                	test   %eax,%eax
    ecc7:	89 d0                	mov    %edx,%eax
    ecc9:	7e f3                	jle    ecbe <_ZN12ImageTexture14maskImageAlphaEv+0xe>
    eccb:	85 c9                	test   %ecx,%ecx
    eccd:	74 f1                	je     ecc0 <_ZN12ImageTexture14maskImageAlphaEv+0x10>
    eccf:	31 d2                	xor    %edx,%edx
    ecd1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    ecd8:	0f 1f 84 00 00 00 00 
    ecdf:	00 
    ece0:	0f af c8             	imul   %eax,%ecx
    ece3:	01 d1                	add    %edx,%ecx
    ece5:	c1 e1 02             	shl    $0x2,%ecx
    ece8:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    ecec:	48 63 c9             	movslq %ecx,%rcx
    ecef:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
    ecf4:	44 88 44 0e 03       	mov    %r8b,0x3(%rsi,%rcx,1)
    ecf9:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    ecfd:	c6 04 0e ff          	movb   $0xff,(%rsi,%rcx,1)
    ed01:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    ed05:	c6 44 0e 01 ff       	movb   $0xff,0x1(%rsi,%rcx,1)
    ed0a:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    ed0e:	c6 44 0e 02 ff       	movb   $0xff,0x2(%rsi,%rcx,1)
    ed13:	ff c2                	inc    %edx
    ed15:	8b 4f 20             	mov    0x20(%rdi),%ecx
    ed18:	39 ca                	cmp    %ecx,%edx
    ed1a:	72 c4                	jb     ece0 <_ZN12ImageTexture14maskImageAlphaEv+0x30>
    ed1c:	eb a4                	jmp    ecc2 <_ZN12ImageTexture14maskImageAlphaEv+0x12>
    ed1e:	66 90                	xchg   %ax,%ax

000000000000ed20 <_ZN12ImageTexture9maskImageEhhhhhhh>:
    ed20:	8b 47 24             	mov    0x24(%rdi),%eax
    ed23:	ff c8                	dec    %eax
    ed25:	0f 88 ac 00 00 00    	js     edd7 <_ZN12ImageTexture9maskImageEhhhhhhh+0xb7>
    ed2b:	55                   	push   %rbp
    ed2c:	41 57                	push   %r15
    ed2e:	41 56                	push   %r14
    ed30:	41 54                	push   %r12
    ed32:	53                   	push   %rbx
    ed33:	8b 5f 20             	mov    0x20(%rdi),%ebx
    ed36:	85 db                	test   %ebx,%ebx
    ed38:	0f 84 91 00 00 00    	je     edcf <_ZN12ImageTexture9maskImageEhhhhhhh+0xaf>
    ed3e:	44 0f b6 54 24 38    	movzbl 0x38(%rsp),%r10d
    ed44:	44 0f b6 5c 24 30    	movzbl 0x30(%rsp),%r11d
    ed4a:	41 89 de             	mov    %ebx,%r14d
    ed4d:	eb 0d                	jmp    ed5c <_ZN12ImageTexture9maskImageEhhhhhhh+0x3c>
    ed4f:	90                   	nop
    ed50:	45 31 f6             	xor    %r14d,%r14d
    ed53:	8d 68 ff             	lea    -0x1(%rax),%ebp
    ed56:	85 c0                	test   %eax,%eax
    ed58:	89 e8                	mov    %ebp,%eax
    ed5a:	7e 73                	jle    edcf <_ZN12ImageTexture9maskImageEhhhhhhh+0xaf>
    ed5c:	45 85 f6             	test   %r14d,%r14d
    ed5f:	74 ef                	je     ed50 <_ZN12ImageTexture9maskImageEhhhhhhh+0x30>
    ed61:	31 ed                	xor    %ebp,%ebp
    ed63:	eb 14                	jmp    ed79 <_ZN12ImageTexture9maskImageEhhhhhhh+0x59>
    ed65:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    ed6c:	00 00 00 00 
    ed70:	ff c5                	inc    %ebp
    ed72:	41 89 de             	mov    %ebx,%r14d
    ed75:	39 dd                	cmp    %ebx,%ebp
    ed77:	73 da                	jae    ed53 <_ZN12ImageTexture9maskImageEhhhhhhh+0x33>
    ed79:	44 0f af f0          	imul   %eax,%r14d
    ed7d:	41 01 ee             	add    %ebp,%r14d
    ed80:	41 c1 e6 02          	shl    $0x2,%r14d
    ed84:	4c 8b 7f 28          	mov    0x28(%rdi),%r15
    ed88:	4d 63 f6             	movslq %r14d,%r14
    ed8b:	43 38 34 37          	cmp    %sil,(%r15,%r14,1)
    ed8f:	75 df                	jne    ed70 <_ZN12ImageTexture9maskImageEhhhhhhh+0x50>
    ed91:	43 38 54 37 01       	cmp    %dl,0x1(%r15,%r14,1)
    ed96:	75 d8                	jne    ed70 <_ZN12ImageTexture9maskImageEhhhhhhh+0x50>
    ed98:	43 38 4c 37 02       	cmp    %cl,0x2(%r15,%r14,1)
    ed9d:	75 d1                	jne    ed70 <_ZN12ImageTexture9maskImageEhhhhhhh+0x50>
    ed9f:	4c 89 f3             	mov    %r14,%rbx
    eda2:	48 83 cb 01          	or     $0x1,%rbx
    eda6:	4d 89 f4             	mov    %r14,%r12
    eda9:	49 83 cc 02          	or     $0x2,%r12
    edad:	47 88 04 37          	mov    %r8b,(%r15,%r14,1)
    edb1:	4c 8b 7f 28          	mov    0x28(%rdi),%r15
    edb5:	45 88 0c 1f          	mov    %r9b,(%r15,%rbx,1)
    edb9:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
    edbd:	46 88 1c 23          	mov    %r11b,(%rbx,%r12,1)
    edc1:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
    edc5:	46 88 54 33 03       	mov    %r10b,0x3(%rbx,%r14,1)
    edca:	8b 5f 20             	mov    0x20(%rdi),%ebx
    edcd:	eb a1                	jmp    ed70 <_ZN12ImageTexture9maskImageEhhhhhhh+0x50>
    edcf:	5b                   	pop    %rbx
    edd0:	41 5c                	pop    %r12
    edd2:	41 5e                	pop    %r14
    edd4:	41 5f                	pop    %r15
    edd6:	5d                   	pop    %rbp
    edd7:	c3                   	retq   
    edd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    eddf:	00 

000000000000ede0 <_ZN12ImageTexture10maskImageAEhhhh>:
    ede0:	8b 47 24             	mov    0x24(%rdi),%eax
    ede3:	ff c8                	dec    %eax
    ede5:	78 76                	js     ee5d <_ZN12ImageTexture10maskImageAEhhhh+0x7d>
    ede7:	44 8b 4f 20          	mov    0x20(%rdi),%r9d
    edeb:	45 85 c9             	test   %r9d,%r9d
    edee:	74 6d                	je     ee5d <_ZN12ImageTexture10maskImageAEhhhh+0x7d>
    edf0:	53                   	push   %rbx
    edf1:	45 89 cb             	mov    %r9d,%r11d
    edf4:	eb 18                	jmp    ee0e <_ZN12ImageTexture10maskImageAEhhhh+0x2e>
    edf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    edfd:	00 00 00 
    ee00:	45 31 db             	xor    %r11d,%r11d
    ee03:	44 8d 50 ff          	lea    -0x1(%rax),%r10d
    ee07:	85 c0                	test   %eax,%eax
    ee09:	44 89 d0             	mov    %r10d,%eax
    ee0c:	7e 4e                	jle    ee5c <_ZN12ImageTexture10maskImageAEhhhh+0x7c>
    ee0e:	45 85 db             	test   %r11d,%r11d
    ee11:	74 ed                	je     ee00 <_ZN12ImageTexture10maskImageAEhhhh+0x20>
    ee13:	45 31 d2             	xor    %r10d,%r10d
    ee16:	eb 13                	jmp    ee2b <_ZN12ImageTexture10maskImageAEhhhh+0x4b>
    ee18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ee1f:	00 
    ee20:	41 ff c2             	inc    %r10d
    ee23:	45 89 cb             	mov    %r9d,%r11d
    ee26:	45 39 ca             	cmp    %r9d,%r10d
    ee29:	73 d8                	jae    ee03 <_ZN12ImageTexture10maskImageAEhhhh+0x23>
    ee2b:	44 0f af d8          	imul   %eax,%r11d
    ee2f:	45 01 d3             	add    %r10d,%r11d
    ee32:	41 c1 e3 02          	shl    $0x2,%r11d
    ee36:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
    ee3a:	4d 63 db             	movslq %r11d,%r11
    ee3d:	42 38 34 1b          	cmp    %sil,(%rbx,%r11,1)
    ee41:	72 dd                	jb     ee20 <_ZN12ImageTexture10maskImageAEhhhh+0x40>
    ee43:	42 38 54 1b 01       	cmp    %dl,0x1(%rbx,%r11,1)
    ee48:	72 d6                	jb     ee20 <_ZN12ImageTexture10maskImageAEhhhh+0x40>
    ee4a:	42 38 4c 1b 02       	cmp    %cl,0x2(%rbx,%r11,1)
    ee4f:	72 cf                	jb     ee20 <_ZN12ImageTexture10maskImageAEhhhh+0x40>
    ee51:	46 88 44 1b 03       	mov    %r8b,0x3(%rbx,%r11,1)
    ee56:	44 8b 4f 20          	mov    0x20(%rdi),%r9d
    ee5a:	eb c4                	jmp    ee20 <_ZN12ImageTexture10maskImageAEhhhh+0x40>
    ee5c:	5b                   	pop    %rbx
    ee5d:	c3                   	retq   
    ee5e:	66 90                	xchg   %ax,%ax

000000000000ee60 <_ZN12ImageTexture10maskImageUEhhhh>:
    ee60:	8b 47 24             	mov    0x24(%rdi),%eax
    ee63:	ff c8                	dec    %eax
    ee65:	78 76                	js     eedd <_ZN12ImageTexture10maskImageUEhhhh+0x7d>
    ee67:	44 8b 4f 20          	mov    0x20(%rdi),%r9d
    ee6b:	45 85 c9             	test   %r9d,%r9d
    ee6e:	74 6d                	je     eedd <_ZN12ImageTexture10maskImageUEhhhh+0x7d>
    ee70:	53                   	push   %rbx
    ee71:	45 89 cb             	mov    %r9d,%r11d
    ee74:	eb 18                	jmp    ee8e <_ZN12ImageTexture10maskImageUEhhhh+0x2e>
    ee76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    ee7d:	00 00 00 
    ee80:	45 31 db             	xor    %r11d,%r11d
    ee83:	44 8d 50 ff          	lea    -0x1(%rax),%r10d
    ee87:	85 c0                	test   %eax,%eax
    ee89:	44 89 d0             	mov    %r10d,%eax
    ee8c:	7e 4e                	jle    eedc <_ZN12ImageTexture10maskImageUEhhhh+0x7c>
    ee8e:	45 85 db             	test   %r11d,%r11d
    ee91:	74 ed                	je     ee80 <_ZN12ImageTexture10maskImageUEhhhh+0x20>
    ee93:	45 31 d2             	xor    %r10d,%r10d
    ee96:	eb 13                	jmp    eeab <_ZN12ImageTexture10maskImageUEhhhh+0x4b>
    ee98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ee9f:	00 
    eea0:	41 ff c2             	inc    %r10d
    eea3:	45 89 cb             	mov    %r9d,%r11d
    eea6:	45 39 ca             	cmp    %r9d,%r10d
    eea9:	73 d8                	jae    ee83 <_ZN12ImageTexture10maskImageUEhhhh+0x23>
    eeab:	44 0f af d8          	imul   %eax,%r11d
    eeaf:	45 01 d3             	add    %r10d,%r11d
    eeb2:	41 c1 e3 02          	shl    $0x2,%r11d
    eeb6:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
    eeba:	4d 63 db             	movslq %r11d,%r11
    eebd:	42 38 34 1b          	cmp    %sil,(%rbx,%r11,1)
    eec1:	77 dd                	ja     eea0 <_ZN12ImageTexture10maskImageUEhhhh+0x40>
    eec3:	42 38 54 1b 01       	cmp    %dl,0x1(%rbx,%r11,1)
    eec8:	77 d6                	ja     eea0 <_ZN12ImageTexture10maskImageUEhhhh+0x40>
    eeca:	42 38 4c 1b 02       	cmp    %cl,0x2(%rbx,%r11,1)
    eecf:	77 cf                	ja     eea0 <_ZN12ImageTexture10maskImageUEhhhh+0x40>
    eed1:	46 88 44 1b 03       	mov    %r8b,0x3(%rbx,%r11,1)
    eed6:	44 8b 4f 20          	mov    0x20(%rdi),%r9d
    eeda:	eb c4                	jmp    eea0 <_ZN12ImageTexture10maskImageUEhhhh+0x40>
    eedc:	5b                   	pop    %rbx
    eedd:	c3                   	retq   
    eede:	66 90                	xchg   %ax,%ax

000000000000eee0 <_ZN12ImageTexture9maskImageEhhhh>:
    eee0:	8b 47 24             	mov    0x24(%rdi),%eax
    eee3:	ff c8                	dec    %eax
    eee5:	78 76                	js     ef5d <_ZN12ImageTexture9maskImageEhhhh+0x7d>
    eee7:	44 8b 4f 20          	mov    0x20(%rdi),%r9d
    eeeb:	45 85 c9             	test   %r9d,%r9d
    eeee:	74 6d                	je     ef5d <_ZN12ImageTexture9maskImageEhhhh+0x7d>
    eef0:	53                   	push   %rbx
    eef1:	45 89 cb             	mov    %r9d,%r11d
    eef4:	eb 18                	jmp    ef0e <_ZN12ImageTexture9maskImageEhhhh+0x2e>
    eef6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    eefd:	00 00 00 
    ef00:	45 31 db             	xor    %r11d,%r11d
    ef03:	44 8d 50 ff          	lea    -0x1(%rax),%r10d
    ef07:	85 c0                	test   %eax,%eax
    ef09:	44 89 d0             	mov    %r10d,%eax
    ef0c:	7e 4e                	jle    ef5c <_ZN12ImageTexture9maskImageEhhhh+0x7c>
    ef0e:	45 85 db             	test   %r11d,%r11d
    ef11:	74 ed                	je     ef00 <_ZN12ImageTexture9maskImageEhhhh+0x20>
    ef13:	45 31 d2             	xor    %r10d,%r10d
    ef16:	eb 13                	jmp    ef2b <_ZN12ImageTexture9maskImageEhhhh+0x4b>
    ef18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ef1f:	00 
    ef20:	41 ff c2             	inc    %r10d
    ef23:	45 89 cb             	mov    %r9d,%r11d
    ef26:	45 39 ca             	cmp    %r9d,%r10d
    ef29:	73 d8                	jae    ef03 <_ZN12ImageTexture9maskImageEhhhh+0x23>
    ef2b:	44 0f af d8          	imul   %eax,%r11d
    ef2f:	45 01 d3             	add    %r10d,%r11d
    ef32:	41 c1 e3 02          	shl    $0x2,%r11d
    ef36:	48 8b 5f 28          	mov    0x28(%rdi),%rbx
    ef3a:	4d 63 db             	movslq %r11d,%r11
    ef3d:	42 38 34 1b          	cmp    %sil,(%rbx,%r11,1)
    ef41:	75 dd                	jne    ef20 <_ZN12ImageTexture9maskImageEhhhh+0x40>
    ef43:	42 38 54 1b 01       	cmp    %dl,0x1(%rbx,%r11,1)
    ef48:	75 d6                	jne    ef20 <_ZN12ImageTexture9maskImageEhhhh+0x40>
    ef4a:	42 38 4c 1b 02       	cmp    %cl,0x2(%rbx,%r11,1)
    ef4f:	75 cf                	jne    ef20 <_ZN12ImageTexture9maskImageEhhhh+0x40>
    ef51:	46 88 44 1b 03       	mov    %r8b,0x3(%rbx,%r11,1)
    ef56:	44 8b 4f 20          	mov    0x20(%rdi),%r9d
    ef5a:	eb c4                	jmp    ef20 <_ZN12ImageTexture9maskImageEhhhh+0x40>
    ef5c:	5b                   	pop    %rbx
    ef5d:	c3                   	retq   
    ef5e:	66 90                	xchg   %ax,%ax

000000000000ef60 <_ZN12ImageTexture9maskImageEhhh>:
    ef60:	8b 47 24             	mov    0x24(%rdi),%eax
    ef63:	ff c8                	dec    %eax
    ef65:	78 76                	js     efdd <_ZN12ImageTexture9maskImageEhhh+0x7d>
    ef67:	44 8b 47 20          	mov    0x20(%rdi),%r8d
    ef6b:	45 85 c0             	test   %r8d,%r8d
    ef6e:	74 6d                	je     efdd <_ZN12ImageTexture9maskImageEhhh+0x7d>
    ef70:	45 89 c2             	mov    %r8d,%r10d
    ef73:	eb 19                	jmp    ef8e <_ZN12ImageTexture9maskImageEhhh+0x2e>
    ef75:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    ef7c:	00 00 00 00 
    ef80:	45 31 d2             	xor    %r10d,%r10d
    ef83:	44 8d 48 ff          	lea    -0x1(%rax),%r9d
    ef87:	85 c0                	test   %eax,%eax
    ef89:	44 89 c8             	mov    %r9d,%eax
    ef8c:	7e 4f                	jle    efdd <_ZN12ImageTexture9maskImageEhhh+0x7d>
    ef8e:	45 85 d2             	test   %r10d,%r10d
    ef91:	74 ed                	je     ef80 <_ZN12ImageTexture9maskImageEhhh+0x20>
    ef93:	45 31 c9             	xor    %r9d,%r9d
    ef96:	eb 13                	jmp    efab <_ZN12ImageTexture9maskImageEhhh+0x4b>
    ef98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ef9f:	00 
    efa0:	41 ff c1             	inc    %r9d
    efa3:	45 89 c2             	mov    %r8d,%r10d
    efa6:	45 39 c1             	cmp    %r8d,%r9d
    efa9:	73 d8                	jae    ef83 <_ZN12ImageTexture9maskImageEhhh+0x23>
    efab:	44 0f af d0          	imul   %eax,%r10d
    efaf:	45 01 ca             	add    %r9d,%r10d
    efb2:	41 c1 e2 02          	shl    $0x2,%r10d
    efb6:	4c 8b 5f 28          	mov    0x28(%rdi),%r11
    efba:	4d 63 d2             	movslq %r10d,%r10
    efbd:	43 38 34 13          	cmp    %sil,(%r11,%r10,1)
    efc1:	75 dd                	jne    efa0 <_ZN12ImageTexture9maskImageEhhh+0x40>
    efc3:	43 38 54 13 01       	cmp    %dl,0x1(%r11,%r10,1)
    efc8:	75 d6                	jne    efa0 <_ZN12ImageTexture9maskImageEhhh+0x40>
    efca:	43 38 4c 13 02       	cmp    %cl,0x2(%r11,%r10,1)
    efcf:	75 cf                	jne    efa0 <_ZN12ImageTexture9maskImageEhhh+0x40>
    efd1:	43 c6 44 13 03 00    	movb   $0x0,0x3(%r11,%r10,1)
    efd7:	44 8b 47 20          	mov    0x20(%rdi),%r8d
    efdb:	eb c3                	jmp    efa0 <_ZN12ImageTexture9maskImageEhhh+0x40>
    efdd:	c3                   	retq   
    efde:	66 90                	xchg   %ax,%ax

000000000000efe0 <_ZN12ImageTexture9maskImageE12ColorTextureh>:
    efe0:	8b 47 24             	mov    0x24(%rdi),%eax
    efe3:	ff c8                	dec    %eax
    efe5:	0f 88 7f 00 00 00    	js     f06a <_ZN12ImageTexture9maskImageE12ColorTextureh+0x8a>
    efeb:	8b 4f 20             	mov    0x20(%rdi),%ecx
    efee:	85 c9                	test   %ecx,%ecx
    eff0:	74 78                	je     f06a <_ZN12ImageTexture9maskImageE12ColorTextureh+0x8a>
    eff2:	41 89 c9             	mov    %ecx,%r9d
    eff5:	eb 17                	jmp    f00e <_ZN12ImageTexture9maskImageE12ColorTextureh+0x2e>
    eff7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    effe:	00 00 
    f000:	45 31 c9             	xor    %r9d,%r9d
    f003:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
    f007:	85 c0                	test   %eax,%eax
    f009:	44 89 c0             	mov    %r8d,%eax
    f00c:	7e 5c                	jle    f06a <_ZN12ImageTexture9maskImageE12ColorTextureh+0x8a>
    f00e:	45 85 c9             	test   %r9d,%r9d
    f011:	74 ed                	je     f000 <_ZN12ImageTexture9maskImageE12ColorTextureh+0x20>
    f013:	45 31 c0             	xor    %r8d,%r8d
    f016:	eb 13                	jmp    f02b <_ZN12ImageTexture9maskImageE12ColorTextureh+0x4b>
    f018:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    f01f:	00 
    f020:	41 ff c0             	inc    %r8d
    f023:	41 89 c9             	mov    %ecx,%r9d
    f026:	41 39 c8             	cmp    %ecx,%r8d
    f029:	73 d8                	jae    f003 <_ZN12ImageTexture9maskImageE12ColorTextureh+0x23>
    f02b:	44 0f af c8          	imul   %eax,%r9d
    f02f:	45 01 c1             	add    %r8d,%r9d
    f032:	41 c1 e1 02          	shl    $0x2,%r9d
    f036:	4c 8b 57 28          	mov    0x28(%rdi),%r10
    f03a:	4d 63 c9             	movslq %r9d,%r9
    f03d:	47 0f b6 1c 0a       	movzbl (%r10,%r9,1),%r11d
    f042:	44 3a 5e 20          	cmp    0x20(%rsi),%r11b
    f046:	75 d8                	jne    f020 <_ZN12ImageTexture9maskImageE12ColorTextureh+0x40>
    f048:	47 0f b6 5c 0a 01    	movzbl 0x1(%r10,%r9,1),%r11d
    f04e:	44 3a 5e 21          	cmp    0x21(%rsi),%r11b
    f052:	75 cc                	jne    f020 <_ZN12ImageTexture9maskImageE12ColorTextureh+0x40>
    f054:	47 0f b6 5c 0a 02    	movzbl 0x2(%r10,%r9,1),%r11d
    f05a:	44 3a 5e 22          	cmp    0x22(%rsi),%r11b
    f05e:	75 c0                	jne    f020 <_ZN12ImageTexture9maskImageE12ColorTextureh+0x40>
    f060:	43 88 54 0a 03       	mov    %dl,0x3(%r10,%r9,1)
    f065:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f068:	eb b6                	jmp    f020 <_ZN12ImageTexture9maskImageE12ColorTextureh+0x40>
    f06a:	c3                   	retq   
    f06b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000f070 <_ZN12ImageTexture9maskImageE12ColorTexture>:
    f070:	8b 47 24             	mov    0x24(%rdi),%eax
    f073:	ff c8                	dec    %eax
    f075:	0f 88 7e 00 00 00    	js     f0f9 <_ZN12ImageTexture9maskImageE12ColorTexture+0x89>
    f07b:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f07e:	85 c9                	test   %ecx,%ecx
    f080:	74 77                	je     f0f9 <_ZN12ImageTexture9maskImageE12ColorTexture+0x89>
    f082:	41 89 c8             	mov    %ecx,%r8d
    f085:	eb 15                	jmp    f09c <_ZN12ImageTexture9maskImageE12ColorTexture+0x2c>
    f087:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    f08e:	00 00 
    f090:	45 31 c0             	xor    %r8d,%r8d
    f093:	8d 50 ff             	lea    -0x1(%rax),%edx
    f096:	85 c0                	test   %eax,%eax
    f098:	89 d0                	mov    %edx,%eax
    f09a:	7e 5d                	jle    f0f9 <_ZN12ImageTexture9maskImageE12ColorTexture+0x89>
    f09c:	45 85 c0             	test   %r8d,%r8d
    f09f:	74 ef                	je     f090 <_ZN12ImageTexture9maskImageE12ColorTexture+0x20>
    f0a1:	31 d2                	xor    %edx,%edx
    f0a3:	eb 14                	jmp    f0b9 <_ZN12ImageTexture9maskImageE12ColorTexture+0x49>
    f0a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    f0ac:	00 00 00 00 
    f0b0:	ff c2                	inc    %edx
    f0b2:	41 89 c8             	mov    %ecx,%r8d
    f0b5:	39 ca                	cmp    %ecx,%edx
    f0b7:	73 da                	jae    f093 <_ZN12ImageTexture9maskImageE12ColorTexture+0x23>
    f0b9:	44 0f af c0          	imul   %eax,%r8d
    f0bd:	41 01 d0             	add    %edx,%r8d
    f0c0:	41 c1 e0 02          	shl    $0x2,%r8d
    f0c4:	4c 8b 4f 28          	mov    0x28(%rdi),%r9
    f0c8:	4d 63 c0             	movslq %r8d,%r8
    f0cb:	47 0f b6 14 01       	movzbl (%r9,%r8,1),%r10d
    f0d0:	44 3a 56 20          	cmp    0x20(%rsi),%r10b
    f0d4:	75 da                	jne    f0b0 <_ZN12ImageTexture9maskImageE12ColorTexture+0x40>
    f0d6:	47 0f b6 54 01 01    	movzbl 0x1(%r9,%r8,1),%r10d
    f0dc:	44 3a 56 21          	cmp    0x21(%rsi),%r10b
    f0e0:	75 ce                	jne    f0b0 <_ZN12ImageTexture9maskImageE12ColorTexture+0x40>
    f0e2:	47 0f b6 54 01 02    	movzbl 0x2(%r9,%r8,1),%r10d
    f0e8:	44 3a 56 22          	cmp    0x22(%rsi),%r10b
    f0ec:	75 c2                	jne    f0b0 <_ZN12ImageTexture9maskImageE12ColorTexture+0x40>
    f0ee:	43 c6 44 01 03 00    	movb   $0x0,0x3(%r9,%r8,1)
    f0f4:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f0f7:	eb b7                	jmp    f0b0 <_ZN12ImageTexture9maskImageE12ColorTexture+0x40>
    f0f9:	c3                   	retq   
    f0fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000f100 <_ZN12ImageTexture9maskImageEP12ColorTextureh>:
    f100:	8b 47 24             	mov    0x24(%rdi),%eax
    f103:	ff c8                	dec    %eax
    f105:	0f 88 7f 00 00 00    	js     f18a <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x8a>
    f10b:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f10e:	85 c9                	test   %ecx,%ecx
    f110:	74 78                	je     f18a <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x8a>
    f112:	41 89 c9             	mov    %ecx,%r9d
    f115:	eb 17                	jmp    f12e <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x2e>
    f117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    f11e:	00 00 
    f120:	45 31 c9             	xor    %r9d,%r9d
    f123:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
    f127:	85 c0                	test   %eax,%eax
    f129:	44 89 c0             	mov    %r8d,%eax
    f12c:	7e 5c                	jle    f18a <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x8a>
    f12e:	45 85 c9             	test   %r9d,%r9d
    f131:	74 ed                	je     f120 <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x20>
    f133:	45 31 c0             	xor    %r8d,%r8d
    f136:	eb 13                	jmp    f14b <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x4b>
    f138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    f13f:	00 
    f140:	41 ff c0             	inc    %r8d
    f143:	41 89 c9             	mov    %ecx,%r9d
    f146:	41 39 c8             	cmp    %ecx,%r8d
    f149:	73 d8                	jae    f123 <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x23>
    f14b:	44 0f af c8          	imul   %eax,%r9d
    f14f:	45 01 c1             	add    %r8d,%r9d
    f152:	41 c1 e1 02          	shl    $0x2,%r9d
    f156:	4c 8b 57 28          	mov    0x28(%rdi),%r10
    f15a:	4d 63 c9             	movslq %r9d,%r9
    f15d:	47 0f b6 1c 0a       	movzbl (%r10,%r9,1),%r11d
    f162:	44 3a 5e 20          	cmp    0x20(%rsi),%r11b
    f166:	75 d8                	jne    f140 <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x40>
    f168:	47 0f b6 5c 0a 01    	movzbl 0x1(%r10,%r9,1),%r11d
    f16e:	44 3a 5e 21          	cmp    0x21(%rsi),%r11b
    f172:	75 cc                	jne    f140 <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x40>
    f174:	47 0f b6 5c 0a 02    	movzbl 0x2(%r10,%r9,1),%r11d
    f17a:	44 3a 5e 22          	cmp    0x22(%rsi),%r11b
    f17e:	75 c0                	jne    f140 <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x40>
    f180:	43 88 54 0a 03       	mov    %dl,0x3(%r10,%r9,1)
    f185:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f188:	eb b6                	jmp    f140 <_ZN12ImageTexture9maskImageEP12ColorTextureh+0x40>
    f18a:	c3                   	retq   
    f18b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000f190 <_ZN12ImageTexture9maskImageEP12ColorTexture>:
    f190:	8b 47 24             	mov    0x24(%rdi),%eax
    f193:	ff c8                	dec    %eax
    f195:	0f 88 7e 00 00 00    	js     f219 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x89>
    f19b:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f19e:	85 c9                	test   %ecx,%ecx
    f1a0:	74 77                	je     f219 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x89>
    f1a2:	41 89 c8             	mov    %ecx,%r8d
    f1a5:	eb 15                	jmp    f1bc <_ZN12ImageTexture9maskImageEP12ColorTexture+0x2c>
    f1a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    f1ae:	00 00 
    f1b0:	45 31 c0             	xor    %r8d,%r8d
    f1b3:	8d 50 ff             	lea    -0x1(%rax),%edx
    f1b6:	85 c0                	test   %eax,%eax
    f1b8:	89 d0                	mov    %edx,%eax
    f1ba:	7e 5d                	jle    f219 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x89>
    f1bc:	45 85 c0             	test   %r8d,%r8d
    f1bf:	74 ef                	je     f1b0 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x20>
    f1c1:	31 d2                	xor    %edx,%edx
    f1c3:	eb 14                	jmp    f1d9 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x49>
    f1c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    f1cc:	00 00 00 00 
    f1d0:	ff c2                	inc    %edx
    f1d2:	41 89 c8             	mov    %ecx,%r8d
    f1d5:	39 ca                	cmp    %ecx,%edx
    f1d7:	73 da                	jae    f1b3 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x23>
    f1d9:	44 0f af c0          	imul   %eax,%r8d
    f1dd:	41 01 d0             	add    %edx,%r8d
    f1e0:	41 c1 e0 02          	shl    $0x2,%r8d
    f1e4:	4c 8b 4f 28          	mov    0x28(%rdi),%r9
    f1e8:	4d 63 c0             	movslq %r8d,%r8
    f1eb:	47 0f b6 14 01       	movzbl (%r9,%r8,1),%r10d
    f1f0:	44 3a 56 20          	cmp    0x20(%rsi),%r10b
    f1f4:	75 da                	jne    f1d0 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x40>
    f1f6:	47 0f b6 54 01 01    	movzbl 0x1(%r9,%r8,1),%r10d
    f1fc:	44 3a 56 21          	cmp    0x21(%rsi),%r10b
    f200:	75 ce                	jne    f1d0 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x40>
    f202:	47 0f b6 54 01 02    	movzbl 0x2(%r9,%r8,1),%r10d
    f208:	44 3a 56 22          	cmp    0x22(%rsi),%r10b
    f20c:	75 c2                	jne    f1d0 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x40>
    f20e:	43 c6 44 01 03 00    	movb   $0x0,0x3(%r9,%r8,1)
    f214:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f217:	eb b7                	jmp    f1d0 <_ZN12ImageTexture9maskImageEP12ColorTexture+0x40>
    f219:	c3                   	retq   
    f21a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000f220 <_ZN12ImageTexture8getColorEPhPdS1_S1_jj>:
    f220:	8b 47 20             	mov    0x20(%rdi),%eax
    f223:	0f af 44 24 08       	imul   0x8(%rsp),%eax
    f228:	44 01 c8             	add    %r9d,%eax
    f22b:	c1 e0 02             	shl    $0x2,%eax
    f22e:	4c 8b 4f 28          	mov    0x28(%rdi),%r9
    f232:	48 98                	cltq   
    f234:	45 0f b6 0c 01       	movzbl (%r9,%rax,1),%r9d
    f239:	44 88 0e             	mov    %r9b,(%rsi)
    f23c:	4c 8b 4f 28          	mov    0x28(%rdi),%r9
    f240:	45 0f b6 4c 01 01    	movzbl 0x1(%r9,%rax,1),%r9d
    f246:	44 88 4e 01          	mov    %r9b,0x1(%rsi)
    f24a:	4c 8b 4f 28          	mov    0x28(%rdi),%r9
    f24e:	45 0f b6 4c 01 02    	movzbl 0x2(%r9,%rax,1),%r9d
    f254:	44 88 4e 02          	mov    %r9b,0x2(%rsi)
    f258:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    f25c:	0f b6 44 06 03       	movzbl 0x3(%rsi,%rax,1),%eax
    f261:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    f265:	f2 0f 59 47 08       	mulsd  0x8(%rdi),%xmm0
    f26a:	f2 0f 5e 05 9e 26 ff 	divsd  -0xd962(%rip),%xmm0        # 1910 <_IO_stdin_used+0x10>
    f271:	ff 
    f272:	f2 0f 11 01          	movsd  %xmm0,(%rcx)
    f276:	f2 0f 10 47 10       	movsd  0x10(%rdi),%xmm0
    f27b:	f2 41 0f 11 00       	movsd  %xmm0,(%r8)
    f280:	f2 0f 10 47 18       	movsd  0x18(%rdi),%xmm0
    f285:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
    f289:	c3                   	retq   
    f28a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000f290 <_ZN12ImageTexture8setColorEjjPh>:
    f290:	0f af 57 20          	imul   0x20(%rdi),%edx
    f294:	01 f2                	add    %esi,%edx
    f296:	c1 e2 02             	shl    $0x2,%edx
    f299:	0f b6 31             	movzbl (%rcx),%esi
    f29c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
    f2a0:	48 63 c2             	movslq %edx,%rax
    f2a3:	41 88 34 00          	mov    %sil,(%r8,%rax,1)
    f2a7:	0f b6 51 01          	movzbl 0x1(%rcx),%edx
    f2ab:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    f2af:	88 54 06 01          	mov    %dl,0x1(%rsi,%rax,1)
    f2b3:	0f b6 49 02          	movzbl 0x2(%rcx),%ecx
    f2b7:	48 8b 57 28          	mov    0x28(%rdi),%rdx
    f2bb:	88 4c 02 02          	mov    %cl,0x2(%rdx,%rax,1)
    f2bf:	48 03 47 28          	add    0x28(%rdi),%rax
    f2c3:	c3                   	retq   
    f2c4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    f2cb:	00 00 00 00 00 

000000000000f2d0 <_ZN12ImageTexture8setColorEjjhhh>:
    f2d0:	0f af 57 20          	imul   0x20(%rdi),%edx
    f2d4:	01 f2                	add    %esi,%edx
    f2d6:	c1 e2 02             	shl    $0x2,%edx
    f2d9:	48 8b 77 28          	mov    0x28(%rdi),%rsi
    f2dd:	48 63 c2             	movslq %edx,%rax
    f2e0:	88 0c 06             	mov    %cl,(%rsi,%rax,1)
    f2e3:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
    f2e7:	44 88 44 01 01       	mov    %r8b,0x1(%rcx,%rax,1)
    f2ec:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
    f2f0:	44 88 4c 01 02       	mov    %r9b,0x2(%rcx,%rax,1)
    f2f5:	48 03 47 28          	add    0x28(%rdi),%rax
    f2f9:	c3                   	retq   
    f2fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000f300 <_ZN12ImageTextureC1Ejj>:
    f300:	55                   	push   %rbp
    f301:	41 56                	push   %r14
    f303:	53                   	push   %rbx
    f304:	41 89 d6             	mov    %edx,%r14d
    f307:	89 f5                	mov    %esi,%ebp
    f309:	48 89 fb             	mov    %rdi,%rbx
    f30c:	f2 0f 10 05 64 26 ff 	movsd  -0xd99c(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    f313:	ff 
    f314:	f2 0f 10 0d 2c 26 ff 	movsd  -0xd9d4(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    f31b:	ff 
    f31c:	0f 57 d2             	xorps  %xmm2,%xmm2
    f31f:	e8 9c 06 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    f324:	48 8d 05 75 1e 00 00 	lea    0x1e75(%rip),%rax        # 111a0 <_ZTV12ImageTexture+0x10>
    f32b:	48 89 03             	mov    %rax,(%rbx)
    f32e:	89 6b 20             	mov    %ebp,0x20(%rbx)
    f331:	44 89 73 24          	mov    %r14d,0x24(%rbx)
    f335:	44 0f af f5          	imul   %ebp,%r14d
    f339:	42 8d 3c b5 00 00 00 	lea    0x0(,%r14,4),%edi
    f340:	00 
    f341:	e8 da 08 00 00       	callq  fc20 <malloc@plt>
    f346:	48 89 43 28          	mov    %rax,0x28(%rbx)
    f34a:	45 85 f6             	test   %r14d,%r14d
    f34d:	74 29                	je     f378 <_ZN12ImageTextureC1Ejj+0x78>
    f34f:	31 c0                	xor    %eax,%eax
    f351:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    f358:	0f 1f 84 00 00 00 00 
    f35f:	00 
    f360:	48 8b 4b 28          	mov    0x28(%rbx),%rcx
    f364:	c6 44 81 03 ff       	movb   $0xff,0x3(%rcx,%rax,4)
    f369:	48 ff c0             	inc    %rax
    f36c:	8b 4b 24             	mov    0x24(%rbx),%ecx
    f36f:	0f af 4b 20          	imul   0x20(%rbx),%ecx
    f373:	48 39 c8             	cmp    %rcx,%rax
    f376:	72 e8                	jb     f360 <_ZN12ImageTextureC1Ejj+0x60>
    f378:	5b                   	pop    %rbx
    f379:	41 5e                	pop    %r14
    f37b:	5d                   	pop    %rbp
    f37c:	c3                   	retq   
    f37d:	0f 1f 00             	nopl   (%rax)

000000000000f380 <_ZN12ImageTextureC1EPhjj>:
    f380:	55                   	push   %rbp
    f381:	41 57                	push   %r15
    f383:	41 56                	push   %r14
    f385:	53                   	push   %rbx
    f386:	50                   	push   %rax
    f387:	89 cb                	mov    %ecx,%ebx
    f389:	89 d5                	mov    %edx,%ebp
    f38b:	49 89 f6             	mov    %rsi,%r14
    f38e:	49 89 ff             	mov    %rdi,%r15
    f391:	f2 0f 10 05 df 25 ff 	movsd  -0xda21(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    f398:	ff 
    f399:	f2 0f 10 0d a7 25 ff 	movsd  -0xda59(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    f3a0:	ff 
    f3a1:	0f 57 d2             	xorps  %xmm2,%xmm2
    f3a4:	e8 17 06 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    f3a9:	48 8d 05 f0 1d 00 00 	lea    0x1df0(%rip),%rax        # 111a0 <_ZTV12ImageTexture+0x10>
    f3b0:	49 89 07             	mov    %rax,(%r15)
    f3b3:	4d 89 77 28          	mov    %r14,0x28(%r15)
    f3b7:	41 89 6f 20          	mov    %ebp,0x20(%r15)
    f3bb:	41 89 5f 24          	mov    %ebx,0x24(%r15)
    f3bf:	48 83 c4 08          	add    $0x8,%rsp
    f3c3:	5b                   	pop    %rbx
    f3c4:	41 5e                	pop    %r14
    f3c6:	41 5f                	pop    %r15
    f3c8:	5d                   	pop    %rbp
    f3c9:	c3                   	retq   
    f3ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000f3d0 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc>:
    f3d0:	55                   	push   %rbp
    f3d1:	41 57                	push   %r15
    f3d3:	41 56                	push   %r14
    f3d5:	41 55                	push   %r13
    f3d7:	41 54                	push   %r12
    f3d9:	53                   	push   %rbx
    f3da:	48 83 ec 18          	sub    $0x18,%rsp
    f3de:	49 89 d7             	mov    %rdx,%r15
    f3e1:	48 85 f6             	test   %rsi,%rsi
    f3e4:	0f 84 e3 03 00 00    	je     f7cd <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x3fd>
    f3ea:	48 89 f3             	mov    %rsi,%rbx
    f3ed:	49 89 fe             	mov    %rdi,%r14
    f3f0:	48 89 f7             	mov    %rsi,%rdi
    f3f3:	e8 28 0a 00 00       	callq  fe20 <getc@plt>
    f3f8:	83 f8 50             	cmp    $0x50,%eax
    f3fb:	0f 85 e4 03 00 00    	jne    f7e5 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x415>
    f401:	48 89 df             	mov    %rbx,%rdi
    f404:	e8 17 0a 00 00       	callq  fe20 <getc@plt>
    f409:	89 c5                	mov    %eax,%ebp
    f40b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    f410:	48 89 df             	mov    %rbx,%rdi
    f413:	e8 88 06 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f418:	83 f8 23             	cmp    $0x23,%eax
    f41b:	75 0f                	jne    f42c <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x5c>
    f41d:	48 89 df             	mov    %rbx,%rdi
    f420:	e8 fb 09 00 00       	callq  fe20 <getc@plt>
    f425:	83 f8 0a             	cmp    $0xa,%eax
    f428:	75 f3                	jne    f41d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x4d>
    f42a:	eb e4                	jmp    f410 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x40>
    f42c:	83 fd 36             	cmp    $0x36,%ebp
    f42f:	0f 84 0d 02 00 00    	je     f642 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x272>
    f435:	83 fd 33             	cmp    $0x33,%ebp
    f438:	0f 85 c3 03 00 00    	jne    f801 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x431>
    f43e:	49 bf 00 06 00 00 01 	movabs $0x100000600,%r15
    f445:	00 00 00 
    f448:	48 89 df             	mov    %rbx,%rdi
    f44b:	e8 50 06 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f450:	83 f8 20             	cmp    $0x20,%eax
    f453:	77 38                	ja     f48d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0xbd>
    f455:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    f45c:	00 00 00 00 
    f460:	89 c0                	mov    %eax,%eax
    f462:	49 0f a3 c7          	bt     %rax,%r15
    f466:	73 25                	jae    f48d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0xbd>
    f468:	48 89 df             	mov    %rbx,%rdi
    f46b:	e8 b0 09 00 00       	callq  fe20 <getc@plt>
    f470:	48 89 df             	mov    %rbx,%rdi
    f473:	e8 28 06 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f478:	83 f8 20             	cmp    $0x20,%eax
    f47b:	76 e3                	jbe    f460 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x90>
    f47d:	eb 0e                	jmp    f48d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0xbd>
    f47f:	90                   	nop
    f480:	48 89 df             	mov    %rbx,%rdi
    f483:	e8 98 09 00 00       	callq  fe20 <getc@plt>
    f488:	83 f8 0a             	cmp    $0xa,%eax
    f48b:	75 f3                	jne    f480 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0xb0>
    f48d:	48 89 df             	mov    %rbx,%rdi
    f490:	e8 0b 06 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f495:	83 f8 23             	cmp    $0x23,%eax
    f498:	74 e6                	je     f480 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0xb0>
    f49a:	4d 8d 7e 20          	lea    0x20(%r14),%r15
    f49e:	4d 8d 66 24          	lea    0x24(%r14),%r12
    f4a2:	48 8d 35 ad 2f ff ff 	lea    -0xd053(%rip),%rsi        # 2456 <_IO_stdin_used+0xb56>
    f4a9:	48 89 df             	mov    %rbx,%rdi
    f4ac:	4c 89 fa             	mov    %r15,%rdx
    f4af:	4c 89 e1             	mov    %r12,%rcx
    f4b2:	31 c0                	xor    %eax,%eax
    f4b4:	e8 77 08 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f4b9:	83 f8 01             	cmp    $0x1,%eax
    f4bc:	0f 8e 52 03 00 00    	jle    f814 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x444>
    f4c2:	48 8d 35 6c 25 ff ff 	lea    -0xda94(%rip),%rsi        # 1a35 <_IO_stdin_used+0x135>
    f4c9:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    f4ce:	48 89 df             	mov    %rbx,%rdi
    f4d1:	31 c0                	xor    %eax,%eax
    f4d3:	e8 58 08 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f4d8:	8b 74 24 10          	mov    0x10(%rsp),%esi
    f4dc:	85 c0                	test   %eax,%eax
    f4de:	0f 8e 5e 03 00 00    	jle    f842 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x472>
    f4e4:	81 fe ff 00 00 00    	cmp    $0xff,%esi
    f4ea:	0f 85 52 03 00 00    	jne    f842 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x472>
    f4f0:	be 01 00 00 00       	mov    $0x1,%esi
    f4f5:	48 89 df             	mov    %rbx,%rdi
    f4f8:	ba 01 00 00 00       	mov    $0x1,%edx
    f4fd:	e8 2e 09 00 00       	callq  fe30 <fseek@plt>
    f502:	48 89 df             	mov    %rbx,%rdi
    f505:	e8 16 09 00 00       	callq  fe20 <getc@plt>
    f50a:	48 89 df             	mov    %rbx,%rdi
    f50d:	e8 8e 05 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f512:	83 f8 23             	cmp    $0x23,%eax
    f515:	75 16                	jne    f52d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x15d>
    f517:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    f51e:	00 00 
    f520:	48 89 df             	mov    %rbx,%rdi
    f523:	e8 f8 08 00 00       	callq  fe20 <getc@plt>
    f528:	83 f8 0a             	cmp    $0xa,%eax
    f52b:	75 f3                	jne    f520 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x150>
    f52d:	41 8b 6e 20          	mov    0x20(%r14),%ebp
    f531:	45 8b 7e 24          	mov    0x24(%r14),%r15d
    f535:	89 ef                	mov    %ebp,%edi
    f537:	41 0f af ff          	imul   %r15d,%edi
    f53b:	c1 e7 02             	shl    $0x2,%edi
    f53e:	e8 dd 06 00 00       	callq  fc20 <malloc@plt>
    f543:	49 89 46 28          	mov    %rax,0x28(%r14)
    f547:	41 ff cf             	dec    %r15d
    f54a:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
    f54f:	0f 88 d8 01 00 00    	js     f72d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x35d>
    f555:	89 ea                	mov    %ebp,%edx
    f557:	85 ed                	test   %ebp,%ebp
    f559:	0f 84 ce 01 00 00    	je     f72d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x35d>
    f55f:	4c 8d 3d cf 24 ff ff 	lea    -0xdb31(%rip),%r15        # 1a35 <_IO_stdin_used+0x135>
    f566:	4c 8d 64 24 04       	lea    0x4(%rsp),%r12
    f56b:	eb 1b                	jmp    f588 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x1b8>
    f56d:	0f 1f 00             	nopl   (%rax)
    f570:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    f575:	8d 41 ff             	lea    -0x1(%rcx),%eax
    f578:	44 89 ea             	mov    %r13d,%edx
    f57b:	85 c9                	test   %ecx,%ecx
    f57d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    f582:	0f 8e a5 01 00 00    	jle    f72d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x35d>
    f588:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    f58e:	85 d2                	test   %edx,%edx
    f590:	74 de                	je     f570 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x1a0>
    f592:	31 ed                	xor    %ebp,%ebp
    f594:	41 89 d5             	mov    %edx,%r13d
    f597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    f59e:	00 00 
    f5a0:	48 89 df             	mov    %rbx,%rdi
    f5a3:	4c 89 fe             	mov    %r15,%rsi
    f5a6:	4c 89 e2             	mov    %r12,%rdx
    f5a9:	31 c0                	xor    %eax,%eax
    f5ab:	e8 80 07 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f5b0:	83 f8 ff             	cmp    $0xffffffff,%eax
    f5b3:	0f 84 fe 01 00 00    	je     f7b7 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x3e7>
    f5b9:	44 0f af 6c 24 08    	imul   0x8(%rsp),%r13d
    f5bf:	41 01 ed             	add    %ebp,%r13d
    f5c2:	41 c1 e5 02          	shl    $0x2,%r13d
    f5c6:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
    f5cb:	49 8b 4e 28          	mov    0x28(%r14),%rcx
    f5cf:	4d 63 ed             	movslq %r13d,%r13
    f5d2:	42 88 04 29          	mov    %al,(%rcx,%r13,1)
    f5d6:	48 89 df             	mov    %rbx,%rdi
    f5d9:	4c 89 fe             	mov    %r15,%rsi
    f5dc:	4c 89 e2             	mov    %r12,%rdx
    f5df:	31 c0                	xor    %eax,%eax
    f5e1:	e8 4a 07 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f5e6:	83 f8 ff             	cmp    $0xffffffff,%eax
    f5e9:	0f 84 c8 01 00 00    	je     f7b7 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x3e7>
    f5ef:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
    f5f4:	49 8b 4e 28          	mov    0x28(%r14),%rcx
    f5f8:	42 88 44 29 01       	mov    %al,0x1(%rcx,%r13,1)
    f5fd:	48 89 df             	mov    %rbx,%rdi
    f600:	4c 89 fe             	mov    %r15,%rsi
    f603:	4c 89 e2             	mov    %r12,%rdx
    f606:	31 c0                	xor    %eax,%eax
    f608:	e8 23 07 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f60d:	83 f8 ff             	cmp    $0xffffffff,%eax
    f610:	0f 84 a1 01 00 00    	je     f7b7 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x3e7>
    f616:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
    f61b:	49 8b 4e 28          	mov    0x28(%r14),%rcx
    f61f:	42 88 44 29 02       	mov    %al,0x2(%rcx,%r13,1)
    f624:	49 8b 46 28          	mov    0x28(%r14),%rax
    f628:	42 c6 44 28 03 ff    	movb   $0xff,0x3(%rax,%r13,1)
    f62e:	ff c5                	inc    %ebp
    f630:	45 8b 6e 20          	mov    0x20(%r14),%r13d
    f634:	44 39 ed             	cmp    %r13d,%ebp
    f637:	0f 82 63 ff ff ff    	jb     f5a0 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x1d0>
    f63d:	e9 2e ff ff ff       	jmpq   f570 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x1a0>
    f642:	4d 8d 7e 20          	lea    0x20(%r14),%r15
    f646:	4d 8d 66 24          	lea    0x24(%r14),%r12
    f64a:	48 8d 35 05 2e ff ff 	lea    -0xd1fb(%rip),%rsi        # 2456 <_IO_stdin_used+0xb56>
    f651:	48 89 df             	mov    %rbx,%rdi
    f654:	4c 89 fa             	mov    %r15,%rdx
    f657:	4c 89 e1             	mov    %r12,%rcx
    f65a:	31 c0                	xor    %eax,%eax
    f65c:	e8 cf 06 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f661:	83 f8 02             	cmp    $0x2,%eax
    f664:	0f 8c ba 01 00 00    	jl     f824 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x454>
    f66a:	49 bf 00 06 00 00 01 	movabs $0x100000600,%r15
    f671:	00 00 00 
    f674:	48 89 df             	mov    %rbx,%rdi
    f677:	e8 24 04 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f67c:	83 f8 20             	cmp    $0x20,%eax
    f67f:	77 2c                	ja     f6ad <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x2dd>
    f681:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    f688:	0f 1f 84 00 00 00 00 
    f68f:	00 
    f690:	89 c0                	mov    %eax,%eax
    f692:	49 0f a3 c7          	bt     %rax,%r15
    f696:	73 15                	jae    f6ad <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x2dd>
    f698:	48 89 df             	mov    %rbx,%rdi
    f69b:	e8 80 07 00 00       	callq  fe20 <getc@plt>
    f6a0:	48 89 df             	mov    %rbx,%rdi
    f6a3:	e8 f8 03 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f6a8:	83 f8 20             	cmp    $0x20,%eax
    f6ab:	76 e3                	jbe    f690 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x2c0>
    f6ad:	48 8d 35 81 23 ff ff 	lea    -0xdc7f(%rip),%rsi        # 1a35 <_IO_stdin_used+0x135>
    f6b4:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx
    f6b9:	48 89 df             	mov    %rbx,%rdi
    f6bc:	31 c0                	xor    %eax,%eax
    f6be:	e8 6d 06 00 00       	callq  fd30 <__isoc99_fscanf@plt>
    f6c3:	8b 74 24 14          	mov    0x14(%rsp),%esi
    f6c7:	85 c0                	test   %eax,%eax
    f6c9:	0f 8e 90 01 00 00    	jle    f85f <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x48f>
    f6cf:	81 fe ff 00 00 00    	cmp    $0xff,%esi
    f6d5:	0f 85 84 01 00 00    	jne    f85f <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x48f>
    f6db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    f6e0:	48 89 df             	mov    %rbx,%rdi
    f6e3:	e8 b8 03 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f6e8:	83 f8 20             	cmp    $0x20,%eax
    f6eb:	77 1d                	ja     f70a <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x33a>
    f6ed:	89 c0                	mov    %eax,%eax
    f6ef:	49 0f a3 c7          	bt     %rax,%r15
    f6f3:	73 15                	jae    f70a <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x33a>
    f6f5:	48 89 df             	mov    %rbx,%rdi
    f6f8:	e8 23 07 00 00       	callq  fe20 <getc@plt>
    f6fd:	48 89 df             	mov    %rbx,%rdi
    f700:	e8 9b 03 00 00       	callq  faa0 <_Z5fpeekP8_IO_FILE>
    f705:	83 f8 20             	cmp    $0x20,%eax
    f708:	76 e3                	jbe    f6ed <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x31d>
    f70a:	41 8b 6e 20          	mov    0x20(%r14),%ebp
    f70e:	45 8b 7e 24          	mov    0x24(%r14),%r15d
    f712:	89 ef                	mov    %ebp,%edi
    f714:	41 0f af ff          	imul   %r15d,%edi
    f718:	c1 e7 02             	shl    $0x2,%edi
    f71b:	e8 00 05 00 00       	callq  fc20 <malloc@plt>
    f720:	49 89 46 28          	mov    %rax,0x28(%r14)
    f724:	41 ff cf             	dec    %r15d
    f727:	78 04                	js     f72d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x35d>
    f729:	85 ed                	test   %ebp,%ebp
    f72b:	75 21                	jne    f74e <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x37e>
    f72d:	48 83 c4 18          	add    $0x18,%rsp
    f731:	5b                   	pop    %rbx
    f732:	41 5c                	pop    %r12
    f734:	41 5d                	pop    %r13
    f736:	41 5e                	pop    %r14
    f738:	41 5f                	pop    %r15
    f73a:	5d                   	pop    %rbp
    f73b:	c3                   	retq   
    f73c:	0f 1f 40 00          	nopl   0x0(%rax)
    f740:	31 ed                	xor    %ebp,%ebp
    f742:	41 8d 47 ff          	lea    -0x1(%r15),%eax
    f746:	45 85 ff             	test   %r15d,%r15d
    f749:	41 89 c7             	mov    %eax,%r15d
    f74c:	7e df                	jle    f72d <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x35d>
    f74e:	85 ed                	test   %ebp,%ebp
    f750:	74 ee                	je     f740 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x370>
    f752:	45 31 e4             	xor    %r12d,%r12d
    f755:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    f75c:	00 00 00 00 
    f760:	41 0f af ef          	imul   %r15d,%ebp
    f764:	44 01 e5             	add    %r12d,%ebp
    f767:	c1 e5 02             	shl    $0x2,%ebp
    f76a:	48 89 df             	mov    %rbx,%rdi
    f76d:	e8 ae 06 00 00       	callq  fe20 <getc@plt>
    f772:	49 8b 4e 28          	mov    0x28(%r14),%rcx
    f776:	4c 63 ed             	movslq %ebp,%r13
    f779:	42 88 04 29          	mov    %al,(%rcx,%r13,1)
    f77d:	48 89 df             	mov    %rbx,%rdi
    f780:	e8 9b 06 00 00       	callq  fe20 <getc@plt>
    f785:	49 8b 4e 28          	mov    0x28(%r14),%rcx
    f789:	42 88 44 29 01       	mov    %al,0x1(%rcx,%r13,1)
    f78e:	48 89 df             	mov    %rbx,%rdi
    f791:	e8 8a 06 00 00       	callq  fe20 <getc@plt>
    f796:	49 8b 4e 28          	mov    0x28(%r14),%rcx
    f79a:	42 88 44 29 02       	mov    %al,0x2(%rcx,%r13,1)
    f79f:	49 8b 46 28          	mov    0x28(%r14),%rax
    f7a3:	42 c6 44 28 03 ff    	movb   $0xff,0x3(%rax,%r13,1)
    f7a9:	41 ff c4             	inc    %r12d
    f7ac:	41 8b 6e 20          	mov    0x20(%r14),%ebp
    f7b0:	41 39 ec             	cmp    %ebp,%r12d
    f7b3:	72 ab                	jb     f760 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x390>
    f7b5:	eb 8b                	jmp    f742 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x372>
    f7b7:	48 8d 3d 0f 29 ff ff 	lea    -0xd6f1(%rip),%rdi        # 20cd <_IO_stdin_used+0x7cd>
    f7be:	e8 bd 04 00 00       	callq  fc80 <puts@plt>
    f7c3:	bf 01 00 00 00       	mov    $0x1,%edi
    f7c8:	e8 03 05 00 00       	callq  fcd0 <exit@plt>
    f7cd:	48 8d 3d ac 2a ff ff 	lea    -0xd554(%rip),%rdi        # 2280 <_IO_stdin_used+0x980>
    f7d4:	4c 89 fe             	mov    %r15,%rsi
    f7d7:	31 c0                	xor    %eax,%eax
    f7d9:	e8 22 05 00 00       	callq  fd00 <printf@plt>
    f7de:	31 ff                	xor    %edi,%edi
    f7e0:	e8 eb 04 00 00       	callq  fcd0 <exit@plt>
    f7e5:	48 8d 3d f1 24 ff ff 	lea    -0xdb0f(%rip),%rdi        # 1cdd <_IO_stdin_used+0x3dd>
    f7ec:	4c 89 fe             	mov    %r15,%rsi
    f7ef:	89 c2                	mov    %eax,%edx
    f7f1:	89 c1                	mov    %eax,%ecx
    f7f3:	31 c0                	xor    %eax,%eax
    f7f5:	e8 06 05 00 00       	callq  fd00 <printf@plt>
    f7fa:	31 ff                	xor    %edi,%edi
    f7fc:	e8 cf 04 00 00       	callq  fcd0 <exit@plt>
    f801:	48 8d 3d 08 27 ff ff 	lea    -0xd8f8(%rip),%rdi        # 1f10 <_IO_stdin_used+0x610>
    f808:	e8 73 04 00 00       	callq  fc80 <puts@plt>
    f80d:	31 ff                	xor    %edi,%edi
    f80f:	e8 bc 04 00 00       	callq  fcd0 <exit@plt>
    f814:	41 8b 17             	mov    (%r15),%edx
    f817:	41 8b 0c 24          	mov    (%r12),%ecx
    f81b:	48 8d 3d 02 28 ff ff 	lea    -0xd7fe(%rip),%rdi        # 2024 <_IO_stdin_used+0x724>
    f822:	eb 0e                	jmp    f832 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc+0x462>
    f824:	41 8b 17             	mov    (%r15),%edx
    f827:	41 8b 0c 24          	mov    (%r12),%ecx
    f82b:	48 8d 3d 8a 22 ff ff 	lea    -0xdd76(%rip),%rdi        # 1abc <_IO_stdin_used+0x1bc>
    f832:	89 c6                	mov    %eax,%esi
    f834:	31 c0                	xor    %eax,%eax
    f836:	e8 c5 04 00 00       	callq  fd00 <printf@plt>
    f83b:	31 ff                	xor    %edi,%edi
    f83d:	e8 8e 04 00 00       	callq  fcd0 <exit@plt>
    f842:	41 8b 0f             	mov    (%r15),%ecx
    f845:	48 8d 3d db 22 ff ff 	lea    -0xdd25(%rip),%rdi        # 1b27 <_IO_stdin_used+0x227>
    f84c:	89 c2                	mov    %eax,%edx
    f84e:	41 89 f0             	mov    %esi,%r8d
    f851:	31 c0                	xor    %eax,%eax
    f853:	e8 a8 04 00 00       	callq  fd00 <printf@plt>
    f858:	31 ff                	xor    %edi,%edi
    f85a:	e8 71 04 00 00       	callq  fcd0 <exit@plt>
    f85f:	48 8d 3d 93 26 ff ff 	lea    -0xd96d(%rip),%rdi        # 1ef9 <_IO_stdin_used+0x5f9>
    f866:	89 c2                	mov    %eax,%edx
    f868:	31 c0                	xor    %eax,%eax
    f86a:	e8 91 04 00 00       	callq  fd00 <printf@plt>
    f86f:	31 ff                	xor    %edi,%edi
    f871:	e8 5a 04 00 00       	callq  fcd0 <exit@plt>
    f876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    f87d:	00 00 00 

000000000000f880 <_ZN12ImageTextureC1EPKc>:
    f880:	41 57                	push   %r15
    f882:	41 56                	push   %r14
    f884:	53                   	push   %rbx
    f885:	48 81 ec d0 07 00 00 	sub    $0x7d0,%rsp
    f88c:	48 89 f3             	mov    %rsi,%rbx
    f88f:	49 89 fe             	mov    %rdi,%r14
    f892:	f2 0f 10 05 de 20 ff 	movsd  -0xdf22(%rip),%xmm0        # 1978 <_IO_stdin_used+0x78>
    f899:	ff 
    f89a:	f2 0f 10 0d a6 20 ff 	movsd  -0xdf5a(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    f8a1:	ff 
    f8a2:	0f 57 d2             	xorps  %xmm2,%xmm2
    f8a5:	e8 16 01 00 00       	callq  f9c0 <_ZN7TextureC2Eddd>
    f8aa:	48 8d 05 ef 18 00 00 	lea    0x18ef(%rip),%rax        # 111a0 <_ZTV12ImageTexture+0x10>
    f8b1:	49 89 06             	mov    %rax,(%r14)
    f8b4:	48 89 df             	mov    %rbx,%rdi
    f8b7:	e8 84 01 00 00       	callq  fa40 <_Z13findExtensionPKc>
    f8bc:	48 8d 35 d7 29 ff ff 	lea    -0xd629(%rip),%rsi        # 229a <_IO_stdin_used+0x99a>
    f8c3:	48 89 c7             	mov    %rax,%rdi
    f8c6:	e8 f5 01 00 00       	callq  fac0 <_Z15extensionEqualsPKcS0_>
    f8cb:	84 c0                	test   %al,%al
    f8cd:	74 34                	je     f903 <_ZN12ImageTextureC1EPKc+0x83>
    f8cf:	48 8d 35 0b 28 ff ff 	lea    -0xd7f5(%rip),%rsi        # 20e1 <_IO_stdin_used+0x7e1>
    f8d6:	48 89 df             	mov    %rbx,%rdi
    f8d9:	e8 72 03 00 00       	callq  fc50 <fopen@plt>
    f8de:	49 89 c7             	mov    %rax,%r15
    f8e1:	4c 89 f7             	mov    %r14,%rdi
    f8e4:	48 89 c6             	mov    %rax,%rsi
    f8e7:	48 89 da             	mov    %rbx,%rdx
    f8ea:	e8 e1 fa ff ff       	callq  f3d0 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc>
    f8ef:	4c 89 ff             	mov    %r15,%rdi
    f8f2:	48 81 c4 d0 07 00 00 	add    $0x7d0,%rsp
    f8f9:	5b                   	pop    %rbx
    f8fa:	41 5e                	pop    %r14
    f8fc:	41 5f                	pop    %r15
    f8fe:	e9 5d 03 00 00       	jmpq   fc60 <fclose@plt>
    f903:	48 8d 15 80 22 ff ff 	lea    -0xdd80(%rip),%rdx        # 1b8a <_IO_stdin_used+0x28a>
    f90a:	49 89 e7             	mov    %rsp,%r15
    f90d:	be d0 07 00 00       	mov    $0x7d0,%esi
    f912:	4c 89 ff             	mov    %r15,%rdi
    f915:	48 89 d9             	mov    %rbx,%rcx
    f918:	31 c0                	xor    %eax,%eax
    f91a:	e8 51 03 00 00       	callq  fc70 <snprintf@plt>
    f91f:	48 8d 35 bb 27 ff ff 	lea    -0xd845(%rip),%rsi        # 20e1 <_IO_stdin_used+0x7e1>
    f926:	4c 89 ff             	mov    %r15,%rdi
    f929:	e8 62 03 00 00       	callq  fc90 <popen@plt>
    f92e:	49 89 c7             	mov    %rax,%r15
    f931:	4c 89 f7             	mov    %r14,%rdi
    f934:	48 89 c6             	mov    %rax,%rsi
    f937:	48 89 da             	mov    %rbx,%rdx
    f93a:	e8 91 fa ff ff       	callq  f3d0 <_ZN12ImageTexture7readPPMEP8_IO_FILEPKc>
    f93f:	4c 89 ff             	mov    %r15,%rdi
    f942:	48 81 c4 d0 07 00 00 	add    $0x7d0,%rsp
    f949:	5b                   	pop    %rbx
    f94a:	41 5e                	pop    %r14
    f94c:	41 5f                	pop    %r15
    f94e:	e9 4d 03 00 00       	jmpq   fca0 <pclose@plt>
    f953:	cc                   	int3   
    f954:	cc                   	int3   
    f955:	cc                   	int3   
    f956:	cc                   	int3   
    f957:	cc                   	int3   
    f958:	cc                   	int3   
    f959:	cc                   	int3   
    f95a:	cc                   	int3   
    f95b:	cc                   	int3   
    f95c:	cc                   	int3   
    f95d:	cc                   	int3   
    f95e:	cc                   	int3   
    f95f:	cc                   	int3   

000000000000f960 <_Z11interpolateddd>:
    f960:	48 83 ec 18          	sub    $0x18,%rsp
    f964:	f2 0f 11 4c 24 08    	movsd  %xmm1,0x8(%rsp)
    f96a:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
    f970:	f2 0f 59 15 a0 1f ff 	mulsd  -0xe060(%rip),%xmm2        # 1918 <_IO_stdin_used+0x18>
    f977:	ff 
    f978:	66 0f 28 c2          	movapd %xmm2,%xmm0
    f97c:	e8 df 03 00 00       	callq  fd60 <cos@plt>
    f981:	f2 0f 10 0d bf 1f ff 	movsd  -0xe041(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    f988:	ff 
    f989:	66 0f 28 d1          	movapd %xmm1,%xmm2
    f98d:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
    f991:	f2 0f 59 15 d7 1f ff 	mulsd  -0xe029(%rip),%xmm2        # 1970 <_IO_stdin_used+0x70>
    f998:	ff 
    f999:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    f99d:	f2 0f 59 54 24 08    	mulsd  0x8(%rsp),%xmm2
    f9a3:	f2 0f 59 4c 24 10    	mulsd  0x10(%rsp),%xmm1
    f9a9:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    f9ad:	66 0f 28 c1          	movapd %xmm1,%xmm0
    f9b1:	48 83 c4 18          	add    $0x18,%rsp
    f9b5:	c3                   	retq   
    f9b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    f9bd:	00 00 00 

000000000000f9c0 <_ZN7TextureC2Eddd>:
    f9c0:	48 8d 05 09 18 00 00 	lea    0x1809(%rip),%rax        # 111d0 <__cxa_pure_virtual@CXXABI_1.3>
    f9c7:	48 89 07             	mov    %rax,(%rdi)
    f9ca:	f2 0f 11 4f 08       	movsd  %xmm1,0x8(%rdi)
    f9cf:	f2 0f 11 57 10       	movsd  %xmm2,0x10(%rdi)
    f9d4:	f2 0f 11 47 18       	movsd  %xmm0,0x18(%rdi)
    f9d9:	c3                   	retq   
    f9da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000f9e0 <_Z3fixd>:
    f9e0:	50                   	push   %rax
    f9e1:	f2 0f 10 0d 5f 1f ff 	movsd  -0xe0a1(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    f9e8:	ff 
    f9e9:	e8 52 04 00 00       	callq  fe40 <fmod@plt>
    f9ee:	f2 0f 10 1d 52 1f ff 	movsd  -0xe0ae(%rip),%xmm3        # 1948 <_IO_stdin_used+0x48>
    f9f5:	ff 
    f9f6:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
    f9fa:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    f9fe:	66 0f 28 c8          	movapd %xmm0,%xmm1
    fa02:	f2 0f c2 ca 01       	cmpltsd %xmm2,%xmm1
    fa07:	66 0f 54 d9          	andpd  %xmm1,%xmm3
    fa0b:	66 0f 55 c8          	andnpd %xmm0,%xmm1
    fa0f:	66 0f 56 cb          	orpd   %xmm3,%xmm1
    fa13:	66 0f 28 c1          	movapd %xmm1,%xmm0
    fa17:	58                   	pop    %rax
    fa18:	c3                   	retq   
    fa19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000fa20 <_Z6groundd>:
    fa20:	f2 0f 10 0d 20 1f ff 	movsd  -0xe0e0(%rip),%xmm1        # 1948 <_IO_stdin_used+0x48>
    fa27:	ff 
    fa28:	f2 0f 5d c8          	minsd  %xmm0,%xmm1
    fa2c:	66 0f 28 c1          	movapd %xmm1,%xmm0
    fa30:	c3                   	retq   
    fa31:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    fa38:	0f 1f 84 00 00 00 00 
    fa3f:	00 

000000000000fa40 <_Z13findExtensionPKc>:
    fa40:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    fa44:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    fa4b:	00 00 00 00 00 
    fa50:	80 78 01 00          	cmpb   $0x0,0x1(%rax)
    fa54:	48 8d 40 01          	lea    0x1(%rax),%rax
    fa58:	75 f6                	jne    fa50 <_Z13findExtensionPKc+0x10>
    fa5a:	eb 09                	jmp    fa65 <_Z13findExtensionPKc+0x25>
    fa5c:	0f 1f 40 00          	nopl   0x0(%rax)
    fa60:	80 f9 2e             	cmp    $0x2e,%cl
    fa63:	74 0e                	je     fa73 <_Z13findExtensionPKc+0x33>
    fa65:	48 89 c2             	mov    %rax,%rdx
    fa68:	0f b6 08             	movzbl (%rax),%ecx
    fa6b:	48 ff c8             	dec    %rax
    fa6e:	48 39 fa             	cmp    %rdi,%rdx
    fa71:	77 ed                	ja     fa60 <_Z13findExtensionPKc+0x20>
    fa73:	31 d2                	xor    %edx,%edx
    fa75:	80 f9 2e             	cmp    $0x2e,%cl
    fa78:	0f 94 c2             	sete   %dl
    fa7b:	48 01 d0             	add    %rdx,%rax
    fa7e:	48 ff c0             	inc    %rax
    fa81:	c3                   	retq   
    fa82:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    fa89:	1f 84 00 00 00 00 00 

000000000000fa90 <_Z9lowerCasec>:
    fa90:	8d 47 bf             	lea    -0x41(%rdi),%eax
    fa93:	8d 4f e0             	lea    -0x20(%rdi),%ecx
    fa96:	3c 1a                	cmp    $0x1a,%al
    fa98:	0f b6 c1             	movzbl %cl,%eax
    fa9b:	0f 43 c7             	cmovae %edi,%eax
    fa9e:	c3                   	retq   
    fa9f:	90                   	nop

000000000000faa0 <_Z5fpeekP8_IO_FILE>:
    faa0:	55                   	push   %rbp
    faa1:	53                   	push   %rbx
    faa2:	50                   	push   %rax
    faa3:	48 89 fb             	mov    %rdi,%rbx
    faa6:	e8 a5 03 00 00       	callq  fe50 <fgetc@plt>
    faab:	89 c5                	mov    %eax,%ebp
    faad:	89 c7                	mov    %eax,%edi
    faaf:	48 89 de             	mov    %rbx,%rsi
    fab2:	e8 a9 03 00 00       	callq  fe60 <ungetc@plt>
    fab7:	89 e8                	mov    %ebp,%eax
    fab9:	48 83 c4 08          	add    $0x8,%rsp
    fabd:	5b                   	pop    %rbx
    fabe:	5d                   	pop    %rbp
    fabf:	c3                   	retq   

000000000000fac0 <_Z15extensionEqualsPKcS0_>:
    fac0:	0f b6 07             	movzbl (%rdi),%eax
    fac3:	84 c0                	test   %al,%al
    fac5:	74 1a                	je     fae1 <_Z15extensionEqualsPKcS0_+0x21>
    fac7:	48 ff c7             	inc    %rdi
    faca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    fad0:	3a 06                	cmp    (%rsi),%al
    fad2:	75 14                	jne    fae8 <_Z15extensionEqualsPKcS0_+0x28>
    fad4:	48 ff c6             	inc    %rsi
    fad7:	0f b6 07             	movzbl (%rdi),%eax
    fada:	48 ff c7             	inc    %rdi
    fadd:	84 c0                	test   %al,%al
    fadf:	75 ef                	jne    fad0 <_Z15extensionEqualsPKcS0_+0x10>
    fae1:	80 3e 00             	cmpb   $0x0,(%rsi)
    fae4:	0f 94 c0             	sete   %al
    fae7:	c3                   	retq   
    fae8:	31 c0                	xor    %eax,%eax
    faea:	c3                   	retq   
    faeb:	cc                   	int3   
    faec:	cc                   	int3   
    faed:	cc                   	int3   
    faee:	cc                   	int3   
    faef:	cc                   	int3   

000000000000faf0 <__popcountdi2>:
    faf0:	f3 0f 1e fa          	endbr64 
    faf4:	48 ba 55 55 55 55 55 	movabs $0x5555555555555555,%rdx
    fafb:	55 55 55 
    fafe:	48 89 f8             	mov    %rdi,%rax
    fb01:	48 d1 e8             	shr    %rax
    fb04:	48 21 d0             	and    %rdx,%rax
    fb07:	48 ba 33 33 33 33 33 	movabs $0x3333333333333333,%rdx
    fb0e:	33 33 33 
    fb11:	48 29 c7             	sub    %rax,%rdi
    fb14:	48 89 f8             	mov    %rdi,%rax
    fb17:	48 c1 ef 02          	shr    $0x2,%rdi
    fb1b:	48 21 d0             	and    %rdx,%rax
    fb1e:	48 21 d7             	and    %rdx,%rdi
    fb21:	48 01 c7             	add    %rax,%rdi
    fb24:	48 89 f8             	mov    %rdi,%rax
    fb27:	48 c1 e8 04          	shr    $0x4,%rax
    fb2b:	48 01 f8             	add    %rdi,%rax
    fb2e:	48 bf 0f 0f 0f 0f 0f 	movabs $0xf0f0f0f0f0f0f0f,%rdi
    fb35:	0f 0f 0f 
    fb38:	48 21 f8             	and    %rdi,%rax
    fb3b:	48 bf 01 01 01 01 01 	movabs $0x101010101010101,%rdi
    fb42:	01 01 01 
    fb45:	48 0f af c7          	imul   %rdi,%rax
    fb49:	48 c1 e8 38          	shr    $0x38,%rax
    fb4d:	c3                   	retq   
    fb4e:	cc                   	int3   
    fb4f:	cc                   	int3   

000000000000fb50 <__libc_csu_init>:
    fb50:	f3 0f 1e fa          	endbr64 
    fb54:	41 57                	push   %r15
    fb56:	4c 8d 3d 1b 13 00 00 	lea    0x131b(%rip),%r15        # 10e78 <__frame_dummy_init_array_entry>
    fb5d:	41 56                	push   %r14
    fb5f:	49 89 d6             	mov    %rdx,%r14
    fb62:	41 55                	push   %r13
    fb64:	49 89 f5             	mov    %rsi,%r13
    fb67:	41 54                	push   %r12
    fb69:	41 89 fc             	mov    %edi,%r12d
    fb6c:	55                   	push   %rbp
    fb6d:	48 8d 2d 14 13 00 00 	lea    0x1314(%rip),%rbp        # 10e88 <_ZTV3Box>
    fb74:	53                   	push   %rbx
    fb75:	4c 29 fd             	sub    %r15,%rbp
    fb78:	48 83 ec 08          	sub    $0x8,%rsp
    fb7c:	e8 47 00 00 00       	callq  fbc8 <_init>
    fb81:	48 c1 fd 03          	sar    $0x3,%rbp
    fb85:	74 1f                	je     fba6 <__libc_csu_init+0x56>
    fb87:	31 db                	xor    %ebx,%ebx
    fb89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    fb90:	4c 89 f2             	mov    %r14,%rdx
    fb93:	4c 89 ee             	mov    %r13,%rsi
    fb96:	44 89 e7             	mov    %r12d,%edi
    fb99:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    fb9d:	48 83 c3 01          	add    $0x1,%rbx
    fba1:	48 39 dd             	cmp    %rbx,%rbp
    fba4:	75 ea                	jne    fb90 <__libc_csu_init+0x40>
    fba6:	48 83 c4 08          	add    $0x8,%rsp
    fbaa:	5b                   	pop    %rbx
    fbab:	5d                   	pop    %rbp
    fbac:	41 5c                	pop    %r12
    fbae:	41 5d                	pop    %r13
    fbb0:	41 5e                	pop    %r14
    fbb2:	41 5f                	pop    %r15
    fbb4:	c3                   	retq   
    fbb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    fbbc:	00 00 00 00 

000000000000fbc0 <__libc_csu_fini>:
    fbc0:	f3 0f 1e fa          	endbr64 
    fbc4:	c3                   	retq   

Disassembly of section .init:

000000000000fbc8 <_init>:
    fbc8:	f3 0f 1e fa          	endbr64 
    fbcc:	48 83 ec 08          	sub    $0x8,%rsp
    fbd0:	48 8b 05 c9 17 00 00 	mov    0x17c9(%rip),%rax        # 113a0 <__gmon_start__@Base>
    fbd7:	48 85 c0             	test   %rax,%rax
    fbda:	74 02                	je     fbde <_init+0x16>
    fbdc:	ff d0                	callq  *%rax
    fbde:	48 83 c4 08          	add    $0x8,%rsp
    fbe2:	c3                   	retq   

Disassembly of section .fini:

000000000000fbe4 <_fini>:
    fbe4:	f3 0f 1e fa          	endbr64 
    fbe8:	48 83 ec 08          	sub    $0x8,%rsp
    fbec:	48 83 c4 08          	add    $0x8,%rsp
    fbf0:	c3                   	retq   

Disassembly of section .plt:

000000000000fc00 <__cxa_finalize@plt-0x10>:
    fc00:	ff 35 ea 27 00 00    	pushq  0x27ea(%rip)        # 123f0 <__TMC_END__+0x8>
    fc06:	ff 25 ec 27 00 00    	jmpq   *0x27ec(%rip)        # 123f8 <__TMC_END__+0x10>
    fc0c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000fc10 <__cxa_finalize@plt>:
    fc10:	ff 25 ea 27 00 00    	jmpq   *0x27ea(%rip)        # 12400 <__cxa_finalize@GLIBC_2.2.5>
    fc16:	68 00 00 00 00       	pushq  $0x0
    fc1b:	e9 e0 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc20 <malloc@plt>:
    fc20:	ff 25 e2 27 00 00    	jmpq   *0x27e2(%rip)        # 12408 <malloc@GLIBC_2.2.5>
    fc26:	68 01 00 00 00       	pushq  $0x1
    fc2b:	e9 d0 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc30 <fprintf@plt>:
    fc30:	ff 25 da 27 00 00    	jmpq   *0x27da(%rip)        # 12410 <fprintf@GLIBC_2.2.5>
    fc36:	68 02 00 00 00       	pushq  $0x2
    fc3b:	e9 c0 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc40 <fwrite@plt>:
    fc40:	ff 25 d2 27 00 00    	jmpq   *0x27d2(%rip)        # 12418 <fwrite@GLIBC_2.2.5>
    fc46:	68 03 00 00 00       	pushq  $0x3
    fc4b:	e9 b0 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc50 <fopen@plt>:
    fc50:	ff 25 ca 27 00 00    	jmpq   *0x27ca(%rip)        # 12420 <fopen@GLIBC_2.2.5>
    fc56:	68 04 00 00 00       	pushq  $0x4
    fc5b:	e9 a0 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc60 <fclose@plt>:
    fc60:	ff 25 c2 27 00 00    	jmpq   *0x27c2(%rip)        # 12428 <fclose@GLIBC_2.2.5>
    fc66:	68 05 00 00 00       	pushq  $0x5
    fc6b:	e9 90 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc70 <snprintf@plt>:
    fc70:	ff 25 ba 27 00 00    	jmpq   *0x27ba(%rip)        # 12430 <snprintf@GLIBC_2.2.5>
    fc76:	68 06 00 00 00       	pushq  $0x6
    fc7b:	e9 80 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc80 <puts@plt>:
    fc80:	ff 25 b2 27 00 00    	jmpq   *0x27b2(%rip)        # 12438 <puts@GLIBC_2.2.5>
    fc86:	68 07 00 00 00       	pushq  $0x7
    fc8b:	e9 70 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fc90 <popen@plt>:
    fc90:	ff 25 aa 27 00 00    	jmpq   *0x27aa(%rip)        # 12440 <popen@GLIBC_2.2.5>
    fc96:	68 08 00 00 00       	pushq  $0x8
    fc9b:	e9 60 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fca0 <pclose@plt>:
    fca0:	ff 25 a2 27 00 00    	jmpq   *0x27a2(%rip)        # 12448 <pclose@GLIBC_2.2.5>
    fca6:	68 09 00 00 00       	pushq  $0x9
    fcab:	e9 50 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fcb0 <strcmp@plt>:
    fcb0:	ff 25 9a 27 00 00    	jmpq   *0x279a(%rip)        # 12450 <strcmp@GLIBC_2.2.5>
    fcb6:	68 0a 00 00 00       	pushq  $0xa
    fcbb:	e9 40 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fcc0 <__getdelim@plt>:
    fcc0:	ff 25 92 27 00 00    	jmpq   *0x2792(%rip)        # 12458 <__getdelim@GLIBC_2.2.5>
    fcc6:	68 0b 00 00 00       	pushq  $0xb
    fccb:	e9 30 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fcd0 <exit@plt>:
    fcd0:	ff 25 8a 27 00 00    	jmpq   *0x278a(%rip)        # 12460 <exit@GLIBC_2.2.5>
    fcd6:	68 0c 00 00 00       	pushq  $0xc
    fcdb:	e9 20 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fce0 <__isoc99_sscanf@plt>:
    fce0:	ff 25 82 27 00 00    	jmpq   *0x2782(%rip)        # 12468 <__isoc99_sscanf@GLIBC_2.7>
    fce6:	68 0d 00 00 00       	pushq  $0xd
    fceb:	e9 10 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fcf0 <_Znwm@plt>:
    fcf0:	ff 25 7a 27 00 00    	jmpq   *0x277a(%rip)        # 12470 <_Znwm@GLIBCXX_3.4>
    fcf6:	68 0e 00 00 00       	pushq  $0xe
    fcfb:	e9 00 ff ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd00 <printf@plt>:
    fd00:	ff 25 72 27 00 00    	jmpq   *0x2772(%rip)        # 12478 <printf@GLIBC_2.2.5>
    fd06:	68 0f 00 00 00       	pushq  $0xf
    fd0b:	e9 f0 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd10 <_ZdlPv@plt>:
    fd10:	ff 25 6a 27 00 00    	jmpq   *0x276a(%rip)        # 12480 <_ZdlPv@GLIBCXX_3.4>
    fd16:	68 10 00 00 00       	pushq  $0x10
    fd1b:	e9 e0 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd20 <_Unwind_Resume@plt>:
    fd20:	ff 25 62 27 00 00    	jmpq   *0x2762(%rip)        # 12488 <_Unwind_Resume@GCC_3.0>
    fd26:	68 11 00 00 00       	pushq  $0x11
    fd2b:	e9 d0 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd30 <__isoc99_fscanf@plt>:
    fd30:	ff 25 5a 27 00 00    	jmpq   *0x275a(%rip)        # 12490 <__isoc99_fscanf@GLIBC_2.7>
    fd36:	68 12 00 00 00       	pushq  $0x12
    fd3b:	e9 c0 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd40 <exp@plt>:
    fd40:	ff 25 52 27 00 00    	jmpq   *0x2752(%rip)        # 12498 <exp@GLIBC_2.29>
    fd46:	68 13 00 00 00       	pushq  $0x13
    fd4b:	e9 b0 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd50 <sin@plt>:
    fd50:	ff 25 4a 27 00 00    	jmpq   *0x274a(%rip)        # 124a0 <sin@GLIBC_2.2.5>
    fd56:	68 14 00 00 00       	pushq  $0x14
    fd5b:	e9 a0 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd60 <cos@plt>:
    fd60:	ff 25 42 27 00 00    	jmpq   *0x2742(%rip)        # 124a8 <cos@GLIBC_2.2.5>
    fd66:	68 15 00 00 00       	pushq  $0x15
    fd6b:	e9 90 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd70 <strtol@plt>:
    fd70:	ff 25 3a 27 00 00    	jmpq   *0x273a(%rip)        # 124b0 <strtol@GLIBC_2.2.5>
    fd76:	68 16 00 00 00       	pushq  $0x16
    fd7b:	e9 80 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd80 <gettimeofday@plt>:
    fd80:	ff 25 32 27 00 00    	jmpq   *0x2732(%rip)        # 124b8 <gettimeofday@GLIBC_2.2.5>
    fd86:	68 17 00 00 00       	pushq  $0x17
    fd8b:	e9 70 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fd90 <system@plt>:
    fd90:	ff 25 2a 27 00 00    	jmpq   *0x272a(%rip)        # 124c0 <system@GLIBC_2.2.5>
    fd96:	68 18 00 00 00       	pushq  $0x18
    fd9b:	e9 60 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fda0 <_ZNSt8ios_base4InitC1Ev@plt>:
    fda0:	ff 25 22 27 00 00    	jmpq   *0x2722(%rip)        # 124c8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    fda6:	68 19 00 00 00       	pushq  $0x19
    fdab:	e9 50 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fdb0 <__cxa_atexit@plt>:
    fdb0:	ff 25 1a 27 00 00    	jmpq   *0x271a(%rip)        # 124d0 <__cxa_atexit@GLIBC_2.2.5>
    fdb6:	68 1a 00 00 00       	pushq  $0x1a
    fdbb:	e9 40 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fdc0 <memcpy@plt>:
    fdc0:	ff 25 12 27 00 00    	jmpq   *0x2712(%rip)        # 124d8 <memcpy@GLIBC_2.14>
    fdc6:	68 1b 00 00 00       	pushq  $0x1b
    fdcb:	e9 30 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fdd0 <free@plt>:
    fdd0:	ff 25 0a 27 00 00    	jmpq   *0x270a(%rip)        # 124e0 <free@GLIBC_2.2.5>
    fdd6:	68 1c 00 00 00       	pushq  $0x1c
    fddb:	e9 20 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fde0 <atan2@plt>:
    fde0:	ff 25 02 27 00 00    	jmpq   *0x2702(%rip)        # 124e8 <atan2@GLIBC_2.2.5>
    fde6:	68 1d 00 00 00       	pushq  $0x1d
    fdeb:	e9 10 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fdf0 <sqrt@plt>:
    fdf0:	ff 25 fa 26 00 00    	jmpq   *0x26fa(%rip)        # 124f0 <sqrt@GLIBC_2.2.5>
    fdf6:	68 1e 00 00 00       	pushq  $0x1e
    fdfb:	e9 00 fe ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe00 <asin@plt>:
    fe00:	ff 25 f2 26 00 00    	jmpq   *0x26f2(%rip)        # 124f8 <asin@GLIBC_2.2.5>
    fe06:	68 1f 00 00 00       	pushq  $0x1f
    fe0b:	e9 f0 fd ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe10 <acos@plt>:
    fe10:	ff 25 ea 26 00 00    	jmpq   *0x26ea(%rip)        # 12500 <acos@GLIBC_2.2.5>
    fe16:	68 20 00 00 00       	pushq  $0x20
    fe1b:	e9 e0 fd ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe20 <getc@plt>:
    fe20:	ff 25 e2 26 00 00    	jmpq   *0x26e2(%rip)        # 12508 <getc@GLIBC_2.2.5>
    fe26:	68 21 00 00 00       	pushq  $0x21
    fe2b:	e9 d0 fd ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe30 <fseek@plt>:
    fe30:	ff 25 da 26 00 00    	jmpq   *0x26da(%rip)        # 12510 <fseek@GLIBC_2.2.5>
    fe36:	68 22 00 00 00       	pushq  $0x22
    fe3b:	e9 c0 fd ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe40 <fmod@plt>:
    fe40:	ff 25 d2 26 00 00    	jmpq   *0x26d2(%rip)        # 12518 <fmod@GLIBC_2.2.5>
    fe46:	68 23 00 00 00       	pushq  $0x23
    fe4b:	e9 b0 fd ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe50 <fgetc@plt>:
    fe50:	ff 25 ca 26 00 00    	jmpq   *0x26ca(%rip)        # 12520 <fgetc@GLIBC_2.2.5>
    fe56:	68 24 00 00 00       	pushq  $0x24
    fe5b:	e9 a0 fd ff ff       	jmpq   fc00 <_fini+0x1c>

000000000000fe60 <ungetc@plt>:
    fe60:	ff 25 c2 26 00 00    	jmpq   *0x26c2(%rip)        # 12528 <ungetc@GLIBC_2.2.5>
    fe66:	68 25 00 00 00       	pushq  $0x25
    fe6b:	e9 90 fd ff ff       	jmpq   fc00 <_fini+0x1c>
