.globl my_strlen
.globl my_memset
.globl my_strcat
.globl my_strncpy
.globl my_strcspn
#add a .globl for all other functions here

my_strlen:

    #rbp is a callee save register. this isn't really required because we are not
    #using the stack yet, but get used to it, these two lines are in pretty much
    #every assembly function
    pushq %rbp
    movq %rsp, %rbp

    #lets say I want to use r12 and r13. Because they are callee save (the
    #function that wants to use them must save) we need to push into the stack
    pushq %r12
    pushq %r13

    #end of prologue
    #the prologue of a function is only preparing for what we will do. it
    #involves saving callee registers and some other stuff, now we are actually
    #into the assembly code, the part that actually does something
    #more here:  https://en.wikipedia.org/wiki/Function_prologue


    ######start of actual code

    #your assembly code for strlen here

    #rax always holds the return value, in the case of strlen, it returns the
    #length of the string, this is returning 0 just as a placeholder
    movq $0, %rax
strlen_loop:
    cmpb $0, (%rdi)
    je strlen_end
    inc %rdi
    inc %rax
    jmp strlen_loop

    ######end of code
strlen_end:

    #we had the prologue at the beginning, now we have the epilogue, which is the
    #opposite: we will restore the registers to the way there were when someone
    #called us

    #before returning, we must restore the callee save registers, in opposite
    #order as they were pushed, because this is a stack (first in, last out)
    popq %r13
    popq %r12
    popq %rbp

    ret


#other string functions and their code
my_memset:
    pushq %rbp
    movq %rsp, %rbp
    pushq %r12
    pushq %r13

    movq %rdi, %rax
memset_loop:
    cmpq $0, %rdx
    je memset_end
    movq %rsi, (%rdi)
    inc %rdi
    dec %rdx
    jmp memset_loop

memset_end:
    popq %r13
    popq %r12
    popq %rbp

    ret

my_strcat:
    pushq %rbp
    movq %rsp, %rbp
    pushq %r12
    pushq %r13

    #char * strcat ( char * destination(rdi), const char * source(rsi) );
    movq %rdi, %rax
strcat_loop1:
    cmpb $0, (%rdi)
    je strcat_loop2
    inc %rdi
    jmp strcat_loop1
strcat_loop2:
    cmpb $0, (%rsi)
    je strcat_end
    movb (%rsi), %dl
    movb %dl, (%rdi)
    inc %rsi
    inc %rdi
    jmp strcat_loop2
strcat_end:
    movq $0, (%rdi)

    popq %r13
    popq %r12
    popq %rbp

    ret

my_strncpy:
#char * strncpy ( char * destination, const char * source, size_t num );
    pushq %rbp
    movq %rsp, %rbp
    pushq %r12
    pushq %r13

    movq %rdi, %rax
strncpy_loop1:
    cmpb $0, (%rsi)
    je strncpy_loop2
    cmpq $0, %rdx
    je strncpy_loop2
    movb (%rsi), %cl
    movb %cl, (%rdi)
    inc %rdi
    inc %rsi
    dec %rdx
    jmp strncpy_loop1
strncpy_loop2:
    cmpq $0, %rdx
    je strncpy_end
    movb $0, (%rdi)
    dec %rdx
    inc %rdi
strncpy_end:
    movq $0, (%rdi)

    popq %r13
    popq %r12
    popq %rbp

    ret


my_strcspn:
    pushq %rbp
    movq %rsp, %rbp
    pushq %r12
    pushq %r13

    movq $0, %rax
    movq %rsi, %rcx
strcspn_loop1:
    cmpb $0, (%rdi)
    je strcspn_end
inner_loop:
    cmpb $0, (%rsi)
    je inner_end
    movb (%rdi), %dl
    cmpb %dl, (%rsi)
    je strcspn_end
    inc %rsi
   jmp inner_loop
inner_end:
    movq %rcx, %rsi
    inc %rax
    inc %rdi
    jmp strcspn_loop1
strcspn_end:
    popq %r13
    popq %r12
    popq %rbp

    ret
