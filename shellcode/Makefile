all: shellcode

shellcode: shellcode.c
	gcc -m32 -o $@ $<

clean:
	@rm -rf shellcode
