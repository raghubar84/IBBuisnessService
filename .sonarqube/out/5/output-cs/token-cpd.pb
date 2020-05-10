–
:D:\Projects\IBBuisnessService\IBBusinessConsole\Program.cs
	namespace 	
IBBusinessConsole
 
{ 
class		 	
Program		
 
{

 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
Console 
. 
	WriteLine 
( 
$str V
)V W
;W X
Console 
. 
	WriteLine 
( 
$str Y
)Y Z
;Z [
Console 
. 
	WriteLine 
( 
$str V
)V W
;W X
var 
webHost 
= 
	Microsoft #
.# $

AspNetCore$ .
.. /
WebHost/ 6
.6 7 
CreateDefaultBuilder7 K
(K L
)L M
.M N

UseStartupN X
<X Y
StartupY `
>` a
(a b
)b c
.c d
Buildd i
(i j
)j k
;k l
var 
serv 
= 
webHost 
. 
Services '
.' (
GetRequiredService( :
<: ;
IServiceBusConsumer; N
>N O
(O P
)P Q
;Q R
serv 
. 6
*RegisterOnMessageHandlerAndReceiveMessages ;
(; <
)< =
;= >
Console 
. 
ReadKey 
( 
) 
; 
} 	
} 
} 