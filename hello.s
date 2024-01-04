; assembler: nasm
; linker: llvm ld
; kernel: linux (debian 12)

section .data ; declaration of a section of constants
  ; string is a label, used to name the locations of values in memory, which is similiar to variables on C and C++
  ; db is a abbreviation for define byte, which will define the following bytes that comes after
  ; "Hello World!" is a string containing 12 bytes
  ; 10 is the decimal representation of \n in the ascii table, for now the string has 13 bytes
  ; 0 is the decimal representation of \0 in the ascii table, now the string is 14 bytes long 
  string db "Hello World!", 10 , 0

section .text ; declaration of the code contents, in this case is the label _start
  global _start ; _start is the starting point for the assembler and linker, just like main() function on C/C++

; _start label implementation
_start:
  mov rax, 1 ; moving value 1 == system write, to the accumulator rax
  mov rdi, 1 ; moving value 1 == unsigned int file descriptor, to the destination stream/string index rdi
  mov rsi, string ; moving string == "Hello.\n", to the source stream/string index rsi
  mov rdx, 14 ; moving value 14 == length of string label, to the data register rdx
  syscall ; system call to the kernel to execute the print of the string to the terminal output

  mov rax, 60 ; moving the value 60 == system exit, to the accumulator rax
  mov rdi, 0 ; moving value 0 == exit status, to the destination stream/string index rdi
  syscall ; system call to the kernel to execute a sucessful exit
