
./bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b00 <_init>:
  400b00:	48 83 ec 08          	sub    $0x8,%rsp
  400b04:	48 8b 05 ed 34 20 00 	mov    0x2034ed(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400b0b:	48 85 c0             	test   %rax,%rax
  400b0e:	74 05                	je     400b15 <_init+0x15>
  400b10:	e8 db 01 00 00       	callq  400cf0 <socket@plt+0x10>
  400b15:	48 83 c4 08          	add    $0x8,%rsp
  400b19:	c3                   	retq   

Disassembly of section .plt:

0000000000400b20 <getenv@plt-0x10>:
  400b20:	ff 35 e2 34 20 00    	pushq  0x2034e2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b26:	ff 25 e4 34 20 00    	jmpq   *0x2034e4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b30 <getenv@plt>:
  400b30:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b36:	68 00 00 00 00       	pushq  $0x0
  400b3b:	e9 e0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b40 <strcasecmp@plt>:
  400b40:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b46:	68 01 00 00 00       	pushq  $0x1
  400b4b:	e9 d0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b50 <__errno_location@plt>:
  400b50:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b56:	68 02 00 00 00       	pushq  $0x2
  400b5b:	e9 c0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b60 <strcpy@plt>:
  400b60:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b66:	68 03 00 00 00       	pushq  $0x3
  400b6b:	e9 b0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b70 <puts@plt>:
  400b70:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400b76:	68 04 00 00 00       	pushq  $0x4
  400b7b:	e9 a0 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b80 <write@plt>:
  400b80:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400b86:	68 05 00 00 00       	pushq  $0x5
  400b8b:	e9 90 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400b90 <__stack_chk_fail@plt>:
  400b90:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400b96:	68 06 00 00 00       	pushq  $0x6
  400b9b:	e9 80 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400ba0 <alarm@plt>:
  400ba0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ba6:	68 07 00 00 00       	pushq  $0x7
  400bab:	e9 70 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bb0 <close@plt>:
  400bb0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400bb6:	68 08 00 00 00       	pushq  $0x8
  400bbb:	e9 60 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bc0 <read@plt>:
  400bc0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400bc6:	68 09 00 00 00       	pushq  $0x9
  400bcb:	e9 50 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bd0 <__libc_start_main@plt>:
  400bd0:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400bd6:	68 0a 00 00 00       	pushq  $0xa
  400bdb:	e9 40 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400be0 <fgets@plt>:
  400be0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400be6:	68 0b 00 00 00       	pushq  $0xb
  400beb:	e9 30 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400bf0 <signal@plt>:
  400bf0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400bf6:	68 0c 00 00 00       	pushq  $0xc
  400bfb:	e9 20 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c00 <gethostbyname@plt>:
  400c00:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c06:	68 0d 00 00 00       	pushq  $0xd
  400c0b:	e9 10 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c10 <__memmove_chk@plt>:
  400c10:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c16:	68 0e 00 00 00       	pushq  $0xe
  400c1b:	e9 00 ff ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c20 <strtol@plt>:
  400c20:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c26:	68 0f 00 00 00       	pushq  $0xf
  400c2b:	e9 f0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c30 <fflush@plt>:
  400c30:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c36:	68 10 00 00 00       	pushq  $0x10
  400c3b:	e9 e0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c40 <__isoc99_sscanf@plt>:
  400c40:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c46:	68 11 00 00 00       	pushq  $0x11
  400c4b:	e9 d0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c50 <__printf_chk@plt>:
  400c50:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c56:	68 12 00 00 00       	pushq  $0x12
  400c5b:	e9 c0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c60 <fopen@plt>:
  400c60:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c66:	68 13 00 00 00       	pushq  $0x13
  400c6b:	e9 b0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c70 <gethostname@plt>:
  400c70:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400c76:	68 14 00 00 00       	pushq  $0x14
  400c7b:	e9 a0 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c80 <exit@plt>:
  400c80:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400c86:	68 15 00 00 00       	pushq  $0x15
  400c8b:	e9 90 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400c90 <connect@plt>:
  400c90:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400c96:	68 16 00 00 00       	pushq  $0x16
  400c9b:	e9 80 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400ca0 <__fprintf_chk@plt>:
  400ca0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400ca6:	68 17 00 00 00       	pushq  $0x17
  400cab:	e9 70 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400cb0 <sleep@plt>:
  400cb0:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400cb6:	68 18 00 00 00       	pushq  $0x18
  400cbb:	e9 60 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400cc0 <__ctype_b_loc@plt>:
  400cc0:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400cc6:	68 19 00 00 00       	pushq  $0x19
  400ccb:	e9 50 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400cd0 <__sprintf_chk@plt>:
  400cd0:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400cd6:	68 1a 00 00 00       	pushq  $0x1a
  400cdb:	e9 40 fe ff ff       	jmpq   400b20 <_init+0x20>

0000000000400ce0 <socket@plt>:
  400ce0:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400ce6:	68 1b 00 00 00       	pushq  $0x1b
  400ceb:	e9 30 fe ff ff       	jmpq   400b20 <_init+0x20>

Disassembly of section .plt.got:

0000000000400cf0 <.plt.got>:
  400cf0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 603ff8 <_DYNAMIC+0x1d0>
  400cf6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d00 <_start>:
  400d00:	31 ed                	xor    %ebp,%ebp
  400d02:	49 89 d1             	mov    %rdx,%r9
  400d05:	5e                   	pop    %rsi
  400d06:	48 89 e2             	mov    %rsp,%rdx
  400d09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d0d:	50                   	push   %rax
  400d0e:	54                   	push   %rsp
  400d0f:	49 c7 c0 d0 24 40 00 	mov    $0x4024d0,%r8
  400d16:	48 c7 c1 60 24 40 00 	mov    $0x402460,%rcx
  400d1d:	48 c7 c7 f6 0d 40 00 	mov    $0x400df6,%rdi
  400d24:	e8 a7 fe ff ff       	callq  400bd0 <__libc_start_main@plt>
  400d29:	f4                   	hlt    
  400d2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d30 <deregister_tm_clones>:
  400d30:	b8 87 4b 60 00       	mov    $0x604b87,%eax
  400d35:	55                   	push   %rbp
  400d36:	48 2d 80 4b 60 00    	sub    $0x604b80,%rax
  400d3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d40:	48 89 e5             	mov    %rsp,%rbp
  400d43:	76 1b                	jbe    400d60 <deregister_tm_clones+0x30>
  400d45:	b8 00 00 00 00       	mov    $0x0,%eax
  400d4a:	48 85 c0             	test   %rax,%rax
  400d4d:	74 11                	je     400d60 <deregister_tm_clones+0x30>
  400d4f:	5d                   	pop    %rbp
  400d50:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400d55:	ff e0                	jmpq   *%rax
  400d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400d5e:	00 00 
  400d60:	5d                   	pop    %rbp
  400d61:	c3                   	retq   
  400d62:	0f 1f 40 00          	nopl   0x0(%rax)
  400d66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d6d:	00 00 00 

0000000000400d70 <register_tm_clones>:
  400d70:	be 80 4b 60 00       	mov    $0x604b80,%esi
  400d75:	55                   	push   %rbp
  400d76:	48 81 ee 80 4b 60 00 	sub    $0x604b80,%rsi
  400d7d:	48 c1 fe 03          	sar    $0x3,%rsi
  400d81:	48 89 e5             	mov    %rsp,%rbp
  400d84:	48 89 f0             	mov    %rsi,%rax
  400d87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400d8b:	48 01 c6             	add    %rax,%rsi
  400d8e:	48 d1 fe             	sar    %rsi
  400d91:	74 15                	je     400da8 <register_tm_clones+0x38>
  400d93:	b8 00 00 00 00       	mov    $0x0,%eax
  400d98:	48 85 c0             	test   %rax,%rax
  400d9b:	74 0b                	je     400da8 <register_tm_clones+0x38>
  400d9d:	5d                   	pop    %rbp
  400d9e:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400da3:	ff e0                	jmpq   *%rax
  400da5:	0f 1f 00             	nopl   (%rax)
  400da8:	5d                   	pop    %rbp
  400da9:	c3                   	retq   
  400daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400db0 <__do_global_dtors_aux>:
  400db0:	80 3d f1 3d 20 00 00 	cmpb   $0x0,0x203df1(%rip)        # 604ba8 <completed.7594>
  400db7:	75 11                	jne    400dca <__do_global_dtors_aux+0x1a>
  400db9:	55                   	push   %rbp
  400dba:	48 89 e5             	mov    %rsp,%rbp
  400dbd:	e8 6e ff ff ff       	callq  400d30 <deregister_tm_clones>
  400dc2:	5d                   	pop    %rbp
  400dc3:	c6 05 de 3d 20 00 01 	movb   $0x1,0x203dde(%rip)        # 604ba8 <completed.7594>
  400dca:	f3 c3                	repz retq 
  400dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400dd0 <frame_dummy>:
  400dd0:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400dd5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400dd9:	75 05                	jne    400de0 <frame_dummy+0x10>
  400ddb:	eb 93                	jmp    400d70 <register_tm_clones>
  400ddd:	0f 1f 00             	nopl   (%rax)
  400de0:	b8 00 00 00 00       	mov    $0x0,%eax
  400de5:	48 85 c0             	test   %rax,%rax
  400de8:	74 f1                	je     400ddb <frame_dummy+0xb>
  400dea:	55                   	push   %rbp
  400deb:	48 89 e5             	mov    %rsp,%rbp
  400dee:	ff d0                	callq  *%rax
  400df0:	5d                   	pop    %rbp
  400df1:	e9 7a ff ff ff       	jmpq   400d70 <register_tm_clones>

0000000000400df6 <main>:
  400df6:	53                   	push   %rbx
  400df7:	83 ff 01             	cmp    $0x1,%edi
  400dfa:	75 10                	jne    400e0c <main+0x16>
  400dfc:	48 8b 05 8d 3d 20 00 	mov    0x203d8d(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  400e03:	48 89 05 a6 3d 20 00 	mov    %rax,0x203da6(%rip)        # 604bb0 <infile>
  400e0a:	eb 63                	jmp    400e6f <main+0x79>
  400e0c:	48 89 f3             	mov    %rsi,%rbx
  400e0f:	83 ff 02             	cmp    $0x2,%edi
  400e12:	75 3a                	jne    400e4e <main+0x58>
  400e14:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e18:	be 31 2f 40 00       	mov    $0x402f31,%esi
  400e1d:	e8 3e fe ff ff       	callq  400c60 <fopen@plt>
  400e22:	48 89 05 87 3d 20 00 	mov    %rax,0x203d87(%rip)        # 604bb0 <infile>
  400e29:	48 85 c0             	test   %rax,%rax
  400e2c:	75 41                	jne    400e6f <main+0x79>
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  400e2e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e32:	48 8b 13             	mov    (%rbx),%rdx
  400e35:	be e4 24 40 00       	mov    $0x4024e4,%esi
  400e3a:	bf 01 00 00 00       	mov    $0x1,%edi
  400e3f:	e8 0c fe ff ff       	callq  400c50 <__printf_chk@plt>
  400e44:	bf 08 00 00 00       	mov    $0x8,%edi
  400e49:	e8 32 fe ff ff       	callq  400c80 <exit@plt>
  400e4e:	48 8b 16             	mov    (%rsi),%rdx
  400e51:	be 01 25 40 00       	mov    $0x402501,%esi
  400e56:	bf 01 00 00 00       	mov    $0x1,%edi
  400e5b:	b8 00 00 00 00       	mov    $0x0,%eax
  400e60:	e8 eb fd ff ff       	callq  400c50 <__printf_chk@plt>
  400e65:	bf 08 00 00 00       	mov    $0x8,%edi
  400e6a:	e8 11 fe ff ff       	callq  400c80 <exit@plt>
  400e6f:	e8 98 05 00 00       	callq  40140c <initialize_bomb>
  400e74:	bf 68 25 40 00       	mov    $0x402568,%edi
  400e79:	e8 f2 fc ff ff       	callq  400b70 <puts@plt>
  400e7e:	bf a8 25 40 00       	mov    $0x4025a8,%edi
  400e83:	e8 e8 fc ff ff       	callq  400b70 <puts@plt>
  400e88:	e8 61 08 00 00       	callq  4016ee <read_line>
  400e8d:	48 89 c7             	mov    %rax,%rdi
  400e90:	e8 98 00 00 00       	callq  400f2d <phase_1>
  400e95:	e8 7a 09 00 00       	callq  401814 <phase_defused>
  400e9a:	bf d8 25 40 00       	mov    $0x4025d8,%edi
  400e9f:	e8 cc fc ff ff       	callq  400b70 <puts@plt>
  400ea4:	e8 45 08 00 00       	callq  4016ee <read_line>
  400ea9:	48 89 c7             	mov    %rax,%rdi
  400eac:	e8 98 00 00 00       	callq  400f49 <phase_2>
  400eb1:	e8 5e 09 00 00       	callq  401814 <phase_defused>
  400eb6:	bf 1b 25 40 00       	mov    $0x40251b,%edi
  400ebb:	e8 b0 fc ff ff       	callq  400b70 <puts@plt>
  400ec0:	e8 29 08 00 00       	callq  4016ee <read_line>
  400ec5:	48 89 c7             	mov    %rax,%rdi
  400ec8:	e8 e4 00 00 00       	callq  400fb1 <phase_3>
  400ecd:	e8 42 09 00 00       	callq  401814 <phase_defused>
  400ed2:	bf 39 25 40 00       	mov    $0x402539,%edi
  400ed7:	e8 94 fc ff ff       	callq  400b70 <puts@plt>
  400edc:	e8 0d 08 00 00       	callq  4016ee <read_line>
  400ee1:	48 89 c7             	mov    %rax,%rdi
  400ee4:	e8 d6 01 00 00       	callq  4010bf <phase_4>
  400ee9:	e8 26 09 00 00       	callq  401814 <phase_defused>
  400eee:	bf 08 26 40 00       	mov    $0x402608,%edi
  400ef3:	e8 78 fc ff ff       	callq  400b70 <puts@plt>
  400ef8:	e8 f1 07 00 00       	callq  4016ee <read_line>
  400efd:	48 89 c7             	mov    %rax,%rdi
  400f00:	e8 2d 02 00 00       	callq  401132 <phase_5>
  400f05:	e8 0a 09 00 00       	callq  401814 <phase_defused>
  400f0a:	bf 48 25 40 00       	mov    $0x402548,%edi
  400f0f:	e8 5c fc ff ff       	callq  400b70 <puts@plt>
  400f14:	e8 d5 07 00 00       	callq  4016ee <read_line>
  400f19:	48 89 c7             	mov    %rax,%rdi
  400f1c:	e8 52 02 00 00       	callq  401173 <phase_6>
  400f21:	e8 ee 08 00 00       	callq  401814 <phase_defused>
  400f26:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2b:	5b                   	pop    %rbx
  400f2c:	c3                   	retq   

0000000000400f2d <phase_1>:
  400f2d:	48 83 ec 08          	sub    $0x8,%rsp
  400f31:	be 30 26 40 00       	mov    $0x402630,%esi
  400f36:	e8 6a 04 00 00       	callq  4013a5 <strings_not_equal>
  400f3b:	85 c0                	test   %eax,%eax
  400f3d:	74 05                	je     400f44 <phase_1+0x17>
  400f3f:	e8 35 07 00 00       	callq  401679 <explode_bomb>
  400f44:	48 83 c4 08          	add    $0x8,%rsp
  400f48:	c3                   	retq   

0000000000400f49 <phase_2>:
  400f49:	55                   	push   %rbp
  400f4a:	53                   	push   %rbx
  400f4b:	48 83 ec 28          	sub    $0x28,%rsp
  400f4f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400f56:	00 00 
  400f58:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400f5d:	31 c0                	xor    %eax,%eax
  400f5f:	48 89 e6             	mov    %rsp,%rsi
  400f62:	e8 48 07 00 00       	callq  4016af <read_six_numbers>
  400f67:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400f6b:	79 05                	jns    400f72 <phase_2+0x29>
  400f6d:	e8 07 07 00 00       	callq  401679 <explode_bomb>
  400f72:	48 89 e5             	mov    %rsp,%rbp
  400f75:	bb 01 00 00 00       	mov    $0x1,%ebx
  400f7a:	89 d8                	mov    %ebx,%eax
  400f7c:	03 45 00             	add    0x0(%rbp),%eax
  400f7f:	39 45 04             	cmp    %eax,0x4(%rbp)
  400f82:	74 05                	je     400f89 <phase_2+0x40>
  400f84:	e8 f0 06 00 00       	callq  401679 <explode_bomb>
  400f89:	83 c3 01             	add    $0x1,%ebx
  400f8c:	48 83 c5 04          	add    $0x4,%rbp
  400f90:	83 fb 06             	cmp    $0x6,%ebx
  400f93:	75 e5                	jne    400f7a <phase_2+0x31>
  400f95:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400f9a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400fa1:	00 00 
  400fa3:	74 05                	je     400faa <phase_2+0x61>
  400fa5:	e8 e6 fb ff ff       	callq  400b90 <__stack_chk_fail@plt>
  400faa:	48 83 c4 28          	add    $0x28,%rsp
  400fae:	5b                   	pop    %rbx
  400faf:	5d                   	pop    %rbp
  400fb0:	c3                   	retq   

0000000000400fb1 <phase_3>:
  400fb1:	48 83 ec 18          	sub    $0x18,%rsp
  400fb5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fbc:	00 00 
  400fbe:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400fc3:	31 c0                	xor    %eax,%eax
  400fc5:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  400fca:	48 89 e2             	mov    %rsp,%rdx
  400fcd:	be 6d 29 40 00       	mov    $0x40296d,%esi
  400fd2:	e8 69 fc ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  400fd7:	83 f8 01             	cmp    $0x1,%eax
  400fda:	7f 05                	jg     400fe1 <phase_3+0x30>
  400fdc:	e8 98 06 00 00       	callq  401679 <explode_bomb>
  400fe1:	83 3c 24 07          	cmpl   $0x7,(%rsp)
  400fe5:	77 65                	ja     40104c <phase_3+0x9b>
  400fe7:	8b 04 24             	mov    (%rsp),%eax
  400fea:	ff 24 c5 a0 26 40 00 	jmpq   *0x4026a0(,%rax,8)
  400ff1:	b8 3b 02 00 00       	mov    $0x23b,%eax
  400ff6:	eb 05                	jmp    400ffd <phase_3+0x4c>
  400ff8:	b8 00 00 00 00       	mov    $0x0,%eax
  400ffd:	2d e0 00 00 00       	sub    $0xe0,%eax
  401002:	eb 05                	jmp    401009 <phase_3+0x58>
  401004:	b8 00 00 00 00       	mov    $0x0,%eax
  401009:	05 52 02 00 00       	add    $0x252,%eax
  40100e:	eb 05                	jmp    401015 <phase_3+0x64>
  401010:	b8 00 00 00 00       	mov    $0x0,%eax
  401015:	2d b2 01 00 00       	sub    $0x1b2,%eax
  40101a:	eb 05                	jmp    401021 <phase_3+0x70>
  40101c:	b8 00 00 00 00       	mov    $0x0,%eax
  401021:	05 b2 01 00 00       	add    $0x1b2,%eax
  401026:	eb 05                	jmp    40102d <phase_3+0x7c>
  401028:	b8 00 00 00 00       	mov    $0x0,%eax
  40102d:	2d b2 01 00 00       	sub    $0x1b2,%eax
  401032:	eb 05                	jmp    401039 <phase_3+0x88>
  401034:	b8 00 00 00 00       	mov    $0x0,%eax
  401039:	05 b2 01 00 00       	add    $0x1b2,%eax
  40103e:	eb 05                	jmp    401045 <phase_3+0x94>
  401040:	b8 00 00 00 00       	mov    $0x0,%eax
  401045:	2d b2 01 00 00       	sub    $0x1b2,%eax
  40104a:	eb 0a                	jmp    401056 <phase_3+0xa5>
  40104c:	e8 28 06 00 00       	callq  401679 <explode_bomb>
  401051:	b8 00 00 00 00       	mov    $0x0,%eax
  401056:	83 3c 24 05          	cmpl   $0x5,(%rsp)
  40105a:	7f 06                	jg     401062 <phase_3+0xb1>
  40105c:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  401060:	74 05                	je     401067 <phase_3+0xb6>
  401062:	e8 12 06 00 00       	callq  401679 <explode_bomb>
  401067:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40106c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401073:	00 00 
  401075:	74 05                	je     40107c <phase_3+0xcb>
  401077:	e8 14 fb ff ff       	callq  400b90 <__stack_chk_fail@plt>
  40107c:	48 83 c4 18          	add    $0x18,%rsp
  401080:	c3                   	retq   

0000000000401081 <func4>:
  401081:	48 83 ec 08          	sub    $0x8,%rsp
  401085:	89 d0                	mov    %edx,%eax
  401087:	29 f0                	sub    %esi,%eax
  401089:	89 c1                	mov    %eax,%ecx
  40108b:	c1 e9 1f             	shr    $0x1f,%ecx
  40108e:	01 c8                	add    %ecx,%eax
  401090:	d1 f8                	sar    %eax
  401092:	8d 0c 30             	lea    (%rax,%rsi,1),%ecx
  401095:	39 f9                	cmp    %edi,%ecx
  401097:	7e 0c                	jle    4010a5 <func4+0x24>
  401099:	8d 51 ff             	lea    -0x1(%rcx),%edx
  40109c:	e8 e0 ff ff ff       	callq  401081 <func4>
  4010a1:	01 c0                	add    %eax,%eax
  4010a3:	eb 15                	jmp    4010ba <func4+0x39>
  4010a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4010aa:	39 f9                	cmp    %edi,%ecx
  4010ac:	7d 0c                	jge    4010ba <func4+0x39>
  4010ae:	8d 71 01             	lea    0x1(%rcx),%esi
  4010b1:	e8 cb ff ff ff       	callq  401081 <func4>
  4010b6:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4010ba:	48 83 c4 08          	add    $0x8,%rsp
  4010be:	c3                   	retq   

00000000004010bf <phase_4>:
  4010bf:	48 83 ec 18          	sub    $0x18,%rsp
  4010c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4010ca:	00 00 
  4010cc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4010d1:	31 c0                	xor    %eax,%eax
  4010d3:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  4010d8:	48 89 e2             	mov    %rsp,%rdx
  4010db:	be 6d 29 40 00       	mov    $0x40296d,%esi
  4010e0:	e8 5b fb ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  4010e5:	83 f8 02             	cmp    $0x2,%eax
  4010e8:	75 06                	jne    4010f0 <phase_4+0x31>
  4010ea:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
  4010ee:	76 05                	jbe    4010f5 <phase_4+0x36>
  4010f0:	e8 84 05 00 00       	callq  401679 <explode_bomb>
  4010f5:	ba 0e 00 00 00       	mov    $0xe,%edx
  4010fa:	be 00 00 00 00       	mov    $0x0,%esi
  4010ff:	8b 3c 24             	mov    (%rsp),%edi
  401102:	e8 7a ff ff ff       	callq  401081 <func4>
  401107:	83 f8 03             	cmp    $0x3,%eax
  40110a:	75 07                	jne    401113 <phase_4+0x54>
  40110c:	83 7c 24 04 03       	cmpl   $0x3,0x4(%rsp)
  401111:	74 05                	je     401118 <phase_4+0x59>
  401113:	e8 61 05 00 00       	callq  401679 <explode_bomb>
  401118:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40111d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401124:	00 00 
  401126:	74 05                	je     40112d <phase_4+0x6e>
  401128:	e8 63 fa ff ff       	callq  400b90 <__stack_chk_fail@plt>
  40112d:	48 83 c4 18          	add    $0x18,%rsp
  401131:	c3                   	retq   

0000000000401132 <phase_5>:
  401132:	53                   	push   %rbx
  401133:	48 89 fb             	mov    %rdi,%rbx
  401136:	e8 4c 02 00 00       	callq  401387 <string_length>
  40113b:	83 f8 06             	cmp    $0x6,%eax
  40113e:	74 05                	je     401145 <phase_5+0x13>
  401140:	e8 34 05 00 00       	callq  401679 <explode_bomb>
  401145:	48 89 d8             	mov    %rbx,%rax
  401148:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
  40114c:	b9 00 00 00 00       	mov    $0x0,%ecx
  401151:	0f b6 10             	movzbl (%rax),%edx
  401154:	83 e2 0f             	and    $0xf,%edx
  401157:	03 0c 95 e0 26 40 00 	add    0x4026e0(,%rdx,4),%ecx
  40115e:	48 83 c0 01          	add    $0x1,%rax
  401162:	48 39 f8             	cmp    %rdi,%rax
  401165:	75 ea                	jne    401151 <phase_5+0x1f>
  401167:	83 f9 21             	cmp    $0x21,%ecx
  40116a:	74 05                	je     401171 <phase_5+0x3f>
  40116c:	e8 08 05 00 00       	callq  401679 <explode_bomb>
  401171:	5b                   	pop    %rbx
  401172:	c3                   	retq   

0000000000401173 <phase_6>:
  401173:	41 55                	push   %r13
  401175:	41 54                	push   %r12
  401177:	55                   	push   %rbp
  401178:	53                   	push   %rbx
  401179:	48 83 ec 68          	sub    $0x68,%rsp
  40117d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401184:	00 00 
  401186:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40118b:	31 c0                	xor    %eax,%eax
  40118d:	48 89 e6             	mov    %rsp,%rsi
  401190:	e8 1a 05 00 00       	callq  4016af <read_six_numbers>
  401195:	49 89 e4             	mov    %rsp,%r12
  401198:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40119e:	4c 89 e5             	mov    %r12,%rbp
  4011a1:	41 8b 04 24          	mov    (%r12),%eax
  4011a5:	83 e8 01             	sub    $0x1,%eax
  4011a8:	83 f8 05             	cmp    $0x5,%eax
  4011ab:	76 05                	jbe    4011b2 <phase_6+0x3f>
  4011ad:	e8 c7 04 00 00       	callq  401679 <explode_bomb>
  4011b2:	41 83 c5 01          	add    $0x1,%r13d
  4011b6:	41 83 fd 06          	cmp    $0x6,%r13d
  4011ba:	74 3d                	je     4011f9 <phase_6+0x86>
  4011bc:	44 89 eb             	mov    %r13d,%ebx
  4011bf:	48 63 c3             	movslq %ebx,%rax
  4011c2:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  4011c5:	39 45 00             	cmp    %eax,0x0(%rbp)
  4011c8:	75 05                	jne    4011cf <phase_6+0x5c>
  4011ca:	e8 aa 04 00 00       	callq  401679 <explode_bomb>
  4011cf:	83 c3 01             	add    $0x1,%ebx
  4011d2:	83 fb 05             	cmp    $0x5,%ebx
  4011d5:	7e e8                	jle    4011bf <phase_6+0x4c>
  4011d7:	49 83 c4 04          	add    $0x4,%r12
  4011db:	eb c1                	jmp    40119e <phase_6+0x2b>
  4011dd:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4011e1:	83 c0 01             	add    $0x1,%eax
  4011e4:	39 c8                	cmp    %ecx,%eax
  4011e6:	75 f5                	jne    4011dd <phase_6+0x6a>
  4011e8:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)
  4011ed:	48 83 c6 04          	add    $0x4,%rsi
  4011f1:	48 83 fe 18          	cmp    $0x18,%rsi
  4011f5:	75 07                	jne    4011fe <phase_6+0x8b>
  4011f7:	eb 19                	jmp    401212 <phase_6+0x9f>
  4011f9:	be 00 00 00 00       	mov    $0x0,%esi
  4011fe:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx
  401201:	b8 01 00 00 00       	mov    $0x1,%eax
  401206:	ba f0 42 60 00       	mov    $0x6042f0,%edx
  40120b:	83 f9 01             	cmp    $0x1,%ecx
  40120e:	7f cd                	jg     4011dd <phase_6+0x6a>
  401210:	eb d6                	jmp    4011e8 <phase_6+0x75>
  401212:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  401217:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  40121c:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
  401221:	48 89 d9             	mov    %rbx,%rcx
  401224:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401228:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40122c:	48 83 c0 08          	add    $0x8,%rax
  401230:	48 89 d1             	mov    %rdx,%rcx
  401233:	48 39 f0             	cmp    %rsi,%rax
  401236:	75 ec                	jne    401224 <phase_6+0xb1>
  401238:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  40123f:	00 
  401240:	bd 05 00 00 00       	mov    $0x5,%ebp
  401245:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401249:	8b 00                	mov    (%rax),%eax
  40124b:	39 03                	cmp    %eax,(%rbx)
  40124d:	7e 05                	jle    401254 <phase_6+0xe1>
  40124f:	e8 25 04 00 00       	callq  401679 <explode_bomb>
  401254:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401258:	83 ed 01             	sub    $0x1,%ebp
  40125b:	75 e8                	jne    401245 <phase_6+0xd2>
  40125d:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  401262:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401269:	00 00 
  40126b:	74 05                	je     401272 <phase_6+0xff>
  40126d:	e8 1e f9 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401272:	48 83 c4 68          	add    $0x68,%rsp
  401276:	5b                   	pop    %rbx
  401277:	5d                   	pop    %rbp
  401278:	41 5c                	pop    %r12
  40127a:	41 5d                	pop    %r13
  40127c:	c3                   	retq   

000000000040127d <fun7>:
  40127d:	48 83 ec 08          	sub    $0x8,%rsp
  401281:	48 85 ff             	test   %rdi,%rdi
  401284:	74 2b                	je     4012b1 <fun7+0x34>
  401286:	8b 17                	mov    (%rdi),%edx
  401288:	39 f2                	cmp    %esi,%edx
  40128a:	7e 0d                	jle    401299 <fun7+0x1c>
  40128c:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  401290:	e8 e8 ff ff ff       	callq  40127d <fun7>
  401295:	01 c0                	add    %eax,%eax
  401297:	eb 1d                	jmp    4012b6 <fun7+0x39>
  401299:	b8 00 00 00 00       	mov    $0x0,%eax
  40129e:	39 f2                	cmp    %esi,%edx
  4012a0:	74 14                	je     4012b6 <fun7+0x39>
  4012a2:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4012a6:	e8 d2 ff ff ff       	callq  40127d <fun7>
  4012ab:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4012af:	eb 05                	jmp    4012b6 <fun7+0x39>
  4012b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4012b6:	48 83 c4 08          	add    $0x8,%rsp
  4012ba:	c3                   	retq   

00000000004012bb <secret_phase>:
  4012bb:	53                   	push   %rbx
  4012bc:	e8 2d 04 00 00       	callq  4016ee <read_line>
  4012c1:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012c6:	be 00 00 00 00       	mov    $0x0,%esi
  4012cb:	48 89 c7             	mov    %rax,%rdi
  4012ce:	e8 4d f9 ff ff       	callq  400c20 <strtol@plt>
  4012d3:	48 89 c3             	mov    %rax,%rbx
  4012d6:	8d 40 ff             	lea    -0x1(%rax),%eax
  4012d9:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4012de:	76 05                	jbe    4012e5 <secret_phase+0x2a>
  4012e0:	e8 94 03 00 00       	callq  401679 <explode_bomb>
  4012e5:	89 de                	mov    %ebx,%esi
  4012e7:	bf 10 41 60 00       	mov    $0x604110,%edi
  4012ec:	e8 8c ff ff ff       	callq  40127d <fun7>
  4012f1:	83 f8 02             	cmp    $0x2,%eax
  4012f4:	74 05                	je     4012fb <secret_phase+0x40>
  4012f6:	e8 7e 03 00 00       	callq  401679 <explode_bomb>
  4012fb:	bf 68 26 40 00       	mov    $0x402668,%edi
  401300:	e8 6b f8 ff ff       	callq  400b70 <puts@plt>
  401305:	e8 0a 05 00 00       	callq  401814 <phase_defused>
  40130a:	5b                   	pop    %rbx
  40130b:	c3                   	retq   

000000000040130c <sig_handler>:
  40130c:	48 83 ec 08          	sub    $0x8,%rsp
  401310:	bf 20 27 40 00       	mov    $0x402720,%edi
  401315:	e8 56 f8 ff ff       	callq  400b70 <puts@plt>
  40131a:	bf 03 00 00 00       	mov    $0x3,%edi
  40131f:	e8 8c f9 ff ff       	callq  400cb0 <sleep@plt>
  401324:	be e9 28 40 00       	mov    $0x4028e9,%esi
  401329:	bf 01 00 00 00       	mov    $0x1,%edi
  40132e:	b8 00 00 00 00       	mov    $0x0,%eax
  401333:	e8 18 f9 ff ff       	callq  400c50 <__printf_chk@plt>
  401338:	48 8b 3d 41 38 20 00 	mov    0x203841(%rip),%rdi        # 604b80 <__TMC_END__>
  40133f:	e8 ec f8 ff ff       	callq  400c30 <fflush@plt>
  401344:	bf 01 00 00 00       	mov    $0x1,%edi
  401349:	e8 62 f9 ff ff       	callq  400cb0 <sleep@plt>
  40134e:	bf f1 28 40 00       	mov    $0x4028f1,%edi
  401353:	e8 18 f8 ff ff       	callq  400b70 <puts@plt>
  401358:	bf 10 00 00 00       	mov    $0x10,%edi
  40135d:	e8 1e f9 ff ff       	callq  400c80 <exit@plt>

0000000000401362 <invalid_phase>:
  401362:	48 83 ec 08          	sub    $0x8,%rsp
  401366:	48 89 fa             	mov    %rdi,%rdx
  401369:	be f9 28 40 00       	mov    $0x4028f9,%esi
  40136e:	bf 01 00 00 00       	mov    $0x1,%edi
  401373:	b8 00 00 00 00       	mov    $0x0,%eax
  401378:	e8 d3 f8 ff ff       	callq  400c50 <__printf_chk@plt>
  40137d:	bf 08 00 00 00       	mov    $0x8,%edi
  401382:	e8 f9 f8 ff ff       	callq  400c80 <exit@plt>

0000000000401387 <string_length>:
  401387:	80 3f 00             	cmpb   $0x0,(%rdi)
  40138a:	74 13                	je     40139f <string_length+0x18>
  40138c:	b8 00 00 00 00       	mov    $0x0,%eax
  401391:	48 83 c7 01          	add    $0x1,%rdi
  401395:	83 c0 01             	add    $0x1,%eax
  401398:	80 3f 00             	cmpb   $0x0,(%rdi)
  40139b:	75 f4                	jne    401391 <string_length+0xa>
  40139d:	f3 c3                	repz retq 
  40139f:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a4:	c3                   	retq   

00000000004013a5 <strings_not_equal>:
  4013a5:	41 54                	push   %r12
  4013a7:	55                   	push   %rbp
  4013a8:	53                   	push   %rbx
  4013a9:	48 89 fb             	mov    %rdi,%rbx
  4013ac:	48 89 f5             	mov    %rsi,%rbp
  4013af:	e8 d3 ff ff ff       	callq  401387 <string_length>
  4013b4:	41 89 c4             	mov    %eax,%r12d
  4013b7:	48 89 ef             	mov    %rbp,%rdi
  4013ba:	e8 c8 ff ff ff       	callq  401387 <string_length>
  4013bf:	ba 01 00 00 00       	mov    $0x1,%edx
  4013c4:	41 39 c4             	cmp    %eax,%r12d
  4013c7:	75 3c                	jne    401405 <strings_not_equal+0x60>
  4013c9:	0f b6 03             	movzbl (%rbx),%eax
  4013cc:	84 c0                	test   %al,%al
  4013ce:	74 22                	je     4013f2 <strings_not_equal+0x4d>
  4013d0:	3a 45 00             	cmp    0x0(%rbp),%al
  4013d3:	74 07                	je     4013dc <strings_not_equal+0x37>
  4013d5:	eb 22                	jmp    4013f9 <strings_not_equal+0x54>
  4013d7:	3a 45 00             	cmp    0x0(%rbp),%al
  4013da:	75 24                	jne    401400 <strings_not_equal+0x5b>
  4013dc:	48 83 c3 01          	add    $0x1,%rbx
  4013e0:	48 83 c5 01          	add    $0x1,%rbp
  4013e4:	0f b6 03             	movzbl (%rbx),%eax
  4013e7:	84 c0                	test   %al,%al
  4013e9:	75 ec                	jne    4013d7 <strings_not_equal+0x32>
  4013eb:	ba 00 00 00 00       	mov    $0x0,%edx
  4013f0:	eb 13                	jmp    401405 <strings_not_equal+0x60>
  4013f2:	ba 00 00 00 00       	mov    $0x0,%edx
  4013f7:	eb 0c                	jmp    401405 <strings_not_equal+0x60>
  4013f9:	ba 01 00 00 00       	mov    $0x1,%edx
  4013fe:	eb 05                	jmp    401405 <strings_not_equal+0x60>
  401400:	ba 01 00 00 00       	mov    $0x1,%edx
  401405:	89 d0                	mov    %edx,%eax
  401407:	5b                   	pop    %rbx
  401408:	5d                   	pop    %rbp
  401409:	41 5c                	pop    %r12
  40140b:	c3                   	retq   

000000000040140c <initialize_bomb>:
  40140c:	53                   	push   %rbx
  40140d:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  401414:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40141b:	00 00 
  40141d:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  401424:	00 
  401425:	31 c0                	xor    %eax,%eax
  401427:	be 0c 13 40 00       	mov    $0x40130c,%esi
  40142c:	bf 02 00 00 00       	mov    $0x2,%edi
  401431:	e8 ba f7 ff ff       	callq  400bf0 <signal@plt>
  401436:	be 40 00 00 00       	mov    $0x40,%esi
  40143b:	48 89 e7             	mov    %rsp,%rdi
  40143e:	e8 2d f8 ff ff       	callq  400c70 <gethostname@plt>
  401443:	85 c0                	test   %eax,%eax
  401445:	75 13                	jne    40145a <initialize_bomb+0x4e>
  401447:	48 8b 3d 32 2f 20 00 	mov    0x202f32(%rip),%rdi        # 604380 <host_table>
  40144e:	bb 88 43 60 00       	mov    $0x604388,%ebx
  401453:	48 85 ff             	test   %rdi,%rdi
  401456:	75 16                	jne    40146e <initialize_bomb+0x62>
  401458:	eb 52                	jmp    4014ac <initialize_bomb+0xa0>
  40145a:	bf 58 27 40 00       	mov    $0x402758,%edi
  40145f:	e8 0c f7 ff ff       	callq  400b70 <puts@plt>
  401464:	bf 08 00 00 00       	mov    $0x8,%edi
  401469:	e8 12 f8 ff ff       	callq  400c80 <exit@plt>
  40146e:	48 89 e6             	mov    %rsp,%rsi
  401471:	e8 ca f6 ff ff       	callq  400b40 <strcasecmp@plt>
  401476:	85 c0                	test   %eax,%eax
  401478:	74 46                	je     4014c0 <initialize_bomb+0xb4>
  40147a:	48 83 c3 08          	add    $0x8,%rbx
  40147e:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  401482:	48 85 ff             	test   %rdi,%rdi
  401485:	75 e7                	jne    40146e <initialize_bomb+0x62>
  401487:	eb 23                	jmp    4014ac <initialize_bomb+0xa0>
  401489:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  40148e:	be 0a 29 40 00       	mov    $0x40290a,%esi
  401493:	bf 01 00 00 00       	mov    $0x1,%edi
  401498:	b8 00 00 00 00       	mov    $0x0,%eax
  40149d:	e8 ae f7 ff ff       	callq  400c50 <__printf_chk@plt>
  4014a2:	bf 08 00 00 00       	mov    $0x8,%edi
  4014a7:	e8 d4 f7 ff ff       	callq  400c80 <exit@plt>
  4014ac:	bf 90 27 40 00       	mov    $0x402790,%edi
  4014b1:	e8 ba f6 ff ff       	callq  400b70 <puts@plt>
  4014b6:	bf 08 00 00 00       	mov    $0x8,%edi
  4014bb:	e8 c0 f7 ff ff       	callq  400c80 <exit@plt>
  4014c0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4014c5:	e8 49 0d 00 00       	callq  402213 <init_driver>
  4014ca:	85 c0                	test   %eax,%eax
  4014cc:	78 bb                	js     401489 <initialize_bomb+0x7d>
  4014ce:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  4014d5:	00 
  4014d6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4014dd:	00 00 
  4014df:	74 05                	je     4014e6 <initialize_bomb+0xda>
  4014e1:	e8 aa f6 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4014e6:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  4014ed:	5b                   	pop    %rbx
  4014ee:	c3                   	retq   

00000000004014ef <initialize_bomb_solve>:
  4014ef:	f3 c3                	repz retq 

00000000004014f1 <blank_line>:
  4014f1:	55                   	push   %rbp
  4014f2:	53                   	push   %rbx
  4014f3:	48 83 ec 08          	sub    $0x8,%rsp
  4014f7:	48 89 fd             	mov    %rdi,%rbp
  4014fa:	eb 17                	jmp    401513 <blank_line+0x22>
  4014fc:	e8 bf f7 ff ff       	callq  400cc0 <__ctype_b_loc@plt>
  401501:	48 83 c5 01          	add    $0x1,%rbp
  401505:	48 0f be db          	movsbq %bl,%rbx
  401509:	48 8b 00             	mov    (%rax),%rax
  40150c:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401511:	74 0f                	je     401522 <blank_line+0x31>
  401513:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401517:	84 db                	test   %bl,%bl
  401519:	75 e1                	jne    4014fc <blank_line+0xb>
  40151b:	b8 01 00 00 00       	mov    $0x1,%eax
  401520:	eb 05                	jmp    401527 <blank_line+0x36>
  401522:	b8 00 00 00 00       	mov    $0x0,%eax
  401527:	48 83 c4 08          	add    $0x8,%rsp
  40152b:	5b                   	pop    %rbx
  40152c:	5d                   	pop    %rbp
  40152d:	c3                   	retq   

000000000040152e <skip>:
  40152e:	53                   	push   %rbx
  40152f:	48 63 05 76 36 20 00 	movslq 0x203676(%rip),%rax        # 604bac <num_input_strings>
  401536:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40153a:	48 c1 e7 04          	shl    $0x4,%rdi
  40153e:	48 81 c7 c0 4b 60 00 	add    $0x604bc0,%rdi
  401545:	48 8b 15 64 36 20 00 	mov    0x203664(%rip),%rdx        # 604bb0 <infile>
  40154c:	be 50 00 00 00       	mov    $0x50,%esi
  401551:	e8 8a f6 ff ff       	callq  400be0 <fgets@plt>
  401556:	48 89 c3             	mov    %rax,%rbx
  401559:	48 85 c0             	test   %rax,%rax
  40155c:	74 0c                	je     40156a <skip+0x3c>
  40155e:	48 89 c7             	mov    %rax,%rdi
  401561:	e8 8b ff ff ff       	callq  4014f1 <blank_line>
  401566:	85 c0                	test   %eax,%eax
  401568:	75 c5                	jne    40152f <skip+0x1>
  40156a:	48 89 d8             	mov    %rbx,%rax
  40156d:	5b                   	pop    %rbx
  40156e:	c3                   	retq   

000000000040156f <send_msg>:
  40156f:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401576:	41 89 f8             	mov    %edi,%r8d
  401579:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401580:	00 00 
  401582:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401589:	00 
  40158a:	31 c0                	xor    %eax,%eax
  40158c:	8b 35 1a 36 20 00    	mov    0x20361a(%rip),%esi        # 604bac <num_input_strings>
  401592:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401595:	48 98                	cltq   
  401597:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40159b:	48 c1 e2 04          	shl    $0x4,%rdx
  40159f:	48 81 c2 c0 4b 60 00 	add    $0x604bc0,%rdx
  4015a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4015ab:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4015b2:	48 89 d7             	mov    %rdx,%rdi
  4015b5:	f2 ae                	repnz scas %es:(%rdi),%al
  4015b7:	48 f7 d1             	not    %rcx
  4015ba:	48 83 c1 63          	add    $0x63,%rcx
  4015be:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4015c5:	76 19                	jbe    4015e0 <send_msg+0x71>
  4015c7:	be c8 27 40 00       	mov    $0x4027c8,%esi
  4015cc:	bf 01 00 00 00       	mov    $0x1,%edi
  4015d1:	e8 7a f6 ff ff       	callq  400c50 <__printf_chk@plt>
  4015d6:	bf 08 00 00 00       	mov    $0x8,%edi
  4015db:	e8 a0 f6 ff ff       	callq  400c80 <exit@plt>
  4015e0:	45 85 c0             	test   %r8d,%r8d
  4015e3:	41 b9 2c 29 40 00    	mov    $0x40292c,%r9d
  4015e9:	b8 24 29 40 00       	mov    $0x402924,%eax
  4015ee:	4c 0f 45 c8          	cmovne %rax,%r9
  4015f2:	52                   	push   %rdx
  4015f3:	56                   	push   %rsi
  4015f4:	44 8b 05 75 2d 20 00 	mov    0x202d75(%rip),%r8d        # 604370 <bomb_id>
  4015fb:	b9 35 29 40 00       	mov    $0x402935,%ecx
  401600:	ba 00 20 00 00       	mov    $0x2000,%edx
  401605:	be 01 00 00 00       	mov    $0x1,%esi
  40160a:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40160f:	b8 00 00 00 00       	mov    $0x0,%eax
  401614:	e8 b7 f6 ff ff       	callq  400cd0 <__sprintf_chk@plt>
  401619:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
  401620:	00 
  401621:	b9 00 00 00 00       	mov    $0x0,%ecx
  401626:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  40162b:	be 50 43 60 00       	mov    $0x604350,%esi
  401630:	bf 68 43 60 00       	mov    $0x604368,%edi
  401635:	e8 ae 0d 00 00       	callq  4023e8 <driver_post>
  40163a:	48 83 c4 10          	add    $0x10,%rsp
  40163e:	85 c0                	test   %eax,%eax
  401640:	79 17                	jns    401659 <send_msg+0xea>
  401642:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401649:	00 
  40164a:	e8 21 f5 ff ff       	callq  400b70 <puts@plt>
  40164f:	bf 00 00 00 00       	mov    $0x0,%edi
  401654:	e8 27 f6 ff ff       	callq  400c80 <exit@plt>
  401659:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401660:	00 
  401661:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401668:	00 00 
  40166a:	74 05                	je     401671 <send_msg+0x102>
  40166c:	e8 1f f5 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  401671:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401678:	c3                   	retq   

0000000000401679 <explode_bomb>:
  401679:	48 83 ec 08          	sub    $0x8,%rsp
  40167d:	bf 41 29 40 00       	mov    $0x402941,%edi
  401682:	e8 e9 f4 ff ff       	callq  400b70 <puts@plt>
  401687:	bf 4a 29 40 00       	mov    $0x40294a,%edi
  40168c:	e8 df f4 ff ff       	callq  400b70 <puts@plt>
  401691:	bf 00 00 00 00       	mov    $0x0,%edi
  401696:	e8 d4 fe ff ff       	callq  40156f <send_msg>
  40169b:	bf f0 27 40 00       	mov    $0x4027f0,%edi
  4016a0:	e8 cb f4 ff ff       	callq  400b70 <puts@plt>
  4016a5:	bf 08 00 00 00       	mov    $0x8,%edi
  4016aa:	e8 d1 f5 ff ff       	callq  400c80 <exit@plt>

00000000004016af <read_six_numbers>:
  4016af:	48 83 ec 08          	sub    $0x8,%rsp
  4016b3:	48 89 f2             	mov    %rsi,%rdx
  4016b6:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  4016ba:	48 8d 46 14          	lea    0x14(%rsi),%rax
  4016be:	50                   	push   %rax
  4016bf:	48 8d 46 10          	lea    0x10(%rsi),%rax
  4016c3:	50                   	push   %rax
  4016c4:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  4016c8:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  4016cc:	be 61 29 40 00       	mov    $0x402961,%esi
  4016d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d6:	e8 65 f5 ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  4016db:	48 83 c4 10          	add    $0x10,%rsp
  4016df:	83 f8 05             	cmp    $0x5,%eax
  4016e2:	7f 05                	jg     4016e9 <read_six_numbers+0x3a>
  4016e4:	e8 90 ff ff ff       	callq  401679 <explode_bomb>
  4016e9:	48 83 c4 08          	add    $0x8,%rsp
  4016ed:	c3                   	retq   

00000000004016ee <read_line>:
  4016ee:	48 83 ec 08          	sub    $0x8,%rsp
  4016f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f7:	e8 32 fe ff ff       	callq  40152e <skip>
  4016fc:	48 85 c0             	test   %rax,%rax
  4016ff:	75 6e                	jne    40176f <read_line+0x81>
  401701:	48 8b 05 88 34 20 00 	mov    0x203488(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  401708:	48 39 05 a1 34 20 00 	cmp    %rax,0x2034a1(%rip)        # 604bb0 <infile>
  40170f:	75 14                	jne    401725 <read_line+0x37>
  401711:	bf 73 29 40 00       	mov    $0x402973,%edi
  401716:	e8 55 f4 ff ff       	callq  400b70 <puts@plt>
  40171b:	bf 08 00 00 00       	mov    $0x8,%edi
  401720:	e8 5b f5 ff ff       	callq  400c80 <exit@plt>
  401725:	bf 91 29 40 00       	mov    $0x402991,%edi
  40172a:	e8 01 f4 ff ff       	callq  400b30 <getenv@plt>
  40172f:	48 85 c0             	test   %rax,%rax
  401732:	74 0a                	je     40173e <read_line+0x50>
  401734:	bf 00 00 00 00       	mov    $0x0,%edi
  401739:	e8 42 f5 ff ff       	callq  400c80 <exit@plt>
  40173e:	48 8b 05 4b 34 20 00 	mov    0x20344b(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  401745:	48 89 05 64 34 20 00 	mov    %rax,0x203464(%rip)        # 604bb0 <infile>
  40174c:	b8 00 00 00 00       	mov    $0x0,%eax
  401751:	e8 d8 fd ff ff       	callq  40152e <skip>
  401756:	48 85 c0             	test   %rax,%rax
  401759:	75 14                	jne    40176f <read_line+0x81>
  40175b:	bf 73 29 40 00       	mov    $0x402973,%edi
  401760:	e8 0b f4 ff ff       	callq  400b70 <puts@plt>
  401765:	bf 00 00 00 00       	mov    $0x0,%edi
  40176a:	e8 11 f5 ff ff       	callq  400c80 <exit@plt>
  40176f:	8b 35 37 34 20 00    	mov    0x203437(%rip),%esi        # 604bac <num_input_strings>
  401775:	48 63 c6             	movslq %esi,%rax
  401778:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40177c:	48 c1 e2 04          	shl    $0x4,%rdx
  401780:	48 81 c2 c0 4b 60 00 	add    $0x604bc0,%rdx
  401787:	b8 00 00 00 00       	mov    $0x0,%eax
  40178c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401793:	48 89 d7             	mov    %rdx,%rdi
  401796:	f2 ae                	repnz scas %es:(%rdi),%al
  401798:	48 f7 d1             	not    %rcx
  40179b:	48 83 e9 01          	sub    $0x1,%rcx
  40179f:	83 f9 4e             	cmp    $0x4e,%ecx
  4017a2:	7e 46                	jle    4017ea <read_line+0xfc>
  4017a4:	bf 9c 29 40 00       	mov    $0x40299c,%edi
  4017a9:	e8 c2 f3 ff ff       	callq  400b70 <puts@plt>
  4017ae:	8b 05 f8 33 20 00    	mov    0x2033f8(%rip),%eax        # 604bac <num_input_strings>
  4017b4:	8d 50 01             	lea    0x1(%rax),%edx
  4017b7:	89 15 ef 33 20 00    	mov    %edx,0x2033ef(%rip)        # 604bac <num_input_strings>
  4017bd:	48 98                	cltq   
  4017bf:	48 6b c0 50          	imul   $0x50,%rax,%rax
  4017c3:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  4017ca:	75 6e 63 
  4017cd:	48 89 b8 c0 4b 60 00 	mov    %rdi,0x604bc0(%rax)
  4017d4:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4017db:	2a 2a 00 
  4017de:	48 89 b8 c8 4b 60 00 	mov    %rdi,0x604bc8(%rax)
  4017e5:	e8 8f fe ff ff       	callq  401679 <explode_bomb>
  4017ea:	83 e9 01             	sub    $0x1,%ecx
  4017ed:	48 63 c9             	movslq %ecx,%rcx
  4017f0:	48 63 c6             	movslq %esi,%rax
  4017f3:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017f7:	48 c1 e0 04          	shl    $0x4,%rax
  4017fb:	c6 84 01 c0 4b 60 00 	movb   $0x0,0x604bc0(%rcx,%rax,1)
  401802:	00 
  401803:	8d 46 01             	lea    0x1(%rsi),%eax
  401806:	89 05 a0 33 20 00    	mov    %eax,0x2033a0(%rip)        # 604bac <num_input_strings>
  40180c:	48 89 d0             	mov    %rdx,%rax
  40180f:	48 83 c4 08          	add    $0x8,%rsp
  401813:	c3                   	retq   

0000000000401814 <phase_defused>:
  401814:	48 83 ec 78          	sub    $0x78,%rsp
  401818:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40181f:	00 00 
  401821:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  401826:	31 c0                	xor    %eax,%eax
  401828:	bf 01 00 00 00       	mov    $0x1,%edi
  40182d:	e8 3d fd ff ff       	callq  40156f <send_msg>
  401832:	83 3d 73 33 20 00 06 	cmpl   $0x6,0x203373(%rip)        # 604bac <num_input_strings>
  401839:	75 6d                	jne    4018a8 <phase_defused+0x94>
  40183b:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401840:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401845:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  40184a:	be b7 29 40 00       	mov    $0x4029b7,%esi
  40184f:	bf b0 4c 60 00       	mov    $0x604cb0,%edi
  401854:	b8 00 00 00 00       	mov    $0x0,%eax
  401859:	e8 e2 f3 ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  40185e:	83 f8 03             	cmp    $0x3,%eax
  401861:	75 31                	jne    401894 <phase_defused+0x80>
  401863:	be c0 29 40 00       	mov    $0x4029c0,%esi
  401868:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40186d:	e8 33 fb ff ff       	callq  4013a5 <strings_not_equal>
  401872:	85 c0                	test   %eax,%eax
  401874:	75 1e                	jne    401894 <phase_defused+0x80>
  401876:	bf 18 28 40 00       	mov    $0x402818,%edi
  40187b:	e8 f0 f2 ff ff       	callq  400b70 <puts@plt>
  401880:	bf 40 28 40 00       	mov    $0x402840,%edi
  401885:	e8 e6 f2 ff ff       	callq  400b70 <puts@plt>
  40188a:	b8 00 00 00 00       	mov    $0x0,%eax
  40188f:	e8 27 fa ff ff       	callq  4012bb <secret_phase>
  401894:	bf 78 28 40 00       	mov    $0x402878,%edi
  401899:	e8 d2 f2 ff ff       	callq  400b70 <puts@plt>
  40189e:	bf a8 28 40 00       	mov    $0x4028a8,%edi
  4018a3:	e8 c8 f2 ff ff       	callq  400b70 <puts@plt>
  4018a8:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  4018ad:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4018b4:	00 00 
  4018b6:	74 05                	je     4018bd <phase_defused+0xa9>
  4018b8:	e8 d3 f2 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4018bd:	48 83 c4 78          	add    $0x78,%rsp
  4018c1:	c3                   	retq   

00000000004018c2 <sigalrm_handler>:
  4018c2:	48 83 ec 08          	sub    $0x8,%rsp
  4018c6:	b9 00 00 00 00       	mov    $0x0,%ecx
  4018cb:	ba d8 30 40 00       	mov    $0x4030d8,%edx
  4018d0:	be 01 00 00 00       	mov    $0x1,%esi
  4018d5:	48 8b 3d c4 32 20 00 	mov    0x2032c4(%rip),%rdi        # 604ba0 <stderr@@GLIBC_2.2.5>
  4018dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e1:	e8 ba f3 ff ff       	callq  400ca0 <__fprintf_chk@plt>
  4018e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4018eb:	e8 90 f3 ff ff       	callq  400c80 <exit@plt>

00000000004018f0 <rio_readlineb>:
  4018f0:	41 56                	push   %r14
  4018f2:	41 55                	push   %r13
  4018f4:	41 54                	push   %r12
  4018f6:	55                   	push   %rbp
  4018f7:	53                   	push   %rbx
  4018f8:	48 83 ec 10          	sub    $0x10,%rsp
  4018fc:	48 89 fb             	mov    %rdi,%rbx
  4018ff:	49 89 f5             	mov    %rsi,%r13
  401902:	49 89 d6             	mov    %rdx,%r14
  401905:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40190c:	00 00 
  40190e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401913:	31 c0                	xor    %eax,%eax
  401915:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40191b:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  40191f:	48 83 fa 01          	cmp    $0x1,%rdx
  401923:	77 2c                	ja     401951 <rio_readlineb+0x61>
  401925:	eb 6d                	jmp    401994 <rio_readlineb+0xa4>
  401927:	ba 00 20 00 00       	mov    $0x2000,%edx
  40192c:	48 89 ee             	mov    %rbp,%rsi
  40192f:	8b 3b                	mov    (%rbx),%edi
  401931:	e8 8a f2 ff ff       	callq  400bc0 <read@plt>
  401936:	89 43 04             	mov    %eax,0x4(%rbx)
  401939:	85 c0                	test   %eax,%eax
  40193b:	79 0c                	jns    401949 <rio_readlineb+0x59>
  40193d:	e8 0e f2 ff ff       	callq  400b50 <__errno_location@plt>
  401942:	83 38 04             	cmpl   $0x4,(%rax)
  401945:	74 0a                	je     401951 <rio_readlineb+0x61>
  401947:	eb 6c                	jmp    4019b5 <rio_readlineb+0xc5>
  401949:	85 c0                	test   %eax,%eax
  40194b:	74 71                	je     4019be <rio_readlineb+0xce>
  40194d:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401951:	8b 43 04             	mov    0x4(%rbx),%eax
  401954:	85 c0                	test   %eax,%eax
  401956:	7e cf                	jle    401927 <rio_readlineb+0x37>
  401958:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  40195c:	0f b6 0a             	movzbl (%rdx),%ecx
  40195f:	88 4c 24 07          	mov    %cl,0x7(%rsp)
  401963:	48 83 c2 01          	add    $0x1,%rdx
  401967:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  40196b:	83 e8 01             	sub    $0x1,%eax
  40196e:	89 43 04             	mov    %eax,0x4(%rbx)
  401971:	49 83 c5 01          	add    $0x1,%r13
  401975:	41 88 4d ff          	mov    %cl,-0x1(%r13)
  401979:	80 f9 0a             	cmp    $0xa,%cl
  40197c:	75 0a                	jne    401988 <rio_readlineb+0x98>
  40197e:	eb 14                	jmp    401994 <rio_readlineb+0xa4>
  401980:	41 83 fc 01          	cmp    $0x1,%r12d
  401984:	75 0e                	jne    401994 <rio_readlineb+0xa4>
  401986:	eb 16                	jmp    40199e <rio_readlineb+0xae>
  401988:	41 83 c4 01          	add    $0x1,%r12d
  40198c:	49 63 c4             	movslq %r12d,%rax
  40198f:	4c 39 f0             	cmp    %r14,%rax
  401992:	72 bd                	jb     401951 <rio_readlineb+0x61>
  401994:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
  401999:	49 63 c4             	movslq %r12d,%rax
  40199c:	eb 05                	jmp    4019a3 <rio_readlineb+0xb3>
  40199e:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a3:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4019a8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019af:	00 00 
  4019b1:	74 22                	je     4019d5 <rio_readlineb+0xe5>
  4019b3:	eb 1b                	jmp    4019d0 <rio_readlineb+0xe0>
  4019b5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019bc:	eb 05                	jmp    4019c3 <rio_readlineb+0xd3>
  4019be:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c3:	85 c0                	test   %eax,%eax
  4019c5:	74 b9                	je     401980 <rio_readlineb+0x90>
  4019c7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019ce:	eb d3                	jmp    4019a3 <rio_readlineb+0xb3>
  4019d0:	e8 bb f1 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4019d5:	48 83 c4 10          	add    $0x10,%rsp
  4019d9:	5b                   	pop    %rbx
  4019da:	5d                   	pop    %rbp
  4019db:	41 5c                	pop    %r12
  4019dd:	41 5d                	pop    %r13
  4019df:	41 5e                	pop    %r14
  4019e1:	c3                   	retq   

00000000004019e2 <submitr>:
  4019e2:	41 57                	push   %r15
  4019e4:	41 56                	push   %r14
  4019e6:	41 55                	push   %r13
  4019e8:	41 54                	push   %r12
  4019ea:	55                   	push   %rbp
  4019eb:	53                   	push   %rbx
  4019ec:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4019f3:	49 89 fd             	mov    %rdi,%r13
  4019f6:	89 f5                	mov    %esi,%ebp
  4019f8:	48 89 14 24          	mov    %rdx,(%rsp)
  4019fc:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401a01:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401a06:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  401a0b:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  401a12:	00 
  401a13:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
  401a1a:	00 
  401a1b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a22:	00 00 
  401a24:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  401a2b:	00 
  401a2c:	31 c0                	xor    %eax,%eax
  401a2e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  401a35:	00 
  401a36:	ba 00 00 00 00       	mov    $0x0,%edx
  401a3b:	be 01 00 00 00       	mov    $0x1,%esi
  401a40:	bf 02 00 00 00       	mov    $0x2,%edi
  401a45:	e8 96 f2 ff ff       	callq  400ce0 <socket@plt>
  401a4a:	85 c0                	test   %eax,%eax
  401a4c:	79 50                	jns    401a9e <submitr+0xbc>
  401a4e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401a55:	3a 20 43 
  401a58:	49 89 07             	mov    %rax,(%r15)
  401a5b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401a62:	20 75 6e 
  401a65:	49 89 47 08          	mov    %rax,0x8(%r15)
  401a69:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401a70:	74 6f 20 
  401a73:	49 89 47 10          	mov    %rax,0x10(%r15)
  401a77:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401a7e:	65 20 73 
  401a81:	49 89 47 18          	mov    %rax,0x18(%r15)
  401a85:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401a8c:	65 
  401a8d:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401a94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a99:	e9 12 06 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401a9e:	41 89 c4             	mov    %eax,%r12d
  401aa1:	4c 89 ef             	mov    %r13,%rdi
  401aa4:	e8 57 f1 ff ff       	callq  400c00 <gethostbyname@plt>
  401aa9:	48 85 c0             	test   %rax,%rax
  401aac:	75 6b                	jne    401b19 <submitr+0x137>
  401aae:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401ab5:	3a 20 44 
  401ab8:	49 89 07             	mov    %rax,(%r15)
  401abb:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401ac2:	20 75 6e 
  401ac5:	49 89 47 08          	mov    %rax,0x8(%r15)
  401ac9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401ad0:	74 6f 20 
  401ad3:	49 89 47 10          	mov    %rax,0x10(%r15)
  401ad7:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401ade:	76 65 20 
  401ae1:	49 89 47 18          	mov    %rax,0x18(%r15)
  401ae5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401aec:	72 20 61 
  401aef:	49 89 47 20          	mov    %rax,0x20(%r15)
  401af3:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401afa:	65 
  401afb:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401b02:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401b07:	44 89 e7             	mov    %r12d,%edi
  401b0a:	e8 a1 f0 ff ff       	callq  400bb0 <close@plt>
  401b0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b14:	e9 97 05 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401b19:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  401b20:	00 00 
  401b22:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401b29:	00 00 
  401b2b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  401b32:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401b36:	48 8b 40 18          	mov    0x18(%rax),%rax
  401b3a:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  401b3f:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401b44:	48 8b 30             	mov    (%rax),%rsi
  401b47:	e8 c4 f0 ff ff       	callq  400c10 <__memmove_chk@plt>
  401b4c:	66 c1 cd 08          	ror    $0x8,%bp
  401b50:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
  401b55:	ba 10 00 00 00       	mov    $0x10,%edx
  401b5a:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401b5f:	44 89 e7             	mov    %r12d,%edi
  401b62:	e8 29 f1 ff ff       	callq  400c90 <connect@plt>
  401b67:	85 c0                	test   %eax,%eax
  401b69:	79 5d                	jns    401bc8 <submitr+0x1e6>
  401b6b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401b72:	3a 20 55 
  401b75:	49 89 07             	mov    %rax,(%r15)
  401b78:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401b7f:	20 74 6f 
  401b82:	49 89 47 08          	mov    %rax,0x8(%r15)
  401b86:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401b8d:	65 63 74 
  401b90:	49 89 47 10          	mov    %rax,0x10(%r15)
  401b94:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401b9b:	68 65 20 
  401b9e:	49 89 47 18          	mov    %rax,0x18(%r15)
  401ba2:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401ba9:	76 
  401baa:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401bb1:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401bb6:	44 89 e7             	mov    %r12d,%edi
  401bb9:	e8 f2 ef ff ff       	callq  400bb0 <close@plt>
  401bbe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bc3:	e9 e8 04 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401bc8:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401bcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd4:	4c 89 c9             	mov    %r9,%rcx
  401bd7:	48 89 df             	mov    %rbx,%rdi
  401bda:	f2 ae                	repnz scas %es:(%rdi),%al
  401bdc:	48 f7 d1             	not    %rcx
  401bdf:	48 89 ce             	mov    %rcx,%rsi
  401be2:	4c 89 c9             	mov    %r9,%rcx
  401be5:	48 8b 3c 24          	mov    (%rsp),%rdi
  401be9:	f2 ae                	repnz scas %es:(%rdi),%al
  401beb:	49 89 c8             	mov    %rcx,%r8
  401bee:	4c 89 c9             	mov    %r9,%rcx
  401bf1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401bf6:	f2 ae                	repnz scas %es:(%rdi),%al
  401bf8:	48 f7 d1             	not    %rcx
  401bfb:	48 89 ca             	mov    %rcx,%rdx
  401bfe:	4c 89 c9             	mov    %r9,%rcx
  401c01:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401c06:	f2 ae                	repnz scas %es:(%rdi),%al
  401c08:	4c 29 c2             	sub    %r8,%rdx
  401c0b:	48 29 ca             	sub    %rcx,%rdx
  401c0e:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401c13:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401c18:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401c1e:	76 73                	jbe    401c93 <submitr+0x2b1>
  401c20:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401c27:	3a 20 52 
  401c2a:	49 89 07             	mov    %rax,(%r15)
  401c2d:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401c34:	20 73 74 
  401c37:	49 89 47 08          	mov    %rax,0x8(%r15)
  401c3b:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401c42:	74 6f 6f 
  401c45:	49 89 47 10          	mov    %rax,0x10(%r15)
  401c49:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401c50:	65 2e 20 
  401c53:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c57:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401c5e:	61 73 65 
  401c61:	49 89 47 20          	mov    %rax,0x20(%r15)
  401c65:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401c6c:	49 54 52 
  401c6f:	49 89 47 28          	mov    %rax,0x28(%r15)
  401c73:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401c7a:	55 46 00 
  401c7d:	49 89 47 30          	mov    %rax,0x30(%r15)
  401c81:	44 89 e7             	mov    %r12d,%edi
  401c84:	e8 27 ef ff ff       	callq  400bb0 <close@plt>
  401c89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c8e:	e9 1d 04 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401c93:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
  401c9a:	00 
  401c9b:	b9 00 04 00 00       	mov    $0x400,%ecx
  401ca0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca5:	48 89 d7             	mov    %rdx,%rdi
  401ca8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401cab:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401cb2:	48 89 df             	mov    %rbx,%rdi
  401cb5:	f2 ae                	repnz scas %es:(%rdi),%al
  401cb7:	48 89 c8             	mov    %rcx,%rax
  401cba:	48 f7 d0             	not    %rax
  401cbd:	48 83 e8 01          	sub    $0x1,%rax
  401cc1:	85 c0                	test   %eax,%eax
  401cc3:	0f 84 90 04 00 00    	je     402159 <submitr+0x777>
  401cc9:	8d 40 ff             	lea    -0x1(%rax),%eax
  401ccc:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401cd1:	48 89 d5             	mov    %rdx,%rbp
  401cd4:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  401cdb:	00 20 00 
  401cde:	44 0f b6 03          	movzbl (%rbx),%r8d
  401ce2:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
  401ce6:	3c 35                	cmp    $0x35,%al
  401ce8:	77 06                	ja     401cf0 <submitr+0x30e>
  401cea:	49 0f a3 c5          	bt     %rax,%r13
  401cee:	72 0d                	jb     401cfd <submitr+0x31b>
  401cf0:	44 89 c0             	mov    %r8d,%eax
  401cf3:	83 e0 df             	and    $0xffffffdf,%eax
  401cf6:	83 e8 41             	sub    $0x41,%eax
  401cf9:	3c 19                	cmp    $0x19,%al
  401cfb:	77 0a                	ja     401d07 <submitr+0x325>
  401cfd:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401d01:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401d05:	eb 6c                	jmp    401d73 <submitr+0x391>
  401d07:	41 80 f8 20          	cmp    $0x20,%r8b
  401d0b:	75 0a                	jne    401d17 <submitr+0x335>
  401d0d:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401d11:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401d15:	eb 5c                	jmp    401d73 <submitr+0x391>
  401d17:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401d1b:	3c 5f                	cmp    $0x5f,%al
  401d1d:	76 0a                	jbe    401d29 <submitr+0x347>
  401d1f:	41 80 f8 09          	cmp    $0x9,%r8b
  401d23:	0f 85 a3 03 00 00    	jne    4020cc <submitr+0x6ea>
  401d29:	45 0f b6 c0          	movzbl %r8b,%r8d
  401d2d:	b9 b0 31 40 00       	mov    $0x4031b0,%ecx
  401d32:	ba 08 00 00 00       	mov    $0x8,%edx
  401d37:	be 01 00 00 00       	mov    $0x1,%esi
  401d3c:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401d43:	00 
  401d44:	b8 00 00 00 00       	mov    $0x0,%eax
  401d49:	e8 82 ef ff ff       	callq  400cd0 <__sprintf_chk@plt>
  401d4e:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
  401d55:	00 
  401d56:	88 45 00             	mov    %al,0x0(%rbp)
  401d59:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
  401d60:	00 
  401d61:	88 45 01             	mov    %al,0x1(%rbp)
  401d64:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
  401d6b:	00 
  401d6c:	88 45 02             	mov    %al,0x2(%rbp)
  401d6f:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401d73:	48 83 c3 01          	add    $0x1,%rbx
  401d77:	49 39 de             	cmp    %rbx,%r14
  401d7a:	0f 85 5e ff ff ff    	jne    401cde <submitr+0x2fc>
  401d80:	e9 d4 03 00 00       	jmpq   402159 <submitr+0x777>
  401d85:	48 89 da             	mov    %rbx,%rdx
  401d88:	48 89 ee             	mov    %rbp,%rsi
  401d8b:	44 89 e7             	mov    %r12d,%edi
  401d8e:	e8 ed ed ff ff       	callq  400b80 <write@plt>
  401d93:	48 85 c0             	test   %rax,%rax
  401d96:	7f 0f                	jg     401da7 <submitr+0x3c5>
  401d98:	e8 b3 ed ff ff       	callq  400b50 <__errno_location@plt>
  401d9d:	83 38 04             	cmpl   $0x4,(%rax)
  401da0:	75 12                	jne    401db4 <submitr+0x3d2>
  401da2:	b8 00 00 00 00       	mov    $0x0,%eax
  401da7:	48 01 c5             	add    %rax,%rbp
  401daa:	48 29 c3             	sub    %rax,%rbx
  401dad:	75 d6                	jne    401d85 <submitr+0x3a3>
  401daf:	4d 85 ed             	test   %r13,%r13
  401db2:	79 5f                	jns    401e13 <submitr+0x431>
  401db4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401dbb:	3a 20 43 
  401dbe:	49 89 07             	mov    %rax,(%r15)
  401dc1:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401dc8:	20 75 6e 
  401dcb:	49 89 47 08          	mov    %rax,0x8(%r15)
  401dcf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401dd6:	74 6f 20 
  401dd9:	49 89 47 10          	mov    %rax,0x10(%r15)
  401ddd:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401de4:	20 74 6f 
  401de7:	49 89 47 18          	mov    %rax,0x18(%r15)
  401deb:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401df2:	73 65 72 
  401df5:	49 89 47 20          	mov    %rax,0x20(%r15)
  401df9:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401e00:	00 
  401e01:	44 89 e7             	mov    %r12d,%edi
  401e04:	e8 a7 ed ff ff       	callq  400bb0 <close@plt>
  401e09:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e0e:	e9 9d 02 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401e13:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
  401e18:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  401e1f:	00 
  401e20:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401e25:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  401e2a:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e2f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401e36:	00 
  401e37:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401e3c:	e8 af fa ff ff       	callq  4018f0 <rio_readlineb>
  401e41:	48 85 c0             	test   %rax,%rax
  401e44:	7f 74                	jg     401eba <submitr+0x4d8>
  401e46:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401e4d:	3a 20 43 
  401e50:	49 89 07             	mov    %rax,(%r15)
  401e53:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401e5a:	20 75 6e 
  401e5d:	49 89 47 08          	mov    %rax,0x8(%r15)
  401e61:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401e68:	74 6f 20 
  401e6b:	49 89 47 10          	mov    %rax,0x10(%r15)
  401e6f:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401e76:	66 69 72 
  401e79:	49 89 47 18          	mov    %rax,0x18(%r15)
  401e7d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401e84:	61 64 65 
  401e87:	49 89 47 20          	mov    %rax,0x20(%r15)
  401e8b:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  401e92:	6d 20 73 
  401e95:	49 89 47 28          	mov    %rax,0x28(%r15)
  401e99:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  401ea0:	65 
  401ea1:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  401ea8:	44 89 e7             	mov    %r12d,%edi
  401eab:	e8 00 ed ff ff       	callq  400bb0 <close@plt>
  401eb0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401eb5:	e9 f6 01 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401eba:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  401ec1:	00 
  401ec2:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  401ec7:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  401ece:	00 
  401ecf:	be b7 31 40 00       	mov    $0x4031b7,%esi
  401ed4:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  401edb:	00 
  401edc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee1:	e8 5a ed ff ff       	callq  400c40 <__isoc99_sscanf@plt>
  401ee6:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  401eeb:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  401ef2:	0f 84 be 00 00 00    	je     401fb6 <submitr+0x5d4>
  401ef8:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  401eff:	00 
  401f00:	b9 00 31 40 00       	mov    $0x403100,%ecx
  401f05:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401f0c:	be 01 00 00 00       	mov    $0x1,%esi
  401f11:	4c 89 ff             	mov    %r15,%rdi
  401f14:	b8 00 00 00 00       	mov    $0x0,%eax
  401f19:	e8 b2 ed ff ff       	callq  400cd0 <__sprintf_chk@plt>
  401f1e:	44 89 e7             	mov    %r12d,%edi
  401f21:	e8 8a ec ff ff       	callq  400bb0 <close@plt>
  401f26:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f2b:	e9 80 01 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401f30:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f35:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401f3c:	00 
  401f3d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401f42:	e8 a9 f9 ff ff       	callq  4018f0 <rio_readlineb>
  401f47:	48 85 c0             	test   %rax,%rax
  401f4a:	7f 6a                	jg     401fb6 <submitr+0x5d4>
  401f4c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f53:	3a 20 43 
  401f56:	49 89 07             	mov    %rax,(%r15)
  401f59:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f60:	20 75 6e 
  401f63:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f67:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f6e:	74 6f 20 
  401f71:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f75:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  401f7c:	68 65 61 
  401f7f:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f83:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  401f8a:	66 72 6f 
  401f8d:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f91:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  401f98:	76 65 72 
  401f9b:	49 89 47 28          	mov    %rax,0x28(%r15)
  401f9f:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  401fa4:	44 89 e7             	mov    %r12d,%edi
  401fa7:	e8 04 ec ff ff       	callq  400bb0 <close@plt>
  401fac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fb1:	e9 fa 00 00 00       	jmpq   4020b0 <submitr+0x6ce>
  401fb6:	80 bc 24 50 20 00 00 	cmpb   $0xd,0x2050(%rsp)
  401fbd:	0d 
  401fbe:	0f 85 6c ff ff ff    	jne    401f30 <submitr+0x54e>
  401fc4:	80 bc 24 51 20 00 00 	cmpb   $0xa,0x2051(%rsp)
  401fcb:	0a 
  401fcc:	0f 85 5e ff ff ff    	jne    401f30 <submitr+0x54e>
  401fd2:	80 bc 24 52 20 00 00 	cmpb   $0x0,0x2052(%rsp)
  401fd9:	00 
  401fda:	0f 85 50 ff ff ff    	jne    401f30 <submitr+0x54e>
  401fe0:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fe5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401fec:	00 
  401fed:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401ff2:	e8 f9 f8 ff ff       	callq  4018f0 <rio_readlineb>
  401ff7:	48 85 c0             	test   %rax,%rax
  401ffa:	7f 70                	jg     40206c <submitr+0x68a>
  401ffc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402003:	3a 20 43 
  402006:	49 89 07             	mov    %rax,(%r15)
  402009:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402010:	20 75 6e 
  402013:	49 89 47 08          	mov    %rax,0x8(%r15)
  402017:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40201e:	74 6f 20 
  402021:	49 89 47 10          	mov    %rax,0x10(%r15)
  402025:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40202c:	73 74 61 
  40202f:	49 89 47 18          	mov    %rax,0x18(%r15)
  402033:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40203a:	65 73 73 
  40203d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402041:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402048:	72 6f 6d 
  40204b:	49 89 47 28          	mov    %rax,0x28(%r15)
  40204f:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402056:	65 72 00 
  402059:	49 89 47 30          	mov    %rax,0x30(%r15)
  40205d:	44 89 e7             	mov    %r12d,%edi
  402060:	e8 4b eb ff ff       	callq  400bb0 <close@plt>
  402065:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40206a:	eb 44                	jmp    4020b0 <submitr+0x6ce>
  40206c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402073:	00 
  402074:	4c 89 ff             	mov    %r15,%rdi
  402077:	e8 e4 ea ff ff       	callq  400b60 <strcpy@plt>
  40207c:	44 89 e7             	mov    %r12d,%edi
  40207f:	e8 2c eb ff ff       	callq  400bb0 <close@plt>
  402084:	41 0f b6 17          	movzbl (%r15),%edx
  402088:	b8 4f 00 00 00       	mov    $0x4f,%eax
  40208d:	29 d0                	sub    %edx,%eax
  40208f:	75 15                	jne    4020a6 <submitr+0x6c4>
  402091:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
  402096:	b8 4b 00 00 00       	mov    $0x4b,%eax
  40209b:	29 d0                	sub    %edx,%eax
  40209d:	75 07                	jne    4020a6 <submitr+0x6c4>
  40209f:	41 0f b6 47 02       	movzbl 0x2(%r15),%eax
  4020a4:	f7 d8                	neg    %eax
  4020a6:	85 c0                	test   %eax,%eax
  4020a8:	0f 95 c0             	setne  %al
  4020ab:	0f b6 c0             	movzbl %al,%eax
  4020ae:	f7 d8                	neg    %eax
  4020b0:	48 8b 8c 24 58 a0 00 	mov    0xa058(%rsp),%rcx
  4020b7:	00 
  4020b8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4020bf:	00 00 
  4020c1:	0f 84 12 01 00 00    	je     4021d9 <submitr+0x7f7>
  4020c7:	e9 08 01 00 00       	jmpq   4021d4 <submitr+0x7f2>
  4020cc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4020d3:	3a 20 52 
  4020d6:	49 89 07             	mov    %rax,(%r15)
  4020d9:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4020e0:	20 73 74 
  4020e3:	49 89 47 08          	mov    %rax,0x8(%r15)
  4020e7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4020ee:	63 6f 6e 
  4020f1:	49 89 47 10          	mov    %rax,0x10(%r15)
  4020f5:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4020fc:	20 61 6e 
  4020ff:	49 89 47 18          	mov    %rax,0x18(%r15)
  402103:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40210a:	67 61 6c 
  40210d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402111:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402118:	6e 70 72 
  40211b:	49 89 47 28          	mov    %rax,0x28(%r15)
  40211f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402126:	6c 65 20 
  402129:	49 89 47 30          	mov    %rax,0x30(%r15)
  40212d:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402134:	63 74 65 
  402137:	49 89 47 38          	mov    %rax,0x38(%r15)
  40213b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  402142:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  402147:	44 89 e7             	mov    %r12d,%edi
  40214a:	e8 61 ea ff ff       	callq  400bb0 <close@plt>
  40214f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402154:	e9 57 ff ff ff       	jmpq   4020b0 <submitr+0x6ce>
  402159:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
  402160:	00 
  402161:	48 83 ec 08          	sub    $0x8,%rsp
  402165:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  40216c:	00 
  40216d:	50                   	push   %rax
  40216e:	ff 74 24 20          	pushq  0x20(%rsp)
  402172:	ff 74 24 30          	pushq  0x30(%rsp)
  402176:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
  40217b:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  402180:	b9 30 31 40 00       	mov    $0x403130,%ecx
  402185:	ba 00 20 00 00       	mov    $0x2000,%edx
  40218a:	be 01 00 00 00       	mov    $0x1,%esi
  40218f:	48 89 df             	mov    %rbx,%rdi
  402192:	b8 00 00 00 00       	mov    $0x0,%eax
  402197:	e8 34 eb ff ff       	callq  400cd0 <__sprintf_chk@plt>
  40219c:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4021a8:	48 89 df             	mov    %rbx,%rdi
  4021ab:	f2 ae                	repnz scas %es:(%rdi),%al
  4021ad:	48 89 c8             	mov    %rcx,%rax
  4021b0:	48 f7 d0             	not    %rax
  4021b3:	4c 8d 68 ff          	lea    -0x1(%rax),%r13
  4021b7:	48 83 c4 20          	add    $0x20,%rsp
  4021bb:	4c 89 eb             	mov    %r13,%rbx
  4021be:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  4021c5:	00 
  4021c6:	4d 85 ed             	test   %r13,%r13
  4021c9:	0f 85 b6 fb ff ff    	jne    401d85 <submitr+0x3a3>
  4021cf:	e9 3f fc ff ff       	jmpq   401e13 <submitr+0x431>
  4021d4:	e8 b7 e9 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4021d9:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  4021e0:	5b                   	pop    %rbx
  4021e1:	5d                   	pop    %rbp
  4021e2:	41 5c                	pop    %r12
  4021e4:	41 5d                	pop    %r13
  4021e6:	41 5e                	pop    %r14
  4021e8:	41 5f                	pop    %r15
  4021ea:	c3                   	retq   

00000000004021eb <init_timeout>:
  4021eb:	85 ff                	test   %edi,%edi
  4021ed:	74 22                	je     402211 <init_timeout+0x26>
  4021ef:	53                   	push   %rbx
  4021f0:	89 fb                	mov    %edi,%ebx
  4021f2:	be c2 18 40 00       	mov    $0x4018c2,%esi
  4021f7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4021fc:	e8 ef e9 ff ff       	callq  400bf0 <signal@plt>
  402201:	85 db                	test   %ebx,%ebx
  402203:	bf 00 00 00 00       	mov    $0x0,%edi
  402208:	0f 49 fb             	cmovns %ebx,%edi
  40220b:	e8 90 e9 ff ff       	callq  400ba0 <alarm@plt>
  402210:	5b                   	pop    %rbx
  402211:	f3 c3                	repz retq 

0000000000402213 <init_driver>:
  402213:	55                   	push   %rbp
  402214:	53                   	push   %rbx
  402215:	48 83 ec 28          	sub    $0x28,%rsp
  402219:	48 89 fd             	mov    %rdi,%rbp
  40221c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402223:	00 00 
  402225:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40222a:	31 c0                	xor    %eax,%eax
  40222c:	be 01 00 00 00       	mov    $0x1,%esi
  402231:	bf 0d 00 00 00       	mov    $0xd,%edi
  402236:	e8 b5 e9 ff ff       	callq  400bf0 <signal@plt>
  40223b:	be 01 00 00 00       	mov    $0x1,%esi
  402240:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402245:	e8 a6 e9 ff ff       	callq  400bf0 <signal@plt>
  40224a:	be 01 00 00 00       	mov    $0x1,%esi
  40224f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402254:	e8 97 e9 ff ff       	callq  400bf0 <signal@plt>
  402259:	ba 00 00 00 00       	mov    $0x0,%edx
  40225e:	be 01 00 00 00       	mov    $0x1,%esi
  402263:	bf 02 00 00 00       	mov    $0x2,%edi
  402268:	e8 73 ea ff ff       	callq  400ce0 <socket@plt>
  40226d:	85 c0                	test   %eax,%eax
  40226f:	79 4f                	jns    4022c0 <init_driver+0xad>
  402271:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402278:	3a 20 43 
  40227b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40227f:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402286:	20 75 6e 
  402289:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40228d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402294:	74 6f 20 
  402297:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40229b:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4022a2:	65 20 73 
  4022a5:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4022a9:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4022b0:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4022b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022bb:	e9 0c 01 00 00       	jmpq   4023cc <init_driver+0x1b9>
  4022c0:	89 c3                	mov    %eax,%ebx
  4022c2:	bf c8 31 40 00       	mov    $0x4031c8,%edi
  4022c7:	e8 34 e9 ff ff       	callq  400c00 <gethostbyname@plt>
  4022cc:	48 85 c0             	test   %rax,%rax
  4022cf:	75 68                	jne    402339 <init_driver+0x126>
  4022d1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4022d8:	3a 20 44 
  4022db:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4022df:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4022e6:	20 75 6e 
  4022e9:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4022ed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022f4:	74 6f 20 
  4022f7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4022fb:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402302:	76 65 20 
  402305:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402309:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402310:	72 20 61 
  402313:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402317:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40231e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402324:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402328:	89 df                	mov    %ebx,%edi
  40232a:	e8 81 e8 ff ff       	callq  400bb0 <close@plt>
  40232f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402334:	e9 93 00 00 00       	jmpq   4023cc <init_driver+0x1b9>
  402339:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402340:	00 
  402341:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402348:	00 00 
  40234a:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402350:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402354:	48 8b 40 18          	mov    0x18(%rax),%rax
  402358:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40235d:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402362:	48 8b 30             	mov    (%rax),%rsi
  402365:	e8 a6 e8 ff ff       	callq  400c10 <__memmove_chk@plt>
  40236a:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  402371:	ba 10 00 00 00       	mov    $0x10,%edx
  402376:	48 89 e6             	mov    %rsp,%rsi
  402379:	89 df                	mov    %ebx,%edi
  40237b:	e8 10 e9 ff ff       	callq  400c90 <connect@plt>
  402380:	85 c0                	test   %eax,%eax
  402382:	79 32                	jns    4023b6 <init_driver+0x1a3>
  402384:	41 b8 c8 31 40 00    	mov    $0x4031c8,%r8d
  40238a:	b9 88 31 40 00       	mov    $0x403188,%ecx
  40238f:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402396:	be 01 00 00 00       	mov    $0x1,%esi
  40239b:	48 89 ef             	mov    %rbp,%rdi
  40239e:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a3:	e8 28 e9 ff ff       	callq  400cd0 <__sprintf_chk@plt>
  4023a8:	89 df                	mov    %ebx,%edi
  4023aa:	e8 01 e8 ff ff       	callq  400bb0 <close@plt>
  4023af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023b4:	eb 16                	jmp    4023cc <init_driver+0x1b9>
  4023b6:	89 df                	mov    %ebx,%edi
  4023b8:	e8 f3 e7 ff ff       	callq  400bb0 <close@plt>
  4023bd:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4023c3:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4023c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023cc:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4023d1:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4023d8:	00 00 
  4023da:	74 05                	je     4023e1 <init_driver+0x1ce>
  4023dc:	e8 af e7 ff ff       	callq  400b90 <__stack_chk_fail@plt>
  4023e1:	48 83 c4 28          	add    $0x28,%rsp
  4023e5:	5b                   	pop    %rbx
  4023e6:	5d                   	pop    %rbp
  4023e7:	c3                   	retq   

00000000004023e8 <driver_post>:
  4023e8:	53                   	push   %rbx
  4023e9:	4c 89 c3             	mov    %r8,%rbx
  4023ec:	85 c9                	test   %ecx,%ecx
  4023ee:	74 24                	je     402414 <driver_post+0x2c>
  4023f0:	be e3 31 40 00       	mov    $0x4031e3,%esi
  4023f5:	bf 01 00 00 00       	mov    $0x1,%edi
  4023fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ff:	e8 4c e8 ff ff       	callq  400c50 <__printf_chk@plt>
  402404:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402409:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40240d:	b8 00 00 00 00       	mov    $0x0,%eax
  402412:	eb 41                	jmp    402455 <driver_post+0x6d>
  402414:	48 85 ff             	test   %rdi,%rdi
  402417:	74 2e                	je     402447 <driver_post+0x5f>
  402419:	80 3f 00             	cmpb   $0x0,(%rdi)
  40241c:	74 29                	je     402447 <driver_post+0x5f>
  40241e:	41 50                	push   %r8
  402420:	52                   	push   %rdx
  402421:	41 b9 fa 31 40 00    	mov    $0x4031fa,%r9d
  402427:	49 89 f0             	mov    %rsi,%r8
  40242a:	48 89 f9             	mov    %rdi,%rcx
  40242d:	ba ff 31 40 00       	mov    $0x4031ff,%edx
  402432:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  402437:	bf c8 31 40 00       	mov    $0x4031c8,%edi
  40243c:	e8 a1 f5 ff ff       	callq  4019e2 <submitr>
  402441:	48 83 c4 10          	add    $0x10,%rsp
  402445:	eb 0e                	jmp    402455 <driver_post+0x6d>
  402447:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40244c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402450:	b8 00 00 00 00       	mov    $0x0,%eax
  402455:	5b                   	pop    %rbx
  402456:	c3                   	retq   
  402457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40245e:	00 00 

0000000000402460 <__libc_csu_init>:
  402460:	41 57                	push   %r15
  402462:	41 56                	push   %r14
  402464:	41 89 ff             	mov    %edi,%r15d
  402467:	41 55                	push   %r13
  402469:	41 54                	push   %r12
  40246b:	4c 8d 25 9e 19 20 00 	lea    0x20199e(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402472:	55                   	push   %rbp
  402473:	48 8d 2d 9e 19 20 00 	lea    0x20199e(%rip),%rbp        # 603e18 <__init_array_end>
  40247a:	53                   	push   %rbx
  40247b:	49 89 f6             	mov    %rsi,%r14
  40247e:	49 89 d5             	mov    %rdx,%r13
  402481:	4c 29 e5             	sub    %r12,%rbp
  402484:	48 83 ec 08          	sub    $0x8,%rsp
  402488:	48 c1 fd 03          	sar    $0x3,%rbp
  40248c:	e8 6f e6 ff ff       	callq  400b00 <_init>
  402491:	48 85 ed             	test   %rbp,%rbp
  402494:	74 20                	je     4024b6 <__libc_csu_init+0x56>
  402496:	31 db                	xor    %ebx,%ebx
  402498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40249f:	00 
  4024a0:	4c 89 ea             	mov    %r13,%rdx
  4024a3:	4c 89 f6             	mov    %r14,%rsi
  4024a6:	44 89 ff             	mov    %r15d,%edi
  4024a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4024ad:	48 83 c3 01          	add    $0x1,%rbx
  4024b1:	48 39 eb             	cmp    %rbp,%rbx
  4024b4:	75 ea                	jne    4024a0 <__libc_csu_init+0x40>
  4024b6:	48 83 c4 08          	add    $0x8,%rsp
  4024ba:	5b                   	pop    %rbx
  4024bb:	5d                   	pop    %rbp
  4024bc:	41 5c                	pop    %r12
  4024be:	41 5d                	pop    %r13
  4024c0:	41 5e                	pop    %r14
  4024c2:	41 5f                	pop    %r15
  4024c4:	c3                   	retq   
  4024c5:	90                   	nop
  4024c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4024cd:	00 00 00 

00000000004024d0 <__libc_csu_fini>:
  4024d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004024d4 <_fini>:
  4024d4:	48 83 ec 08          	sub    $0x8,%rsp
  4024d8:	48 83 c4 08          	add    $0x8,%rsp
  4024dc:	c3                   	retq   
