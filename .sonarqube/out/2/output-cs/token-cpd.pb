áG
LD:\Projects\IBBuisnessService\IBBusinessAzure.Services\BlobStorageService.cs
	namespace		 	
IBBusinessAzure		
 
.		 
Services		 "
{

 
public 

class 
BlobStorageService #
:# $
IBlobStorageService$ 7
{ 
private 
readonly 
string 
	accessKey  )
;) *
public 
BlobStorageService !
(! "
)" #
{ 	
var 
builder 
= 
new  
ConfigurationBuilder 2
(2 3
)3 4
.4 5
SetBasePath5 @
(@ A
SystemA G
.G H
IOH J
.J K
	DirectoryK T
.T U
GetCurrentDirectoryU h
(h i
)i j
)j k
.k l
AddJsonFilel w
(w x
$str	x ä
)
ä ã
;
ã å
var 
configuration 
= 
builder  '
.' (
Build( -
(- .
). /
;/ 0
this 
. 
	accessKey 
= 
configuration *
.* +
GetConnectionString+ >
(> ?
$str? V
)V W
;W X
} 	
public   
string   
UploadFileToBlob   &
(  & '
string  ' -
strFileName  . 9
,  9 :
byte  ; ?
[  ? @
]  @ A
fileData  B J
,  J K
string  L R
fileMimeType  S _
)  _ `
{!! 	
try"" 
{## 
var$$ 
_task$$ 
=$$ 
Task$$  
.$$  !
Run$$! $
($$$ %
($$% &
)$$& '
=>$$( *
this$$+ /
.$$/ 0!
UploadFileToBlobAsync$$0 E
($$E F
strFileName$$F Q
,$$Q R
fileData$$S [
,$$[ \
fileMimeType$$] i
)$$i j
)$$j k
;$$k l
_task%% 
.%% 
Wait%% 
(%% 
)%% 
;%% 
string&& 
fileUrl&& 
=&&  
_task&&! &
.&&& '
Result&&' -
;&&- .
return'' 
fileUrl'' 
;'' 
}(( 
catch)) 
{** 
throw++ 
;++ 
},, 
}-- 	
public33 
async33 
void33 
DeleteBlobData33 (
(33( )
string33) /
fileUrl330 7
)337 8
{44 	
Uri55 
uriObj55 
=55 
new55 
Uri55  
(55  !
fileUrl55! (
)55( )
;55) *
string66 
BlobName66 
=66 
Path66 "
.66" #
GetFileName66# .
(66. /
uriObj66/ 5
.665 6
	LocalPath666 ?
)66? @
;66@ A
CloudStorageAccount88 
cloudStorageAccount88  3
=884 5
CloudStorageAccount886 I
.88I J
Parse88J O
(88O P
	accessKey88P Y
)88Y Z
;88Z [
CloudBlobClient99 
cloudBlobClient99 +
=99, -
cloudStorageAccount99. A
.99A B!
CreateCloudBlobClient99B W
(99W X
)99X Y
;99Y Z
string:: 
strContainerName:: #
=::$ %
$str::& /
;::/ 0
CloudBlobContainer;; 
cloudBlobContainer;; 1
=;;2 3
cloudBlobClient;;4 C
.;;C D!
GetContainerReference;;D Y
(;;Y Z
strContainerName;;Z j
);;j k
;;;k l
string== 

pathPrefix== 
=== 
DateTime==  (
.==( )
Now==) ,
.==, -
ToUniversalTime==- <
(==< =
)=== >
.==> ?
ToString==? G
(==G H
$str==H T
)==T U
+==V W
$str==X [
;==[ \
CloudBlobDirectory>> 
blobDirectory>> ,
=>>- .
cloudBlobContainer>>/ A
.>>A B!
GetDirectoryReference>>B W
(>>W X

pathPrefix>>X b
)>>b c
;>>c d
CloudBlockBlob@@ 
	blockBlob@@ $
=@@% &
blobDirectory@@' 4
.@@4 5!
GetBlockBlobReference@@5 J
(@@J K
BlobName@@K S
)@@S T
;@@T U
awaitCC 
	blockBlobCC 
.CC 
DeleteAsyncCC '
(CC' (
)CC( )
;CC) *
}DD 	
privateKK 
stringKK 
GenerateFileNameKK '
(KK' (
stringKK( .
fileNameKK/ 7
)KK7 8
{LL 	
stringMM 
strFileNameMM 
=MM  
stringMM! '
.MM' (
EmptyMM( -
;MM- .
stringNN 
[NN 
]NN 
strNameNN 
=NN 
fileNameNN '
.NN' (
SplitNN( -
(NN- .
$charNN. 1
)NN1 2
;NN2 3
strFileNameOO 
=OO 
DateTimeOO "
.OO" #
NowOO# &
.OO& '
ToUniversalTimeOO' 6
(OO6 7
)OO7 8
.OO8 9
ToStringOO9 A
(OOA B
$strOOB N
)OON O
+OOP Q
$strOOR U
+OOV W
DateTimeOOX `
.OO` a
NowOOa d
.OOd e
ToUniversalTimeOOe t
(OOt u
)OOu v
.OOv w
ToStringOOw 
(	OO Ä
$str
OOÄ ñ
)
OOñ ó
+
OOò ô
$str
OOö ù
+
OOû ü
strName
OO† ß
[
OOß ®
strName
OO® Ø
.
OOØ ∞
Length
OO∞ ∂
-
OO∑ ∏
$num
OOπ ∫
]
OO∫ ª
;
OOª º
returnPP 
strFileNamePP 
;PP 
}QQ 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
stringZZ  
>ZZ  !!
UploadFileToBlobAsyncZZ" 7
(ZZ7 8
stringZZ8 >
strFileNameZZ? J
,ZZJ K
byteZZL P
[ZZP Q
]ZZQ R
fileDataZZS [
,ZZ[ \
stringZZ] c
fileMimeTypeZZd p
)ZZp q
{[[ 	
try\\ 
{]] 
CloudStorageAccount^^ #
cloudStorageAccount^^$ 7
=^^8 9
CloudStorageAccount^^: M
.^^M N
Parse^^N S
(^^S T
	accessKey^^T ]
)^^] ^
;^^^ _
CloudBlobClient__ 
cloudBlobClient__  /
=__0 1
cloudStorageAccount__2 E
.__E F!
CreateCloudBlobClient__F [
(__[ \
)__\ ]
;__] ^
string`` 
strContainerName`` '
=``( )
$str``* 3
;``3 4
CloudBlobContaineraa "
cloudBlobContaineraa# 5
=aa6 7
cloudBlobClientaa8 G
.aaG H!
GetContainerReferenceaaH ]
(aa] ^
strContainerNameaa^ n
)aan o
;aao p
stringbb 
fileNamebb 
=bb  !
thisbb" &
.bb& '
GenerateFileNamebb' 7
(bb7 8
strFileNamebb8 C
)bbC D
;bbD E
ifdd 
(dd 
awaitdd 
cloudBlobContainerdd ,
.dd, -"
CreateIfNotExistsAsyncdd- C
(ddC D
)ddD E
)ddE F
{ee 
awaitff 
cloudBlobContainerff ,
.ff, -
SetPermissionsAsyncff- @
(ff@ A
newffA D$
BlobContainerPermissionsffE ]
{ff^ _
PublicAccessff` l
=ffm n*
BlobContainerPublicAccessType	ffo å
.
ffå ç
Blob
ffç ë
}
ffí ì
)
ffì î
;
ffî ï
}gg 
ifii 
(ii 
fileNameii 
!=ii 
nullii  $
&&ii% '
fileDataii( 0
!=ii1 3
nullii4 8
)ii8 9
{jj 
CloudBlockBlobkk "
cloudBlockBlobkk# 1
=kk2 3
cloudBlobContainerkk4 F
.kkF G!
GetBlockBlobReferencekkG \
(kk\ ]
fileNamekk] e
)kke f
;kkf g
cloudBlockBlobll "
.ll" #

Propertiesll# -
.ll- .
ContentTypell. 9
=ll: ;
fileMimeTypell< H
;llH I
awaitmm 
cloudBlockBlobmm (
.mm( )$
UploadFromByteArrayAsyncmm) A
(mmA B
fileDatammB J
,mmJ K
$nummmL M
,mmM N
fileDatammO W
.mmW X
LengthmmX ^
)mm^ _
;mm_ `
returnnn 
cloudBlockBlobnn )
.nn) *
Urinn* -
.nn- .
AbsoluteUrinn. 9
;nn9 :
}oo 
returnpp 
$strpp 
;pp 
}qq 
catchrr 
{ss 
throwtt 
;tt 
}uu 
}vv 	
}ww 
}xx ≤+
LD:\Projects\IBBuisnessService\IBBusinessAzure.Services\ServiceBusConsumer.cs
	namespace 	
IBBusinessAzure
 
. 
Services "
{ 
public 

class 
ServiceBusConsumer #
:# $
IServiceBusConsumer% 8
{ 
private 
readonly 
ISubscriptionClient ,
_subscriptionClient- @
;@ A
private 
const 
string 

Topic_Name '
=( )
$str* 3
;3 4
private 
const 
string 
Subcription_Name -
=. /
$str0 ?
;? @
private 
readonly 
ILogger  
_logger! (
;( )
public 
ServiceBusConsumer !
(! "
IConfiguration" 0
configuration1 >
,> ?
ILogger? F
<F G
ServiceBusConsumerG Y
>Y Z
logger[ a
)a b
{ 	
_logger 
= 
logger 
; 
_subscriptionClient 
=  !
new" %
SubscriptionClient& 8
(8 9
configuration9 F
.F G
GetConnectionStringG Z
(Z [
$str[ w
)w x
.x y
ToString	y Å
(
Å Ç
)
Ç É
,
É Ñ

Topic_Name
Ö è
,
è ê
Subcription_Name
ë °
)
° ¢
;
¢ £
} 	
public!! 
void!! 6
*RegisterOnMessageHandlerAndReceiveMessages!! >
(!!> ?
)!!? @
{"" 	
var## !
messageHandlerOptions## %
=##& '
new##( +!
MessageHandlerOptions##, A
(##A B$
ExceptionReceivedHandler##B Z
)##Z [
{$$ 
MaxConcurrentCalls%% "
=%%# $
$num%%% &
,%%& '
AutoComplete&& 
=&& 
false&& $
}'' 
;'' 
_subscriptionClient)) 
.))  "
RegisterMessageHandler))  6
())6 7 
ProcessMessagesAsync))7 K
,))K L!
messageHandlerOptions))M b
)))b c
;))c d
}** 	
private22 
async22 
Task22  
ProcessMessagesAsync22 /
(22/ 0
Message220 7
message228 ?
,22? @
CancellationToken22A R
token22S X
)22X Y
{33 	
Console44 
.44 
	WriteLine44 
(44 
$"44  -
!Received message: SequenceNumber:44  A
{44A B
message44B I
.44I J
SystemProperties44J Z
.44Z [
SequenceNumber44[ i
}44i j
 Body:44j p
{44p q
Encoding44q y
.44y z
UTF844z ~
.44~ 
	GetString	44 à
(
44à â
message
44â ê
.
44ê ë
Body
44ë ï
)
44ï ñ
}
44ñ ó
"
44ó ò
)
44ò ô
;
44ô ö
var66 
	myPayload66 
=66 
JsonConvert66 '
.66' (
DeserializeObject66( 9
<669 :
Payload66: A
>66A B
(66B C
Encoding66C K
.66K L
UTF866L P
.66P Q
	GetString66Q Z
(66Z [
message66[ b
.66b c
Body66c g
)66g h
)66h i
;66i j
await88 
_subscriptionClient88 %
.88% &
CompleteAsync88& 3
(883 4
message884 ;
.88; <
SystemProperties88< L
.88L M
	LockToken88M V
)88V W
;88W X
}99 	
private@@ 
Task@@ $
ExceptionReceivedHandler@@ -
(@@- .&
ExceptionReceivedEventArgs@@. H&
exceptionReceivedEventArgs@@I c
)@@c d
{AA 	
_loggerBB 
.BB 
LogErrorBB 
(BB &
exceptionReceivedEventArgsBB 7
.BB7 8
	ExceptionBB8 A
,BBA B
$strBBC m
)BBm n
;BBn o
varCC 
contextCC 
=CC &
exceptionReceivedEventArgsCC 4
.CC4 5$
ExceptionReceivedContextCC5 M
;CCM N
_loggerEE 
.EE 
LogDebugEE 
(EE 
$"EE 
- Endpoint: EE +
{EE+ ,
contextEE, 3
.EE3 4
EndpointEE4 <
}EE< =
"EE= >
)EE> ?
;EE? @
_loggerFF 
.FF 
LogDebugFF 
(FF 
$"FF 
- Entity Path: FF .
{FF. /
contextFF/ 6
.FF6 7

EntityPathFF7 A
}FFA B
"FFB C
)FFC D
;FFD E
_loggerGG 
.GG 
LogDebugGG 
(GG 
$"GG  
- Executing Action: GG 3
{GG3 4
contextGG4 ;
.GG; <
ActionGG< B
}GGB C
"GGC D
)GGD E
;GGE F
returnII 
TaskII 
.II 
CompletedTaskII %
;II% &
}JJ 	
publicPP 
asyncPP 
TaskPP 
CloseTopicAsyncPP )
(PP) *
)PP* +
{QQ 	
awaitRR 
_subscriptionClientRR %
.RR% &

CloseAsyncRR& 0
(RR0 1
)RR1 2
;RR2 3
}SS 	
}TT 
}UU È
JD:\Projects\IBBuisnessService\IBBusinessAzure.Services\ServiceBusSender.cs
	namespace 	
IBBusinessAzure
 
. 
Services "
{ 
public 

class 
ServiceBusSender !
:! "
IServiceBusSender" 3
{ 
private 
readonly 
TopicClient $
_topicClient% 1
;1 2
private 
const 
string 

TOPIC_PATH '
=( )
$str* 3
;3 4
private 
readonly 
ILogger  
_logger! (
;( )
public 
ServiceBusSender 
(  
IConfiguration  .
configuration/ <
,< =
ILogger> E
<E F
ServiceBusSenderF V
>V W
loggerX ^
)^ _
{ 	
_logger 
= 
logger 
; 
_topicClient 
= 
new 
TopicClient *
(* +
configuration 
. 
GetConnectionString 1
(1 2
$str2 N
)N O
,O P

TOPIC_PATH 
) 
; 
} 	
public$$ 
async$$ 
Task$$ 
SendMessage$$ %
($$% &
Payload$$& -
payload$$. 5
)$$5 6
{%% 	
string&& 
data&& 
=&& 
JsonConvert&& %
.&&% &
SerializeObject&&& 5
(&&5 6
payload&&6 =
)&&= >
;&&> ?
Message'' 
message'' 
='' 
new'' !
Message''" )
('') *
Encoding''* 2
.''2 3
UTF8''3 7
.''7 8
GetBytes''8 @
(''@ A
data''A E
)''E F
)''F G
;''G H
message(( 
.(( 
UserProperties(( "
.((" #
Add((# &
(((& '
$str((' .
,((. /
payload((0 7
.((7 8
Goals((8 =
)((= >
;((> ?
try** 
{++ 
await,, 
_topicClient,, "
.,," #
	SendAsync,,# ,
(,,, -
message,,- 4
),,4 5
;,,5 6
}-- 
catch.. 
(.. 
	Exception.. 
e.. 
).. 
{// 
_logger00 
.00 
LogError00  
(00  !
e00! "
.00" #
Message00# *
)00* +
;00+ ,
}11 
}22 	
}33 
}44 