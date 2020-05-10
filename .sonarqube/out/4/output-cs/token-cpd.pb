Ôr
YD:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\v1\CourseApiController.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Controllers  +
.+ ,
v1, .
{ 
[ 
CustomAuthorization 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[ 
ApiController 
] 
public 

class 
CourseApiController $
:% &
ControllerBase' 5
{ 
private 
readonly 
ICourseService '
_courseService( 6
;6 7
private 
readonly 
ILogger  
<  !
CourseApiController! 4
>4 5
_logger6 =
;= >
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IDistributedCache *
_cache+ 1
;1 2
public 
CourseApiController "
(" #
ICourseService# 1
courseService2 ?
,? @
ILoggerA H
<H I
CourseApiControllerI \
>\ ]
logger^ d
,d e
IMapper 
mapper 
, 
IDistributedCache -
cache. 3
)3 4
{ 	
_courseService 
= 
courseService *
;* +
_logger   
=   
logger   
;   
_mapper!! 
=!! 
mapper!! 
;!! 
_cache"" 
="" 
cache"" 
;"" 
}## 	
[** 	
HttpGet**	 
]** 
public++ 
async++ 
Task++ 
<++ 
ActionResult++ &
>++& '
	GetCourse++( 1
(++1 2
)++2 3
{,, 	
_logger-- 
.-- 
LogInformation-- "
(--" #
ConstantVarriables--# 5
.--5 6'
CourseApiGetAllEnterMessage--6 Q
)--Q R
;--R S
ObjectResult.. 
response.. !
;..! "
try// 
{00 
List11 
<11 
	CourseDto11 
>11 

listCourse11  *
=11+ ,
new11- 0
List111 5
<115 6
	CourseDto116 ?
>11? @
(11@ A
)11A B
;11B C
var33 
	cachedObj33 
=33 
_cache33  &
.33& '
	GetString33' 0
(330 1
$str331 @
)33@ A
;33A B
if44 
(44 
string44 
.44 
IsNullOrEmpty44 (
(44( )
	cachedObj44) 2
)442 3
)443 4
{55 
var66 
data66 
=66 
await66 $
_courseService66% 3
.663 4
GetAllCourses664 A
(66A B
)66B C
;66C D

listCourse77 
=77  
_mapper77! (
.77( )
Map77) ,
<77, -
List77- 1
<771 2
	CourseDto772 ;
>77; <
>77< =
(77= >
data77> B
)77B C
;77C D
var99 
options99 
=99  !
new99" %(
DistributedCacheEntryOptions99& B
(99B C
)99C D
;99D E
options:: 
.:: !
SetAbsoluteExpiration:: 1
(::1 2
DateTimeOffset::2 @
.::@ A
Now::A D
.::D E

AddMinutes::E O
(::O P
$num::P Q
)::Q R
)::R S
;::S T
_cache;; 
.;; 
	SetString;; $
(;;$ %
$str;;% 4
,;;4 5
JsonConvert;;6 A
.;;A B
SerializeObject;;B Q
(;;Q R

listCourse;;R \
);;\ ]
,;;] ^
options;;_ f
);;f g
;;;g h
}<< 
else== 
{>> 

listCourse?? 
=??  
JsonConvert??! ,
.??, -
DeserializeObject??- >
<??> ?
List??? C
<??C D
	CourseDto??D M
>??M N
>??N O
(??O P
	cachedObj??P Y
)??Y Z
;??Z [
}@@ 
responseBB 
=BB 
OkBB 
(BB 

listCourseBB (
)BB( )
;BB) *
}CC 
catchDD 
(DD 
	ExceptionDD 
exDD 
)DD  
{EE 
_loggerFF 
.FF 
LogErrorFF  
(FF  !
exFF! #
,FF# $
exFF% '
.FF' (
MessageFF( /
)FF/ 0
;FF0 1
responseGG 
=GG 

BadRequestGG %
(GG% &
ConstantVarriablesGG& 8
.GG8 9"
GenericExeptionMessageGG9 O
)GGO P
;GGP Q
}HH 
_loggerII 
.II 
LogInformationII "
(II" #
ConstantVarriablesII# 5
.II5 6&
CourseApiGetAllExitMessageII6 P
)IIP Q
;IIQ R
returnJJ 
responseJJ 
;JJ 
}KK 	
[SS 	
HttpGetSS	 
(SS 
$strSS 
)SS 
]SS 
publicTT 
asyncTT 
TaskTT 
<TT 
ActionResultTT &
>TT& '
	GetCourseTT( 1
(TT1 2
intTT2 5
idTT6 8
)TT8 9
{UU 	
_loggerVV 
.VV 
LogInformationVV "
(VV" #
ConstantVarriablesVV# 5
.VV5 6*
CourseApiGetCourseEnterMessageVV6 T
)VVT U
;VVU V
ObjectResultWW 
responseWW !
;WW! "
tryXX 
{YY 
varZZ 
dataZZ 
=ZZ 
awaitZZ  
_courseServiceZZ! /
.ZZ/ 0
GetCourseByIdZZ0 =
(ZZ= >
idZZ> @
)ZZ@ A
;ZZA B
var[[ 

dataResult[[ 
=[[  
_mapper[[! (
.[[( )
Map[[) ,
<[[, -
	CourseDto[[- 6
>[[6 7
([[7 8
data[[8 <
)[[< =
;[[= >
response\\ 
=\\ 
Ok\\ 
(\\ 

dataResult\\ (
)\\( )
;\\) *
}]] 
catch^^ 
(^^ 
	Exception^^ 
ex^^ 
)^^  
{__ 
_logger`` 
.`` 
LogError``  
(``  !
ex``! #
,``# $
ex``% '
.``' (
Message``( /
)``/ 0
;``0 1
responseaa 
=aa 

BadRequestaa %
(aa% &
ConstantVarriablesaa& 8
.aa8 9"
GenericExeptionMessageaa9 O
)aaO P
;aaP Q
}bb 
_loggercc 
.cc 
LogInformationcc "
(cc" #
ConstantVarriablescc# 5
.cc5 6)
CourseApiGetCourseExitMessagecc6 S
)ccS T
;ccT U
returndd 
responsedd 
;dd 
}ee 	
[nn 	
HttpPutnn	 
(nn 
$strnn 
)nn 
]nn 
publicoo 
asyncoo 
Taskoo 
<oo 
ActionResultoo &
>oo& '
	PutCourseoo( 1
(oo1 2
intoo2 5
idoo6 8
,oo8 9
[oo: ;
FromBodyoo; C
]ooC D
CourseUpdateDtoooE T
courseooU [
)oo[ \
{pp 	
_loggerqq 
.qq 
LogInformationqq "
(qq" #
ConstantVarriablesqq# 5
.qq5 6*
CourseApiPutCourseEnterMessageqq6 T
)qqT U
;qqU V
ObjectResultrr 
responserr !
;rr! "
ifss 
(ss 
idss 
!=ss 
coursess 
.ss 
CourseIdss %
)ss% &
responsett 
=tt 

BadRequesttt %
(tt% &
ConstantVarriablestt& 8
.tt8 9
NoValidDatatt9 D
)ttD E
;ttE F
elseuu 
{vv 
tryww 
{xx 
varyy 
courseEntityyy $
=yy% &
_mapperyy' .
.yy. /
Mapyy/ 2
<yy2 3
Courseyy3 9
>yy9 :
(yy: ;
courseyy; A
)yyA B
;yyB C
awaitzz 
_courseServicezz (
.zz( )
UpdateCoursezz) 5
(zz5 6
idzz6 8
,zz8 9
courseEntityzz: F
)zzF G
;zzG H
response{{ 
={{ 
Ok{{ !
({{! "
ConstantVarriables{{" 4
.{{4 5
DataUpdated{{5 @
){{@ A
;{{A B
}|| 
catch}} 
(}} 
	Exception}}  
ex}}! #
)}}# $
{~~ 
_logger 
. 
LogError $
($ %
ex% '
,' (
ex) +
.+ ,
Message, 3
)3 4
;4 5
response
ÄÄ 
=
ÄÄ 

BadRequest
ÄÄ )
(
ÄÄ) * 
ConstantVarriables
ÄÄ* <
.
ÄÄ< =$
GenericExeptionMessage
ÄÄ= S
)
ÄÄS T
;
ÄÄT U
}
ÅÅ 
}
ÇÇ 
_logger
ÉÉ 
.
ÉÉ 
LogInformation
ÉÉ "
(
ÉÉ" # 
ConstantVarriables
ÉÉ# 5
.
ÉÉ5 6+
CourseApiPutCourseExitMessage
ÉÉ6 S
)
ÉÉS T
;
ÉÉT U
return
ÑÑ 
response
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
[
çç 	
HttpPost
çç	 
]
çç 
public
éé 
async
éé 
Task
éé 
<
éé 
ActionResult
éé &
>
éé& '

PostCourse
éé( 2
(
éé2 3
[
éé3 4
FromBody
éé4 <
]
éé< =
CourseCreationDto
éé= N
course
ééO U
)
ééU V
{
èè 	
_logger
êê 
.
êê 
LogInformation
êê "
(
êê" # 
ConstantVarriables
êê# 5
.
êê5 6-
CourseApiPostCourseEnterMessage
êê6 U
)
êêU V
;
êêV W
ObjectResult
ëë 
response
ëë !
;
ëë! "
if
íí 
(
íí 
course
íí 
==
íí 
null
íí 
)
íí 
response
ìì 
=
ìì 

BadRequest
ìì %
(
ìì% & 
ConstantVarriables
ìì& 8
.
ìì8 9

ModelEmpty
ìì9 C
)
ììC D
;
ììD E
else
îî 
{
ïï 
try
ññ 
{
óó 
var
òò 
courseEntity
òò $
=
òò% &
_mapper
òò' .
.
òò. /
Map
òò/ 2
<
òò2 3
Course
òò3 9
>
òò9 :
(
òò: ;
course
òò; A
)
òòA B
;
òòB C
await
ôô 
_courseService
ôô (
.
ôô( )
CreateCourse
ôô) 5
(
ôô5 6
courseEntity
ôô6 B
)
ôôB C
;
ôôC D
response
öö 
=
öö 
Ok
öö !
(
öö! " 
ConstantVarriables
öö" 4
.
öö4 5
	DataSaved
öö5 >
)
öö> ?
;
öö? @
}
õõ 
catch
úú 
(
úú 
	Exception
úú  
ex
úú! #
)
úú# $
{
ùù 
_logger
ûû 
.
ûû 
LogError
ûû $
(
ûû$ %
ex
ûû% '
,
ûû' (
ex
ûû) +
.
ûû+ ,
Message
ûû, 3
)
ûû3 4
;
ûû4 5
response
üü 
=
üü 

BadRequest
üü )
(
üü) * 
ConstantVarriables
üü* <
.
üü< =$
GenericExeptionMessage
üü= S
)
üüS T
;
üüT U
}
†† 
}
°° 
_logger
¢¢ 
.
¢¢ 
LogInformation
¢¢ "
(
¢¢" # 
ConstantVarriables
¢¢# 5
.
¢¢5 6,
CourseApiPostCourseExitMessage
¢¢6 T
)
¢¢T U
;
¢¢U V
return
££ 
response
££ 
;
££ 
}
§§ 	
[
¨¨ 	

HttpDelete
¨¨	 
(
¨¨ 
$str
¨¨ 
)
¨¨ 
]
¨¨ 
public
≠≠ 
async
≠≠ 
Task
≠≠ 
<
≠≠ 
ActionResult
≠≠ &
>
≠≠& '
DeleteCourse
≠≠( 4
(
≠≠4 5
int
≠≠5 8
id
≠≠9 ;
)
≠≠; <
{
ÆÆ 	
_logger
ØØ 
.
ØØ 
LogInformation
ØØ "
(
ØØ" # 
ConstantVarriables
ØØ# 5
.
ØØ5 6/
!CourseApiDeleteCourseEnterMessage
ØØ6 W
)
ØØW X
;
ØØX Y
ObjectResult
∞∞ 
response
∞∞ !
;
∞∞! "
try
±± 
{
≤≤ 
var
≥≥ 
status
≥≥ 
=
≥≥ 
await
≥≥ "
_courseService
≥≥# 1
.
≥≥1 2
DeleteCourse
≥≥2 >
(
≥≥> ?
id
≥≥? A
)
≥≥A B
;
≥≥B C
if
¥¥ 
(
¥¥ 
status
¥¥ 
)
¥¥ 
response
µµ 
=
µµ 
Ok
µµ !
(
µµ! " 
ConstantVarriables
µµ" 4
.
µµ4 5
DataDeleted
µµ5 @
)
µµ@ A
;
µµA B
else
∂∂ 
response
∑∑ 
=
∑∑ 
NotFound
∑∑ '
(
∑∑' ( 
ConstantVarriables
∑∑( :
.
∑∑: ;
CourseNotFound
∑∑; I
)
∑∑I J
;
∑∑J K
}
∏∏ 
catch
ππ 
(
ππ 
	Exception
ππ 
ex
ππ 
)
ππ  
{
∫∫ 
_logger
ªª 
.
ªª 
LogError
ªª  
(
ªª  !
ex
ªª! #
,
ªª# $
ex
ªª% '
.
ªª' (
Message
ªª( /
)
ªª/ 0
;
ªª0 1
response
ºº 
=
ºº 

BadRequest
ºº %
(
ºº% & 
ConstantVarriables
ºº& 8
.
ºº8 9$
GenericExeptionMessage
ºº9 O
)
ººO P
;
ººP Q
}
ΩΩ 
_logger
øø 
.
øø 
LogInformation
øø "
(
øø" # 
ConstantVarriables
øø# 5
.
øø5 6.
 CourseApiDeleteCourseExitMessage
øø6 V
)
øøV W
;
øøW X
return
¿¿ 
response
¿¿ 
;
¿¿ 
}
¡¡ 	
}
√√ 
}ƒƒ Çq
ZD:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\v1\ProgramApiController.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Controllers  +
.+ ,
v1, .
{ 
[ 
CustomAuthorization 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[ 
ApiController 
] 
public 

class  
ProgramApiController %
:& '
ControllerBase( 6
{ 
private 
readonly 
ILogger  
<  ! 
ProgramApiController! 5
>5 6
_logger7 >
;> ?
private 
readonly 
IProgramService (
_programService) 8
;8 9
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IDistributedCache *
_cache+ 1
;1 2
public  
ProgramApiController #
(# $
IProgramService$ 3
programService4 B
,B C
ILoggerD K
<K L 
ProgramApiControllerL `
>` a
loggerb h
,h i
IMapper 
mapper 
, 
IDistributedCache -
cache. 3
)3 4
{ 	
_programService 
= 
programService ,
;, -
_logger 
= 
logger 
; 
_mapper   
=   
mapper   
;   
_cache!! 
=!! 
cache!! 
;!! 
}"" 	
[** 	
HttpGet**	 
]** 
public++ 
async++ 
Task++ 
<++ 
ActionResult++ &
>++& '
Get++( +
(+++ ,
)++, -
{,, 	
_logger-- 
.-- 
LogInformation-- "
(--" #
ConstantVarriables--# 5
.--5 6'
CourseApiGetAllEnterMessage--6 Q
)--Q R
;--R S
ObjectResult.. 
response.. !
;..! "
try// 
{00 
List11 
<11 

ProgramDto11 
>11  
listProgram11! ,
=11- .
new11/ 2
List113 7
<117 8

ProgramDto118 B
>11B C
(11C D
)11D E
;11E F
var33 
	cachedObj33 
=33 
_cache33  &
.33& '
	GetString33' 0
(330 1
$str331 A
)33A B
;33B C
if44 
(44 
string44 
.44 
IsNullOrEmpty44 (
(44( )
	cachedObj44) 2
)442 3
)443 4
{55 
var66 
data66 
=66 
await66 $
_programService66% 4
.664 5
GetAllProgram665 B
(66B C
)66C D
;66D E
listProgram77 
=77  !
_mapper77" )
.77) *
Map77* -
<77- .
List77. 2
<772 3

ProgramDto773 =
>77= >
>77> ?
(77? @
data77@ D
)77D E
;77E F
var99 
options99 
=99  !
new99" %(
DistributedCacheEntryOptions99& B
(99B C
)99C D
;99D E
options:: 
.:: !
SetAbsoluteExpiration:: 1
(::1 2
DateTimeOffset::2 @
.::@ A
Now::A D
.::D E

AddMinutes::E O
(::O P
$num::P Q
)::Q R
)::R S
;::S T
_cache;; 
.;; 
	SetString;; $
(;;$ %
$str;;% 5
,;;5 6
JsonConvert;;7 B
.;;B C
SerializeObject;;C R
(;;R S
listProgram;;S ^
);;^ _
,;;_ `
options;;a h
);;h i
;;;i j
}<< 
else== 
{>> 
listProgram?? 
=??  !
JsonConvert??" -
.??- .
DeserializeObject??. ?
<??? @
List??@ D
<??D E

ProgramDto??E O
>??O P
>??P Q
(??Q R
	cachedObj??R [
)??[ \
;??\ ]
}@@ 
responseAA 
=AA 
OkAA 
(AA 
listProgramAA )
)AA) *
;AA* +
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
_loggerEE 
.EE 
LogErrorEE  
(EE  !
exEE! #
,EE# $
exEE% '
.EE' (
MessageEE( /
)EE/ 0
;EE0 1
responseFF 
=FF 

BadRequestFF %
(FF% &
ConstantVarriablesFF& 8
.FF8 9"
GenericExeptionMessageFF9 O
)FFO P
;FFP Q
}GG 
_loggerHH 
.HH 
LogInformationHH "
(HH" #
ConstantVarriablesHH# 5
.HH5 6&
CourseApiGetAllExitMessageHH6 P
)HHP Q
;HHQ R
returnII 
responseII 
;II 
}JJ 	
[RR 	
HttpGetRR	 
(RR 
$strRR 
,RR 
NameRR 
=RR 
$strRR  %
)RR% &
]RR& '
publicSS 
asyncSS 
TaskSS 
<SS 
ActionResultSS &
>SS& '

GetProgramSS( 2
(SS2 3
intSS3 6
idSS7 9
)SS9 :
{TT 	
_loggerUU 
.UU 
LogInformationUU "
(UU" #
ConstantVarriablesUU# 5
.UU5 6,
 ProgramApiGetProgramEnterMessageUU6 V
)UUV W
;UUW X
ObjectResultVV 
responseVV !
;VV! "
tryWW 
{XX 
varYY 
dataYY 
=YY 
awaitYY  
_programServiceYY! 0
.YY0 1
GetProgramByIdYY1 ?
(YY? @
idYY@ B
)YYB C
;YYC D
varZZ 

dataResultZZ 
=ZZ  
_mapperZZ! (
.ZZ( )
MapZZ) ,
<ZZ, -

ProgramDtoZZ- 7
>ZZ7 8
(ZZ8 9
dataZZ9 =
)ZZ= >
;ZZ> ?
response[[ 
=[[ 
Ok[[ 
([[ 

dataResult[[ (
)[[( )
;[[) *
}\\ 
catch]] 
(]] 
	Exception]] 
ex]] 
)]]  
{^^ 
_logger__ 
.__ 
LogError__  
(__  !
ex__! #
,__# $
ex__% '
.__' (
Message__( /
)__/ 0
;__0 1
response`` 
=`` 

BadRequest`` %
(``% &
ConstantVarriables``& 8
.``8 9"
GenericExeptionMessage``9 O
)``O P
;``P Q
}aa 
_loggerbb 
.bb 
LogInformationbb "
(bb" #
ConstantVarriablesbb# 5
.bb5 6+
ProgramApiGetProgramExitMessagebb6 U
)bbU V
;bbV W
returncc 
responsecc 
;cc 
}dd 	
[ll 	
HttpPostll	 
]ll 
publicmm 
asyncmm 
Taskmm 
<mm 
ActionResultmm &
>mm& '
Postmm( ,
(mm, -
[mm- .
FromBodymm. 6
]mm6 7
ProgramCreationDtomm7 I
programmmJ Q
)mmQ R
{nn 	
_loggeroo 
.oo 
LogInformationoo "
(oo" #
ConstantVarriablesoo# 5
.oo5 6-
!ProgramApiPostProgramEnterMessageoo6 W
)ooW X
;ooX Y
ObjectResultpp 
responsepp !
;pp! "
tryqq 
{rr 
varss 
programEntityss !
=ss" #
_mapperss$ +
.ss+ ,
Mapss, /
<ss/ 0
ProgramMasterss0 =
>ss= >
(ss> ?
programss? F
)ssF G
;ssG H
awaittt 
_programServicett %
.tt% &
CreateProgramtt& 3
(tt3 4
programEntitytt4 A
)ttA B
;ttB C
responseuu 
=uu 
Okuu 
(uu 
ConstantVarriablesuu 0
.uu0 1
	DataSaveduu1 :
)uu: ;
;uu; <
}vv 
catchww 
(ww 
	Exceptionww 
exww 
)ww  
{xx 
_loggeryy 
.yy 
LogErroryy  
(yy  !
exyy! #
,yy# $
exyy% '
.yy' (
Messageyy( /
)yy/ 0
;yy0 1
responsezz 
=zz 

BadRequestzz %
(zz% &
ConstantVarriableszz& 8
.zz8 9"
GenericExeptionMessagezz9 O
)zzO P
;zzP Q
}{{ 
_logger}} 
.}} 
LogInformation}} "
(}}" #
ConstantVarriables}}# 5
.}}5 6,
 ProgramApiPostProgramExitMessage}}6 V
)}}V W
;}}W X
return~~ 
response~~ 
;~~ 
} 	
[
àà 	
HttpPut
àà	 
(
àà 
$str
àà 
)
àà 
]
àà 
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
ActionResult
ââ &
>
ââ& '
Put
ââ( +
(
ââ+ ,
int
ââ, /
id
ââ0 2
,
ââ2 3
[
ââ4 5
FromBody
ââ5 =
]
ââ= >
ProgramUpdateDto
ââ? O
program
ââP W
)
ââW X
{
ää 	
_logger
ãã 
.
ãã 
LogInformation
ãã "
(
ãã" # 
ConstantVarriables
ãã# 5
.
ãã5 6.
 ProgramApiPutProgramEnterMessage
ãã6 V
)
ããV W
;
ããW X
ObjectResult
åå 
response
åå !
;
åå! "
if
çç 
(
çç 
id
çç 
!=
çç 
program
çç 
.
çç 
	ProgramId
çç '
)
çç' (
response
éé 
=
éé 

BadRequest
éé %
(
éé% & 
ConstantVarriables
éé& 8
.
éé8 9
NoValidData
éé9 D
)
ééD E
;
ééE F
else
èè 
{
êê 
try
ëë 
{
íí 
var
ìì 
programEntity
ìì %
=
ìì& '
_mapper
ìì( /
.
ìì/ 0
Map
ìì0 3
<
ìì3 4
ProgramMaster
ìì4 A
>
ììA B
(
ììB C
program
ììC J
)
ììJ K
;
ììK L
await
îî 
_programService
îî )
.
îî) *
UpdateProgram
îî* 7
(
îî7 8
id
îî8 :
,
îî: ;
programEntity
îî< I
)
îîI J
;
îîJ K
response
ïï 
=
ïï 
Ok
ïï !
(
ïï! " 
ConstantVarriables
ïï" 4
.
ïï4 5
DataUpdated
ïï5 @
)
ïï@ A
;
ïïA B
}
ññ 
catch
óó 
(
óó 
	Exception
óó  
ex
óó! #
)
óó# $
{
òò 
_logger
ôô 
.
ôô 
LogError
ôô $
(
ôô$ %
ex
ôô% '
,
ôô' (
ex
ôô) +
.
ôô+ ,
Message
ôô, 3
)
ôô3 4
;
ôô4 5
response
öö 
=
öö 

BadRequest
öö )
(
öö) * 
ConstantVarriables
öö* <
.
öö< =$
GenericExeptionMessage
öö= S
)
ööS T
;
ööT U
}
õõ 
}
úú 
_logger
ùù 
.
ùù 
LogInformation
ùù "
(
ùù" # 
ConstantVarriables
ùù# 5
.
ùù5 6-
ProgramApiPutProgramExitMessage
ùù6 U
)
ùùU V
;
ùùV W
return
ûû 
response
ûû 
;
ûû 
}
üü 	
[
ßß 	

HttpDelete
ßß	 
(
ßß 
$str
ßß 
)
ßß 
]
ßß 
public
®® 
async
®® 
Task
®® 
<
®® 
ActionResult
®® &
>
®®& '
Delete
®®( .
(
®®. /
int
®®/ 2
id
®®3 5
)
®®5 6
{
©© 	
_logger
™™ 
.
™™ 
LogInformation
™™ "
(
™™" # 
ConstantVarriables
™™# 5
.
™™5 61
#ProgramApiDeleteProgramEnterMessage
™™6 Y
)
™™Y Z
;
™™Z [
ObjectResult
´´ 
response
´´ !
;
´´! "
try
¨¨ 
{
≠≠ 
var
ÆÆ 
status
ÆÆ 
=
ÆÆ 
await
ÆÆ "
_programService
ÆÆ# 2
.
ÆÆ2 3
DeleteProgram
ÆÆ3 @
(
ÆÆ@ A
id
ÆÆA C
)
ÆÆC D
;
ÆÆD E
if
ØØ 
(
ØØ 
status
ØØ 
)
ØØ 
response
∞∞ 
=
∞∞ 
Ok
∞∞ !
(
∞∞! " 
ConstantVarriables
∞∞" 4
.
∞∞4 5
DataDeleted
∞∞5 @
)
∞∞@ A
;
∞∞A B
else
±± 
response
≤≤ 
=
≤≤ 
NotFound
≤≤ '
(
≤≤' ( 
ConstantVarriables
≤≤( :
.
≤≤: ;
ProgramNotFound
≤≤; J
)
≤≤J K
;
≤≤K L
}
≥≥ 
catch
¥¥ 
(
¥¥ 
	Exception
¥¥ 
ex
¥¥ 
)
¥¥  
{
µµ 
_logger
∂∂ 
.
∂∂ 
LogError
∂∂  
(
∂∂  !
ex
∂∂! #
,
∂∂# $
ex
∂∂% '
.
∂∂' (
Message
∂∂( /
)
∂∂/ 0
;
∂∂0 1
response
∑∑ 
=
∑∑ 

BadRequest
∑∑ %
(
∑∑% & 
ConstantVarriables
∑∑& 8
.
∑∑8 9$
GenericExeptionMessage
∑∑9 O
)
∑∑O P
;
∑∑P Q
}
∏∏ 
_logger
∫∫ 
.
∫∫ 
LogInformation
∫∫ "
(
∫∫" # 
ConstantVarriables
∫∫# 5
.
∫∫5 60
"ProgramApiDeleteProgramExitMessage
∫∫6 X
)
∫∫X Y
;
∫∫Y Z
return
ªª 
response
ªª 
;
ªª 
}
ºº 	
}
ΩΩ 
}ææ ≈
cD:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\v2\AzureFunctionInvokeController.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Controllers  +
.+ ,
v2, .
{		 
[

 
Route

 

(


 
$str

  
)

  !
]

! "
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[ 
ApiController 
] 
public 

class )
AzureFunctionInvokeController .
:/ 0
ControllerBase1 ?
{ 
private 
readonly 
ILogger  
<  !)
AzureFunctionInvokeController! >
>> ?
_logger@ G
;G H
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public )
AzureFunctionInvokeController ,
(, -
ILogger- 4
<4 5)
AzureFunctionInvokeController5 R
>R S
loggerT Z
,Z [
IConfiguration\ j
configurationk x
)x y
{ 	
_logger 
= 
logger 
; 
_configuration 
= 
configuration *
;* +
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetFunctionValue) 9
(9 :
string: @
nameA E
)E F
{ 	
_logger 
. 
LogInformation "
(" #
ConstantVarriables# 5
.5 6:
.AzureFuntionInvokeGetFunctionValueEnterMessage6 d
)d e
;e f
ObjectResult 
response !
;! "
try 
{ %
AzureFunctionInvokeHelper )
helper* 0
=1 2
new3 6%
AzureFunctionInvokeHelper7 P
(P Q
_configurationQ _
)_ `
;` a
string   
message   
=    
await  ! &
helper  ' -
.  - .
InvokeFunction  . <
(  < =
name  = A
)  A B
;  B C
response!! 
=!! 
Ok!! 
(!! 
message!! %
)!!% &
;!!& '
}"" 
catch## 
(## 
	Exception## 
ex## 
)##  
{$$ 
_logger%% 
.%% 
LogError%%  
(%%  !
ex%%! #
,%%# $
ex%%% '
.%%' (
Message%%( /
)%%/ 0
;%%0 1
response&& 
=&& 

BadRequest&& %
(&&% &
ConstantVarriables&&& 8
.&&8 9"
GenericExeptionMessage&&9 O
)&&O P
;&&P Q
}'' 
_logger(( 
.(( 
LogInformation(( "
(((" #
ConstantVarriables((# 5
.((5 69
-AzureFuntionInvokeGetFunctionValueExitMessage((6 c
)((c d
;((d e
return)) 
response)) 
;)) 
}** 	
}++ 
}-- Ñ
bD:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\v2\AzureServiceBusApiController.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Controllers  +
.+ ,
v2, .
{ 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[ 
ApiController 
] 
public 

class (
AzureServiceBusApiController -
:. /
ControllerBase0 >
{ 
private 
readonly 
IServiceBusSender *
_serviceBusSender+ <
;< =
private 
readonly 
ILogger  
<  !(
AzureServiceBusApiController! =
>= >
_logger? F
;F G
public (
AzureServiceBusApiController +
(+ ,
IServiceBusSender, =
serviceBusSender> N
,N O
ILoggerP W
<W X(
AzureServiceBusApiControllerX t
>t u
loggerv |
)| }
{ 	
_serviceBusSender 
= 
serviceBusSender  0
;0 1
_logger 
= 
logger 
; 
} 	
[!! 	
HttpPost!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
Create"") /
(""/ 0
[""0 1
FromBody""1 9
]""9 :
["": ;
Required""; C
]""C D

PayloadDto""E O
request""P W
)""W X
{## 	
_logger$$ 
.$$ 
LogInformation$$ "
($$" #
ConstantVarriables$$# 5
.$$5 60
$AzureServiceBusApiCreateEnterMessage$$6 Z
)$$Z [
;$$[ \
ObjectResult%% 
response%% !
;%%! "
try&& 
{'' 
await(( 
_serviceBusSender(( '
.((' (
SendMessage((( 3
(((3 4
new((4 7
Payload((8 ?
{)) 
Goals** 
=** 
request** #
.**# $
Goals**$ )
,**) *
Name++ 
=++ 
request++ "
.++" #
Name++# '
,++' (
Delete,, 
=,, 
false,, "
}-- 
)-- 
;-- 
response.. 
=.. 
Ok.. 
(.. 
ConstantVarriables.. 0
...0 1#
TopicPushSuccessMessage..1 H
+..I J
$str..K X
+..X Y
request..Z a
...a b
Name..b f
)..f g
;..g h
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
_logger22 
.22 
LogError22  
(22  !
ex22! #
,22# $
ex22% '
.22' (
Message22( /
)22/ 0
;220 1
response33 
=33 

BadRequest33 %
(33% &
ConstantVarriables33& 8
.338 9"
GenericExeptionMessage339 O
)33O P
;33P Q
}44 
_logger55 
.55 
LogInformation55 "
(55" #
ConstantVarriables55# 5
.555 6/
#AzureServiceBusApiCreateExitMessage556 Y
)55Y Z
;55Z [
return66 
response66 
;66 
}77 	
}88 
}99 Œ
^D:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\v2\FileHandlerApiController.cs
	namespace

 	
IBBusinessService


 
.

 
Api

 
.

  
Controllers

  +
.

+ ,
v2

, .
{ 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
[ 
ApiController 
] 
public 

class $
FileHandlerApiController )
:* +
ControllerBase, :
{ 
private 
readonly 
ILogger  
<  !$
FileHandlerApiController! 9
>9 :
_logger; B
;B C
private 
readonly 
IBlobStorageService ,
_blobStorageService- @
;@ A
public $
FileHandlerApiController '
(' (
ILogger( /
</ 0$
FileHandlerApiController0 H
>H I
loggerJ P
,P Q
IBlobStorageServiceR e
blobStorageServicef x
)x y
{ 	
_logger 
= 
logger 
; 
_blobStorageService 
=  !
blobStorageService" 4
;4 5
} 	
[ 	
HttpPost	 
] 
public   
async   
Task   
<   
IActionResult   '
>  ' (
Upload  ) /
(  / 0
	IFormFile  0 9
file  : >
)  > ?
{!! 	
_logger"" 
."" 
LogInformation"" "
(""" #
ConstantVarriables""# 5
.""5 6,
 FileHandlerApiUploadEnterMessage""6 V
)""V W
;""W X
ObjectResult## 
response## !
;##! "
try$$ 
{%% 
var&& 
fileName&& 
=&& 
Path&& #
.&&# $
GetFileName&&$ /
(&&/ 0
file&&0 4
.&&4 5
FileName&&5 =
)&&= >
;&&> ?
string'' 
mimeType'' 
=''  !
file''" &
.''& '
ContentType''' 2
;''2 3
byte(( 
[(( 
](( 
fileData(( 
=((  !
new((" %
byte((& *
[((* +
file((+ /
.((/ 0
Length((0 6
]((6 7
;((7 8
string** 
filePath** 
=**  !
await**" '
_blobStorageService**( ;
.**; <!
UploadFileToBlobAsync**< Q
(**Q R
fileName**R Z
,**Z [
fileData**\ d
,**d e
mimeType**f n
)**n o
;**o p
response++ 
=++ 
Ok++ 
(++ 
ConstantVarriables++ 0
.++0 1
FileUploadMessage++1 B
+++C D
filePath++E M
)++M N
;++N O
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
_logger// 
.// 
LogError//  
(//  !
ex//! #
,//# $
ex//% '
.//' (
Message//( /
)/// 0
;//0 1
response00 
=00 

BadRequest00 %
(00% &
ConstantVarriables00& 8
.008 9"
GenericExeptionMessage009 O
)00O P
;00P Q
}11 
_logger22 
.22 
LogInformation22 "
(22" #
ConstantVarriables22# 5
.225 6+
FileHandlerApiUploadExitMessage226 U
)22U V
;22V W
return33 
response33 
;33 
}44 	
}55 
}66 Íe
RD:\Projects\IBBuisnessService\IBBusinessService.Api\Filters\CustomAuthorization.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Filters  '
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
)* +
]+ ,
public 

class (
CustomAuthorizationAttribute -
:. /
	Attribute0 9
,9 : 
IAuthorizationFilter; O
{ 
private 
IUserService 
_userService )
;) *
private #
IUserRoleMappingService '#
_userRoleMappingService( ?
;? @
public 
void 
OnAuthorization #
(# $&
AuthorizationFilterContext$ >
context? F
)F G
{ 	
_userService 
= 
context "
." #
HttpContext# .
.. /
RequestServices/ >
.> ?

GetService? I
<I J
IUserServiceJ V
>V W
(W X
)X Y
;Y Z#
_userRoleMappingService #
=$ %
context& -
.- .
HttpContext. 9
.9 :
RequestServices: I
.I J

GetServiceJ T
<T U#
IUserRoleMappingServiceU l
>l m
(m n
)n o
;o p
if 
( 
context 
!= 
null 
)  
{   
	Microsoft!! 
.!! 

Extensions!! $
.!!$ %

Primitives!!% /
.!!/ 0
StringValues!!0 <

authTokens!!= G
;!!G H
context"" 
."" 
HttpContext"" #
.""# $
Request""$ +
.""+ ,
Headers"", 3
.""3 4
TryGetValue""4 ?
(""? @
$str""@ K
,""K L
out""M P

authTokens""Q [
)""[ \
;""\ ]
var$$ 
	authToken$$ 
=$$ 

authTokens$$  *
.$$* +
FirstOrDefault$$+ 9
($$9 :
)$$: ;
;$$; <
if&& 
(&& 
	authToken&& 
!=&&  
null&&! %
)&&% &
{'' 
var(( 
user(( 
=(( 
GetUser(( &
(((& '
	authToken((' 0
)((0 1
;((1 2
if)) 
()) 
user)) 
!=)) 
null))  $
)))$ %
{** 
var++ &
controllerActionDescriptor++ 6
=++7 8
context++9 @
.++@ A
ActionDescriptor++A Q
as++R T
	Microsoft++U ^
.++^ _

AspNetCore++_ i
.++i j
Mvc++j m
.++m n
Controllers++n y
.++y z'
ControllerActionDescriptor	++z î
;
++î ï
string,, 
controllerName,, -
=,,. /&
controllerActionDescriptor,,0 J
?,,J K
.,,K L
ControllerName,,L Z
;,,Z [
string-- 

actionName-- )
=--* +&
controllerActionDescriptor--, F
?--F G
.--G H

ActionName--H R
;--R S
bool// 
	hasAccess// &
=//' (
UserHasAccess//) 6
(//6 7
user//7 ;
.//; <
UserId//< B
,//B C
controllerName//D R
,//R S

actionName//T ^
)//^ _
;//_ `
if11 
(11 
	hasAccess11 %
)11% &
{22 
context33 #
.33# $
HttpContext33$ /
.33/ 0
Response330 8
.338 9
Headers339 @
.33@ A
Add33A D
(33D E
$str33E P
,33P Q
	authToken33R [
)33[ \
;33\ ]
context44 #
.44# $
HttpContext44$ /
.44/ 0
Response440 8
.448 9
Headers449 @
.44@ A
Add44A D
(44D E
$str44E Q
,44Q R
$str44S _
)44_ `
;44` a
context66 #
.66# $
HttpContext66$ /
.66/ 0
Response660 8
.668 9
Headers669 @
.66@ A
Add66A D
(66D E
$str66E X
,66X Y
$str66Z f
)66f g
;66g h
return88 "
;88" #
}99 
else:: 
{;; 
context<< #
.<<# $
HttpContext<<$ /
.<</ 0
Response<<0 8
.<<8 9
Headers<<9 @
.<<@ A
Add<<A D
(<<D E
$str<<E P
,<<P Q
	authToken<<R [
)<<[ \
;<<\ ]
context== #
.==# $
HttpContext==$ /
.==/ 0
Response==0 8
.==8 9
Headers==9 @
.==@ A
Add==A D
(==D E
$str==E Q
,==Q R
$str==S b
)==b c
;==c d
context?? #
.??# $
HttpContext??$ /
.??/ 0
Response??0 8
.??8 9

StatusCode??9 C
=??D E
(??F G
int??G J
)??J K
HttpStatusCode??K Y
.??Y Z
	Forbidden??Z c
;??c d
context@@ #
.@@# $
HttpContext@@$ /
.@@/ 0
Response@@0 8
.@@8 9
HttpContext@@9 D
.@@D E
Features@@E M
.@@M N
Get@@N Q
<@@Q R 
IHttpResponseFeature@@R f
>@@f g
(@@g h
)@@h i
.@@i j
ReasonPhrase@@j v
=@@w x
$str	@@y â
;
@@â ä
contextAA #
.AA# $
ResultAA$ *
=AA+ ,
newAA- 0

JsonResultAA1 ;
(AA; <
$strAA< K
)AAK L
{BB 
ValueCC  %
=CC& '
newCC( +
{DD  !
StatusEE$ *
=EE+ ,
$strEE- 4
,EE4 5
MessageFF$ +
=FF, -
$strFF. [
}GG  !
,GG! "
}HH 
;HH 
}II 
}JJ 
elseKK 
{LL 
contextMM 
.MM  
HttpContextMM  +
.MM+ ,
ResponseMM, 4
.MM4 5
HeadersMM5 <
.MM< =
AddMM= @
(MM@ A
$strMMA L
,MML M
	authTokenMMN W
)MMW X
;MMX Y
contextNN 
.NN  
HttpContextNN  +
.NN+ ,
ResponseNN, 4
.NN4 5
HeadersNN5 <
.NN< =
AddNN= @
(NN@ A
$strNNA M
,NNM N
$strNNO ^
)NN^ _
;NN_ `
contextPP 
.PP  
HttpContextPP  +
.PP+ ,
ResponsePP, 4
.PP4 5

StatusCodePP5 ?
=PP@ A
(PPB C
intPPC F
)PPF G
HttpStatusCodePPG U
.PPU V
	ForbiddenPPV _
;PP_ `
contextQQ 
.QQ  
HttpContextQQ  +
.QQ+ ,
ResponseQQ, 4
.QQ4 5
HttpContextQQ5 @
.QQ@ A
FeaturesQQA I
.QQI J
GetQQJ M
<QQM N 
IHttpResponseFeatureQQN b
>QQb c
(QQc d
)QQd e
.QQe f
ReasonPhraseQQf r
=QQs t
$str	QQu Ö
;
QQÖ Ü
contextRR 
.RR  
ResultRR  &
=RR' (
newRR) ,

JsonResultRR- 7
(RR7 8
$strRR8 G
)RRG H
{SS 
ValueTT !
=TT" #
newTT$ '
{UU 
StatusVV  &
=VV' (
$strVV) 0
,VV0 1
MessageWW  '
=WW( )
$strWW* 9
}XX 
,XX 
}YY 
;YY 
}ZZ 
}\\ 
else]] 
{^^ 
context__ 
.__ 
HttpContext__ '
.__' (
Response__( 0
.__0 1

StatusCode__1 ;
=__< =
(__> ?
int__? B
)__B C
HttpStatusCode__C Q
.__Q R
ExpectationFailed__R c
;__c d
context`` 
.`` 
HttpContext`` '
.``' (
Response``( 0
.``0 1
HttpContext``1 <
.``< =
Features``= E
.``E F
Get``F I
<``I J 
IHttpResponseFeature``J ^
>``^ _
(``_ `
)``` a
.``a b
ReasonPhrase``b n
=``o p
$str	``q ã
;
``ã å
contextaa 
.aa 
Resultaa "
=aa# $
newaa% (

JsonResultaa) 3
(aa3 4
$straa4 N
)aaN O
{bb 
Valuecc 
=cc 
newcc  #
{dd 
Statusee "
=ee# $
$stree% ,
,ee, -
Messageff #
=ff$ %
$strff& @
}gg 
,gg 
}hh 
;hh 
}ii 
}jj 
}kk 	
publicrr 

UserMasterrr 
GetUserrr !
(rr! "
stringrr" (
	authTokenrr) 2
)rr2 3
{ss 	
vartt 
datatt 
=tt 
_userServicett #
.tt# $
FindUserByNamett$ 2
(tt2 3
	authTokentt3 <
)tt< =
.tt= >

GetAwaitertt> H
(ttH I
)ttI J
.ttJ K
	GetResultttK T
(ttT U
)ttU V
;ttV W
returnuu 
datauu 
;uu 
}vv 	
public 
bool 
UserHasAccess !
(! "
int" %
UserId& ,
,, -
string. 4
ControllerName5 C
,C D
stringE K

ActionNameL V
)V W
{
ÄÄ 	
var
ÅÅ 
roleMappings
ÅÅ 
=
ÅÅ %
_userRoleMappingService
ÅÅ 6
.
ÅÅ6 7
FindAllAccess
ÅÅ7 D
(
ÅÅD E
UserId
ÅÅE K
)
ÅÅK L
.
ÅÅL M

GetAwaiter
ÅÅM W
(
ÅÅW X
)
ÅÅX Y
.
ÅÅY Z
	GetResult
ÅÅZ c
(
ÅÅc d
)
ÅÅd e
;
ÅÅe f
if
ÇÇ 
(
ÇÇ 
roleMappings
ÇÇ 
==
ÇÇ 
null
ÇÇ  $
)
ÇÇ$ %
return
ÉÉ 
false
ÉÉ 
;
ÉÉ 
string
ÑÑ 

methodType
ÑÑ 
=
ÑÑ 
string
ÑÑ  &
.
ÑÑ& '
Empty
ÑÑ' ,
;
ÑÑ, -
if
ÖÖ 
(
ÖÖ 

ActionName
ÖÖ 
.
ÖÖ 
ToLower
ÖÖ "
(
ÖÖ" #
)
ÖÖ# $
.
ÖÖ$ %
Contains
ÖÖ% -
(
ÖÖ- .
$str
ÖÖ. 4
)
ÖÖ4 5
)
ÖÖ5 6

methodType
ÜÜ 
=
ÜÜ 
$str
ÜÜ "
;
ÜÜ" #
else
áá 
if
áá 
(
áá 

ActionName
áá 
.
áá  
ToLower
áá  '
(
áá' (
)
áá( )
.
áá) *
Contains
áá* 2
(
áá2 3
$str
áá3 8
)
áá8 9
)
áá9 :

methodType
àà 
=
àà 
$str
àà %
;
àà% &
else
ââ 
if
ââ 
(
ââ 

ActionName
ââ 
.
ââ 
ToLower
ââ &
(
ââ& '
)
ââ' (
.
ââ( )
Contains
ââ) 1
(
ââ1 2
$str
ââ2 :
)
ââ: ;
)
ââ; <

methodType
ää 
=
ää 
$str
ää %
;
ää% &
else
ãã 

methodType
åå 
=
åå 
$str
åå #
;
åå# $
var
éé 
data
éé 
=
éé 
roleMappings
éé #
.
éé# $
Where
éé$ )
(
éé) *
w
éé* +
=>
éé, .
w
éé/ 0
.
éé0 1
ControllerName
éé1 ?
.
éé? @
ToLower
éé@ G
(
ééG H
)
ééH I
.
ééI J
Equals
ééJ P
(
ééP Q
ControllerName
ééQ _
.
éé_ `
ToLower
éé` g
(
éég h
)
ééh i
)
ééi j
&&
èè/ 1
w
èè2 3
.
èè3 4
Action
èè4 :
.
èè: ;
ToLower
èè; B
(
èèB C
)
èèC D
.
èèD E
Equals
èèE K
(
èèK L

methodType
èèL V
)
èèV W
)
èèW X
;
èèX Y
if
êê 
(
êê 
data
êê 
.
êê 
FirstOrDefault
êê #
(
êê# $
)
êê$ %
!=
êê& (
null
êê) -
&&
êê. 0
data
êê1 5
.
êê5 6
FirstOrDefault
êê6 D
(
êêD E
)
êêE F
.
êêF G
Allowed
êêG N
)
êêN O
return
ëë 
true
ëë 
;
ëë 
else
íí 
return
ìì 
false
ìì 
;
ìì 
}
îî 	
}
ïï 
}ññ €
PD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\CourseCreationDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 
CourseCreationDto "
{		 
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! :
)

: ;
]

; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) Y
)Y Z
]Z [
public 
string 

CourseName  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
? 
	ProgramId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Á
HD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\CourseDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public		 

class		 
	CourseDto		 
{

 
public 
int 
CourseId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

CourseName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
	ProgramId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

ProgramDto 
Program !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˝

ND:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\CourseUpdateDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 
CourseUpdateDto  
{		 
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! 8
)

8 9
]

9 :
public 
int 
CourseId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) Y
)Y Z
]Z [
public 
string 

CourseName  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
? 
	ProgramId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Æ
MD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\MappingProfile.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public		 

class		 
MappingProfile		 
:		  !
Profile		" )
{

 
public 
MappingProfile 
( 
) 
{ 	
	CreateMap 
< 
Course 
, 
	CourseDto '
>' (
(( )
)) *
;* +
	CreateMap 
< 
CourseCreationDto '
,' (
Course( .
>. /
(/ 0
)0 1
;1 2
	CreateMap 
< 
CourseUpdateDto %
,% &
Course' -
>- .
(. /
)/ 0
;0 1
	CreateMap 
< 
ProgramMaster #
,# $

ProgramDto$ .
>. /
(/ 0
)0 1
;1 2
	CreateMap 
< 
ProgramCreationDto (
,( )
ProgramMaster* 7
>7 8
(8 9
)9 :
;: ;
	CreateMap 
< 
ProgramUpdateDto &
,& '
ProgramMaster( 5
>5 6
(6 7
)7 8
;8 9
} 	
} 
} ˚
ID:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\PayloadDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 

PayloadDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Goals 
{ 
get 
; 
set  #
;# $
}% &
}		 
}

 ‹
QD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\ProgramCreationDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 
ProgramCreationDto #
{		 
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! ;
)

; <
]

< =
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) Z
)Z [
][ \
public 
string 
ProgramName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
int 
? 
ClassId 
{ 
get !
;! "
set# &
;& '
}( )
} 
}  
ID:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\ProgramDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 

ProgramDto 
{		 
public

 
int

 
	ProgramId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
ProgramName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
ClassId 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ˇ

OD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\ProgramUpdateDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 
ProgramUpdateDto !
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
	ProgramId 
{ 
get "
;" #
set$ '
;' (
}) *
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! ;
)

; <
]

< =
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) Z
)Z [
][ \
public 
string 
ProgramName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
int 
? 
ClassId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ω

>D:\Projects\IBBuisnessService\IBBusinessService.Api\Program.cs
	namespace 	
IBBusinessService
 
. 
Api 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ‘	
]D:\Projects\IBBuisnessService\IBBusinessService.Api\Resources\ApiExplorerVersionConvention.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
	Resources  )
{ 
public 

class (
ApiExplorerVersionConvention -
:. /&
IControllerModelConvention0 J
{ 
public 
void 
Apply 
( 
ControllerModel )

controller* 4
)4 5
{		 	
var

 
controllerNamespace

 #
=

$ %

controller

& 0
.

0 1
ControllerType

1 ?
.

? @
	Namespace

@ I
;

I J
var 

apiVersion 
= 
controllerNamespace 0
.0 1
Split1 6
(6 7
$char7 :
): ;
.; <
Last< @
(@ A
)A B
.B C
ToLowerC J
(J K
)K L
;L M

controller 
. 
ApiExplorer "
." #
	GroupName# ,
=- .

apiVersion/ 9
;9 :
} 	
} 
} â,
ZD:\Projects\IBBuisnessService\IBBusinessService.Api\Resources\AzureFunctionInvokeHelper.cs
	namespace

 	
IBBusinessService


 
.

 
Api

 
.

  
	Resources

  )
{ 
public 

class %
AzureFunctionInvokeHelper *
{ 
private 
string 
AzureFuntionUrl &
;& '
public %
AzureFunctionInvokeHelper )
() *
IConfiguration* 8
configuration9 F
)F G
{ 	
AzureFuntionUrl 
= 
configuration +
.+ ,
GetValue, 4
<4 5
string5 ;
>; <
(< =
$str= [
)[ \
;\ ]
} 	
public 
async 
Task 
< 
string  
>  !
InvokeFunction" 0
(0 1
string1 7
message8 ?
)? @
{ 	
string 
functionResponse #
=$ %
string& ,
., -
Empty- 2
;2 3
dynamic 
content 
= 
new !
{" #
name$ (
=) *
message+ 2
}3 4
;4 5
CancellationToken!! 
cancellationToken!! /
;!!/ 0
using## 
(## 
var## 
client## 
=## 
new##  #

HttpClient##$ .
(##. /
)##/ 0
)##0 1
using$$ 
($$ 
var$$ 
request$$ 
=$$  
new$$! $
HttpRequestMessage$$% 7
($$7 8

HttpMethod$$8 B
.$$B C
Post$$C G
,$$G H
AzureFuntionUrl$$I X
)$$X Y
)$$Y Z
using%% 
(%% 
var%% 
httpContent%% "
=%%# $
CreateHttpContent%%% 6
(%%6 7
content%%7 >
)%%> ?
)%%? @
{&& 
request'' 
.'' 
Content'' 
=''  !
httpContent''" -
;''- .
using(( 
((( 
var(( 
response(( #
=(($ %
await((& +
client((, 2
.)) 
	SendAsync)) 
()) 
request)) &
,))& ' 
HttpCompletionOption))( <
.))< =
ResponseHeadersRead))= P
,))P Q
cancellationToken))R c
)))c d
.** 
ConfigureAwait** #
(**# $
false**$ )
)**) *
)*** +
{++ 
functionResponse-- $
=--% &
response--' /
.--/ 0
Content--0 7
.--7 8
ReadAsStringAsync--8 I
(--I J
)--J K
.--K L
Result--L R
;--R S
}.. 
}// 
return00 
functionResponse00 #
;00# $
}11 	
private88 
void88 #
SerializeJsonIntoStream88 ,
(88, -
object88- 3
value884 9
,889 :
Stream88; A
stream88B H
)88H I
{99 	
using:: 
(:: 
var:: 
sw:: 
=:: 
new:: 
StreamWriter::  ,
(::, -
stream::- 3
,::3 4
new::5 8
UTF8Encoding::9 E
(::E F
false::F K
)::K L
,::L M
$num::N R
,::R S
true::T X
)::X Y
)::Y Z
using;; 
(;; 
var;; 
jtw;; 
=;; 
new;;  
JsonTextWriter;;! /
(;;/ 0
sw;;0 2
);;2 3
{;;4 5

Formatting;;6 @
=;;A B

Formatting;;C M
.;;M N
None;;N R
};;S T
);;T U
{<< 
var== 
js== 
=== 
new== 
JsonSerializer== +
(==+ ,
)==, -
;==- .
js>> 
.>> 
	Serialize>> 
(>> 
jtw>>  
,>>  !
value>>" '
)>>' (
;>>( )
jtw?? 
.?? 
Flush?? 
(?? 
)?? 
;?? 
}@@ 
}AA 	
privateHH 
HttpContentHH 
CreateHttpContentHH -
(HH- .
objectHH. 4
contentHH5 <
)HH< =
{II 	
HttpContentJJ 
httpContentJJ #
=JJ$ %
nullJJ& *
;JJ* +
ifLL 
(LL 
contentLL 
!=LL 
nullLL 
)LL  
{MM 
varNN 
msNN 
=NN 
newNN 
MemoryStreamNN )
(NN) *
)NN* +
;NN+ ,#
SerializeJsonIntoStreamOO '
(OO' (
contentOO( /
,OO/ 0
msOO1 3
)OO3 4
;OO4 5
msPP 
.PP 
SeekPP 
(PP 
$numPP 
,PP 

SeekOriginPP %
.PP% &
BeginPP& +
)PP+ ,
;PP, -
httpContentQQ 
=QQ 
newQQ !
StreamContentQQ" /
(QQ/ 0
msQQ0 2
)QQ2 3
;QQ3 4
httpContentRR 
.RR 
HeadersRR #
.RR# $
ContentTypeRR$ /
=RR0 1
newRR2 5 
MediaTypeHeaderValueRR6 J
(RRJ K
$strRRK ]
)RR] ^
;RR^ _
}SS 
returnUU 
httpContentUU 
;UU 
}VV 	
}WW 
}XX ®2
SD:\Projects\IBBuisnessService\IBBusinessService.Api\Resources\ConstantVarriables.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
	Resources  )
{ 
public 

static 
class 
ConstantVarriables *
{ 
public 
const 
string "
GenericExeptionMessage 2
=3 4
$str5 a
;a b
public		 
const		 
string		 
NoValidData		 '
=		( )
$str		* ;
;		; <
public

 
const

 
string

 
	DataSaved

 %
=

& '
$str

( A
;

A B
public 
const 
string 
DataUpdated '
=( )
$str* E
;E F
public 
const 
string 
DataDeleted '
=( )
$str* E
;E F
public 
const 
string 

ModelEmpty &
=' (
$str) :
;: ;
public 
const 
string 
CourseNotFound *
=+ ,
$str- @
;@ A
public 
const 
string '
CourseApiGetAllEnterMessage 7
=8 9
$str: [
;[ \
public 
const 
string &
CourseApiGetAllExitMessage 6
=7 8
$str9 Y
;Y Z
public 
const 
string *
CourseApiGetCourseEnterMessage :
=; <
$str= a
;a b
public 
const 
string )
CourseApiGetCourseExitMessage 9
=: ;
$str< _
;_ `
public 
const 
string +
CourseApiPostCourseEnterMessage ;
=< =
$str> c
;c d
public 
const 
string *
CourseApiPostCourseExitMessage :
=; <
$str= a
;a b
public 
const 
string *
CourseApiPutCourseEnterMessage :
=; <
$str= a
;a b
public 
const 
string )
CourseApiPutCourseExitMessage 9
=: ;
$str< _
;_ `
public 
const 
string -
!CourseApiDeleteCourseEnterMessage =
=> ?
$str@ g
;g h
public 
const 
string ,
 CourseApiDeleteCourseExitMessage <
== >
$str? e
;e f
public 
const 
string 
ProgramNotFound +
=, -
$str. B
;B C
public 
const 
string (
ProgramApiGetAllEnterMessage 8
=9 :
$str; ]
;] ^
public   
const   
string   '
ProgramApiGetAllExitMessage   7
=  8 9
$str  : [
;  [ \
public!! 
const!! 
string!! ,
 ProgramApiGetProgramEnterMessage!! <
=!!= >
$str!!? e
;!!e f
public"" 
const"" 
string"" +
ProgramApiGetProgramExitMessage"" ;
=""< =
$str""> c
;""c d
public## 
const## 
string## -
!ProgramApiPostProgramEnterMessage## =
=##> ?
$str##@ g
;##g h
public$$ 
const$$ 
string$$ ,
 ProgramApiPostProgramExitMessage$$ <
=$$= >
$str$$? e
;$$e f
public%% 
const%% 
string%% ,
 ProgramApiPutProgramEnterMessage%% <
=%%= >
$str%%? e
;%%e f
public&& 
const&& 
string&& +
ProgramApiPutProgramExitMessage&& ;
=&&< =
$str&&> c
;&&c d
public'' 
const'' 
string'' /
#ProgramApiDeleteProgramEnterMessage'' ?
=''@ A
$str''B k
;''k l
public(( 
const(( 
string(( .
"ProgramApiDeleteProgramExitMessage(( >
=((? @
$str((A i
;((i j
public,, 
const,, 
string,, 
FileNotFound,, (
=,,) *
$str,,+ <
;,,< =
public-- 
const-- 
string-- 
FileUploadMessage-- -
=--. /
$str--0 R
;--R S
public.. 
const.. 
string.. ,
 FileHandlerApiUploadEnterMessage.. <
=..= >
$str..? d
;..d e
public// 
const// 
string// +
FileHandlerApiUploadExitMessage// ;
=//< =
$str//> b
;//b c
public00 
const00 
string00 .
"FileHandlerApiDownloadEnterMessage00 >
=00? @
$str00A h
;00h i
public11 
const11 
string11 -
!FileHandlerApiDownloadExitMessage11 =
=11> ?
$str11@ f
;11f g
public22 
const22 
string22 ,
 FileHandlerApiDeleteEnterMessage22 <
=22= >
$str22? d
;22d e
public33 
const33 
string33 +
FileHandlerApiDeleteExitMessage33 ;
=33< =
$str33> b
;33b c
public77 
const77 
string77 :
.AzureFuntionInvokeGetFunctionValueEnterMessage77 J
=77K L
$str	77M Ä
;
77Ä Å
public88 
const88 
string88 9
-AzureFuntionInvokeGetFunctionValueExitMessage88 I
=88J K
$str88L ~
;88~ 
public<< 
const<< 
string<< #
TopicPushSuccessMessage<< 3
=<<4 5
$str<<6 f
;<<f g
public== 
const== 
string== 0
$AzureServiceBusApiCreateEnterMessage== @
===A B
$str==C k
;==k l
public>> 
const>> 
string>> /
#AzureServiceBusApiCreateExitMessage>> ?
=>>@ A
$str>>B i
;>>i j
}@@ 
}AA Á
HD:\Projects\IBBuisnessService\IBBusinessService.Api\Resources\Contact.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
	Resources  )
{ 
internal 
class 
Contact 
{ 
public 
Contact 
( 
) 
{ 	
} 	
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ¡	
ED:\Projects\IBBuisnessService\IBBusinessService.Api\Resources\Info.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
	Resources  )
{ 
internal 
class 
Info 
: 
OpenApiInfo %
{ 
public 
new 
string 
Version !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
new 
string 
Title 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
new		 
string		 
Description		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
new

 
string

 
TermsOfService

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
new 
object 
Contact !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} „;
>D:\Projects\IBBuisnessService\IBBusinessService.Api\Startup.cs
	namespace 	
IBBusinessService
 
. 
Api 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
;% &
var   
ConnectionString    
=  ! "
Configuration  # 0
.  0 1
GetConnectionString  1 D
(  D E
$str  E a
)  a b
;  b c
services## 
.## 
AddDbContext## !
<##! "
IBBusinessContext##" 3
>##3 4
(##4 5
options##5 <
=>##= ?
options##@ G
.##G H
UseSqlServer##H T
(##T U
ConnectionString##U e
)##e f
)##f g
;##g h
services%% 
.%% 
	AddScoped%% 
<%% 
IUnitOfWork%% *
,%%* +

UnitOfWork%%, 6
>%%6 7
(%%7 8
)%%8 9
;%%9 :
services&& 
.&& 
	AddScoped&& 
<&& 
ICourseService&& -
,&&- .
CourseService&&/ <
>&&< =
(&&= >
)&&> ?
;&&? @
services'' 
.'' 
	AddScoped'' 
<'' 
IProgramService'' .
,''. /
ProgramService''0 >
>''> ?
(''? @
)''@ A
;''A B
services(( 
.(( 
	AddScoped(( 
<(( 
IUserService(( +
,((+ ,
UserService((- 8
>((8 9
(((9 :
)((: ;
;((; <
services)) 
.)) 
	AddScoped)) 
<)) #
IUserRoleMappingService)) 6
,))6 7"
UserRoleMappingService))8 N
>))N O
())O P
)))P Q
;))Q R
services** 
.** 
	AddScoped** 
<** 
IBlobStorageService** 2
,**2 3
BlobStorageService**4 F
>**F G
(**G H
)**H I
;**I J
services++ 
.++ 
	AddScoped++ 
<++ 
IServiceBusSender++ 0
,++0 1
ServiceBusSender++2 B
>++B C
(++C D
)++D E
;++E F
services,, 
.,, 
AddSingleton,, !
<,,! "
IServiceBusConsumer,," 5
,,,5 6
ServiceBusConsumer,,7 I
>,,I J
(,,J K
),,K L
;,,L M
services// 
.// 
AddAutoMapper// "
(//" #
typeof//# )
(//) *
Startup//* 1
)//1 2
)//2 3
;//3 4
services22 
.22 
AddSwaggerGen22 "
(22" #
c22# $
=>22% '
{33 
c44 
.44 

SwaggerDoc44 
(44 
$str44 !
,44! "
new44# &
Info44' +
{55 
Version66 
=66 
$str66 "
,66" #
Title77 
=77 
$str77 4
,774 5
Description88 
=88  !
$str88" G
,88G H
TermsOfService99 "
=99# $
$str99% +
,99+ ,
Contact:: 
=:: 
new:: !
Contact::" )
(::) *
)::* +
{;; 
Name<< 
=<< 
$str<< /
,<</ 0
Email== 
=== 
$str==  7
,==7 8
Url>> 
=>> 
$str>> 9
}?? 
}@@ 
)@@ 
;@@ 
cBB 
.BB 

SwaggerDocBB 
(BB 
$strBB !
,BB! "
newBB# &
InfoBB' +
{CC 
VersionDD 
=DD 
$strDD "
,DD" #
TitleEE 
=EE 
$strEE 4
,EE4 5
DescriptionFF 
=FF  !
$strFF" G
,FFG H
TermsOfServiceGG "
=GG# $
$strGG% +
,GG+ ,
ContactHH 
=HH 
newHH !
ContactHH" )
(HH) *
)HH* +
{II 
NameJJ 
=JJ 
$strJJ /
,JJ/ 0
EmailKK 
=KK 
$strKK  7
,KK7 8
UrlLL 
=LL 
$strLL 9
}MM 
}NN 
)NN 
;NN 
}OO 
)OO 
;OO 
servicesQQ 
.QQ 
AddMvcQQ 
(QQ 
xQQ 
=>QQ  
xQQ! "
.QQ" #
ConventionsQQ# .
.QQ. /
AddQQ/ 2
(QQ2 3
newQQ3 6(
ApiExplorerVersionConventionQQ7 S
(QQS T
)QQT U
)QQU V
)QQV W
;QQW X
servicesTT 
.TT +
AddApplicationInsightsTelemetryTT 4
(TT4 5
)TT5 6
;TT6 7
servicesWW 
.WW &
AddStackExchangeRedisCacheWW /
(WW/ 0
optionWW0 6
=>WW7 9
{XX 
optionYY 
.YY 
ConfigurationYY $
=YY% &
ConfigurationYY' 4
.YY4 5
GetConnectionStringYY5 H
(YYH I
$strYYI Z
)YYZ [
;YY[ \
}ZZ 
)ZZ 
;ZZ 
}[[ 	
public^^ 
void^^ 
	Configure^^ 
(^^ 
IApplicationBuilder^^ 1
app^^2 5
,^^5 6
IWebHostEnvironment^^7 J
env^^K N
)^^N O
{__ 	
if`` 
(`` 
env`` 
.`` 
IsDevelopment`` !
(``! "
)``" #
)``# $
{aa 
appbb 
.bb %
UseDeveloperExceptionPagebb -
(bb- .
)bb. /
;bb/ 0
}cc 
appee 
.ee 
UseHttpsRedirectionee #
(ee# $
)ee$ %
;ee% &
appgg 
.gg 

UseRoutinggg 
(gg 
)gg 
;gg 
appii 
.ii 
UseAuthorizationii  
(ii  !
)ii! "
;ii" #
appkk 
.kk 
UseEndpointskk 
(kk 
	endpointskk &
=>kk' )
{ll 
	endpointsmm 
.mm 
MapControllersmm (
(mm( )
)mm) *
;mm* +
}nn 
)nn 
;nn 
appqq 
.qq 

UseSwaggerqq 
(qq 
)qq 
;qq 
apprr 
.rr 
UseSwaggerUIrr 
(rr 
crr 
=>rr !
{ss 
ctt 
.tt 
SwaggerEndpointtt !
(tt! "
$strtt" <
,tt< =
$strtt> I
)ttI J
;ttJ K
cuu 
.uu 
SwaggerEndpointuu !
(uu! "
$struu" <
,uu< =
$struu> I
)uuI J
;uuJ K
}vv 
)vv 
;vv 
}{{ 	
}|| 
}}} 