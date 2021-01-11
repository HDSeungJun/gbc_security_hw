# GBC Seucrity HW: BOF5 Write-up

![1](bof5/1.png)

bof5.c file을 통해

- `system("buf");`에 도달하기 위한 분기는 `if (innocent == KEY)` 라는 것
    - 쉘 호출을 하기 위해서는 버퍼에 `/bin/sh`를 입력해야 하는 것 
- KEY 값은 '0x12345678` 이라는 것
- 입력 방식은 vuln() 함수의 gets() 함수를 통해 입력 받는 것
임을 알 수 있다. 
- 

**그러므로 bufferoverflow를 하기 위해서는 innocent의 위치와 입력 받는  위치를 알아내야 한다.**

- buffer의 위치 

![2](bof5/2.png)

gdb로 파일을 열어 vuln()의 gets() 위치로 가면 rdi의 메모리 주소 값(buffer 위치)을 알 수 있다. 

- inncoent의 위치  

![3](bof5/3.png)

innocent와 KEY를 비교하는 부분인 cmp instruction으로 가서 `rbp-0x4`의 메모리 주소를 알아낸다. 

![4](bof5/4.png)

두 메모리 주소의 차를 구하여 버퍼 크기가 140임을 알 수 있다. 

![5](bof5/5.png)

주의할 점이 하나 있는데 아까도 언급했지만 분기의 흐름을 바꾼다고 해서 쉘 호출 권한을 얻을 수 있는 것이 아니라 buffer에 `/bin/sh`를 입력해주어야만 한다. 

![6](bof5/6.png)

이제 모든 것을 알아냈으니 프로그램을 실행하여 `/bin/sh\x00`을 입력하고 쓰레기값으로 132 bytes를 채워주고(/bin/sh + null문자 = 8 bytes) Key 값을 little endian으로 입력하여준다. 

![7](bof5/7.png)

정상적으로 bufferoverflow를 하여 셀 실행이 되었고 `cat bof6.pw`를 통해 bof6의 비밀번호를 알아낼 수 있다. 

![8](bof5/8.png)

이제 bof6 유저 접속을 하여 알아낸 비밀번호를 입력하면 bof6 유저로 접속이 된다. 

