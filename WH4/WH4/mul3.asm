; mul3.asm
.code
mul3 PROC
    ; ���]�ϥ� 32-bit �եΡAcdecl calling convention
    ; mul3(int a, int b, int c)
    ; �Ѽƶ��ǡ]�k�쥪�^�G
    ; c -> [esp+12]
    ; b -> [esp+8]
    ; a -> [esp+4]

    mov eax, DWORD PTR [esp+4]
    imul eax, DWORD PTR [esp+8]
    imul eax, DWORD PTR [esp+12]
    ret
mul3 ENDP
END
