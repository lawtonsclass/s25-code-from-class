
password:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 92 2f 00 00    	push   QWORD PTR [rip+0x2f92]        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 94 2f 00 00    	jmp    QWORD PTR [rip+0x2f94]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	ff 25 9e 2f 00 00    	jmp    QWORD PTR [rip+0x2f9e]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001060 <puts@plt>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	ff 25 5e 2f 00 00    	jmp    QWORD PTR [rip+0x2f5e]        # 3fc8 <puts@GLIBC_2.2.5>
    106a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001070 <strcmp@plt>:
    1070:	f3 0f 1e fa          	endbr64
    1074:	ff 25 56 2f 00 00    	jmp    QWORD PTR [rip+0x2f56]        # 3fd0 <strcmp@GLIBC_2.2.5>
    107a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	31 ed                	xor    ebp,ebp
    1086:	49 89 d1             	mov    r9,rdx
    1089:	5e                   	pop    rsi
    108a:	48 89 e2             	mov    rdx,rsp
    108d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1091:	50                   	push   rax
    1092:	54                   	push   rsp
    1093:	45 31 c0             	xor    r8d,r8d
    1096:	31 c9                	xor    ecx,ecx
    1098:	48 8d 3d ca 00 00 00 	lea    rdi,[rip+0xca]        # 1169 <main>
    109f:	ff 15 33 2f 00 00    	call   QWORD PTR [rip+0x2f33]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt
    10a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    rdi,[rip+0x2f59]        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    rax,[rip+0x2f52]        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f16]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    rdi,[rip+0x2f29]        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    rsi,[rip+0x2f22]        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 89 f0             	mov    rax,rsi
    10f4:	48 c1 ee 3f          	shr    rsi,0x3f
    10f8:	48 c1 f8 03          	sar    rax,0x3
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ee5]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d e5 2e 00 00 00 	cmp    BYTE PTR [rip+0x2ee5],0x0        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   rbp
    112e:	48 83 3d c2 2e 00 00 	cmp    QWORD PTR [rip+0x2ec2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ec6]        # 4008 <__dso_handle>
    1142:	e8 09 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	mov    BYTE PTR [rip+0x2ebd],0x1        # 4010 <__TMC_END__>
    1153:	5d                   	pop    rbp
    1154:	c3                   	ret
    1155:	0f 1f 00             	nop    DWORD PTR [rax]
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <main>:
    1169:	f3 0f 1e fa          	endbr64
    116d:	55                   	push   rbp   # saves rbp on the stack
    116e:	48 89 e5             	mov    rbp,rsp # put the addr. of the top of the stack in rbp
    1171:	48 83 ec 10          	sub    rsp,0x10 # rsp = rsp - 0x10; # make room on the stack for 16 bytes
    1175:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi # save edi (argc) on the stack
    1178:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi # save rsi (argv) on the stack
    117c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10] # rax = argv
    1180:	48 83 c0 08          	add    rax,0x8 # rax = rax + 8 -- &argv[1]
    1184:	48 8b 00             	mov    rax,QWORD PTR [rax] # rax = *rax -- argv[1]
    1187:	48 8d 15 76 0e 00 00 	lea    rdx,[rip+0xe76] # rdx = &password_string  # 2004 <_IO_stdin_used+0x4>
    118e:	48 89 d6             	mov    rsi,rdx # rsi = &password_string -- second arg.
    1191:	48 89 c7             	mov    rdi,rax # rdi = argv[1] -- first arg.
    1194:	e8 d7 fe ff ff       	call   1070 <strcmp@plt> # calls strcmp -- returns answer in eax
    1199:	85 c0                	test   eax,eax # does a bitwise and on eax -- eax & eax
    119b:	75 11                	jne    11ae <main+0x45> # (really jnz) -- jump (goto) if nonzero -- if strings were not equal
    119d:	48 8d 05 6c 0e 00 00 	lea    rax,[rip+0xe6c] # start of if # load string 2010      # 2010 <_IO_stdin_used+0x10>
    11a4:	48 89 c7             	mov    rdi,rax # make it the first arg.
    11a7:	e8 b4 fe ff ff       	call   1060 <puts@plt> # call printing func.
    11ac:	eb 0f                	jmp    11bd <main+0x54>
    11ae:	48 8d 05 6a 0e 00 00 	lea    rax,[rip+0xe6a] # start of else # load string 201f     # 201f <_IO_stdin_used+0x1f>
    11b5:	48 89 c7             	mov    rdi,rax # make it the first arg.
    11b8:	e8 a3 fe ff ff       	call   1060 <puts@plt> # call printing func.
    11bd:	b8 00 00 00 00       	mov    eax,0x0 # end of if/else
    11c2:	c9                   	leave
    11c3:	c3                   	ret

Disassembly of section .fini:

00000000000011c4 <_fini>:
    11c4:	f3 0f 1e fa          	endbr64
    11c8:	48 83 ec 08          	sub    rsp,0x8
    11cc:	48 83 c4 08          	add    rsp,0x8
    11d0:	c3                   	ret
