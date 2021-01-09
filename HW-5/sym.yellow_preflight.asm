/ (fcn) sym.yellow_preflight 49
|   sym.yellow_preflight ();
|           ; var int local_4h @ esp+0x4
|           ; var int local_8h @ esp+0x8
|              ; CALL XREF from 0x0804971f (sym.yellow)
|           0x080496e8      55             push ebp
|           0x080496e9      89e5           mov ebp, esp
|           0x080496eb      83ec18         sub esp, 0x18
|           0x080496ee      c70424c4a104.  mov dword [esp], str.e_43m__e_0m_e_33m_ENTER_UNLOCK_PASSWORD_1:__e_0m ; [0x804a1c4:4]=0x33345b1b ; const char * format
|           0x080496f5      e84af0ffff     call sym.imp.printf         ; int printf(const char *format)
|           0x080496fa      a120c20408     mov eax, dword [obj.stdin]  ; [0x804c220:4]=0
|           0x080496ff      89442408       mov dword [local_8h], eax
|           0x08049703      c74424040a00.  mov dword [local_4h], 0xa
|           0x0804970b      c704244cc204.  mov dword [esp], obj.buffer ; [0x804c24c:4]=0 ; char *s
|           0x08049712      e8edefffff     call sym.imp.fgets          ; char *fgets(char *s, int size, FILE *stream)   
|           0x08049717      c9             leave
\           0x08049718      c3             ret
