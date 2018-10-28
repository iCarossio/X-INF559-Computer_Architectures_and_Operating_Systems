
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bb0 <_init>:
  400bb0:	48 83 ec 08          	sub    $0x8,%rsp
  400bb4:	48 8b 05 3d 54 20 00 	mov    0x20543d(%rip),%rax        # 605ff8 <__gmon_start__>
  400bbb:	48 85 c0             	test   %rax,%rax
  400bbe:	74 05                	je     400bc5 <_init+0x15>
  400bc0:	e8 2b 02 00 00       	callq  400df0 <.plt.got>
  400bc5:	48 83 c4 08          	add    $0x8,%rsp
  400bc9:	c3                   	retq   

Disassembly of section .plt:

0000000000400bd0 <.plt>:
  400bd0:	ff 35 32 54 20 00    	pushq  0x205432(%rip)        # 606008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bd6:	ff 25 34 54 20 00    	jmpq   *0x205434(%rip)        # 606010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <strcasecmp@plt>:
  400be0:	ff 25 32 54 20 00    	jmpq   *0x205432(%rip)        # 606018 <strcasecmp@GLIBC_2.2.5>
  400be6:	68 00 00 00 00       	pushq  $0x0
  400beb:	e9 e0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400bf0 <__errno_location@plt>:
  400bf0:	ff 25 2a 54 20 00    	jmpq   *0x20542a(%rip)        # 606020 <__errno_location@GLIBC_2.2.5>
  400bf6:	68 01 00 00 00       	pushq  $0x1
  400bfb:	e9 d0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c00 <srandom@plt>:
  400c00:	ff 25 22 54 20 00    	jmpq   *0x205422(%rip)        # 606028 <srandom@GLIBC_2.2.5>
  400c06:	68 02 00 00 00       	pushq  $0x2
  400c0b:	e9 c0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c10 <strncmp@plt>:
  400c10:	ff 25 1a 54 20 00    	jmpq   *0x20541a(%rip)        # 606030 <strncmp@GLIBC_2.2.5>
  400c16:	68 03 00 00 00       	pushq  $0x3
  400c1b:	e9 b0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c20 <strcpy@plt>:
  400c20:	ff 25 12 54 20 00    	jmpq   *0x205412(%rip)        # 606038 <strcpy@GLIBC_2.2.5>
  400c26:	68 04 00 00 00       	pushq  $0x4
  400c2b:	e9 a0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c30 <puts@plt>:
  400c30:	ff 25 0a 54 20 00    	jmpq   *0x20540a(%rip)        # 606040 <puts@GLIBC_2.2.5>
  400c36:	68 05 00 00 00       	pushq  $0x5
  400c3b:	e9 90 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 02 54 20 00    	jmpq   *0x205402(%rip)        # 606048 <write@GLIBC_2.2.5>
  400c46:	68 06 00 00 00       	pushq  $0x6
  400c4b:	e9 80 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c50 <mmap@plt>:
  400c50:	ff 25 fa 53 20 00    	jmpq   *0x2053fa(%rip)        # 606050 <mmap@GLIBC_2.2.5>
  400c56:	68 07 00 00 00       	pushq  $0x7
  400c5b:	e9 70 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c60 <printf@plt>:
  400c60:	ff 25 f2 53 20 00    	jmpq   *0x2053f2(%rip)        # 606058 <printf@GLIBC_2.2.5>
  400c66:	68 08 00 00 00       	pushq  $0x8
  400c6b:	e9 60 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c70 <memset@plt>:
  400c70:	ff 25 ea 53 20 00    	jmpq   *0x2053ea(%rip)        # 606060 <memset@GLIBC_2.2.5>
  400c76:	68 09 00 00 00       	pushq  $0x9
  400c7b:	e9 50 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c80 <alarm@plt>:
  400c80:	ff 25 e2 53 20 00    	jmpq   *0x2053e2(%rip)        # 606068 <alarm@GLIBC_2.2.5>
  400c86:	68 0a 00 00 00       	pushq  $0xa
  400c8b:	e9 40 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c90 <close@plt>:
  400c90:	ff 25 da 53 20 00    	jmpq   *0x2053da(%rip)        # 606070 <close@GLIBC_2.2.5>
  400c96:	68 0b 00 00 00       	pushq  $0xb
  400c9b:	e9 30 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 d2 53 20 00    	jmpq   *0x2053d2(%rip)        # 606078 <read@GLIBC_2.2.5>
  400ca6:	68 0c 00 00 00       	pushq  $0xc
  400cab:	e9 20 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cb0 <__libc_start_main@plt>:
  400cb0:	ff 25 ca 53 20 00    	jmpq   *0x2053ca(%rip)        # 606080 <__libc_start_main@GLIBC_2.2.5>
  400cb6:	68 0d 00 00 00       	pushq  $0xd
  400cbb:	e9 10 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cc0 <signal@plt>:
  400cc0:	ff 25 c2 53 20 00    	jmpq   *0x2053c2(%rip)        # 606088 <signal@GLIBC_2.2.5>
  400cc6:	68 0e 00 00 00       	pushq  $0xe
  400ccb:	e9 00 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cd0 <gethostbyname@plt>:
  400cd0:	ff 25 ba 53 20 00    	jmpq   *0x2053ba(%rip)        # 606090 <gethostbyname@GLIBC_2.2.5>
  400cd6:	68 0f 00 00 00       	pushq  $0xf
  400cdb:	e9 f0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400ce0 <fprintf@plt>:
  400ce0:	ff 25 b2 53 20 00    	jmpq   *0x2053b2(%rip)        # 606098 <fprintf@GLIBC_2.2.5>
  400ce6:	68 10 00 00 00       	pushq  $0x10
  400ceb:	e9 e0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400cf0 <strtol@plt>:
  400cf0:	ff 25 aa 53 20 00    	jmpq   *0x2053aa(%rip)        # 6060a0 <strtol@GLIBC_2.2.5>
  400cf6:	68 11 00 00 00       	pushq  $0x11
  400cfb:	e9 d0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d00 <memcpy@plt>:
  400d00:	ff 25 a2 53 20 00    	jmpq   *0x2053a2(%rip)        # 6060a8 <memcpy@GLIBC_2.14>
  400d06:	68 12 00 00 00       	pushq  $0x12
  400d0b:	e9 c0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d10 <time@plt>:
  400d10:	ff 25 9a 53 20 00    	jmpq   *0x20539a(%rip)        # 6060b0 <time@GLIBC_2.2.5>
  400d16:	68 13 00 00 00       	pushq  $0x13
  400d1b:	e9 b0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d20 <random@plt>:
  400d20:	ff 25 92 53 20 00    	jmpq   *0x205392(%rip)        # 6060b8 <random@GLIBC_2.2.5>
  400d26:	68 14 00 00 00       	pushq  $0x14
  400d2b:	e9 a0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d30 <_IO_getc@plt>:
  400d30:	ff 25 8a 53 20 00    	jmpq   *0x20538a(%rip)        # 6060c0 <_IO_getc@GLIBC_2.2.5>
  400d36:	68 15 00 00 00       	pushq  $0x15
  400d3b:	e9 90 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d40 <__isoc99_sscanf@plt>:
  400d40:	ff 25 82 53 20 00    	jmpq   *0x205382(%rip)        # 6060c8 <__isoc99_sscanf@GLIBC_2.7>
  400d46:	68 16 00 00 00       	pushq  $0x16
  400d4b:	e9 80 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d50 <munmap@plt>:
  400d50:	ff 25 7a 53 20 00    	jmpq   *0x20537a(%rip)        # 6060d0 <munmap@GLIBC_2.2.5>
  400d56:	68 17 00 00 00       	pushq  $0x17
  400d5b:	e9 70 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d60 <bcopy@plt>:
  400d60:	ff 25 72 53 20 00    	jmpq   *0x205372(%rip)        # 6060d8 <bcopy@GLIBC_2.2.5>
  400d66:	68 18 00 00 00       	pushq  $0x18
  400d6b:	e9 60 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d70 <fopen@plt>:
  400d70:	ff 25 6a 53 20 00    	jmpq   *0x20536a(%rip)        # 6060e0 <fopen@GLIBC_2.2.5>
  400d76:	68 19 00 00 00       	pushq  $0x19
  400d7b:	e9 50 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d80 <getopt@plt>:
  400d80:	ff 25 62 53 20 00    	jmpq   *0x205362(%rip)        # 6060e8 <getopt@GLIBC_2.2.5>
  400d86:	68 1a 00 00 00       	pushq  $0x1a
  400d8b:	e9 40 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d90 <strtoul@plt>:
  400d90:	ff 25 5a 53 20 00    	jmpq   *0x20535a(%rip)        # 6060f0 <strtoul@GLIBC_2.2.5>
  400d96:	68 1b 00 00 00       	pushq  $0x1b
  400d9b:	e9 30 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400da0 <gethostname@plt>:
  400da0:	ff 25 52 53 20 00    	jmpq   *0x205352(%rip)        # 6060f8 <gethostname@GLIBC_2.2.5>
  400da6:	68 1c 00 00 00       	pushq  $0x1c
  400dab:	e9 20 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400db0 <sprintf@plt>:
  400db0:	ff 25 4a 53 20 00    	jmpq   *0x20534a(%rip)        # 606100 <sprintf@GLIBC_2.2.5>
  400db6:	68 1d 00 00 00       	pushq  $0x1d
  400dbb:	e9 10 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dc0 <exit@plt>:
  400dc0:	ff 25 42 53 20 00    	jmpq   *0x205342(%rip)        # 606108 <exit@GLIBC_2.2.5>
  400dc6:	68 1e 00 00 00       	pushq  $0x1e
  400dcb:	e9 00 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dd0 <connect@plt>:
  400dd0:	ff 25 3a 53 20 00    	jmpq   *0x20533a(%rip)        # 606110 <connect@GLIBC_2.2.5>
  400dd6:	68 1f 00 00 00       	pushq  $0x1f
  400ddb:	e9 f0 fd ff ff       	jmpq   400bd0 <.plt>

0000000000400de0 <socket@plt>:
  400de0:	ff 25 32 53 20 00    	jmpq   *0x205332(%rip)        # 606118 <socket@GLIBC_2.2.5>
  400de6:	68 20 00 00 00       	pushq  $0x20
  400deb:	e9 e0 fd ff ff       	jmpq   400bd0 <.plt>

Disassembly of section .plt.got:

0000000000400df0 <.plt.got>:
  400df0:	ff 25 02 52 20 00    	jmpq   *0x205202(%rip)        # 605ff8 <__gmon_start__>
  400df6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400e00 <_start>:
  400e00:	31 ed                	xor    %ebp,%ebp
  400e02:	49 89 d1             	mov    %rdx,%r9
  400e05:	5e                   	pop    %rsi
  400e06:	48 89 e2             	mov    %rsp,%rdx
  400e09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e0d:	50                   	push   %rax
  400e0e:	54                   	push   %rsp
  400e0f:	49 c7 c0 d0 2c 40 00 	mov    $0x402cd0,%r8
  400e16:	48 c7 c1 60 2c 40 00 	mov    $0x402c60,%rcx
  400e1d:	48 c7 c7 c0 10 40 00 	mov    $0x4010c0,%rdi
  400e24:	e8 87 fe ff ff       	callq  400cb0 <__libc_start_main@plt>
  400e29:	f4                   	hlt    
  400e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e30 <deregister_tm_clones>:
  400e30:	b8 77 69 60 00       	mov    $0x606977,%eax
  400e35:	55                   	push   %rbp
  400e36:	48 2d 70 69 60 00    	sub    $0x606970,%rax
  400e3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e40:	48 89 e5             	mov    %rsp,%rbp
  400e43:	77 02                	ja     400e47 <deregister_tm_clones+0x17>
  400e45:	5d                   	pop    %rbp
  400e46:	c3                   	retq   
  400e47:	b8 00 00 00 00       	mov    $0x0,%eax
  400e4c:	48 85 c0             	test   %rax,%rax
  400e4f:	74 f4                	je     400e45 <deregister_tm_clones+0x15>
  400e51:	5d                   	pop    %rbp
  400e52:	bf 70 69 60 00       	mov    $0x606970,%edi
  400e57:	ff e0                	jmpq   *%rax
  400e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e60 <register_tm_clones>:
  400e60:	b8 70 69 60 00       	mov    $0x606970,%eax
  400e65:	55                   	push   %rbp
  400e66:	48 2d 70 69 60 00    	sub    $0x606970,%rax
  400e6c:	48 c1 f8 03          	sar    $0x3,%rax
  400e70:	48 89 e5             	mov    %rsp,%rbp
  400e73:	48 89 c2             	mov    %rax,%rdx
  400e76:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e7a:	48 01 d0             	add    %rdx,%rax
  400e7d:	48 d1 f8             	sar    %rax
  400e80:	75 02                	jne    400e84 <register_tm_clones+0x24>
  400e82:	5d                   	pop    %rbp
  400e83:	c3                   	retq   
  400e84:	ba 00 00 00 00       	mov    $0x0,%edx
  400e89:	48 85 d2             	test   %rdx,%rdx
  400e8c:	74 f4                	je     400e82 <register_tm_clones+0x22>
  400e8e:	5d                   	pop    %rbp
  400e8f:	48 89 c6             	mov    %rax,%rsi
  400e92:	bf 70 69 60 00       	mov    $0x606970,%edi
  400e97:	ff e2                	jmpq   *%rdx
  400e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ea0 <__do_global_dtors_aux>:
  400ea0:	80 3d f1 5a 20 00 00 	cmpb   $0x0,0x205af1(%rip)        # 606998 <completed.6355>
  400ea7:	75 11                	jne    400eba <__do_global_dtors_aux+0x1a>
  400ea9:	55                   	push   %rbp
  400eaa:	48 89 e5             	mov    %rsp,%rbp
  400ead:	e8 7e ff ff ff       	callq  400e30 <deregister_tm_clones>
  400eb2:	5d                   	pop    %rbp
  400eb3:	c6 05 de 5a 20 00 01 	movb   $0x1,0x205ade(%rip)        # 606998 <completed.6355>
  400eba:	f3 c3                	repz retq 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <frame_dummy>:
  400ec0:	48 83 3d 58 4f 20 00 	cmpq   $0x0,0x204f58(%rip)        # 605e20 <__JCR_END__>
  400ec7:	00 
  400ec8:	74 1e                	je     400ee8 <frame_dummy+0x28>
  400eca:	b8 00 00 00 00       	mov    $0x0,%eax
  400ecf:	48 85 c0             	test   %rax,%rax
  400ed2:	74 14                	je     400ee8 <frame_dummy+0x28>
  400ed4:	55                   	push   %rbp
  400ed5:	bf 20 5e 60 00       	mov    $0x605e20,%edi
  400eda:	48 89 e5             	mov    %rsp,%rbp
  400edd:	ff d0                	callq  *%rax
  400edf:	5d                   	pop    %rbp
  400ee0:	e9 7b ff ff ff       	jmpq   400e60 <register_tm_clones>
  400ee5:	0f 1f 00             	nopl   (%rax)
  400ee8:	e9 73 ff ff ff       	jmpq   400e60 <register_tm_clones>
  400eed:	0f 1f 00             	nopl   (%rax)

0000000000400ef0 <usage>:
  400ef0:	48 83 ec 08          	sub    $0x8,%rsp
  400ef4:	48 89 fe             	mov    %rdi,%rsi
  400ef7:	83 3d ca 5a 20 00 00 	cmpl   $0x0,0x205aca(%rip)        # 6069c8 <is_checker>
  400efe:	74 39                	je     400f39 <usage+0x49>
  400f00:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  400f05:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0a:	e8 51 fd ff ff       	callq  400c60 <printf@plt>
  400f0f:	bf 28 2d 40 00       	mov    $0x402d28,%edi
  400f14:	e8 17 fd ff ff       	callq  400c30 <puts@plt>
  400f19:	bf a0 2e 40 00       	mov    $0x402ea0,%edi
  400f1e:	e8 0d fd ff ff       	callq  400c30 <puts@plt>
  400f23:	bf 50 2d 40 00       	mov    $0x402d50,%edi
  400f28:	e8 03 fd ff ff       	callq  400c30 <puts@plt>
  400f2d:	bf ba 2e 40 00       	mov    $0x402eba,%edi
  400f32:	e8 f9 fc ff ff       	callq  400c30 <puts@plt>
  400f37:	eb 2d                	jmp    400f66 <usage+0x76>
  400f39:	bf d6 2e 40 00       	mov    $0x402ed6,%edi
  400f3e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f43:	e8 18 fd ff ff       	callq  400c60 <printf@plt>
  400f48:	bf 78 2d 40 00       	mov    $0x402d78,%edi
  400f4d:	e8 de fc ff ff       	callq  400c30 <puts@plt>
  400f52:	bf a0 2d 40 00       	mov    $0x402da0,%edi
  400f57:	e8 d4 fc ff ff       	callq  400c30 <puts@plt>
  400f5c:	bf f4 2e 40 00       	mov    $0x402ef4,%edi
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	bf 00 00 00 00       	mov    $0x0,%edi
  400f6b:	e8 50 fe ff ff       	callq  400dc0 <exit@plt>

0000000000400f70 <initialize_target>:
  400f70:	55                   	push   %rbp
  400f71:	53                   	push   %rbx
  400f72:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f79:	89 f5                	mov    %esi,%ebp
  400f7b:	89 3d 37 5a 20 00    	mov    %edi,0x205a37(%rip)        # 6069b8 <check_level>
  400f81:	8b 3d c1 51 20 00    	mov    0x2051c1(%rip),%edi        # 606148 <target_id>
  400f87:	e8 a7 1c 00 00       	callq  402c33 <gencookie>
  400f8c:	89 05 32 5a 20 00    	mov    %eax,0x205a32(%rip)        # 6069c4 <cookie>
  400f92:	89 c7                	mov    %eax,%edi
  400f94:	e8 9a 1c 00 00       	callq  402c33 <gencookie>
  400f99:	89 05 21 5a 20 00    	mov    %eax,0x205a21(%rip)        # 6069c0 <authkey>
  400f9f:	8b 05 a3 51 20 00    	mov    0x2051a3(%rip),%eax        # 606148 <target_id>
  400fa5:	8d 78 01             	lea    0x1(%rax),%edi
  400fa8:	e8 53 fc ff ff       	callq  400c00 <srandom@plt>
  400fad:	e8 6e fd ff ff       	callq  400d20 <random@plt>
  400fb2:	89 c7                	mov    %eax,%edi
  400fb4:	e8 ca 02 00 00       	callq  401283 <scramble>
  400fb9:	89 c3                	mov    %eax,%ebx
  400fbb:	85 ed                	test   %ebp,%ebp
  400fbd:	74 18                	je     400fd7 <initialize_target+0x67>
  400fbf:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc4:	e8 47 fd ff ff       	callq  400d10 <time@plt>
  400fc9:	89 c7                	mov    %eax,%edi
  400fcb:	e8 30 fc ff ff       	callq  400c00 <srandom@plt>
  400fd0:	e8 4b fd ff ff       	callq  400d20 <random@plt>
  400fd5:	eb 05                	jmp    400fdc <initialize_target+0x6c>
  400fd7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fdc:	01 c3                	add    %eax,%ebx
  400fde:	0f b7 db             	movzwl %bx,%ebx
  400fe1:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  400fe8:	89 c0                	mov    %eax,%eax
  400fea:	48 89 05 6f 59 20 00 	mov    %rax,0x20596f(%rip)        # 606960 <buf_offset>
  400ff1:	c6 05 f0 65 20 00 72 	movb   $0x72,0x2065f0(%rip)        # 6075e8 <target_prefix>
  400ff8:	83 3d 69 59 20 00 00 	cmpl   $0x0,0x205969(%rip)        # 606968 <notify>
  400fff:	0f 84 b1 00 00 00    	je     4010b6 <initialize_target+0x146>
  401005:	83 3d bc 59 20 00 00 	cmpl   $0x0,0x2059bc(%rip)        # 6069c8 <is_checker>
  40100c:	0f 85 a4 00 00 00    	jne    4010b6 <initialize_target+0x146>
  401012:	be 00 01 00 00       	mov    $0x100,%esi
  401017:	48 89 e7             	mov    %rsp,%rdi
  40101a:	e8 81 fd ff ff       	callq  400da0 <gethostname@plt>
  40101f:	85 c0                	test   %eax,%eax
  401021:	74 25                	je     401048 <initialize_target+0xd8>
  401023:	bf d0 2d 40 00       	mov    $0x402dd0,%edi
  401028:	e8 03 fc ff ff       	callq  400c30 <puts@plt>
  40102d:	bf 08 00 00 00       	mov    $0x8,%edi
  401032:	e8 89 fd ff ff       	callq  400dc0 <exit@plt>
  401037:	48 89 e6             	mov    %rsp,%rsi
  40103a:	e8 a1 fb ff ff       	callq  400be0 <strcasecmp@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	74 21                	je     401064 <initialize_target+0xf4>
  401043:	83 c3 01             	add    $0x1,%ebx
  401046:	eb 05                	jmp    40104d <initialize_target+0xdd>
  401048:	bb 00 00 00 00       	mov    $0x0,%ebx
  40104d:	48 63 c3             	movslq %ebx,%rax
  401050:	48 8b 3c c5 60 61 60 	mov    0x606160(,%rax,8),%rdi
  401057:	00 
  401058:	48 85 ff             	test   %rdi,%rdi
  40105b:	75 da                	jne    401037 <initialize_target+0xc7>
  40105d:	b8 00 00 00 00       	mov    $0x0,%eax
  401062:	eb 05                	jmp    401069 <initialize_target+0xf9>
  401064:	b8 01 00 00 00       	mov    $0x1,%eax
  401069:	85 c0                	test   %eax,%eax
  40106b:	75 17                	jne    401084 <initialize_target+0x114>
  40106d:	48 89 e6             	mov    %rsp,%rsi
  401070:	bf 08 2e 40 00       	mov    $0x402e08,%edi
  401075:	e8 e6 fb ff ff       	callq  400c60 <printf@plt>
  40107a:	bf 08 00 00 00       	mov    $0x8,%edi
  40107f:	e8 3c fd ff ff       	callq  400dc0 <exit@plt>
  401084:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40108b:	00 
  40108c:	e8 39 19 00 00       	callq  4029ca <init_driver>
  401091:	85 c0                	test   %eax,%eax
  401093:	79 21                	jns    4010b6 <initialize_target+0x146>
  401095:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40109c:	00 
  40109d:	bf 48 2e 40 00       	mov    $0x402e48,%edi
  4010a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a7:	e8 b4 fb ff ff       	callq  400c60 <printf@plt>
  4010ac:	bf 08 00 00 00       	mov    $0x8,%edi
  4010b1:	e8 0a fd ff ff       	callq  400dc0 <exit@plt>
  4010b6:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010bd:	5b                   	pop    %rbx
  4010be:	5d                   	pop    %rbp
  4010bf:	c3                   	retq   

00000000004010c0 <main>:
  4010c0:	41 56                	push   %r14
  4010c2:	41 55                	push   %r13
  4010c4:	41 54                	push   %r12
  4010c6:	55                   	push   %rbp
  4010c7:	53                   	push   %rbx
  4010c8:	41 89 fc             	mov    %edi,%r12d
  4010cb:	48 89 f3             	mov    %rsi,%rbx
  4010ce:	be f1 1d 40 00       	mov    $0x401df1,%esi
  4010d3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010d8:	e8 e3 fb ff ff       	callq  400cc0 <signal@plt>
  4010dd:	be a3 1d 40 00       	mov    $0x401da3,%esi
  4010e2:	bf 07 00 00 00       	mov    $0x7,%edi
  4010e7:	e8 d4 fb ff ff       	callq  400cc0 <signal@plt>
  4010ec:	be 3f 1e 40 00       	mov    $0x401e3f,%esi
  4010f1:	bf 04 00 00 00       	mov    $0x4,%edi
  4010f6:	e8 c5 fb ff ff       	callq  400cc0 <signal@plt>
  4010fb:	83 3d c6 58 20 00 00 	cmpl   $0x0,0x2058c6(%rip)        # 6069c8 <is_checker>
  401102:	74 20                	je     401124 <main+0x64>
  401104:	be 8d 1e 40 00       	mov    $0x401e8d,%esi
  401109:	bf 0e 00 00 00       	mov    $0xe,%edi
  40110e:	e8 ad fb ff ff       	callq  400cc0 <signal@plt>
  401113:	bf 05 00 00 00       	mov    $0x5,%edi
  401118:	e8 63 fb ff ff       	callq  400c80 <alarm@plt>
  40111d:	bd 12 2f 40 00       	mov    $0x402f12,%ebp
  401122:	eb 05                	jmp    401129 <main+0x69>
  401124:	bd 0d 2f 40 00       	mov    $0x402f0d,%ebp
  401129:	48 8b 05 50 58 20 00 	mov    0x205850(%rip),%rax        # 606980 <stdin@@GLIBC_2.2.5>
  401130:	48 89 05 79 58 20 00 	mov    %rax,0x205879(%rip)        # 6069b0 <infile>
  401137:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40113d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401143:	e9 b9 00 00 00       	jmpq   401201 <main+0x141>
  401148:	83 e8 61             	sub    $0x61,%eax
  40114b:	3c 10                	cmp    $0x10,%al
  40114d:	0f 87 93 00 00 00    	ja     4011e6 <main+0x126>
  401153:	0f b6 c0             	movzbl %al,%eax
  401156:	ff 24 c5 58 2f 40 00 	jmpq   *0x402f58(,%rax,8)
  40115d:	48 8b 3b             	mov    (%rbx),%rdi
  401160:	e8 8b fd ff ff       	callq  400ef0 <usage>
  401165:	be fe 3f 40 00       	mov    $0x403ffe,%esi
  40116a:	48 8b 3d 17 58 20 00 	mov    0x205817(%rip),%rdi        # 606988 <optarg@@GLIBC_2.2.5>
  401171:	e8 fa fb ff ff       	callq  400d70 <fopen@plt>
  401176:	48 89 05 33 58 20 00 	mov    %rax,0x205833(%rip)        # 6069b0 <infile>
  40117d:	48 85 c0             	test   %rax,%rax
  401180:	75 7f                	jne    401201 <main+0x141>
  401182:	48 8b 15 ff 57 20 00 	mov    0x2057ff(%rip),%rdx        # 606988 <optarg@@GLIBC_2.2.5>
  401189:	be 1a 2f 40 00       	mov    $0x402f1a,%esi
  40118e:	48 8b 3d fb 57 20 00 	mov    0x2057fb(%rip),%rdi        # 606990 <stderr@@GLIBC_2.2.5>
  401195:	e8 46 fb ff ff       	callq  400ce0 <fprintf@plt>
  40119a:	b8 01 00 00 00       	mov    $0x1,%eax
  40119f:	e9 d6 00 00 00       	jmpq   40127a <main+0x1ba>
  4011a4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011a9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ae:	48 8b 3d d3 57 20 00 	mov    0x2057d3(%rip),%rdi        # 606988 <optarg@@GLIBC_2.2.5>
  4011b5:	e8 d6 fb ff ff       	callq  400d90 <strtoul@plt>
  4011ba:	41 89 c6             	mov    %eax,%r14d
  4011bd:	eb 42                	jmp    401201 <main+0x141>
  4011bf:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c4:	be 00 00 00 00       	mov    $0x0,%esi
  4011c9:	48 8b 3d b8 57 20 00 	mov    0x2057b8(%rip),%rdi        # 606988 <optarg@@GLIBC_2.2.5>
  4011d0:	e8 1b fb ff ff       	callq  400cf0 <strtol@plt>
  4011d5:	41 89 c5             	mov    %eax,%r13d
  4011d8:	eb 27                	jmp    401201 <main+0x141>
  4011da:	c7 05 84 57 20 00 00 	movl   $0x0,0x205784(%rip)        # 606968 <notify>
  4011e1:	00 00 00 
  4011e4:	eb 1b                	jmp    401201 <main+0x141>
  4011e6:	40 0f be f6          	movsbl %sil,%esi
  4011ea:	bf 37 2f 40 00       	mov    $0x402f37,%edi
  4011ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f4:	e8 67 fa ff ff       	callq  400c60 <printf@plt>
  4011f9:	48 8b 3b             	mov    (%rbx),%rdi
  4011fc:	e8 ef fc ff ff       	callq  400ef0 <usage>
  401201:	48 89 ea             	mov    %rbp,%rdx
  401204:	48 89 de             	mov    %rbx,%rsi
  401207:	44 89 e7             	mov    %r12d,%edi
  40120a:	e8 71 fb ff ff       	callq  400d80 <getopt@plt>
  40120f:	89 c6                	mov    %eax,%esi
  401211:	3c ff                	cmp    $0xff,%al
  401213:	0f 85 2f ff ff ff    	jne    401148 <main+0x88>
  401219:	be 01 00 00 00       	mov    $0x1,%esi
  40121e:	44 89 ef             	mov    %r13d,%edi
  401221:	e8 4a fd ff ff       	callq  400f70 <initialize_target>
  401226:	83 3d 9b 57 20 00 00 	cmpl   $0x0,0x20579b(%rip)        # 6069c8 <is_checker>
  40122d:	74 25                	je     401254 <main+0x194>
  40122f:	44 3b 35 8a 57 20 00 	cmp    0x20578a(%rip),%r14d        # 6069c0 <authkey>
  401236:	74 1c                	je     401254 <main+0x194>
  401238:	44 89 f6             	mov    %r14d,%esi
  40123b:	bf 70 2e 40 00       	mov    $0x402e70,%edi
  401240:	b8 00 00 00 00       	mov    $0x0,%eax
  401245:	e8 16 fa ff ff       	callq  400c60 <printf@plt>
  40124a:	b8 00 00 00 00       	mov    $0x0,%eax
  40124f:	e8 57 08 00 00       	callq  401aab <check_fail>
  401254:	8b 35 6a 57 20 00    	mov    0x20576a(%rip),%esi        # 6069c4 <cookie>
  40125a:	bf 4a 2f 40 00       	mov    $0x402f4a,%edi
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	e8 f7 f9 ff ff       	callq  400c60 <printf@plt>
  401269:	48 8b 3d f0 56 20 00 	mov    0x2056f0(%rip),%rdi        # 606960 <buf_offset>
  401270:	e8 66 0c 00 00       	callq  401edb <launch>
  401275:	b8 00 00 00 00       	mov    $0x0,%eax
  40127a:	5b                   	pop    %rbx
  40127b:	5d                   	pop    %rbp
  40127c:	41 5c                	pop    %r12
  40127e:	41 5d                	pop    %r13
  401280:	41 5e                	pop    %r14
  401282:	c3                   	retq   

0000000000401283 <scramble>:
  401283:	b8 00 00 00 00       	mov    $0x0,%eax
  401288:	eb 11                	jmp    40129b <scramble+0x18>
  40128a:	69 c8 48 27 00 00    	imul   $0x2748,%eax,%ecx
  401290:	01 f9                	add    %edi,%ecx
  401292:	89 c2                	mov    %eax,%edx
  401294:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  401298:	83 c0 01             	add    $0x1,%eax
  40129b:	83 f8 09             	cmp    $0x9,%eax
  40129e:	76 ea                	jbe    40128a <scramble+0x7>
  4012a0:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4012a4:	69 c0 d3 1e 00 00    	imul   $0x1ed3,%eax,%eax
  4012aa:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012ae:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012b2:	69 c0 5d 76 00 00    	imul   $0x765d,%eax,%eax
  4012b8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4012bc:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4012c0:	69 c0 f1 46 00 00    	imul   $0x46f1,%eax,%eax
  4012c6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4012ca:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4012ce:	69 c0 73 d2 00 00    	imul   $0xd273,%eax,%eax
  4012d4:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4012d8:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4012dc:	69 c0 7c 4b 00 00    	imul   $0x4b7c,%eax,%eax
  4012e2:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4012e6:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4012ea:	69 c0 98 e3 00 00    	imul   $0xe398,%eax,%eax
  4012f0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4012f4:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012f8:	69 c0 5d a6 00 00    	imul   $0xa65d,%eax,%eax
  4012fe:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401302:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401306:	69 c0 3e de 00 00    	imul   $0xde3e,%eax,%eax
  40130c:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401310:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401314:	69 c0 fe b9 00 00    	imul   $0xb9fe,%eax,%eax
  40131a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40131e:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401322:	69 c0 34 cf 00 00    	imul   $0xcf34,%eax,%eax
  401328:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40132c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401330:	69 c0 01 a8 00 00    	imul   $0xa801,%eax,%eax
  401336:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40133a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40133e:	69 c0 b3 7a 00 00    	imul   $0x7ab3,%eax,%eax
  401344:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401348:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40134c:	69 c0 f9 63 00 00    	imul   $0x63f9,%eax,%eax
  401352:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401356:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40135a:	69 c0 6a 38 00 00    	imul   $0x386a,%eax,%eax
  401360:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401364:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401368:	69 c0 92 d4 00 00    	imul   $0xd492,%eax,%eax
  40136e:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401372:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401376:	69 c0 a0 8f 00 00    	imul   $0x8fa0,%eax,%eax
  40137c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401380:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401384:	69 c0 df 6b 00 00    	imul   $0x6bdf,%eax,%eax
  40138a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40138e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401392:	69 c0 a0 7e 00 00    	imul   $0x7ea0,%eax,%eax
  401398:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40139c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013a0:	69 c0 e1 ac 00 00    	imul   $0xace1,%eax,%eax
  4013a6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013aa:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013ae:	69 c0 b1 dc 00 00    	imul   $0xdcb1,%eax,%eax
  4013b4:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013b8:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013bc:	69 c0 65 7b 00 00    	imul   $0x7b65,%eax,%eax
  4013c2:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013c6:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013ca:	69 c0 0c 92 00 00    	imul   $0x920c,%eax,%eax
  4013d0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013d4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013d8:	69 c0 c7 bb 00 00    	imul   $0xbbc7,%eax,%eax
  4013de:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013e2:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013e6:	69 c0 39 a7 00 00    	imul   $0xa739,%eax,%eax
  4013ec:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013f0:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013f4:	69 c0 8d 23 00 00    	imul   $0x238d,%eax,%eax
  4013fa:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013fe:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401402:	69 c0 cc 2f 00 00    	imul   $0x2fcc,%eax,%eax
  401408:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40140c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401410:	69 c0 39 f1 00 00    	imul   $0xf139,%eax,%eax
  401416:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40141a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40141e:	69 c0 21 a0 00 00    	imul   $0xa021,%eax,%eax
  401424:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401428:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40142c:	69 c0 0f 94 00 00    	imul   $0x940f,%eax,%eax
  401432:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401436:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40143a:	69 c0 8a bd 00 00    	imul   $0xbd8a,%eax,%eax
  401440:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401444:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401448:	69 c0 da 2f 00 00    	imul   $0x2fda,%eax,%eax
  40144e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401452:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401456:	69 c0 07 5c 00 00    	imul   $0x5c07,%eax,%eax
  40145c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401460:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401464:	69 c0 27 53 00 00    	imul   $0x5327,%eax,%eax
  40146a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40146e:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401472:	69 c0 89 4e 00 00    	imul   $0x4e89,%eax,%eax
  401478:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40147c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401480:	69 c0 bb 2b 00 00    	imul   $0x2bbb,%eax,%eax
  401486:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40148a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40148e:	69 c0 66 f8 00 00    	imul   $0xf866,%eax,%eax
  401494:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401498:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40149c:	69 c0 83 eb 00 00    	imul   $0xeb83,%eax,%eax
  4014a2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014a6:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014aa:	69 c0 e3 c8 00 00    	imul   $0xc8e3,%eax,%eax
  4014b0:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014b4:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014b8:	69 c0 bc fa 00 00    	imul   $0xfabc,%eax,%eax
  4014be:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014c2:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014c6:	69 c0 11 1d 00 00    	imul   $0x1d11,%eax,%eax
  4014cc:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014d0:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014d4:	69 c0 8a e6 00 00    	imul   $0xe68a,%eax,%eax
  4014da:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014de:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014e2:	69 c0 d8 e9 00 00    	imul   $0xe9d8,%eax,%eax
  4014e8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014ec:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014f0:	69 c0 5d f7 00 00    	imul   $0xf75d,%eax,%eax
  4014f6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014fa:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014fe:	69 c0 f5 2c 00 00    	imul   $0x2cf5,%eax,%eax
  401504:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401508:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40150c:	69 c0 85 62 00 00    	imul   $0x6285,%eax,%eax
  401512:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401516:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40151a:	69 c0 0d f4 00 00    	imul   $0xf40d,%eax,%eax
  401520:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401524:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401528:	69 c0 a9 37 00 00    	imul   $0x37a9,%eax,%eax
  40152e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401532:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401536:	69 c0 18 2e 00 00    	imul   $0x2e18,%eax,%eax
  40153c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401540:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401544:	69 c0 bc 2a 00 00    	imul   $0x2abc,%eax,%eax
  40154a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40154e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401552:	69 c0 d9 8a 00 00    	imul   $0x8ad9,%eax,%eax
  401558:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40155c:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401560:	69 c0 dc a7 00 00    	imul   $0xa7dc,%eax,%eax
  401566:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40156a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40156e:	69 c0 98 fd 00 00    	imul   $0xfd98,%eax,%eax
  401574:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401578:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40157c:	69 c0 b2 0d 00 00    	imul   $0xdb2,%eax,%eax
  401582:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401586:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40158a:	69 c0 ab 3a 00 00    	imul   $0x3aab,%eax,%eax
  401590:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401594:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401598:	69 c0 97 36 00 00    	imul   $0x3697,%eax,%eax
  40159e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015a2:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015a6:	69 c0 b8 26 00 00    	imul   $0x26b8,%eax,%eax
  4015ac:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015b0:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015b4:	69 c0 99 a4 00 00    	imul   $0xa499,%eax,%eax
  4015ba:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015be:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015c2:	69 c0 e4 f4 00 00    	imul   $0xf4e4,%eax,%eax
  4015c8:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015cc:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015d0:	69 c0 8b 9a 00 00    	imul   $0x9a8b,%eax,%eax
  4015d6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015da:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015de:	69 c0 62 27 00 00    	imul   $0x2762,%eax,%eax
  4015e4:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015e8:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015ec:	69 c0 59 0c 00 00    	imul   $0xc59,%eax,%eax
  4015f2:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015f6:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4015fa:	69 c0 70 8f 00 00    	imul   $0x8f70,%eax,%eax
  401600:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401604:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401608:	69 c0 84 6b 00 00    	imul   $0x6b84,%eax,%eax
  40160e:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401612:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401616:	69 c0 d3 ce 00 00    	imul   $0xced3,%eax,%eax
  40161c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401620:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401624:	69 c0 2a 3a 00 00    	imul   $0x3a2a,%eax,%eax
  40162a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40162e:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401632:	69 c0 b8 ec 00 00    	imul   $0xecb8,%eax,%eax
  401638:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40163c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401640:	69 c0 ec dc 00 00    	imul   $0xdcec,%eax,%eax
  401646:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40164a:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40164e:	69 c0 67 75 00 00    	imul   $0x7567,%eax,%eax
  401654:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401658:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40165c:	69 c0 cb b0 00 00    	imul   $0xb0cb,%eax,%eax
  401662:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401666:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40166a:	69 c0 0c f3 00 00    	imul   $0xf30c,%eax,%eax
  401670:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401674:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401678:	69 c0 ce 07 00 00    	imul   $0x7ce,%eax,%eax
  40167e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401682:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401686:	69 c0 84 04 00 00    	imul   $0x484,%eax,%eax
  40168c:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401690:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401694:	69 c0 56 2a 00 00    	imul   $0x2a56,%eax,%eax
  40169a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40169e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016a2:	69 c0 5e 48 00 00    	imul   $0x485e,%eax,%eax
  4016a8:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016ac:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016b0:	69 c0 42 1b 00 00    	imul   $0x1b42,%eax,%eax
  4016b6:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016ba:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016be:	69 c0 f1 c1 00 00    	imul   $0xc1f1,%eax,%eax
  4016c4:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016c8:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016cc:	69 c0 30 8b 00 00    	imul   $0x8b30,%eax,%eax
  4016d2:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016d6:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016da:	69 c0 9f 6b 00 00    	imul   $0x6b9f,%eax,%eax
  4016e0:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016e4:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016e8:	69 c0 ea 0e 00 00    	imul   $0xeea,%eax,%eax
  4016ee:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016f2:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016f6:	69 c0 f5 8c 00 00    	imul   $0x8cf5,%eax,%eax
  4016fc:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401700:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401704:	69 c0 1f 94 00 00    	imul   $0x941f,%eax,%eax
  40170a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40170e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401712:	69 c0 1b 2b 00 00    	imul   $0x2b1b,%eax,%eax
  401718:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40171c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401720:	69 c0 fd 63 00 00    	imul   $0x63fd,%eax,%eax
  401726:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40172a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40172e:	69 c0 a9 5b 00 00    	imul   $0x5ba9,%eax,%eax
  401734:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401738:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40173c:	69 c0 94 50 00 00    	imul   $0x5094,%eax,%eax
  401742:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401746:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40174a:	69 c0 2b fc 00 00    	imul   $0xfc2b,%eax,%eax
  401750:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401754:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401758:	69 c0 7a 68 00 00    	imul   $0x687a,%eax,%eax
  40175e:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401762:	ba 00 00 00 00       	mov    $0x0,%edx
  401767:	b8 00 00 00 00       	mov    $0x0,%eax
  40176c:	eb 0b                	jmp    401779 <scramble+0x4f6>
  40176e:	89 d1                	mov    %edx,%ecx
  401770:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401774:	01 c8                	add    %ecx,%eax
  401776:	83 c2 01             	add    $0x1,%edx
  401779:	83 fa 09             	cmp    $0x9,%edx
  40177c:	76 f0                	jbe    40176e <scramble+0x4eb>
  40177e:	f3 c3                	repz retq 

0000000000401780 <getbuf>:
  401780:	48 83 ec 38          	sub    $0x38,%rsp
  401784:	48 89 e7             	mov    %rsp,%rdi
  401787:	e8 4e 03 00 00       	callq  401ada <Gets>
  40178c:	b8 01 00 00 00       	mov    $0x1,%eax
  401791:	48 83 c4 38          	add    $0x38,%rsp
  401795:	c3                   	retq   

0000000000401796 <touch1>:
  401796:	48 83 ec 08          	sub    $0x8,%rsp
  40179a:	c7 05 18 52 20 00 01 	movl   $0x1,0x205218(%rip)        # 6069bc <vlevel>
  4017a1:	00 00 00 
  4017a4:	bf 47 40 40 00       	mov    $0x404047,%edi
  4017a9:	e8 82 f4 ff ff       	callq  400c30 <puts@plt>
  4017ae:	bf 01 00 00 00       	mov    $0x1,%edi
  4017b3:	e8 11 05 00 00       	callq  401cc9 <validate>
  4017b8:	bf 00 00 00 00       	mov    $0x0,%edi
  4017bd:	e8 fe f5 ff ff       	callq  400dc0 <exit@plt>

00000000004017c2 <touch2>:
  4017c2:	48 83 ec 08          	sub    $0x8,%rsp
  4017c6:	89 fe                	mov    %edi,%esi
  4017c8:	c7 05 ea 51 20 00 02 	movl   $0x2,0x2051ea(%rip)        # 6069bc <vlevel>
  4017cf:	00 00 00 
  4017d2:	3b 3d ec 51 20 00    	cmp    0x2051ec(%rip),%edi        # 6069c4 <cookie>
  4017d8:	75 1b                	jne    4017f5 <touch2+0x33>
  4017da:	bf 70 40 40 00       	mov    $0x404070,%edi
  4017df:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e4:	e8 77 f4 ff ff       	callq  400c60 <printf@plt>
  4017e9:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ee:	e8 d6 04 00 00       	callq  401cc9 <validate>
  4017f3:	eb 19                	jmp    40180e <touch2+0x4c>
  4017f5:	bf 98 40 40 00       	mov    $0x404098,%edi
  4017fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ff:	e8 5c f4 ff ff       	callq  400c60 <printf@plt>
  401804:	bf 02 00 00 00       	mov    $0x2,%edi
  401809:	e8 6d 05 00 00       	callq  401d7b <fail>
  40180e:	bf 00 00 00 00       	mov    $0x0,%edi
  401813:	e8 a8 f5 ff ff       	callq  400dc0 <exit@plt>

0000000000401818 <hexmatch>:
  401818:	41 54                	push   %r12
  40181a:	55                   	push   %rbp
  40181b:	53                   	push   %rbx
  40181c:	48 83 ec 70          	sub    $0x70,%rsp
  401820:	41 89 fc             	mov    %edi,%r12d
  401823:	48 89 f5             	mov    %rsi,%rbp
  401826:	e8 f5 f4 ff ff       	callq  400d20 <random@plt>
  40182b:	48 89 c1             	mov    %rax,%rcx
  40182e:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401835:	0a d7 a3 
  401838:	48 f7 ea             	imul   %rdx
  40183b:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  40183f:	48 c1 f8 06          	sar    $0x6,%rax
  401843:	48 89 ce             	mov    %rcx,%rsi
  401846:	48 c1 fe 3f          	sar    $0x3f,%rsi
  40184a:	48 29 f0             	sub    %rsi,%rax
  40184d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401851:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401855:	48 c1 e0 02          	shl    $0x2,%rax
  401859:	48 29 c1             	sub    %rax,%rcx
  40185c:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  401860:	44 89 e2             	mov    %r12d,%edx
  401863:	be 64 40 40 00       	mov    $0x404064,%esi
  401868:	48 89 df             	mov    %rbx,%rdi
  40186b:	b8 00 00 00 00       	mov    $0x0,%eax
  401870:	e8 3b f5 ff ff       	callq  400db0 <sprintf@plt>
  401875:	ba 09 00 00 00       	mov    $0x9,%edx
  40187a:	48 89 de             	mov    %rbx,%rsi
  40187d:	48 89 ef             	mov    %rbp,%rdi
  401880:	e8 8b f3 ff ff       	callq  400c10 <strncmp@plt>
  401885:	85 c0                	test   %eax,%eax
  401887:	0f 94 c0             	sete   %al
  40188a:	0f b6 c0             	movzbl %al,%eax
  40188d:	48 83 c4 70          	add    $0x70,%rsp
  401891:	5b                   	pop    %rbx
  401892:	5d                   	pop    %rbp
  401893:	41 5c                	pop    %r12
  401895:	c3                   	retq   

0000000000401896 <touch3>:
  401896:	53                   	push   %rbx
  401897:	48 89 fb             	mov    %rdi,%rbx
  40189a:	c7 05 18 51 20 00 03 	movl   $0x3,0x205118(%rip)        # 6069bc <vlevel>
  4018a1:	00 00 00 
  4018a4:	48 89 fe             	mov    %rdi,%rsi
  4018a7:	8b 3d 17 51 20 00    	mov    0x205117(%rip),%edi        # 6069c4 <cookie>
  4018ad:	e8 66 ff ff ff       	callq  401818 <hexmatch>
  4018b2:	85 c0                	test   %eax,%eax
  4018b4:	74 1e                	je     4018d4 <touch3+0x3e>
  4018b6:	48 89 de             	mov    %rbx,%rsi
  4018b9:	bf c0 40 40 00       	mov    $0x4040c0,%edi
  4018be:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c3:	e8 98 f3 ff ff       	callq  400c60 <printf@plt>
  4018c8:	bf 03 00 00 00       	mov    $0x3,%edi
  4018cd:	e8 f7 03 00 00       	callq  401cc9 <validate>
  4018d2:	eb 1c                	jmp    4018f0 <touch3+0x5a>
  4018d4:	48 89 de             	mov    %rbx,%rsi
  4018d7:	bf e8 40 40 00       	mov    $0x4040e8,%edi
  4018dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e1:	e8 7a f3 ff ff       	callq  400c60 <printf@plt>
  4018e6:	bf 03 00 00 00       	mov    $0x3,%edi
  4018eb:	e8 8b 04 00 00       	callq  401d7b <fail>
  4018f0:	bf 00 00 00 00       	mov    $0x0,%edi
  4018f5:	e8 c6 f4 ff ff       	callq  400dc0 <exit@plt>

00000000004018fa <test>:
  4018fa:	48 83 ec 08          	sub    $0x8,%rsp
  4018fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401903:	e8 78 fe ff ff       	callq  401780 <getbuf>
  401908:	89 c6                	mov    %eax,%esi
  40190a:	bf 10 41 40 00       	mov    $0x404110,%edi
  40190f:	b8 00 00 00 00       	mov    $0x0,%eax
  401914:	e8 47 f3 ff ff       	callq  400c60 <printf@plt>
  401919:	48 83 c4 08          	add    $0x8,%rsp
  40191d:	c3                   	retq   

000000000040191e <start_farm>:
  40191e:	b8 01 00 00 00       	mov    $0x1,%eax
  401923:	c3                   	retq   

0000000000401924 <addval_198>:
  401924:	8d 87 48 99 c7 90    	lea    -0x6f3866b8(%rdi),%eax
  40192a:	c3                   	retq   

000000000040192b <addval_121>:
  40192b:	8d 87 48 89 c7 c1    	lea    -0x3e3876b8(%rdi),%eax
  401931:	c3                   	retq   

0000000000401932 <setval_160>:
  401932:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  401938:	c3                   	retq   

0000000000401939 <addval_326>:
  401939:	8d 87 13 d8 90 90    	lea    -0x6f6f27ed(%rdi),%eax
  40193f:	c3                   	retq   

0000000000401940 <addval_102>:
  401940:	8d 87 58 90 90 c3    	lea    -0x3c6f6fa8(%rdi),%eax
  401946:	c3                   	retq   

0000000000401947 <setval_277>:
  401947:	c7 07 77 cb 58 91    	movl   $0x9158cb77,(%rdi)
  40194d:	c3                   	retq   

000000000040194e <getval_471>:
  40194e:	b8 58 90 c3 ae       	mov    $0xaec39058,%eax
  401953:	c3                   	retq   

0000000000401954 <getval_125>:
  401954:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401959:	c3                   	retq   

000000000040195a <mid_farm>:
  40195a:	b8 01 00 00 00       	mov    $0x1,%eax
  40195f:	c3                   	retq   

0000000000401960 <add_xy>:
  401960:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401964:	c3                   	retq   

0000000000401965 <getval_321>:
  401965:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  40196a:	c3                   	retq   

000000000040196b <addval_301>:
  40196b:	8d 87 89 c1 28 c0    	lea    -0x3fd73e77(%rdi),%eax
  401971:	c3                   	retq   

0000000000401972 <getval_151>:
  401972:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  401977:	c3                   	retq   

0000000000401978 <getval_280>:
  401978:	b8 31 4a 89 e0       	mov    $0xe0894a31,%eax
  40197d:	c3                   	retq   

000000000040197e <setval_305>:
  40197e:	c7 07 e0 9d 8d d6    	movl   $0xd68d9de0,(%rdi)
  401984:	c3                   	retq   

0000000000401985 <setval_221>:
  401985:	c7 07 89 ca 18 d2    	movl   $0xd218ca89,(%rdi)
  40198b:	c3                   	retq   

000000000040198c <setval_348>:
  40198c:	c7 07 89 d6 84 d2    	movl   $0xd284d689,(%rdi)
  401992:	c3                   	retq   

0000000000401993 <setval_426>:
  401993:	c7 07 89 c1 08 c9    	movl   $0xc908c189,(%rdi)
  401999:	c3                   	retq   

000000000040199a <setval_489>:
  40199a:	c7 07 09 ca 90 c3    	movl   $0xc390ca09,(%rdi)
  4019a0:	c3                   	retq   

00000000004019a1 <addval_196>:
  4019a1:	8d 87 88 c1 c3 5a    	lea    0x5ac3c188(%rdi),%eax
  4019a7:	c3                   	retq   

00000000004019a8 <addval_469>:
  4019a8:	8d 87 99 c1 20 d2    	lea    -0x2ddf3e67(%rdi),%eax
  4019ae:	c3                   	retq   

00000000004019af <getval_229>:
  4019af:	b8 99 ca 90 90       	mov    $0x9090ca99,%eax
  4019b4:	c3                   	retq   

00000000004019b5 <setval_215>:
  4019b5:	c7 07 89 d6 90 c3    	movl   $0xc390d689,(%rdi)
  4019bb:	c3                   	retq   

00000000004019bc <setval_287>:
  4019bc:	c7 07 88 d6 90 c3    	movl   $0xc390d688,(%rdi)
  4019c2:	c3                   	retq   

00000000004019c3 <getval_164>:
  4019c3:	b8 89 ca 78 c9       	mov    $0xc978ca89,%eax
  4019c8:	c3                   	retq   

00000000004019c9 <getval_110>:
  4019c9:	b8 89 c1 90 c3       	mov    $0xc390c189,%eax
  4019ce:	c3                   	retq   

00000000004019cf <getval_228>:
  4019cf:	b8 89 d6 60 db       	mov    $0xdb60d689,%eax
  4019d4:	c3                   	retq   

00000000004019d5 <setval_255>:
  4019d5:	c7 07 89 ca 20 c0    	movl   $0xc020ca89,(%rdi)
  4019db:	c3                   	retq   

00000000004019dc <addval_220>:
  4019dc:	8d 87 89 c1 91 90    	lea    -0x6f6e3e77(%rdi),%eax
  4019e2:	c3                   	retq   

00000000004019e3 <setval_199>:
  4019e3:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  4019e9:	c3                   	retq   

00000000004019ea <getval_401>:
  4019ea:	b8 09 d6 38 c0       	mov    $0xc038d609,%eax
  4019ef:	c3                   	retq   

00000000004019f0 <getval_282>:
  4019f0:	b8 99 ca 84 c9       	mov    $0xc984ca99,%eax
  4019f5:	c3                   	retq   

00000000004019f6 <setval_432>:
  4019f6:	c7 07 48 09 e0 90    	movl   $0x90e00948,(%rdi)
  4019fc:	c3                   	retq   

00000000004019fd <getval_373>:
  4019fd:	b8 ee 89 d6 c2       	mov    $0xc2d689ee,%eax
  401a02:	c3                   	retq   

0000000000401a03 <setval_335>:
  401a03:	c7 07 73 48 89 e0    	movl   $0xe0894873,(%rdi)
  401a09:	c3                   	retq   

0000000000401a0a <setval_210>:
  401a0a:	c7 07 89 ca 28 c0    	movl   $0xc028ca89,(%rdi)
  401a10:	c3                   	retq   

0000000000401a11 <addval_461>:
  401a11:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  401a17:	c3                   	retq   

0000000000401a18 <addval_127>:
  401a18:	8d 87 76 89 c1 92    	lea    -0x6d3e768a(%rdi),%eax
  401a1e:	c3                   	retq   

0000000000401a1f <getval_317>:
  401a1f:	b8 89 c1 a4 c0       	mov    $0xc0a4c189,%eax
  401a24:	c3                   	retq   

0000000000401a25 <setval_437>:
  401a25:	c7 07 89 ca 84 c0    	movl   $0xc084ca89,(%rdi)
  401a2b:	c3                   	retq   

0000000000401a2c <addval_411>:
  401a2c:	8d 87 48 88 e0 c3    	lea    -0x3c1f77b8(%rdi),%eax
  401a32:	c3                   	retq   

0000000000401a33 <addval_219>:
  401a33:	8d 87 89 d6 a4 d2    	lea    -0x2d5b2977(%rdi),%eax
  401a39:	c3                   	retq   

0000000000401a3a <end_farm>:
  401a3a:	b8 01 00 00 00       	mov    $0x1,%eax
  401a3f:	c3                   	retq   

0000000000401a40 <save_char>:
  401a40:	8b 05 9e 5b 20 00    	mov    0x205b9e(%rip),%eax        # 6075e4 <gets_cnt>
  401a46:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a4b:	7f 49                	jg     401a96 <save_char+0x56>
  401a4d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a50:	89 f9                	mov    %edi,%ecx
  401a52:	c0 e9 04             	shr    $0x4,%cl
  401a55:	83 e1 0f             	and    $0xf,%ecx
  401a58:	0f b6 b1 30 44 40 00 	movzbl 0x404430(%rcx),%esi
  401a5f:	48 63 ca             	movslq %edx,%rcx
  401a62:	40 88 b1 e0 69 60 00 	mov    %sil,0x6069e0(%rcx)
  401a69:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401a6c:	83 e7 0f             	and    $0xf,%edi
  401a6f:	0f b6 b7 30 44 40 00 	movzbl 0x404430(%rdi),%esi
  401a76:	48 63 c9             	movslq %ecx,%rcx
  401a79:	40 88 b1 e0 69 60 00 	mov    %sil,0x6069e0(%rcx)
  401a80:	83 c2 02             	add    $0x2,%edx
  401a83:	48 63 d2             	movslq %edx,%rdx
  401a86:	c6 82 e0 69 60 00 20 	movb   $0x20,0x6069e0(%rdx)
  401a8d:	83 c0 01             	add    $0x1,%eax
  401a90:	89 05 4e 5b 20 00    	mov    %eax,0x205b4e(%rip)        # 6075e4 <gets_cnt>
  401a96:	f3 c3                	repz retq 

0000000000401a98 <save_term>:
  401a98:	8b 05 46 5b 20 00    	mov    0x205b46(%rip),%eax        # 6075e4 <gets_cnt>
  401a9e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401aa1:	48 98                	cltq   
  401aa3:	c6 80 e0 69 60 00 00 	movb   $0x0,0x6069e0(%rax)
  401aaa:	c3                   	retq   

0000000000401aab <check_fail>:
  401aab:	48 83 ec 08          	sub    $0x8,%rsp
  401aaf:	0f be 35 32 5b 20 00 	movsbl 0x205b32(%rip),%esi        # 6075e8 <target_prefix>
  401ab6:	b9 e0 69 60 00       	mov    $0x6069e0,%ecx
  401abb:	8b 15 f7 4e 20 00    	mov    0x204ef7(%rip),%edx        # 6069b8 <check_level>
  401ac1:	bf 33 41 40 00       	mov    $0x404133,%edi
  401ac6:	b8 00 00 00 00       	mov    $0x0,%eax
  401acb:	e8 90 f1 ff ff       	callq  400c60 <printf@plt>
  401ad0:	bf 01 00 00 00       	mov    $0x1,%edi
  401ad5:	e8 e6 f2 ff ff       	callq  400dc0 <exit@plt>

0000000000401ada <Gets>:
  401ada:	41 54                	push   %r12
  401adc:	55                   	push   %rbp
  401add:	53                   	push   %rbx
  401ade:	49 89 fc             	mov    %rdi,%r12
  401ae1:	c7 05 f9 5a 20 00 00 	movl   $0x0,0x205af9(%rip)        # 6075e4 <gets_cnt>
  401ae8:	00 00 00 
  401aeb:	48 89 fb             	mov    %rdi,%rbx
  401aee:	eb 11                	jmp    401b01 <Gets+0x27>
  401af0:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401af4:	88 03                	mov    %al,(%rbx)
  401af6:	0f b6 f8             	movzbl %al,%edi
  401af9:	e8 42 ff ff ff       	callq  401a40 <save_char>
  401afe:	48 89 eb             	mov    %rbp,%rbx
  401b01:	48 8b 3d a8 4e 20 00 	mov    0x204ea8(%rip),%rdi        # 6069b0 <infile>
  401b08:	e8 23 f2 ff ff       	callq  400d30 <_IO_getc@plt>
  401b0d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b10:	74 05                	je     401b17 <Gets+0x3d>
  401b12:	83 f8 0a             	cmp    $0xa,%eax
  401b15:	75 d9                	jne    401af0 <Gets+0x16>
  401b17:	c6 03 00             	movb   $0x0,(%rbx)
  401b1a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1f:	e8 74 ff ff ff       	callq  401a98 <save_term>
  401b24:	4c 89 e0             	mov    %r12,%rax
  401b27:	5b                   	pop    %rbx
  401b28:	5d                   	pop    %rbp
  401b29:	41 5c                	pop    %r12
  401b2b:	c3                   	retq   

0000000000401b2c <notify_server>:
  401b2c:	83 3d 95 4e 20 00 00 	cmpl   $0x0,0x204e95(%rip)        # 6069c8 <is_checker>
  401b33:	0f 85 8e 01 00 00    	jne    401cc7 <notify_server+0x19b>
  401b39:	53                   	push   %rbx
  401b3a:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401b41:	89 fb                	mov    %edi,%ebx
  401b43:	8b 05 9b 5a 20 00    	mov    0x205a9b(%rip),%eax        # 6075e4 <gets_cnt>
  401b49:	83 c0 64             	add    $0x64,%eax
  401b4c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b51:	7e 19                	jle    401b6c <notify_server+0x40>
  401b53:	bf 68 42 40 00       	mov    $0x404268,%edi
  401b58:	b8 00 00 00 00       	mov    $0x0,%eax
  401b5d:	e8 fe f0 ff ff       	callq  400c60 <printf@plt>
  401b62:	bf 01 00 00 00       	mov    $0x1,%edi
  401b67:	e8 54 f2 ff ff       	callq  400dc0 <exit@plt>
  401b6c:	44 0f be 0d 74 5a 20 	movsbl 0x205a74(%rip),%r9d        # 6075e8 <target_prefix>
  401b73:	00 
  401b74:	83 3d ed 4d 20 00 00 	cmpl   $0x0,0x204ded(%rip)        # 606968 <notify>
  401b7b:	74 09                	je     401b86 <notify_server+0x5a>
  401b7d:	44 8b 05 3c 4e 20 00 	mov    0x204e3c(%rip),%r8d        # 6069c0 <authkey>
  401b84:	eb 06                	jmp    401b8c <notify_server+0x60>
  401b86:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401b8c:	85 db                	test   %ebx,%ebx
  401b8e:	74 07                	je     401b97 <notify_server+0x6b>
  401b90:	b9 49 41 40 00       	mov    $0x404149,%ecx
  401b95:	eb 05                	jmp    401b9c <notify_server+0x70>
  401b97:	b9 4e 41 40 00       	mov    $0x40414e,%ecx
  401b9c:	48 c7 44 24 08 e0 69 	movq   $0x6069e0,0x8(%rsp)
  401ba3:	60 00 
  401ba5:	89 34 24             	mov    %esi,(%rsp)
  401ba8:	8b 15 9a 45 20 00    	mov    0x20459a(%rip),%edx        # 606148 <target_id>
  401bae:	be 53 41 40 00       	mov    $0x404153,%esi
  401bb3:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401bba:	00 
  401bbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc0:	e8 eb f1 ff ff       	callq  400db0 <sprintf@plt>
  401bc5:	83 3d 9c 4d 20 00 00 	cmpl   $0x0,0x204d9c(%rip)        # 606968 <notify>
  401bcc:	74 78                	je     401c46 <notify_server+0x11a>
  401bce:	85 db                	test   %ebx,%ebx
  401bd0:	74 68                	je     401c3a <notify_server+0x10e>
  401bd2:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401bd7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401bdd:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401be4:	00 
  401be5:	48 8b 15 64 45 20 00 	mov    0x204564(%rip),%rdx        # 606150 <lab>
  401bec:	48 8b 35 65 45 20 00 	mov    0x204565(%rip),%rsi        # 606158 <course>
  401bf3:	48 8b 3d 46 45 20 00 	mov    0x204546(%rip),%rdi        # 606140 <user_id>
  401bfa:	e8 94 0f 00 00       	callq  402b93 <driver_post>
  401bff:	85 c0                	test   %eax,%eax
  401c01:	79 1e                	jns    401c21 <notify_server+0xf5>
  401c03:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401c08:	bf 6f 41 40 00       	mov    $0x40416f,%edi
  401c0d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c12:	e8 49 f0 ff ff       	callq  400c60 <printf@plt>
  401c17:	bf 01 00 00 00       	mov    $0x1,%edi
  401c1c:	e8 9f f1 ff ff       	callq  400dc0 <exit@plt>
  401c21:	bf 98 42 40 00       	mov    $0x404298,%edi
  401c26:	e8 05 f0 ff ff       	callq  400c30 <puts@plt>
  401c2b:	bf 7b 41 40 00       	mov    $0x40417b,%edi
  401c30:	e8 fb ef ff ff       	callq  400c30 <puts@plt>
  401c35:	e9 85 00 00 00       	jmpq   401cbf <notify_server+0x193>
  401c3a:	bf 85 41 40 00       	mov    $0x404185,%edi
  401c3f:	e8 ec ef ff ff       	callq  400c30 <puts@plt>
  401c44:	eb 79                	jmp    401cbf <notify_server+0x193>
  401c46:	85 db                	test   %ebx,%ebx
  401c48:	74 08                	je     401c52 <notify_server+0x126>
  401c4a:	be 49 41 40 00       	mov    $0x404149,%esi
  401c4f:	90                   	nop
  401c50:	eb 05                	jmp    401c57 <notify_server+0x12b>
  401c52:	be 4e 41 40 00       	mov    $0x40414e,%esi
  401c57:	bf d0 42 40 00       	mov    $0x4042d0,%edi
  401c5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c61:	e8 fa ef ff ff       	callq  400c60 <printf@plt>
  401c66:	48 8b 35 d3 44 20 00 	mov    0x2044d3(%rip),%rsi        # 606140 <user_id>
  401c6d:	bf 8c 41 40 00       	mov    $0x40418c,%edi
  401c72:	b8 00 00 00 00       	mov    $0x0,%eax
  401c77:	e8 e4 ef ff ff       	callq  400c60 <printf@plt>
  401c7c:	48 8b 35 d5 44 20 00 	mov    0x2044d5(%rip),%rsi        # 606158 <course>
  401c83:	bf 99 41 40 00       	mov    $0x404199,%edi
  401c88:	b8 00 00 00 00       	mov    $0x0,%eax
  401c8d:	e8 ce ef ff ff       	callq  400c60 <printf@plt>
  401c92:	48 8b 35 b7 44 20 00 	mov    0x2044b7(%rip),%rsi        # 606150 <lab>
  401c99:	bf a5 41 40 00       	mov    $0x4041a5,%edi
  401c9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca3:	e8 b8 ef ff ff       	callq  400c60 <printf@plt>
  401ca8:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401caf:	00 
  401cb0:	bf ae 41 40 00       	mov    $0x4041ae,%edi
  401cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cba:	e8 a1 ef ff ff       	callq  400c60 <printf@plt>
  401cbf:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401cc6:	5b                   	pop    %rbx
  401cc7:	f3 c3                	repz retq 

0000000000401cc9 <validate>:
  401cc9:	53                   	push   %rbx
  401cca:	89 fb                	mov    %edi,%ebx
  401ccc:	83 3d f5 4c 20 00 00 	cmpl   $0x0,0x204cf5(%rip)        # 6069c8 <is_checker>
  401cd3:	74 60                	je     401d35 <validate+0x6c>
  401cd5:	39 3d e1 4c 20 00    	cmp    %edi,0x204ce1(%rip)        # 6069bc <vlevel>
  401cdb:	74 14                	je     401cf1 <validate+0x28>
  401cdd:	bf ba 41 40 00       	mov    $0x4041ba,%edi
  401ce2:	e8 49 ef ff ff       	callq  400c30 <puts@plt>
  401ce7:	b8 00 00 00 00       	mov    $0x0,%eax
  401cec:	e8 ba fd ff ff       	callq  401aab <check_fail>
  401cf1:	8b 35 c1 4c 20 00    	mov    0x204cc1(%rip),%esi        # 6069b8 <check_level>
  401cf7:	39 fe                	cmp    %edi,%esi
  401cf9:	74 1b                	je     401d16 <validate+0x4d>
  401cfb:	89 fa                	mov    %edi,%edx
  401cfd:	bf f8 42 40 00       	mov    $0x4042f8,%edi
  401d02:	b8 00 00 00 00       	mov    $0x0,%eax
  401d07:	e8 54 ef ff ff       	callq  400c60 <printf@plt>
  401d0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d11:	e8 95 fd ff ff       	callq  401aab <check_fail>
  401d16:	0f be 35 cb 58 20 00 	movsbl 0x2058cb(%rip),%esi        # 6075e8 <target_prefix>
  401d1d:	b9 e0 69 60 00       	mov    $0x6069e0,%ecx
  401d22:	89 fa                	mov    %edi,%edx
  401d24:	bf d8 41 40 00       	mov    $0x4041d8,%edi
  401d29:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2e:	e8 2d ef ff ff       	callq  400c60 <printf@plt>
  401d33:	eb 44                	jmp    401d79 <validate+0xb0>
  401d35:	39 3d 81 4c 20 00    	cmp    %edi,0x204c81(%rip)        # 6069bc <vlevel>
  401d3b:	74 18                	je     401d55 <validate+0x8c>
  401d3d:	bf ba 41 40 00       	mov    $0x4041ba,%edi
  401d42:	e8 e9 ee ff ff       	callq  400c30 <puts@plt>
  401d47:	89 de                	mov    %ebx,%esi
  401d49:	bf 00 00 00 00       	mov    $0x0,%edi
  401d4e:	e8 d9 fd ff ff       	callq  401b2c <notify_server>
  401d53:	eb 24                	jmp    401d79 <validate+0xb0>
  401d55:	0f be 15 8c 58 20 00 	movsbl 0x20588c(%rip),%edx        # 6075e8 <target_prefix>
  401d5c:	89 fe                	mov    %edi,%esi
  401d5e:	bf 20 43 40 00       	mov    $0x404320,%edi
  401d63:	b8 00 00 00 00       	mov    $0x0,%eax
  401d68:	e8 f3 ee ff ff       	callq  400c60 <printf@plt>
  401d6d:	89 de                	mov    %ebx,%esi
  401d6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d74:	e8 b3 fd ff ff       	callq  401b2c <notify_server>
  401d79:	5b                   	pop    %rbx
  401d7a:	c3                   	retq   

0000000000401d7b <fail>:
  401d7b:	48 83 ec 08          	sub    $0x8,%rsp
  401d7f:	83 3d 42 4c 20 00 00 	cmpl   $0x0,0x204c42(%rip)        # 6069c8 <is_checker>
  401d86:	74 0a                	je     401d92 <fail+0x17>
  401d88:	b8 00 00 00 00       	mov    $0x0,%eax
  401d8d:	e8 19 fd ff ff       	callq  401aab <check_fail>
  401d92:	89 fe                	mov    %edi,%esi
  401d94:	bf 00 00 00 00       	mov    $0x0,%edi
  401d99:	e8 8e fd ff ff       	callq  401b2c <notify_server>
  401d9e:	48 83 c4 08          	add    $0x8,%rsp
  401da2:	c3                   	retq   

0000000000401da3 <bushandler>:
  401da3:	48 83 ec 08          	sub    $0x8,%rsp
  401da7:	83 3d 1a 4c 20 00 00 	cmpl   $0x0,0x204c1a(%rip)        # 6069c8 <is_checker>
  401dae:	74 14                	je     401dc4 <bushandler+0x21>
  401db0:	bf ed 41 40 00       	mov    $0x4041ed,%edi
  401db5:	e8 76 ee ff ff       	callq  400c30 <puts@plt>
  401dba:	b8 00 00 00 00       	mov    $0x0,%eax
  401dbf:	e8 e7 fc ff ff       	callq  401aab <check_fail>
  401dc4:	bf 58 43 40 00       	mov    $0x404358,%edi
  401dc9:	e8 62 ee ff ff       	callq  400c30 <puts@plt>
  401dce:	bf f7 41 40 00       	mov    $0x4041f7,%edi
  401dd3:	e8 58 ee ff ff       	callq  400c30 <puts@plt>
  401dd8:	be 00 00 00 00       	mov    $0x0,%esi
  401ddd:	bf 00 00 00 00       	mov    $0x0,%edi
  401de2:	e8 45 fd ff ff       	callq  401b2c <notify_server>
  401de7:	bf 01 00 00 00       	mov    $0x1,%edi
  401dec:	e8 cf ef ff ff       	callq  400dc0 <exit@plt>

0000000000401df1 <seghandler>:
  401df1:	48 83 ec 08          	sub    $0x8,%rsp
  401df5:	83 3d cc 4b 20 00 00 	cmpl   $0x0,0x204bcc(%rip)        # 6069c8 <is_checker>
  401dfc:	74 14                	je     401e12 <seghandler+0x21>
  401dfe:	bf 0d 42 40 00       	mov    $0x40420d,%edi
  401e03:	e8 28 ee ff ff       	callq  400c30 <puts@plt>
  401e08:	b8 00 00 00 00       	mov    $0x0,%eax
  401e0d:	e8 99 fc ff ff       	callq  401aab <check_fail>
  401e12:	bf 78 43 40 00       	mov    $0x404378,%edi
  401e17:	e8 14 ee ff ff       	callq  400c30 <puts@plt>
  401e1c:	bf f7 41 40 00       	mov    $0x4041f7,%edi
  401e21:	e8 0a ee ff ff       	callq  400c30 <puts@plt>
  401e26:	be 00 00 00 00       	mov    $0x0,%esi
  401e2b:	bf 00 00 00 00       	mov    $0x0,%edi
  401e30:	e8 f7 fc ff ff       	callq  401b2c <notify_server>
  401e35:	bf 01 00 00 00       	mov    $0x1,%edi
  401e3a:	e8 81 ef ff ff       	callq  400dc0 <exit@plt>

0000000000401e3f <illegalhandler>:
  401e3f:	48 83 ec 08          	sub    $0x8,%rsp
  401e43:	83 3d 7e 4b 20 00 00 	cmpl   $0x0,0x204b7e(%rip)        # 6069c8 <is_checker>
  401e4a:	74 14                	je     401e60 <illegalhandler+0x21>
  401e4c:	bf 20 42 40 00       	mov    $0x404220,%edi
  401e51:	e8 da ed ff ff       	callq  400c30 <puts@plt>
  401e56:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5b:	e8 4b fc ff ff       	callq  401aab <check_fail>
  401e60:	bf a0 43 40 00       	mov    $0x4043a0,%edi
  401e65:	e8 c6 ed ff ff       	callq  400c30 <puts@plt>
  401e6a:	bf f7 41 40 00       	mov    $0x4041f7,%edi
  401e6f:	e8 bc ed ff ff       	callq  400c30 <puts@plt>
  401e74:	be 00 00 00 00       	mov    $0x0,%esi
  401e79:	bf 00 00 00 00       	mov    $0x0,%edi
  401e7e:	e8 a9 fc ff ff       	callq  401b2c <notify_server>
  401e83:	bf 01 00 00 00       	mov    $0x1,%edi
  401e88:	e8 33 ef ff ff       	callq  400dc0 <exit@plt>

0000000000401e8d <sigalrmhandler>:
  401e8d:	48 83 ec 08          	sub    $0x8,%rsp
  401e91:	83 3d 30 4b 20 00 00 	cmpl   $0x0,0x204b30(%rip)        # 6069c8 <is_checker>
  401e98:	74 14                	je     401eae <sigalrmhandler+0x21>
  401e9a:	bf 34 42 40 00       	mov    $0x404234,%edi
  401e9f:	e8 8c ed ff ff       	callq  400c30 <puts@plt>
  401ea4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea9:	e8 fd fb ff ff       	callq  401aab <check_fail>
  401eae:	be 05 00 00 00       	mov    $0x5,%esi
  401eb3:	bf d0 43 40 00       	mov    $0x4043d0,%edi
  401eb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebd:	e8 9e ed ff ff       	callq  400c60 <printf@plt>
  401ec2:	be 00 00 00 00       	mov    $0x0,%esi
  401ec7:	bf 00 00 00 00       	mov    $0x0,%edi
  401ecc:	e8 5b fc ff ff       	callq  401b2c <notify_server>
  401ed1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed6:	e8 e5 ee ff ff       	callq  400dc0 <exit@plt>

0000000000401edb <launch>:
  401edb:	55                   	push   %rbp
  401edc:	48 89 e5             	mov    %rsp,%rbp
  401edf:	48 89 fa             	mov    %rdi,%rdx
  401ee2:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401ee6:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401eea:	48 29 c4             	sub    %rax,%rsp
  401eed:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401ef2:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401ef6:	be f4 00 00 00       	mov    $0xf4,%esi
  401efb:	e8 70 ed ff ff       	callq  400c70 <memset@plt>
  401f00:	48 8b 05 79 4a 20 00 	mov    0x204a79(%rip),%rax        # 606980 <stdin@@GLIBC_2.2.5>
  401f07:	48 39 05 a2 4a 20 00 	cmp    %rax,0x204aa2(%rip)        # 6069b0 <infile>
  401f0e:	75 0f                	jne    401f1f <launch+0x44>
  401f10:	bf 3c 42 40 00       	mov    $0x40423c,%edi
  401f15:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1a:	e8 41 ed ff ff       	callq  400c60 <printf@plt>
  401f1f:	c7 05 93 4a 20 00 00 	movl   $0x0,0x204a93(%rip)        # 6069bc <vlevel>
  401f26:	00 00 00 
  401f29:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2e:	e8 c7 f9 ff ff       	callq  4018fa <test>
  401f33:	83 3d 8e 4a 20 00 00 	cmpl   $0x0,0x204a8e(%rip)        # 6069c8 <is_checker>
  401f3a:	74 14                	je     401f50 <launch+0x75>
  401f3c:	bf 49 42 40 00       	mov    $0x404249,%edi
  401f41:	e8 ea ec ff ff       	callq  400c30 <puts@plt>
  401f46:	b8 00 00 00 00       	mov    $0x0,%eax
  401f4b:	e8 5b fb ff ff       	callq  401aab <check_fail>
  401f50:	bf 54 42 40 00       	mov    $0x404254,%edi
  401f55:	e8 d6 ec ff ff       	callq  400c30 <puts@plt>
  401f5a:	c9                   	leaveq 
  401f5b:	c3                   	retq   

0000000000401f5c <stable_launch>:
  401f5c:	53                   	push   %rbx
  401f5d:	48 89 3d 44 4a 20 00 	mov    %rdi,0x204a44(%rip)        # 6069a8 <global_offset>
  401f64:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401f6a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f70:	b9 32 01 00 00       	mov    $0x132,%ecx
  401f75:	ba 07 00 00 00       	mov    $0x7,%edx
  401f7a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f7f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401f84:	e8 c7 ec ff ff       	callq  400c50 <mmap@plt>
  401f89:	48 89 c3             	mov    %rax,%rbx
  401f8c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401f92:	74 32                	je     401fc6 <stable_launch+0x6a>
  401f94:	be 00 00 10 00       	mov    $0x100000,%esi
  401f99:	48 89 c7             	mov    %rax,%rdi
  401f9c:	e8 af ed ff ff       	callq  400d50 <munmap@plt>
  401fa1:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401fa6:	be 08 44 40 00       	mov    $0x404408,%esi
  401fab:	48 8b 3d de 49 20 00 	mov    0x2049de(%rip),%rdi        # 606990 <stderr@@GLIBC_2.2.5>
  401fb2:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb7:	e8 24 ed ff ff       	callq  400ce0 <fprintf@plt>
  401fbc:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc1:	e8 fa ed ff ff       	callq  400dc0 <exit@plt>
  401fc6:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401fcd:	48 89 15 1c 56 20 00 	mov    %rdx,0x20561c(%rip)        # 6075f0 <stack_top>
  401fd4:	48 89 e0             	mov    %rsp,%rax
  401fd7:	48 89 d4             	mov    %rdx,%rsp
  401fda:	48 89 c2             	mov    %rax,%rdx
  401fdd:	48 89 15 bc 49 20 00 	mov    %rdx,0x2049bc(%rip)        # 6069a0 <global_save_stack>
  401fe4:	48 8b 3d bd 49 20 00 	mov    0x2049bd(%rip),%rdi        # 6069a8 <global_offset>
  401feb:	e8 eb fe ff ff       	callq  401edb <launch>
  401ff0:	48 8b 05 a9 49 20 00 	mov    0x2049a9(%rip),%rax        # 6069a0 <global_save_stack>
  401ff7:	48 89 c4             	mov    %rax,%rsp
  401ffa:	be 00 00 10 00       	mov    $0x100000,%esi
  401fff:	48 89 df             	mov    %rbx,%rdi
  402002:	e8 49 ed ff ff       	callq  400d50 <munmap@plt>
  402007:	5b                   	pop    %rbx
  402008:	c3                   	retq   
  402009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402010 <rio_readinitb>:
  402010:	89 37                	mov    %esi,(%rdi)
  402012:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402019:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40201d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402021:	c3                   	retq   

0000000000402022 <sigalrm_handler>:
  402022:	48 83 ec 08          	sub    $0x8,%rsp
  402026:	ba 00 00 00 00       	mov    $0x0,%edx
  40202b:	be 40 44 40 00       	mov    $0x404440,%esi
  402030:	48 8b 3d 59 49 20 00 	mov    0x204959(%rip),%rdi        # 606990 <stderr@@GLIBC_2.2.5>
  402037:	b8 00 00 00 00       	mov    $0x0,%eax
  40203c:	e8 9f ec ff ff       	callq  400ce0 <fprintf@plt>
  402041:	bf 01 00 00 00       	mov    $0x1,%edi
  402046:	e8 75 ed ff ff       	callq  400dc0 <exit@plt>

000000000040204b <urlencode>:
  40204b:	41 54                	push   %r12
  40204d:	55                   	push   %rbp
  40204e:	53                   	push   %rbx
  40204f:	48 83 ec 10          	sub    $0x10,%rsp
  402053:	48 89 fb             	mov    %rdi,%rbx
  402056:	48 89 f5             	mov    %rsi,%rbp
  402059:	b8 00 00 00 00       	mov    $0x0,%eax
  40205e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402065:	f2 ae                	repnz scas %es:(%rdi),%al
  402067:	48 f7 d1             	not    %rcx
  40206a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40206d:	e9 93 00 00 00       	jmpq   402105 <urlencode+0xba>
  402072:	0f b6 13             	movzbl (%rbx),%edx
  402075:	80 fa 2a             	cmp    $0x2a,%dl
  402078:	0f 94 c1             	sete   %cl
  40207b:	80 fa 2d             	cmp    $0x2d,%dl
  40207e:	0f 94 c0             	sete   %al
  402081:	08 c1                	or     %al,%cl
  402083:	75 1f                	jne    4020a4 <urlencode+0x59>
  402085:	80 fa 2e             	cmp    $0x2e,%dl
  402088:	74 1a                	je     4020a4 <urlencode+0x59>
  40208a:	80 fa 5f             	cmp    $0x5f,%dl
  40208d:	74 15                	je     4020a4 <urlencode+0x59>
  40208f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402092:	3c 09                	cmp    $0x9,%al
  402094:	76 0e                	jbe    4020a4 <urlencode+0x59>
  402096:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402099:	3c 19                	cmp    $0x19,%al
  40209b:	76 07                	jbe    4020a4 <urlencode+0x59>
  40209d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  4020a0:	3c 19                	cmp    $0x19,%al
  4020a2:	77 09                	ja     4020ad <urlencode+0x62>
  4020a4:	88 55 00             	mov    %dl,0x0(%rbp)
  4020a7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020ab:	eb 51                	jmp    4020fe <urlencode+0xb3>
  4020ad:	80 fa 20             	cmp    $0x20,%dl
  4020b0:	75 0a                	jne    4020bc <urlencode+0x71>
  4020b2:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4020b6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020ba:	eb 42                	jmp    4020fe <urlencode+0xb3>
  4020bc:	8d 42 e0             	lea    -0x20(%rdx),%eax
  4020bf:	3c 5f                	cmp    $0x5f,%al
  4020c1:	0f 96 c1             	setbe  %cl
  4020c4:	80 fa 09             	cmp    $0x9,%dl
  4020c7:	0f 94 c0             	sete   %al
  4020ca:	08 c1                	or     %al,%cl
  4020cc:	74 45                	je     402113 <urlencode+0xc8>
  4020ce:	0f b6 d2             	movzbl %dl,%edx
  4020d1:	be d8 44 40 00       	mov    $0x4044d8,%esi
  4020d6:	48 89 e7             	mov    %rsp,%rdi
  4020d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020de:	e8 cd ec ff ff       	callq  400db0 <sprintf@plt>
  4020e3:	0f b6 04 24          	movzbl (%rsp),%eax
  4020e7:	88 45 00             	mov    %al,0x0(%rbp)
  4020ea:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4020ef:	88 45 01             	mov    %al,0x1(%rbp)
  4020f2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4020f7:	88 45 02             	mov    %al,0x2(%rbp)
  4020fa:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4020fe:	48 83 c3 01          	add    $0x1,%rbx
  402102:	44 89 e0             	mov    %r12d,%eax
  402105:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402109:	85 c0                	test   %eax,%eax
  40210b:	0f 85 61 ff ff ff    	jne    402072 <urlencode+0x27>
  402111:	eb 05                	jmp    402118 <urlencode+0xcd>
  402113:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402118:	48 83 c4 10          	add    $0x10,%rsp
  40211c:	5b                   	pop    %rbx
  40211d:	5d                   	pop    %rbp
  40211e:	41 5c                	pop    %r12
  402120:	c3                   	retq   

0000000000402121 <rio_writen>:
  402121:	41 55                	push   %r13
  402123:	41 54                	push   %r12
  402125:	55                   	push   %rbp
  402126:	53                   	push   %rbx
  402127:	48 83 ec 08          	sub    $0x8,%rsp
  40212b:	41 89 fc             	mov    %edi,%r12d
  40212e:	48 89 f5             	mov    %rsi,%rbp
  402131:	49 89 d5             	mov    %rdx,%r13
  402134:	48 89 d3             	mov    %rdx,%rbx
  402137:	eb 28                	jmp    402161 <rio_writen+0x40>
  402139:	48 89 da             	mov    %rbx,%rdx
  40213c:	48 89 ee             	mov    %rbp,%rsi
  40213f:	44 89 e7             	mov    %r12d,%edi
  402142:	e8 f9 ea ff ff       	callq  400c40 <write@plt>
  402147:	48 85 c0             	test   %rax,%rax
  40214a:	7f 0f                	jg     40215b <rio_writen+0x3a>
  40214c:	e8 9f ea ff ff       	callq  400bf0 <__errno_location@plt>
  402151:	83 38 04             	cmpl   $0x4,(%rax)
  402154:	75 15                	jne    40216b <rio_writen+0x4a>
  402156:	b8 00 00 00 00       	mov    $0x0,%eax
  40215b:	48 29 c3             	sub    %rax,%rbx
  40215e:	48 01 c5             	add    %rax,%rbp
  402161:	48 85 db             	test   %rbx,%rbx
  402164:	75 d3                	jne    402139 <rio_writen+0x18>
  402166:	4c 89 e8             	mov    %r13,%rax
  402169:	eb 07                	jmp    402172 <rio_writen+0x51>
  40216b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402172:	48 83 c4 08          	add    $0x8,%rsp
  402176:	5b                   	pop    %rbx
  402177:	5d                   	pop    %rbp
  402178:	41 5c                	pop    %r12
  40217a:	41 5d                	pop    %r13
  40217c:	c3                   	retq   

000000000040217d <rio_read>:
  40217d:	41 56                	push   %r14
  40217f:	41 55                	push   %r13
  402181:	41 54                	push   %r12
  402183:	55                   	push   %rbp
  402184:	53                   	push   %rbx
  402185:	48 89 fb             	mov    %rdi,%rbx
  402188:	49 89 f6             	mov    %rsi,%r14
  40218b:	49 89 d5             	mov    %rdx,%r13
  40218e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402192:	eb 2a                	jmp    4021be <rio_read+0x41>
  402194:	ba 00 20 00 00       	mov    $0x2000,%edx
  402199:	4c 89 e6             	mov    %r12,%rsi
  40219c:	8b 3b                	mov    (%rbx),%edi
  40219e:	e8 fd ea ff ff       	callq  400ca0 <read@plt>
  4021a3:	89 43 04             	mov    %eax,0x4(%rbx)
  4021a6:	85 c0                	test   %eax,%eax
  4021a8:	79 0c                	jns    4021b6 <rio_read+0x39>
  4021aa:	e8 41 ea ff ff       	callq  400bf0 <__errno_location@plt>
  4021af:	83 38 04             	cmpl   $0x4,(%rax)
  4021b2:	74 0a                	je     4021be <rio_read+0x41>
  4021b4:	eb 37                	jmp    4021ed <rio_read+0x70>
  4021b6:	85 c0                	test   %eax,%eax
  4021b8:	74 3c                	je     4021f6 <rio_read+0x79>
  4021ba:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4021be:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021c1:	85 ed                	test   %ebp,%ebp
  4021c3:	7e cf                	jle    402194 <rio_read+0x17>
  4021c5:	89 e8                	mov    %ebp,%eax
  4021c7:	4c 39 e8             	cmp    %r13,%rax
  4021ca:	72 03                	jb     4021cf <rio_read+0x52>
  4021cc:	44 89 ed             	mov    %r13d,%ebp
  4021cf:	4c 63 e5             	movslq %ebp,%r12
  4021d2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4021d6:	4c 89 e2             	mov    %r12,%rdx
  4021d9:	4c 89 f7             	mov    %r14,%rdi
  4021dc:	e8 1f eb ff ff       	callq  400d00 <memcpy@plt>
  4021e1:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021e5:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021e8:	4c 89 e0             	mov    %r12,%rax
  4021eb:	eb 0e                	jmp    4021fb <rio_read+0x7e>
  4021ed:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021f4:	eb 05                	jmp    4021fb <rio_read+0x7e>
  4021f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021fb:	5b                   	pop    %rbx
  4021fc:	5d                   	pop    %rbp
  4021fd:	41 5c                	pop    %r12
  4021ff:	41 5d                	pop    %r13
  402201:	41 5e                	pop    %r14
  402203:	c3                   	retq   

0000000000402204 <rio_readlineb>:
  402204:	41 55                	push   %r13
  402206:	41 54                	push   %r12
  402208:	55                   	push   %rbp
  402209:	53                   	push   %rbx
  40220a:	48 83 ec 18          	sub    $0x18,%rsp
  40220e:	49 89 fd             	mov    %rdi,%r13
  402211:	48 89 f5             	mov    %rsi,%rbp
  402214:	49 89 d4             	mov    %rdx,%r12
  402217:	bb 01 00 00 00       	mov    $0x1,%ebx
  40221c:	eb 3d                	jmp    40225b <rio_readlineb+0x57>
  40221e:	ba 01 00 00 00       	mov    $0x1,%edx
  402223:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402228:	4c 89 ef             	mov    %r13,%rdi
  40222b:	e8 4d ff ff ff       	callq  40217d <rio_read>
  402230:	83 f8 01             	cmp    $0x1,%eax
  402233:	75 12                	jne    402247 <rio_readlineb+0x43>
  402235:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402239:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40223e:	88 45 00             	mov    %al,0x0(%rbp)
  402241:	3c 0a                	cmp    $0xa,%al
  402243:	75 0f                	jne    402254 <rio_readlineb+0x50>
  402245:	eb 1b                	jmp    402262 <rio_readlineb+0x5e>
  402247:	85 c0                	test   %eax,%eax
  402249:	75 23                	jne    40226e <rio_readlineb+0x6a>
  40224b:	48 83 fb 01          	cmp    $0x1,%rbx
  40224f:	90                   	nop
  402250:	75 13                	jne    402265 <rio_readlineb+0x61>
  402252:	eb 23                	jmp    402277 <rio_readlineb+0x73>
  402254:	48 83 c3 01          	add    $0x1,%rbx
  402258:	48 89 d5             	mov    %rdx,%rbp
  40225b:	4c 39 e3             	cmp    %r12,%rbx
  40225e:	72 be                	jb     40221e <rio_readlineb+0x1a>
  402260:	eb 03                	jmp    402265 <rio_readlineb+0x61>
  402262:	48 89 d5             	mov    %rdx,%rbp
  402265:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402269:	48 89 d8             	mov    %rbx,%rax
  40226c:	eb 0e                	jmp    40227c <rio_readlineb+0x78>
  40226e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402275:	eb 05                	jmp    40227c <rio_readlineb+0x78>
  402277:	b8 00 00 00 00       	mov    $0x0,%eax
  40227c:	48 83 c4 18          	add    $0x18,%rsp
  402280:	5b                   	pop    %rbx
  402281:	5d                   	pop    %rbp
  402282:	41 5c                	pop    %r12
  402284:	41 5d                	pop    %r13
  402286:	c3                   	retq   

0000000000402287 <submitr>:
  402287:	41 57                	push   %r15
  402289:	41 56                	push   %r14
  40228b:	41 55                	push   %r13
  40228d:	41 54                	push   %r12
  40228f:	55                   	push   %rbp
  402290:	53                   	push   %rbx
  402291:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  402298:	49 89 fc             	mov    %rdi,%r12
  40229b:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40229f:	49 89 d7             	mov    %rdx,%r15
  4022a2:	49 89 ce             	mov    %rcx,%r14
  4022a5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4022aa:	4d 89 cd             	mov    %r9,%r13
  4022ad:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  4022b4:	00 
  4022b5:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  4022bc:	00 00 00 00 
  4022c0:	ba 00 00 00 00       	mov    $0x0,%edx
  4022c5:	be 01 00 00 00       	mov    $0x1,%esi
  4022ca:	bf 02 00 00 00       	mov    $0x2,%edi
  4022cf:	e8 0c eb ff ff       	callq  400de0 <socket@plt>
  4022d4:	89 c5                	mov    %eax,%ebp
  4022d6:	85 c0                	test   %eax,%eax
  4022d8:	79 4e                	jns    402328 <submitr+0xa1>
  4022da:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4022e1:	3a 20 43 
  4022e4:	48 89 03             	mov    %rax,(%rbx)
  4022e7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4022ee:	20 75 6e 
  4022f1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4022f5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022fc:	74 6f 20 
  4022ff:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402303:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40230a:	65 20 73 
  40230d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402311:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402318:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40231e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402323:	e9 68 06 00 00       	jmpq   402990 <submitr+0x709>
  402328:	4c 89 e7             	mov    %r12,%rdi
  40232b:	e8 a0 e9 ff ff       	callq  400cd0 <gethostbyname@plt>
  402330:	48 85 c0             	test   %rax,%rax
  402333:	75 67                	jne    40239c <submitr+0x115>
  402335:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40233c:	3a 20 44 
  40233f:	48 89 03             	mov    %rax,(%rbx)
  402342:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402349:	20 75 6e 
  40234c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402350:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402357:	74 6f 20 
  40235a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40235e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402365:	76 65 20 
  402368:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40236c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402373:	72 20 61 
  402376:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40237a:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402381:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402387:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40238b:	89 ef                	mov    %ebp,%edi
  40238d:	e8 fe e8 ff ff       	callq  400c90 <close@plt>
  402392:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402397:	e9 f4 05 00 00       	jmpq   402990 <submitr+0x709>
  40239c:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  4023a3:	00 00 00 00 00 
  4023a8:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  4023af:	00 00 00 00 00 
  4023b4:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  4023bb:	00 02 00 
  4023be:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4023c2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4023c6:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  4023cd:	00 
  4023ce:	48 8b 39             	mov    (%rcx),%rdi
  4023d1:	e8 8a e9 ff ff       	callq  400d60 <bcopy@plt>
  4023d6:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  4023db:	66 c1 c8 08          	ror    $0x8,%ax
  4023df:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  4023e6:	00 
  4023e7:	ba 10 00 00 00       	mov    $0x10,%edx
  4023ec:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  4023f3:	00 
  4023f4:	89 ef                	mov    %ebp,%edi
  4023f6:	e8 d5 e9 ff ff       	callq  400dd0 <connect@plt>
  4023fb:	85 c0                	test   %eax,%eax
  4023fd:	79 59                	jns    402458 <submitr+0x1d1>
  4023ff:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402406:	3a 20 55 
  402409:	48 89 03             	mov    %rax,(%rbx)
  40240c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402413:	20 74 6f 
  402416:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40241a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402421:	65 63 74 
  402424:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402428:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40242f:	68 65 20 
  402432:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402436:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40243d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402443:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402447:	89 ef                	mov    %ebp,%edi
  402449:	e8 42 e8 ff ff       	callq  400c90 <close@plt>
  40244e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402453:	e9 38 05 00 00       	jmpq   402990 <submitr+0x709>
  402458:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40245f:	4c 89 ef             	mov    %r13,%rdi
  402462:	b8 00 00 00 00       	mov    $0x0,%eax
  402467:	48 89 d1             	mov    %rdx,%rcx
  40246a:	f2 ae                	repnz scas %es:(%rdi),%al
  40246c:	48 f7 d1             	not    %rcx
  40246f:	48 89 ce             	mov    %rcx,%rsi
  402472:	4c 89 ff             	mov    %r15,%rdi
  402475:	48 89 d1             	mov    %rdx,%rcx
  402478:	f2 ae                	repnz scas %es:(%rdi),%al
  40247a:	48 f7 d1             	not    %rcx
  40247d:	49 89 c8             	mov    %rcx,%r8
  402480:	4c 89 f7             	mov    %r14,%rdi
  402483:	48 89 d1             	mov    %rdx,%rcx
  402486:	f2 ae                	repnz scas %es:(%rdi),%al
  402488:	49 29 c8             	sub    %rcx,%r8
  40248b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402490:	48 89 d1             	mov    %rdx,%rcx
  402493:	f2 ae                	repnz scas %es:(%rdi),%al
  402495:	49 29 c8             	sub    %rcx,%r8
  402498:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  40249d:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4024a2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4024a8:	76 72                	jbe    40251c <submitr+0x295>
  4024aa:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024b1:	3a 20 52 
  4024b4:	48 89 03             	mov    %rax,(%rbx)
  4024b7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024be:	20 73 74 
  4024c1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024c5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4024cc:	74 6f 6f 
  4024cf:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024d3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4024da:	65 2e 20 
  4024dd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024e1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4024e8:	61 73 65 
  4024eb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024ef:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4024f6:	49 54 52 
  4024f9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024fd:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402504:	55 46 00 
  402507:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40250b:	89 ef                	mov    %ebp,%edi
  40250d:	e8 7e e7 ff ff       	callq  400c90 <close@plt>
  402512:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402517:	e9 74 04 00 00       	jmpq   402990 <submitr+0x709>
  40251c:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  402523:	00 
  402524:	b9 00 04 00 00       	mov    $0x400,%ecx
  402529:	b8 00 00 00 00       	mov    $0x0,%eax
  40252e:	48 89 f7             	mov    %rsi,%rdi
  402531:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402534:	4c 89 ef             	mov    %r13,%rdi
  402537:	e8 0f fb ff ff       	callq  40204b <urlencode>
  40253c:	85 c0                	test   %eax,%eax
  40253e:	0f 89 8a 00 00 00    	jns    4025ce <submitr+0x347>
  402544:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40254b:	3a 20 52 
  40254e:	48 89 03             	mov    %rax,(%rbx)
  402551:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402558:	20 73 74 
  40255b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40255f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402566:	63 6f 6e 
  402569:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40256d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402574:	20 61 6e 
  402577:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40257b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402582:	67 61 6c 
  402585:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402589:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402590:	6e 70 72 
  402593:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402597:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40259e:	6c 65 20 
  4025a1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4025a5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4025ac:	63 74 65 
  4025af:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4025b3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4025b9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4025bd:	89 ef                	mov    %ebp,%edi
  4025bf:	e8 cc e6 ff ff       	callq  400c90 <close@plt>
  4025c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025c9:	e9 c2 03 00 00       	jmpq   402990 <submitr+0x709>
  4025ce:	4d 89 e1             	mov    %r12,%r9
  4025d1:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  4025d8:	00 
  4025d9:	4c 89 f9             	mov    %r15,%rcx
  4025dc:	4c 89 f2             	mov    %r14,%rdx
  4025df:	be 68 44 40 00       	mov    $0x404468,%esi
  4025e4:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4025eb:	00 
  4025ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f1:	e8 ba e7 ff ff       	callq  400db0 <sprintf@plt>
  4025f6:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4025fd:	00 
  4025fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402603:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40260a:	f2 ae                	repnz scas %es:(%rdi),%al
  40260c:	48 f7 d1             	not    %rcx
  40260f:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402613:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40261a:	00 
  40261b:	89 ef                	mov    %ebp,%edi
  40261d:	e8 ff fa ff ff       	callq  402121 <rio_writen>
  402622:	48 85 c0             	test   %rax,%rax
  402625:	79 6e                	jns    402695 <submitr+0x40e>
  402627:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40262e:	3a 20 43 
  402631:	48 89 03             	mov    %rax,(%rbx)
  402634:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40263b:	20 75 6e 
  40263e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402642:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402649:	74 6f 20 
  40264c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402650:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402657:	20 74 6f 
  40265a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40265e:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402665:	72 65 73 
  402668:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40266c:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402673:	65 72 76 
  402676:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40267a:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402680:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402684:	89 ef                	mov    %ebp,%edi
  402686:	e8 05 e6 ff ff       	callq  400c90 <close@plt>
  40268b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402690:	e9 fb 02 00 00       	jmpq   402990 <submitr+0x709>
  402695:	89 ee                	mov    %ebp,%esi
  402697:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  40269e:	00 
  40269f:	e8 6c f9 ff ff       	callq  402010 <rio_readinitb>
  4026a4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026a9:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4026b0:	00 
  4026b1:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4026b8:	00 
  4026b9:	e8 46 fb ff ff       	callq  402204 <rio_readlineb>
  4026be:	48 85 c0             	test   %rax,%rax
  4026c1:	7f 7d                	jg     402740 <submitr+0x4b9>
  4026c3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026ca:	3a 20 43 
  4026cd:	48 89 03             	mov    %rax,(%rbx)
  4026d0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026d7:	20 75 6e 
  4026da:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026de:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026e5:	74 6f 20 
  4026e8:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026ec:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4026f3:	66 69 72 
  4026f6:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026fa:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402701:	61 64 65 
  402704:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402708:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40270f:	6d 20 72 
  402712:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402716:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40271d:	20 73 65 
  402720:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402724:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40272b:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40272f:	89 ef                	mov    %ebp,%edi
  402731:	e8 5a e5 ff ff       	callq  400c90 <close@plt>
  402736:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40273b:	e9 50 02 00 00       	jmpq   402990 <submitr+0x709>
  402740:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402745:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  40274c:	00 
  40274d:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  402754:	00 
  402755:	be df 44 40 00       	mov    $0x4044df,%esi
  40275a:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402761:	00 
  402762:	b8 00 00 00 00       	mov    $0x0,%eax
  402767:	e8 d4 e5 ff ff       	callq  400d40 <__isoc99_sscanf@plt>
  40276c:	e9 98 00 00 00       	jmpq   402809 <submitr+0x582>
  402771:	ba 00 20 00 00       	mov    $0x2000,%edx
  402776:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40277d:	00 
  40277e:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402785:	00 
  402786:	e8 79 fa ff ff       	callq  402204 <rio_readlineb>
  40278b:	48 85 c0             	test   %rax,%rax
  40278e:	7f 79                	jg     402809 <submitr+0x582>
  402790:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402797:	3a 20 43 
  40279a:	48 89 03             	mov    %rax,(%rbx)
  40279d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027a4:	20 75 6e 
  4027a7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027ab:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027b2:	74 6f 20 
  4027b5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027b9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4027c0:	68 65 61 
  4027c3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027c7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4027ce:	66 72 6f 
  4027d1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027d5:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4027dc:	20 72 65 
  4027df:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027e3:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4027ea:	73 65 72 
  4027ed:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027f1:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4027f8:	89 ef                	mov    %ebp,%edi
  4027fa:	e8 91 e4 ff ff       	callq  400c90 <close@plt>
  4027ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402804:	e9 87 01 00 00       	jmpq   402990 <submitr+0x709>
  402809:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  402810:	00 
  402811:	83 e8 0d             	sub    $0xd,%eax
  402814:	75 15                	jne    40282b <submitr+0x5a4>
  402816:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  40281d:	00 
  40281e:	83 e8 0a             	sub    $0xa,%eax
  402821:	75 08                	jne    40282b <submitr+0x5a4>
  402823:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  40282a:	00 
  40282b:	85 c0                	test   %eax,%eax
  40282d:	0f 85 3e ff ff ff    	jne    402771 <submitr+0x4ea>
  402833:	ba 00 20 00 00       	mov    $0x2000,%edx
  402838:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40283f:	00 
  402840:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402847:	00 
  402848:	e8 b7 f9 ff ff       	callq  402204 <rio_readlineb>
  40284d:	48 85 c0             	test   %rax,%rax
  402850:	0f 8f 83 00 00 00    	jg     4028d9 <submitr+0x652>
  402856:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40285d:	3a 20 43 
  402860:	48 89 03             	mov    %rax,(%rbx)
  402863:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40286a:	20 75 6e 
  40286d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402871:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402878:	74 6f 20 
  40287b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40287f:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402886:	73 74 61 
  402889:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40288d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402894:	65 73 73 
  402897:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40289b:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4028a2:	72 6f 6d 
  4028a5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028a9:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4028b0:	6c 74 20 
  4028b3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028b7:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4028be:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4028c4:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4028c8:	89 ef                	mov    %ebp,%edi
  4028ca:	e8 c1 e3 ff ff       	callq  400c90 <close@plt>
  4028cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028d4:	e9 b7 00 00 00       	jmpq   402990 <submitr+0x709>
  4028d9:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  4028e0:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4028e6:	74 28                	je     402910 <submitr+0x689>
  4028e8:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  4028ed:	be a8 44 40 00       	mov    $0x4044a8,%esi
  4028f2:	48 89 df             	mov    %rbx,%rdi
  4028f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4028fa:	e8 b1 e4 ff ff       	callq  400db0 <sprintf@plt>
  4028ff:	89 ef                	mov    %ebp,%edi
  402901:	e8 8a e3 ff ff       	callq  400c90 <close@plt>
  402906:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40290b:	e9 80 00 00 00       	jmpq   402990 <submitr+0x709>
  402910:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402917:	00 
  402918:	48 89 df             	mov    %rbx,%rdi
  40291b:	e8 00 e3 ff ff       	callq  400c20 <strcpy@plt>
  402920:	89 ef                	mov    %ebp,%edi
  402922:	e8 69 e3 ff ff       	callq  400c90 <close@plt>
  402927:	0f b6 03             	movzbl (%rbx),%eax
  40292a:	83 e8 4f             	sub    $0x4f,%eax
  40292d:	75 18                	jne    402947 <submitr+0x6c0>
  40292f:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  402933:	83 ea 4b             	sub    $0x4b,%edx
  402936:	75 11                	jne    402949 <submitr+0x6c2>
  402938:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40293c:	83 ea 0a             	sub    $0xa,%edx
  40293f:	75 08                	jne    402949 <submitr+0x6c2>
  402941:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  402945:	eb 02                	jmp    402949 <submitr+0x6c2>
  402947:	89 c2                	mov    %eax,%edx
  402949:	85 d2                	test   %edx,%edx
  40294b:	74 30                	je     40297d <submitr+0x6f6>
  40294d:	bf f0 44 40 00       	mov    $0x4044f0,%edi
  402952:	b9 05 00 00 00       	mov    $0x5,%ecx
  402957:	48 89 de             	mov    %rbx,%rsi
  40295a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40295c:	0f 97 c1             	seta   %cl
  40295f:	0f 92 c2             	setb   %dl
  402962:	38 d1                	cmp    %dl,%cl
  402964:	74 1e                	je     402984 <submitr+0x6fd>
  402966:	85 c0                	test   %eax,%eax
  402968:	75 0d                	jne    402977 <submitr+0x6f0>
  40296a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  40296e:	83 e8 4b             	sub    $0x4b,%eax
  402971:	75 04                	jne    402977 <submitr+0x6f0>
  402973:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402977:	85 c0                	test   %eax,%eax
  402979:	75 10                	jne    40298b <submitr+0x704>
  40297b:	eb 13                	jmp    402990 <submitr+0x709>
  40297d:	b8 00 00 00 00       	mov    $0x0,%eax
  402982:	eb 0c                	jmp    402990 <submitr+0x709>
  402984:	b8 00 00 00 00       	mov    $0x0,%eax
  402989:	eb 05                	jmp    402990 <submitr+0x709>
  40298b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402990:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  402997:	5b                   	pop    %rbx
  402998:	5d                   	pop    %rbp
  402999:	41 5c                	pop    %r12
  40299b:	41 5d                	pop    %r13
  40299d:	41 5e                	pop    %r14
  40299f:	41 5f                	pop    %r15
  4029a1:	c3                   	retq   

00000000004029a2 <init_timeout>:
  4029a2:	53                   	push   %rbx
  4029a3:	89 fb                	mov    %edi,%ebx
  4029a5:	85 ff                	test   %edi,%edi
  4029a7:	74 1f                	je     4029c8 <init_timeout+0x26>
  4029a9:	85 ff                	test   %edi,%edi
  4029ab:	79 05                	jns    4029b2 <init_timeout+0x10>
  4029ad:	bb 00 00 00 00       	mov    $0x0,%ebx
  4029b2:	be 22 20 40 00       	mov    $0x402022,%esi
  4029b7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4029bc:	e8 ff e2 ff ff       	callq  400cc0 <signal@plt>
  4029c1:	89 df                	mov    %ebx,%edi
  4029c3:	e8 b8 e2 ff ff       	callq  400c80 <alarm@plt>
  4029c8:	5b                   	pop    %rbx
  4029c9:	c3                   	retq   

00000000004029ca <init_driver>:
  4029ca:	55                   	push   %rbp
  4029cb:	53                   	push   %rbx
  4029cc:	48 83 ec 18          	sub    $0x18,%rsp
  4029d0:	48 89 fd             	mov    %rdi,%rbp
  4029d3:	be 01 00 00 00       	mov    $0x1,%esi
  4029d8:	bf 0d 00 00 00       	mov    $0xd,%edi
  4029dd:	e8 de e2 ff ff       	callq  400cc0 <signal@plt>
  4029e2:	be 01 00 00 00       	mov    $0x1,%esi
  4029e7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029ec:	e8 cf e2 ff ff       	callq  400cc0 <signal@plt>
  4029f1:	be 01 00 00 00       	mov    $0x1,%esi
  4029f6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029fb:	e8 c0 e2 ff ff       	callq  400cc0 <signal@plt>
  402a00:	ba 00 00 00 00       	mov    $0x0,%edx
  402a05:	be 01 00 00 00       	mov    $0x1,%esi
  402a0a:	bf 02 00 00 00       	mov    $0x2,%edi
  402a0f:	e8 cc e3 ff ff       	callq  400de0 <socket@plt>
  402a14:	89 c3                	mov    %eax,%ebx
  402a16:	85 c0                	test   %eax,%eax
  402a18:	79 4f                	jns    402a69 <init_driver+0x9f>
  402a1a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a21:	3a 20 43 
  402a24:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a28:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a2f:	20 75 6e 
  402a32:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a36:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a3d:	74 6f 20 
  402a40:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a44:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402a4b:	65 20 73 
  402a4e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a52:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a59:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a5f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a64:	e9 23 01 00 00       	jmpq   402b8c <init_driver+0x1c2>
  402a69:	bf f5 44 40 00       	mov    $0x4044f5,%edi
  402a6e:	e8 5d e2 ff ff       	callq  400cd0 <gethostbyname@plt>
  402a73:	48 85 c0             	test   %rax,%rax
  402a76:	75 68                	jne    402ae0 <init_driver+0x116>
  402a78:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402a7f:	3a 20 44 
  402a82:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a86:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402a8d:	20 75 6e 
  402a90:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a94:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a9b:	74 6f 20 
  402a9e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aa2:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402aa9:	76 65 20 
  402aac:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ab0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402ab7:	72 20 61 
  402aba:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402abe:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402ac5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402acb:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402acf:	89 df                	mov    %ebx,%edi
  402ad1:	e8 ba e1 ff ff       	callq  400c90 <close@plt>
  402ad6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402adb:	e9 ac 00 00 00       	jmpq   402b8c <init_driver+0x1c2>
  402ae0:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402ae7:	00 
  402ae8:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402aef:	00 00 
  402af1:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402af7:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402afb:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402aff:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402b04:	48 8b 39             	mov    (%rcx),%rdi
  402b07:	e8 54 e2 ff ff       	callq  400d60 <bcopy@plt>
  402b0c:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402b13:	ba 10 00 00 00       	mov    $0x10,%edx
  402b18:	48 89 e6             	mov    %rsp,%rsi
  402b1b:	89 df                	mov    %ebx,%edi
  402b1d:	e8 ae e2 ff ff       	callq  400dd0 <connect@plt>
  402b22:	85 c0                	test   %eax,%eax
  402b24:	79 50                	jns    402b76 <init_driver+0x1ac>
  402b26:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b2d:	3a 20 55 
  402b30:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b34:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402b3b:	20 74 6f 
  402b3e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b42:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b49:	65 63 74 
  402b4c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b50:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402b57:	65 72 76 
  402b5a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b5e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402b64:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402b68:	89 df                	mov    %ebx,%edi
  402b6a:	e8 21 e1 ff ff       	callq  400c90 <close@plt>
  402b6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b74:	eb 16                	jmp    402b8c <init_driver+0x1c2>
  402b76:	89 df                	mov    %ebx,%edi
  402b78:	e8 13 e1 ff ff       	callq  400c90 <close@plt>
  402b7d:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402b83:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402b87:	b8 00 00 00 00       	mov    $0x0,%eax
  402b8c:	48 83 c4 18          	add    $0x18,%rsp
  402b90:	5b                   	pop    %rbx
  402b91:	5d                   	pop    %rbp
  402b92:	c3                   	retq   

0000000000402b93 <driver_post>:
  402b93:	53                   	push   %rbx
  402b94:	48 83 ec 10          	sub    $0x10,%rsp
  402b98:	4c 89 cb             	mov    %r9,%rbx
  402b9b:	45 85 c0             	test   %r8d,%r8d
  402b9e:	74 22                	je     402bc2 <driver_post+0x2f>
  402ba0:	48 89 ce             	mov    %rcx,%rsi
  402ba3:	bf ff 44 40 00       	mov    $0x4044ff,%edi
  402ba8:	b8 00 00 00 00       	mov    $0x0,%eax
  402bad:	e8 ae e0 ff ff       	callq  400c60 <printf@plt>
  402bb2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402bb7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402bbb:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc0:	eb 39                	jmp    402bfb <driver_post+0x68>
  402bc2:	48 85 ff             	test   %rdi,%rdi
  402bc5:	74 26                	je     402bed <driver_post+0x5a>
  402bc7:	80 3f 00             	cmpb   $0x0,(%rdi)
  402bca:	74 21                	je     402bed <driver_post+0x5a>
  402bcc:	4c 89 0c 24          	mov    %r9,(%rsp)
  402bd0:	49 89 c9             	mov    %rcx,%r9
  402bd3:	49 89 d0             	mov    %rdx,%r8
  402bd6:	48 89 f9             	mov    %rdi,%rcx
  402bd9:	48 89 f2             	mov    %rsi,%rdx
  402bdc:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402be1:	bf f5 44 40 00       	mov    $0x4044f5,%edi
  402be6:	e8 9c f6 ff ff       	callq  402287 <submitr>
  402beb:	eb 0e                	jmp    402bfb <driver_post+0x68>
  402bed:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402bf2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402bf6:	b8 00 00 00 00       	mov    $0x0,%eax
  402bfb:	48 83 c4 10          	add    $0x10,%rsp
  402bff:	5b                   	pop    %rbx
  402c00:	c3                   	retq   

0000000000402c01 <check>:
  402c01:	89 f8                	mov    %edi,%eax
  402c03:	c1 e8 1c             	shr    $0x1c,%eax
  402c06:	85 c0                	test   %eax,%eax
  402c08:	74 1d                	je     402c27 <check+0x26>
  402c0a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c0f:	eb 0b                	jmp    402c1c <check+0x1b>
  402c11:	89 f8                	mov    %edi,%eax
  402c13:	d3 e8                	shr    %cl,%eax
  402c15:	3c 0a                	cmp    $0xa,%al
  402c17:	74 14                	je     402c2d <check+0x2c>
  402c19:	83 c1 08             	add    $0x8,%ecx
  402c1c:	83 f9 1f             	cmp    $0x1f,%ecx
  402c1f:	7e f0                	jle    402c11 <check+0x10>
  402c21:	b8 01 00 00 00       	mov    $0x1,%eax
  402c26:	c3                   	retq   
  402c27:	b8 00 00 00 00       	mov    $0x0,%eax
  402c2c:	c3                   	retq   
  402c2d:	b8 00 00 00 00       	mov    $0x0,%eax
  402c32:	c3                   	retq   

0000000000402c33 <gencookie>:
  402c33:	53                   	push   %rbx
  402c34:	83 c7 01             	add    $0x1,%edi
  402c37:	e8 c4 df ff ff       	callq  400c00 <srandom@plt>
  402c3c:	e8 df e0 ff ff       	callq  400d20 <random@plt>
  402c41:	89 c3                	mov    %eax,%ebx
  402c43:	89 c7                	mov    %eax,%edi
  402c45:	e8 b7 ff ff ff       	callq  402c01 <check>
  402c4a:	85 c0                	test   %eax,%eax
  402c4c:	74 ee                	je     402c3c <gencookie+0x9>
  402c4e:	89 d8                	mov    %ebx,%eax
  402c50:	5b                   	pop    %rbx
  402c51:	c3                   	retq   
  402c52:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c59:	00 00 00 
  402c5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402c60 <__libc_csu_init>:
  402c60:	41 57                	push   %r15
  402c62:	41 89 ff             	mov    %edi,%r15d
  402c65:	41 56                	push   %r14
  402c67:	49 89 f6             	mov    %rsi,%r14
  402c6a:	41 55                	push   %r13
  402c6c:	49 89 d5             	mov    %rdx,%r13
  402c6f:	41 54                	push   %r12
  402c71:	4c 8d 25 98 31 20 00 	lea    0x203198(%rip),%r12        # 605e10 <__frame_dummy_init_array_entry>
  402c78:	55                   	push   %rbp
  402c79:	48 8d 2d 98 31 20 00 	lea    0x203198(%rip),%rbp        # 605e18 <__init_array_end>
  402c80:	53                   	push   %rbx
  402c81:	4c 29 e5             	sub    %r12,%rbp
  402c84:	31 db                	xor    %ebx,%ebx
  402c86:	48 c1 fd 03          	sar    $0x3,%rbp
  402c8a:	48 83 ec 08          	sub    $0x8,%rsp
  402c8e:	e8 1d df ff ff       	callq  400bb0 <_init>
  402c93:	48 85 ed             	test   %rbp,%rbp
  402c96:	74 1e                	je     402cb6 <__libc_csu_init+0x56>
  402c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c9f:	00 
  402ca0:	4c 89 ea             	mov    %r13,%rdx
  402ca3:	4c 89 f6             	mov    %r14,%rsi
  402ca6:	44 89 ff             	mov    %r15d,%edi
  402ca9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402cad:	48 83 c3 01          	add    $0x1,%rbx
  402cb1:	48 39 eb             	cmp    %rbp,%rbx
  402cb4:	75 ea                	jne    402ca0 <__libc_csu_init+0x40>
  402cb6:	48 83 c4 08          	add    $0x8,%rsp
  402cba:	5b                   	pop    %rbx
  402cbb:	5d                   	pop    %rbp
  402cbc:	41 5c                	pop    %r12
  402cbe:	41 5d                	pop    %r13
  402cc0:	41 5e                	pop    %r14
  402cc2:	41 5f                	pop    %r15
  402cc4:	c3                   	retq   
  402cc5:	90                   	nop
  402cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ccd:	00 00 00 

0000000000402cd0 <__libc_csu_fini>:
  402cd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402cd4 <_fini>:
  402cd4:	48 83 ec 08          	sub    $0x8,%rsp
  402cd8:	48 83 c4 08          	add    $0x8,%rsp
  402cdc:	c3                   	retq   
