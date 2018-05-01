#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  /*
      Objective:
        setreuid(geteuid(), geteuid());
        execve("/bin/sh", 0, 0);
  */

  /*
    ### HINTS for x86 ###

    // Syscall numbers - x86
    // See: https://syscalls.kernelgrok.com/

    $SYS_setreuid == 70
    $SYS_geteuid == 49
    $SYS_execve == 11

    // syscall instruction
    int $0x80;

    // build "//bin/sh" on the stack
    push  $0
    push  $0x68732f6e
    push  $0x69622f2f


    ### HINTS for amd64 ###


    // syscall numbers - amd64
    // See: http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/
    $SYS_setreuid == 113
    $SYS_geteuid == 107
    $SYS_execve == 59

    // build "//bin/sh" on the stack
    mov $0x68732f6e69622f2f, %ebx
    push $0
    push %ebx

  */

  // call geteuid()
  // eax = $SYS_geteuid
  // Result: eax = geteuid();


  // call setreuid()
  // eax = setreuid(geteuid(), geteuid()); ebx = geteuid(); ecx = geteuid();


  // call execve("/bin/sh", 0, 0);
  // eax = $SYS_execve
  // ebx = the address of "/bin/sh"
  // ecx = 0
  // edx = 0
