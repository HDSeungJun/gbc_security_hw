/ (fcn) sym.blue 266
|   sym.blue ();
|           ; var int local_14h @ ebp-0x14
|           ; var int local_10h @ ebp-0x10
|           ; var int local_8h @ ebp-0x8
|           ; var int local_4h @ ebp-0x4
|              ; CALL XREF from 0x080495fb (main)
|           0x080499f1      55             push ebp
|           0x080499f2      89e5           mov ebp, esp
|           0x080499f4      83ec18         sub esp, 0x18
|           0x080499f7      e8c4ffffff     call sym.blue_preflight
|           0x080499fc      c745fc60c104.  mov dword [local_4h], obj.graph ; 0x804c160
|           0x08049a03      8b45fc         mov eax, dword [local_4h]
|           0x08049a06      8b4004         mov eax, dword [eax + 4]    ; [0x4:4]=-1 ; 4
|           0x08049a09      8945f8         mov dword [local_8h], eax
|           0x08049a0c      c745f4000000.  mov dword [local_ch], 0
|       ,=< 0x08049a13      eb6f           jmp 0x8049a84
|       |      ; JMP XREF from 0x08049a88 (sym.blue)
|      .--> 0x08049a15      c745f0000000.  mov dword [local_10h], 0
|      :|   0x08049a1c      8b45f4         mov eax, dword [local_ch]
|      :|   0x08049a1f      0fb6804cc204.  movzx eax, byte [eax + obj.buffer] ; [0x804c24c:1]=0
|      :|   0x08049a26      0fbec0         movsx eax, al
|      :|   0x08049a29      8945ec         mov dword [local_14h], eax
|      :|   0x08049a2c      837dec4c       cmp dword [local_14h], 0x4c ; [0x4c:4]=-1 ; 'L' ; 76
|     ,===< 0x08049a30      740e           je 0x8049a40
|     |:|   0x08049a32      837dec52       cmp dword [local_14h], 0x52 ; [0x52:4]=-1 ; 'R' ; 82
|    ,====< 0x08049a36      7412           je 0x8049a4a
|    ||:|   0x08049a38      837dec0a       cmp dword [local_14h], 0xa  ; [0xa:4]=-1 ; 10
|   ,=====< 0x08049a3c      7417           je 0x8049a55
|  ,======< 0x08049a3e      eb1e           jmp 0x8049a5e
|  ||||:|      ; JMP XREF from 0x08049a30 (sym.blue)
|  |||`---> 0x08049a40      8b45fc         mov eax, dword [local_4h]
|  ||| :|   0x08049a43      8b00           mov eax, dword [eax]
|  ||| :|   0x08049a45      8945fc         mov dword [local_4h], eax
|  |||,===< 0x08049a48      eb27           jmp 0x8049a71
|  ||||:|      ; JMP XREF from 0x08049a36 (sym.blue)
|  ||`----> 0x08049a4a      8b45fc         mov eax, dword [local_4h]
|  || |:|   0x08049a4d      8b4008         mov eax, dword [eax + 8]    ; [0x8:4]=-1 ; 8
|  || |:|   0x08049a50      8945fc         mov dword [local_4h], eax
|  ||,====< 0x08049a53      eb1c           jmp 0x8049a71
|  ||||:|      ; JMP XREF from 0x08049a3c (sym.blue)
|  |`-----> 0x08049a55      c745f0010000.  mov dword [local_10h], 1
|  |,=====< 0x08049a5c      eb13           jmp 0x8049a71
|  ||||:|      ; JMP XREF from 0x08049a3e (sym.blue)
|  `------> 0x08049a5e      c745f0010000.  mov dword [local_10h], 1
|   |||:|   0x08049a65      c70424bba304.  mov dword [esp], str.boom   ; [0x804a3bb:4]=0x6d6f6f62 ; "boom" ; const char * s
|   |||:|   0x08049a6c      e843edffff     call sym.imp.puts           ; int puts(const char *s)
|   |||:|      ; JMP XREF from 0x08049a48 (sym.blue)
|   |||:|      ; JMP XREF from 0x08049a53 (sym.blue)
|   |||:|      ; JMP XREF from 0x08049a5c (sym.blue)
|   ```---> 0x08049a71      837df000       cmp dword [local_10h], 0
|     ,===< 0x08049a75      7513           jne 0x8049a8a
|     |:|   0x08049a77      8b45fc         mov eax, dword [local_4h]
|     |:|   0x08049a7a      8b4004         mov eax, dword [eax + 4]    ; [0x4:4]=-1 ; 4
|     |:|   0x08049a7d      3145f8         xor dword [local_8h], eax
|     |:|   0x08049a80      8345f401       add dword [local_ch], 1
|     |:|      ; JMP XREF from 0x08049a13 (sym.blue)
|     |:`-> 0x08049a84      837df40e       cmp dword [local_ch], 0xe   ; [0xe:4]=-1 ; 14
|     |`==< 0x08049a88      7e8b           jle 0x8049a15
|     |        ; JMP XREF from 0x08049a75 (sym.blue)
|     `---> 0x08049a8a      c70424c0a304.  mov dword [esp], str.e_46m__e_0m_e_36m_PROGRAMMING_GATE_ARRAY... ; [0x804a3c0:4]=0x36345b1b ; const char * format
|           0x08049a91      e8aeecffff     call sym.imp.printf         ; int printf(const char *format)
|           0x08049a96      a140c20408     mov eax, dword [obj.stdout] ; [0x804c240:4]=0
|           0x08049a9b      890424         mov dword [esp], eax        ; FILE *stream
|           0x08049a9e      e891ecffff     call sym.imp.fflush         ; int fflush(FILE *stream)
|           0x08049aa3      c70424010000.  mov dword [esp], 1          ; int s
|           0x08049aaa      e8f5ecffff     call sym.imp.sleep          ; int sleep(int s)
|           0x08049aaf      c70424eba304.  mov dword [esp], str.SUCCEEDED_e_0m ; [0x804a3eb:4]=0x43435553 ; "SUCCEEDED\x1b[0m" ; const char * s
|           0x08049ab6      e8f9ecffff     call sym.imp.puts           ; int puts(const char *s)
|           0x08049abb      c7042420a107.  mov dword [esp], 0x7a120    ; [0x7a120:4]=-1
|           0x08049ac2      e85decffff     call sym.imp.usleep
|           0x08049ac7      a184a30408     mov eax, dword obj.solution ; [0x804a384:4]=0x40475194
|           0x08049acc      3945f8         cmp dword [local_8h], eax   ; [0x13:4]=-1 ; 19
|       ,=< 0x08049acf      751b           jne 0x8049aec
|       |   0x08049ad1      c70424fca304.  mov dword [esp], str.e_46m__e_0m_e_36m_VOLTAGE_REROUTED_FROM_REMOTE_DETONATION_RECEIVER__e_0m ; [0x804a3fc:4]=0x36345b1b ; const char * s
|       |   0x08049ad8      e8d7ecffff     call sym.imp.puts           ; int puts(const char *s)
|       |   0x08049add      a140c10408     mov eax, dword obj.wire_blue ; [0x804c140:4]=1
|       |   0x08049ae2      83e801         sub eax, 1
|       |   0x08049ae5      a340c10408     mov dword obj.wire_blue, eax ; [0x804c140:4]=1
|      ,==< 0x08049aea      eb0d           jmp 0x8049af9
|      ||      ; JMP XREF from 0x08049acf (sym.blue)
|      |`-> 0x08049aec      a140c10408     mov eax, dword obj.wire_blue ; [0x804c140:4]=1
|      |    0x08049af1      83c001         add eax, 1
|      |    0x08049af4      a340c10408     mov dword obj.wire_blue, eax ; [0x804c140:4]=1
|      |       ; JMP XREF from 0x08049aea (sym.blue)
|      `--> 0x08049af9      c9             leave
\           0x08049afa      c3             ret