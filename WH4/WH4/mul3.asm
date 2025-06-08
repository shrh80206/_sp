; mul3.asm
.code
mul3 PROC
    ; 假設使用 32-bit 調用，cdecl calling convention
    ; mul3(int a, int b, int c)
    ; 參數順序（右到左）：
    ; c -> [esp+12]
    ; b -> [esp+8]
    ; a -> [esp+4]

    mov eax, DWORD PTR [esp+4]
    imul eax, DWORD PTR [esp+8]
    imul eax, DWORD PTR [esp+12]
    ret
mul3 ENDP
END
