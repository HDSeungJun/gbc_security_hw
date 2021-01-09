[0x080494ca]> pdf
            ;-- main:
/ (fcn) main 541
|   main ();
|           ; var int local_28h @ ebp-0x28
|           ; var int local_24h @ ebp-0x24
|           ; var int local_20h @ ebp-0x20
|           ; var int local_1ch @ ebp-0x1c
|           ; var int local_8h @ ebp-0x8
|           ; var int local_4h @ esp+0x4
|           ; var int local_8h_2 @ esp+0x8
|           ; var int local_ch @ esp+0xc
|              ; DATA XREF from 0x08048827 (entry0)
|           0x080494ca      8d4c2404       lea ecx, dword [local_4h]   ; 4
|           0x080494ce      83e4f0         and esp, 0xfffffff0
|           0x080494d1      ff71fc         push dword [ecx - 4]
|           0x080494d4      55             push ebp
|           0x080494d5      89e5           mov ebp, esp
|           0x080494d7      51             push ecx
|           0x080494d8      83ec34         sub esp, 0x34               ; '4'
|           0x080494db      8b4104         mov eax, dword [ecx + 4]    ; [0x4:4]=-1 ; 4
|           0x080494de      8945d8         mov dword [local_28h], eax
|           0x080494e1      65a114000000   mov eax, dword gs:[0x14]    ; [0x14:4]=-1 ; 20
|           0x080494e7      8945f8         mov dword [local_8h], eax
|           0x080494ea      31c0           xor eax, eax
|           0x080494ec      c744240c0000.  mov dword [local_ch], 0
|           0x080494f4      c7442408c88f.  mov dword [local_8h_2], sym.libc_start_main ; [0x8048fc8:4]=0x57e58955 ; "U\x89\xe5WV\x81\xec\xe0"
|           0x080494fc      c74424040000.  mov dword [local_4h], 0
|           0x08049504      8d45e0         lea eax, dword [local_20h]
|           0x08049507      890424         mov dword [esp], eax
|           0x0804950a      e885f2ffff     call sym.imp.pthread_create
|           0x0804950f      c7442404cf91.  mov dword [local_4h], sym.disarm_handler ; [0x80491cf:4]=0x57e58955 ; "U\x89\xe5WVS\x81\xec\xec" ; void * func
|           0x08049517      c704240a0000.  mov dword [esp], 0xa        ; int sig
|           0x0804951e      e8b1f1ffff     call sym.imp.signal         ; void signal(int sig, void *func)
|           0x08049523      c745dc010000.  mov dword [local_24h], 1
|              ; JMP XREF from 0x080496c3 (main)
|              ; JMP XREF from 0x0804969c (main)
|      ..-> 0x0804952a      837ddc00       cmp dword [local_24h], 0
|     ,===< 0x0804952e      7405           je 0x8049535
|     |::   0x08049530      e817f5ffff     call sym.menu    //TODO: 
|     |::      ; JMP XREF from 0x0804952e (main)
|     `---> 0x08049535      c7042430a104.  mov dword [esp], str.e_100m__e_0m_e_90m_MENU_SELECTION:__e_0m ; [0x804a130:4]=0x30315b1b ; const char * format
|      ::   0x0804953c      e803f2ffff     call sym.imp.printf         ; int printf(const char *format)
|      ::   0x08049541      a120c20408     mov eax, dword [obj.stdin]  ; [0x804c220:4]=0
|      ::   0x08049546      89442408       mov dword [local_8h_2], eax
|      ::   0x0804954a      c74424041400.  mov dword [local_4h], 0x14  ; [0x14:4]=-1 ; 20
|      ::   0x08049552      8d45e4         lea eax, dword [local_1ch]
|      ::   0x08049555      890424         mov dword [esp], eax        ; char *s
|      ::   0x08049558      e8a7f1ffff     call sym.imp.fgets          ; char *fgets(char *s, int size, FILE *stream)
|      ::   0x0804955d      c744240456a1.  mov dword [local_4h], 0x804a156 ; [0x804a156:4]=0x79000a31
|      ::   0x08049565      8d45e4         lea eax, dword [local_1ch]
|      ::   0x08049568      890424         mov dword [esp], eax        ; const char * s2
|      ::   0x0804956b      e874f2ffff     call sym.imp.strcmp         ; int strcmp(const char *s1, const char *s2)
|      ::   0x08049570      85c0           test eax, eax
|     ,===< 0x08049572      7417           je 0x804958b
|     |::   0x08049574      c744240459a1.  mov dword [local_4h], str.yellow ; [0x804a159:4]=0x6c6c6579 ; "yellow\n"
|     |::   0x0804957c      8d45e4         lea eax, dword [local_1ch]
|     |::   0x0804957f      890424         mov dword [esp], eax        ; const char * s2
|     |::   0x08049582      e8ddf1ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
|     |::   0x08049587      85c0           test eax, eax
|    ,====< 0x08049589      750a           jne 0x8049595
|    ||::      ; JMP XREF from 0x08049572 (main)
|    |`---> 0x0804958b      e889010000     call sym.yellow  //TODO: 
|    |,===< 0x08049590      e916010000     jmp 0x80496ab
|    ||::      ; JMP XREF from 0x08049589 (main)
|    `----> 0x08049595      c744240461a1.  mov dword [local_4h], 0x804a161 ; [0x804a161:4]=0x67000a32
|     |::   0x0804959d      8d45e4         lea eax, dword [local_1ch]
|     |::   0x080495a0      890424         mov dword [esp], eax        ; const char * s2
|     |::   0x080495a3      e83cf2ffff     call sym.imp.strcmp         ; int strcmp(const char *s1, const char *s2)
|     |::   0x080495a8      85c0           test eax, eax
|    ,====< 0x080495aa      7417           je 0x80495c3
|    ||::   0x080495ac      c744240464a1.  mov dword [local_4h], str.green ; [0x804a164:4]=0x65657267 ; "green\n"
|    ||::   0x080495b4      8d45e4         lea eax, dword [local_1ch]
|    ||::   0x080495b7      890424         mov dword [esp], eax        ; const char * s2
|    ||::   0x080495ba      e8a5f1ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
|    ||::   0x080495bf      85c0           test eax, eax
|   ,=====< 0x080495c1      750a           jne 0x80495cd
|   |||::      ; JMP XREF from 0x080495aa (main)
|   |`----> 0x080495c3      e83c030000     call sym.green   //TODO: 
|   |,====< 0x080495c8      e9de000000     jmp 0x80496ab
|   |||::      ; JMP XREF from 0x080495c1 (main)
|   `-----> 0x080495cd      c74424046ba1.  mov dword [local_4h], 0x804a16b ; [0x804a16b:4]=0x62000a33
|    ||::   0x080495d5      8d45e4         lea eax, dword [local_1ch]
|    ||::   0x080495d8      890424         mov dword [esp], eax        ; const char * s2
|    ||::   0x080495db      e804f2ffff     call sym.imp.strcmp         ; int strcmp(const char *s1, const char *s2)
|    ||::   0x080495e0      85c0           test eax, eax
|   ,=====< 0x080495e2      7417           je 0x80495fb
|   |||::   0x080495e4      c74424046ea1.  mov dword [local_4h], str.blue ; [0x804a16e:4]=0x65756c62 ; "blue\n"
|   |||::   0x080495ec      8d45e4         lea eax, dword [local_1ch]
|   |||::   0x080495ef      890424         mov dword [esp], eax        ; const char * s2
|   |||::   0x080495f2      e86df1ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
|   |||::   0x080495f7      85c0           test eax, eax
|  ,======< 0x080495f9      750a           jne 0x8049605
|  ||||::      ; JMP XREF from 0x080495e2 (main)
|  |`-----> 0x080495fb      e8f1030000     call sym.blue    //TODO: 
|  |,=====< 0x08049600      e9a6000000     jmp 0x80496ab
|  ||||::      ; JMP XREF from 0x080495f9 (main)
|  `------> 0x08049605      c744240474a1.  mov dword [local_4h], 0x804a174 ; [0x804a174:4]=0x72000a34
|   |||::   0x0804960d      8d45e4         lea eax, dword [local_1ch]
|   |||::   0x08049610      890424         mov dword [esp], eax        ; const char * s2
|   |||::   0x08049613      e8ccf1ffff     call sym.imp.strcmp         ; int strcmp(const char *s1, const char *s2)
|   |||::   0x08049618      85c0           test eax, eax
|  ,======< 0x0804961a      7417           je 0x8049633
|  ||||::   0x0804961c      c744240477a1.  mov dword [local_4h], str.red ; [0x804a177:4]=0xa646572 ; "red\n"
|  ||||::   0x08049624      8d45e4         lea eax, dword [local_1ch]
|  ||||::   0x08049627      890424         mov dword [esp], eax        ; const char * s2
|  ||||::   0x0804962a      e835f1ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
|  ||||::   0x0804962f      85c0           test eax, eax
| ,=======< 0x08049631      7507           jne 0x804963a
| |||||::      ; JMP XREF from 0x0804961a (main)
| |`------> 0x08049633      e8f9010000     call sym.red     //TODO: 
| |,======< 0x08049638      eb71           jmp 0x80496ab
| |||||::      ; JMP XREF from 0x08049631 (main)
| `-------> 0x0804963a      c74424047ca1.  mov dword [local_4h], str.exit ; [0x804a17c:4]=0x74697865 ; "exit\n"
|  ||||::   0x08049642      8d45e4         lea eax, dword [local_1ch]
|  ||||::   0x08049645      890424         mov dword [esp], eax        ; const char * s2
|  ||||::   0x08049648      e817f1ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
|  ||||::   0x0804964d      85c0           test eax, eax
| ,=======< 0x0804964f      7477           je 0x80496c8
| |||||::   0x08049651      c744240482a1.  mov dword [local_4h], str.quit ; [0x804a182:4]=0x74697571 ; "quit\n"
| |||||::   0x08049659      8d45e4         lea eax, dword [local_1ch]
| |||||::   0x0804965c      890424         mov dword [esp], eax        ; const char * s2
| |||||::   0x0804965f      e800f1ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
| |||||::   0x08049664      85c0           test eax, eax
| ========< 0x08049666      7460           je 0x80496c8
| |||||::   0x08049668      c744240488a1.  mov dword [local_4h], str.disarm ; [0x804a188:4]=0x61736964 ; "disarm\n"
| |||||::   0x08049670      8d45e4         lea eax, dword [local_1ch]
| |||||::   0x08049673      890424         mov dword [esp], eax        ; const char * s2
| |||||::   0x08049676      e8e9f0ffff     call sym.imp.strcasecmp     ; int strcasecmp(const char *s1, const char *s2)
| |||||::   0x0804967b      85c0           test eax, eax
| ========< 0x0804967d      750e           jne 0x804968d
| |||||::   0x0804967f      c704240a0000.  mov dword [esp], 0xa        ; int sig
| |||||::   0x08049686      e8c9f0ffff     call sym.imp.raise          ; int raise(int sig)
| ========< 0x0804968b      eb1e           jmp 0x80496ab
| |||||::      ; JMP XREF from 0x0804967d (main)
| --------> 0x0804968d      0fb645e4       movzx eax, byte [local_1ch]
| |||||::   0x08049691      3c0a           cmp al, 0xa                 ; 10
| ========< 0x08049693      750c           jne 0x80496a1
| |||||::   0x08049695      c745dc000000.  mov dword [local_24h], 0
| |||||`==< 0x0804969c      e989feffff     jmp 0x804952a
| ||||| :      ; JMP XREF from 0x08049693 (main)
| --------> 0x080496a1      c7052cc10408.  mov dword obj.wire_green, 2 ; [0x804c12c:4]=1
| ||||| :      ; JMP XREF from 0x08049590 (main)
| ||||| :      ; JMP XREF from 0x080495c8 (main)
| ||||| :      ; JMP XREF from 0x08049600 (main)
| ||||| :      ; JMP XREF from 0x08049638 (main)
| ||||| :      ; JMP XREF from 0x0804968b (main)
| -````---> 0x080496ab      c7042490a104.  mov dword [esp], str.e_100m__e_0m_e_90m_PRESS_ENTER_TO_RETURN_TO_MENU__e_0m ; [0x804a190:4]=0x30315b1b ; const char * format
| |     :   0x080496b2      e88df0ffff     call sym.imp.printf         ; int printf(const char *format)
| |     :   0x080496b7      e808f0ffff     call sym.imp.getchar        ; int getchar(void)
| |     :   0x080496bc      c745dc010000.  mov dword [local_24h], 1
| |     `=< 0x080496c3      e962feffff     jmp 0x804952a
| |            ; JMP XREF from 0x0804964f (main)
| |            ; JMP XREF from 0x08049666 (main)
| `-------> 0x080496c8      b800000000     mov eax, 0
|           0x080496cd      8b55f8         mov edx, dword [local_8h]
|           0x080496d0      653315140000.  xor edx, dword gs:[0x14]
|       ,=< 0x080496d7      7405           je 0x80496de
|       |   0x080496d9      e8a6f0ffff     call sym.imp.__stack_chk_fail ; void __stack_chk_fail(void)
|       |      ; JMP XREF from 0x080496d7 (main)
|       `-> 0x080496de      83c434         add esp, 0x34               ; '4'
|           0x080496e1      59             pop ecx
|           0x080496e2      5d             pop ebp
|           0x080496e3      8d61fc         lea esp, dword [ecx - 4]
\           0x080496e6      c3             ret
[0x080494ca]> 
