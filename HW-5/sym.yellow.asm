/ (fcn) sym.yellow 138
|   sym.yellow ();
|              ; CALL XREF from 0x0804958b (main)
|           0x08049719      55             push ebp
|           0x0804971a      89e5           mov ebp, esp
|           0x0804971c      83ec08         sub esp, 8
|           0x0804971f      e8c4ffffff     call sym.yellow_preflight 
|           0x08049724      0fb6054cc204.  movzx eax, byte [obj.buffer] ; [0x804c24c:1]=0
|           0x0804972b      3c38           cmp al, 0x38                ; '8' ; 56
|       ,=< 0x0804972d      754d           jne 0x804977c
|       |   0x0804972f      0fb6054dc204.  movzx eax, byte [0x804c24d] ; [0x804c24d:1]=0
|       |   0x08049736      3c34           cmp al, 0x34                ; '4' ; 52
|      ,==< 0x08049738      7542           jne 0x804977c
|      ||   0x0804973a      0fb6054ec204.  movzx eax, byte [0x804c24e] ; [0x804c24e:1]=0
|      ||   0x08049741      3c33           cmp al, 0x33                ; '3' ; 51
|     ,===< 0x08049743      7537           jne 0x804977c
|     |||   0x08049745      0fb6054fc204.  movzx eax, byte [0x804c24f] ; [0x804c24f:1]=0
|     |||   0x0804974c      3c37           cmp al, 0x37                ; '7' ; 55
|    ,====< 0x0804974e      752c           jne 0x804977c
|    ||||   0x08049750      0fb60550c204.  movzx eax, byte [0x804c250] ; [0x804c250:1]=0
|    ||||   0x08049757      3c31           cmp al, 0x31                ; '1' ; 49
|   ,=====< 0x08049759      7521           jne 0x804977c
|   |||||   0x0804975b      0fb60551c204.  movzx eax, byte [0x804c251] ; [0x804c251:1]=0
|   |||||   0x08049762      3c30           cmp al, 0x30                ; '0' ; 48
|  ,======< 0x08049764      7516           jne 0x804977c
|  ||||||   0x08049766      0fb60552c204.  movzx eax, byte [0x804c252] ; [0x804c252:1]=0
|  ||||||   0x0804976d      3c36           cmp al, 0x36                ; '6' ; 54
| ,=======< 0x0804976f      750b           jne 0x804977c
| |||||||   0x08049771      0fb60553c204.  movzx eax, byte [0x804c253] ; [0x804c253:1]=0
| |||||||   0x08049778      3c35           cmp al, 0x35                ; '5' ; 53
| ========< 0x0804977a      740f           je 0x804978b
| |||||||      ; XREFS: JMP 0x0804972d  JMP 0x08049738  JMP 0x08049743  JMP 0x0804974e  JMP 0x08049759  JMP 0x08049764  JMP 0x0804976f  
| ```````-> 0x0804977c      a124c10408     mov eax, dword obj.wire_yellow ; [0x804c124:4]=1
|           0x08049781      c1e00a         shl eax, 0xa
|           0x08049784      a324c10408     mov dword obj.wire_yellow, eax ; [0x804c124:4]=1
|       ,=< 0x08049789      eb16           jmp 0x80497a1
|       |      ; JMP XREF from 0x0804977a (sym.yellow)
| --------> 0x0804978b      c70424f4a104.  mov dword [esp], str.e_43m__e_0m_e_33m_UNLOCK_PASSWORD_1_ACCEPTED__LOCK_DISENGAGED_e_0m ; [0x804a1f4:4]=0x33345b1b ; const char * s
|       |   0x08049792      e81df0ffff     call sym.imp.puts           ; int puts(const char *s)
|       |   0x08049797      c70524c10408.  mov dword obj.wire_yellow, 0 ; [0x804c124:4]=1
|       |      ; JMP XREF from 0x08049789 (sym.yellow)
|       `-> 0x080497a1      c9             leave
\           0x080497a2      c3             ret
