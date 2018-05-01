all: nonzero-shellcode

nonzero-shellcode: nonzero-shellcode.c
	gcc -m32 -o $@-32 $< && \
	gcc -m64 -o $@-64 $<

clean:
	@rm -rf nonzero-shellcode-32 nonzero-shellcode-64
