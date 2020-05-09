˝a
VD:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\CourseApiController.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Controllers  +
{ 
[ 
CustomAuthorization 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiController 
] 
public 

class 
CourseApiController $
:% &
ControllerBase' 5
{ 
private 
readonly 
ICourseService '
_courseService( 6
;6 7
private 
readonly 
ILogger  
<  !
CourseApiController! 4
>4 5
_logger6 =
;= >
private 
readonly 
IMapper  
_mapper! (
;( )
public 
CourseApiController "
(" #
ICourseService# 1
courseService2 ?
,? @
ILoggerA H
<H I
CourseApiControllerI \
>\ ]
logger^ d
,d e
IMapperf m
mappern t
)t u
{ 	
_courseService 
= 
courseService *
;* +
_logger 
= 
logger 
; 
_mapper 
= 
mapper 
; 
} 	
[$$ 	
HttpGet$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
ActionResult%% &
>%%& '
	GetCourse%%( 1
(%%1 2
)%%2 3
{&& 	
_logger'' 
.'' 
LogInformation'' "
(''" #
ConstantVarriables''# 5
.''5 6'
CourseApiGetAllEnterMessage''6 Q
)''Q R
;''R S
ObjectResult(( 
response(( !
;((! "
try)) 
{** 
var++ 
data++ 
=++ 
await++  
_courseService++! /
.++/ 0
GetAllCourses++0 =
(++= >
)++> ?
;++? @
var,, 

dataResult,, 
=,,  
_mapper,,! (
.,,( )
Map,,) ,
<,,, -
IEnumerable,,- 8
<,,8 9
	CourseDto,,9 B
>,,B C
>,,C D
(,,D E
data,,E I
),,I J
;,,J K
response-- 
=-- 
Ok-- 
(-- 

dataResult-- (
)--( )
;--) *
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
_logger11 
.11 
LogError11  
(11  !
ex11! #
,11# $
ex11% '
.11' (
Message11( /
)11/ 0
;110 1
response22 
=22 

BadRequest22 %
(22% &
ConstantVarriables22& 8
.228 9"
GenericExeptionMessage229 O
)22O P
;22P Q
}33 
_logger44 
.44 
LogInformation44 "
(44" #
ConstantVarriables44# 5
.445 6&
CourseApiGetAllExitMessage446 P
)44P Q
;44Q R
return55 
response55 
;55 
}66 	
[>> 	
HttpGet>>	 
(>> 
$str>> 
)>> 
]>> 
public?? 
async?? 
Task?? 
<?? 
ActionResult?? &
>??& '
	GetCourse??( 1
(??1 2
int??2 5
id??6 8
)??8 9
{@@ 	
_loggerAA 
.AA 
LogInformationAA "
(AA" #
ConstantVarriablesAA# 5
.AA5 6*
CourseApiGetCourseEnterMessageAA6 T
)AAT U
;AAU V
ObjectResultBB 
responseBB !
;BB! "
tryCC 
{DD 
varEE 
dataEE 
=EE 
awaitEE  
_courseServiceEE! /
.EE/ 0
GetCourseByIdEE0 =
(EE= >
idEE> @
)EE@ A
;EEA B
varFF 

dataResultFF 
=FF  
_mapperFF! (
.FF( )
MapFF) ,
<FF, -
	CourseDtoFF- 6
>FF6 7
(FF7 8
dataFF8 <
)FF< =
;FF= >
responseGG 
=GG 
OkGG 
(GG 
dataGG "
)GG" #
;GG# $
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
_loggerKK 
.KK 
LogErrorKK  
(KK  !
exKK! #
,KK# $
exKK% '
.KK' (
MessageKK( /
)KK/ 0
;KK0 1
responseLL 
=LL 

BadRequestLL %
(LL% &
ConstantVarriablesLL& 8
.LL8 9"
GenericExeptionMessageLL9 O
)LLO P
;LLP Q
}MM 
_loggerNN 
.NN 
LogInformationNN "
(NN" #
ConstantVarriablesNN# 5
.NN5 6)
CourseApiGetCourseExitMessageNN6 S
)NNS T
;NNT U
returnOO 
responseOO 
;OO 
}PP 	
[YY 	
HttpPutYY	 
(YY 
$strYY 
)YY 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
ActionResultZZ &
>ZZ& '
	PutCourseZZ( 1
(ZZ1 2
intZZ2 5
idZZ6 8
,ZZ8 9
[ZZ9 :
FromBodyZZ: B
]ZZB C
CourseUpdateDtoZZD S
courseZZT Z
)ZZZ [
{[[ 	
_logger\\ 
.\\ 
LogInformation\\ "
(\\" #
ConstantVarriables\\# 5
.\\5 6*
CourseApiPutCourseEnterMessage\\6 T
)\\T U
;\\U V
ObjectResult]] 
response]] !
;]]! "
if^^ 
(^^ 
id^^ 
!=^^ 
course^^ 
.^^ 
CourseId^^ %
)^^% &
response__ 
=__ 

BadRequest__ %
(__% &
ConstantVarriables__& 8
.__8 9
NoValidData__9 D
)__D E
;__E F
else`` 
{aa 
trybb 
{cc 
vardd 
courseEntitydd $
=dd% &
_mapperdd' .
.dd. /
Mapdd/ 2
<dd2 3
Coursedd3 9
>dd9 :
(dd: ;
coursedd; A
)ddA B
;ddB C
awaitee 
_courseServiceee (
.ee( )
UpdateCourseee) 5
(ee5 6
idee6 8
,ee8 9
courseEntityee: F
)eeF G
;eeG H
responseff 
=ff 
Okff !
(ff! "
ConstantVarriablesff" 4
.ff4 5
DataUpdatedff5 @
)ff@ A
;ffA B
}gg 
catchhh 
(hh 
	Exceptionhh  
exhh! #
)hh# $
{ii 
_loggerjj 
.jj 
LogErrorjj $
(jj$ %
exjj% '
,jj' (
exjj) +
.jj+ ,
Messagejj, 3
)jj3 4
;jj4 5
responsekk 
=kk 

BadRequestkk )
(kk) *
ConstantVarriableskk* <
.kk< ="
GenericExeptionMessagekk= S
)kkS T
;kkT U
}ll 
}mm 
_loggernn 
.nn 
LogInformationnn "
(nn" #
ConstantVarriablesnn# 5
.nn5 6)
CourseApiPutCourseExitMessagenn6 S
)nnS T
;nnT U
returnoo 
responseoo 
;oo 
}pp 	
[xx 	
HttpPostxx	 
]xx 
publicyy 
asyncyy 
Taskyy 
<yy 
ActionResultyy &
>yy& '

PostCourseyy( 2
(yy2 3
[yy3 4
FromBodyyy4 <
]yy< =
CourseCreationDtoyy= N
courseyyO U
)yyU V
{zz 	
_logger{{ 
.{{ 
LogInformation{{ "
({{" #
ConstantVarriables{{# 5
.{{5 6+
CourseApiPostCourseEnterMessage{{6 U
){{U V
;{{V W
ObjectResult|| 
response|| !
;||! "
if}} 
(}} 
course}} 
==}} 
null}} 
)}} 
response~~ 
=~~ 

BadRequest~~ %
(~~% &
ConstantVarriables~~& 8
.~~8 9

ModelEmpty~~9 C
)~~C D
;~~D E
else 
{
ÄÄ 
try
ÅÅ 
{
ÇÇ 
var
ÉÉ 
courseEntity
ÉÉ $
=
ÉÉ% &
_mapper
ÉÉ' .
.
ÉÉ. /
Map
ÉÉ/ 2
<
ÉÉ2 3
Course
ÉÉ3 9
>
ÉÉ9 :
(
ÉÉ: ;
course
ÉÉ; A
)
ÉÉA B
;
ÉÉB C
await
ÑÑ 
_courseService
ÑÑ (
.
ÑÑ( )
CreateCourse
ÑÑ) 5
(
ÑÑ5 6
courseEntity
ÑÑ6 B
)
ÑÑB C
;
ÑÑC D
response
ÖÖ 
=
ÖÖ 
Ok
ÖÖ !
(
ÖÖ! " 
ConstantVarriables
ÖÖ" 4
.
ÖÖ4 5
	DataSaved
ÖÖ5 >
)
ÖÖ> ?
;
ÖÖ? @
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá  
ex
áá! #
)
áá# $
{
àà 
_logger
ââ 
.
ââ 
LogError
ââ $
(
ââ$ %
ex
ââ% '
,
ââ' (
ex
ââ) +
.
ââ+ ,
Message
ââ, 3
)
ââ3 4
;
ââ4 5
response
ää 
=
ää 

BadRequest
ää )
(
ää) * 
ConstantVarriables
ää* <
.
ää< =$
GenericExeptionMessage
ää= S
)
ääS T
;
ääT U
}
ãã 
}
åå 
_logger
çç 
.
çç 
LogInformation
çç "
(
çç" # 
ConstantVarriables
çç# 5
.
çç5 6,
CourseApiPostCourseExitMessage
çç6 T
)
ççT U
;
ççU V
return
éé 
response
éé 
;
éé 
}
èè 	
[
óó 	

HttpDelete
óó	 
(
óó 
$str
óó 
)
óó 
]
óó 
public
òò 
async
òò 
Task
òò 
<
òò 
ActionResult
òò &
>
òò& '
DeleteCourse
òò( 4
(
òò4 5
int
òò5 8
id
òò9 ;
)
òò; <
{
ôô 	
_logger
öö 
.
öö 
LogInformation
öö "
(
öö" # 
ConstantVarriables
öö# 5
.
öö5 6/
!CourseApiDeleteCourseEnterMessage
öö6 W
)
ööW X
;
ööX Y
ObjectResult
õõ 
response
õõ !
;
õõ! "
try
úú 
{
ùù 
var
ûû 
status
ûû 
=
ûû 
await
ûû "
_courseService
ûû# 1
.
ûû1 2
DeleteCourse
ûû2 >
(
ûû> ?
id
ûû? A
)
ûûA B
;
ûûB C
if
üü 
(
üü 
status
üü 
==
üü 
true
üü "
)
üü" #
response
†† 
=
†† 
Ok
††  "
(
††" # 
ConstantVarriables
††# 5
.
††5 6
DataDeleted
††6 A
)
††A B
;
††B C
else
°° 
response
¢¢ 
=
¢¢ 
NotFound
¢¢ '
(
¢¢' ( 
ConstantVarriables
¢¢( :
.
¢¢: ;
CourseNotFound
¢¢; I
)
¢¢I J
;
¢¢J K
}
££ 
catch
§§ 
(
§§ 
	Exception
§§ 
ex
§§ 
)
§§  
{
•• 
_logger
¶¶ 
.
¶¶ 
LogError
¶¶  
(
¶¶  !
ex
¶¶! #
,
¶¶# $
ex
¶¶% '
.
¶¶' (
Message
¶¶( /
)
¶¶/ 0
;
¶¶0 1
response
ßß 
=
ßß 

BadRequest
ßß %
(
ßß% & 
ConstantVarriables
ßß& 8
.
ßß8 9$
GenericExeptionMessage
ßß9 O
)
ßßO P
;
ßßP Q
}
®® 
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
™™5 6.
 CourseApiDeleteCourseExitMessage
™™6 V
)
™™V W
;
™™W X
return
´´ 
response
´´ 
;
´´ 
}
¨¨ 	
}
ÆÆ 
}ØØ é`
WD:\Projects\IBBuisnessService\IBBusinessService.Api\Controllers\ProgramApiController.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Controllers  +
{ 
[ 
CustomAuthorization 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiController 
] 
public 

class  
ProgramApiController %
:& '
ControllerBase( 6
{ 
private 
readonly 
ILogger  
<  ! 
ProgramApiController! 5
>5 6
_logger7 >
;> ?
private 
readonly 
IProgramService (
_programService) 8
;8 9
private 
readonly 
IMapper  
_mapper! (
;( )
public  
ProgramApiController #
(# $
IProgramService$ 3
programService4 B
,B C
ILoggerD K
<K L 
ProgramApiControllerL `
>` a
loggerb h
,h i
IMapperj q
mapperr x
)x y
{ 	
_programService 
= 
programService ,
;, -
_logger 
= 
logger 
; 
_mapper 
= 
mapper 
; 
} 	
[$$ 	
HttpGet$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
ActionResult%% &
>%%& '
Get%%( +
(%%+ ,
)%%, -
{&& 	
_logger'' 
.'' 
LogInformation'' "
(''" #
ConstantVarriables''# 5
.''5 6'
CourseApiGetAllEnterMessage''6 Q
)''Q R
;''R S
ObjectResult(( 
response(( !
;((! "
try)) 
{** 
var++ 
data++ 
=++ 
await++  
_programService++! 0
.++0 1
GetAllProgram++1 >
(++> ?
)++? @
;++@ A
var,, 

dataResult,, 
=,,  
_mapper,,! (
.,,( )
Map,,) ,
<,,, -
IEnumerable,,- 8
<,,8 9

ProgramDto,,9 C
>,,C D
>,,D E
(,,E F
data,,F J
),,J K
;,,K L
response-- 
=-- 
Ok-- 
(-- 

dataResult-- (
)--( )
;--) *
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
_logger11 
.11 
LogError11  
(11  !
ex11! #
,11# $
ex11% '
.11' (
Message11( /
)11/ 0
;110 1
response22 
=22 

BadRequest22 %
(22% &
ConstantVarriables22& 8
.228 9"
GenericExeptionMessage229 O
)22O P
;22P Q
}33 
_logger44 
.44 
LogInformation44 "
(44" #
ConstantVarriables44# 5
.445 6&
CourseApiGetAllExitMessage446 P
)44P Q
;44Q R
return55 
response55 
;55 
}66 	
[>> 	
HttpGet>>	 
(>> 
$str>> 
,>> 
Name>> 
=>> 
$str>>  %
)>>% &
]>>& '
public?? 
async?? 
Task?? 
<?? 
ActionResult?? &
>??& '

GetProgram??( 2
(??2 3
int??3 6
id??7 9
)??9 :
{@@ 	
_loggerAA 
.AA 
LogInformationAA "
(AA" #
ConstantVarriablesAA# 5
.AA5 6,
 ProgramApiGetProgramEnterMessageAA6 V
)AAV W
;AAW X
ObjectResultBB 
responseBB !
;BB! "
tryCC 
{DD 
varEE 
dataEE 
=EE 
awaitEE  
_programServiceEE! 0
.EE0 1
GetProgramByIdEE1 ?
(EE? @
idEE@ B
)EEB C
;EEC D
varFF 

dataResultFF 
=FF  
_mapperFF! (
.FF( )
MapFF) ,
<FF, -

ProgramDtoFF- 7
>FF7 8
(FF8 9
dataFF9 =
)FF= >
;FF> ?
responseGG 
=GG 
OkGG 
(GG 

dataResultGG (
)GG( )
;GG) *
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
_loggerKK 
.KK 
LogErrorKK  
(KK  !
exKK! #
,KK# $
exKK% '
.KK' (
MessageKK( /
)KK/ 0
;KK0 1
responseLL 
=LL 

BadRequestLL %
(LL% &
ConstantVarriablesLL& 8
.LL8 9"
GenericExeptionMessageLL9 O
)LLO P
;LLP Q
}MM 
_loggerNN 
.NN 
LogInformationNN "
(NN" #
ConstantVarriablesNN# 5
.NN5 6+
ProgramApiGetProgramExitMessageNN6 U
)NNU V
;NNV W
returnOO 
responseOO 
;OO 
}PP 	
[XX 	
HttpPostXX	 
]XX 
publicYY 
asyncYY 
TaskYY 
<YY 
ActionResultYY &
>YY& '
PostYY( ,
(YY, -
[YY- .
FromBodyYY. 6
]YY6 7
ProgramCreationDtoYY7 I
programYYJ Q
)YYQ R
{ZZ 	
_logger[[ 
.[[ 
LogInformation[[ "
([[" #
ConstantVarriables[[# 5
.[[5 6-
!ProgramApiPostProgramEnterMessage[[6 W
)[[W X
;[[X Y
ObjectResult\\ 
response\\ !
;\\! "
try]] 
{^^ 
var__ 
programEntity__ !
=__" #
_mapper__$ +
.__+ ,
Map__, /
<__/ 0
ProgramMaster__0 =
>__= >
(__> ?
program__? F
)__F G
;__G H
await`` 
_programService`` %
.``% &
CreateProgram``& 3
(``3 4
programEntity``4 A
)``A B
;``B C
responseaa 
=aa 
Okaa 
(aa 
ConstantVarriablesaa 0
.aa0 1
	DataSavedaa1 :
)aa: ;
;aa; <
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
_loggeree 
.ee 
LogErroree  
(ee  !
exee! #
,ee# $
exee% '
.ee' (
Messageee( /
)ee/ 0
;ee0 1
responseff 
=ff 

BadRequestff %
(ff% &
ConstantVarriablesff& 8
.ff8 9"
GenericExeptionMessageff9 O
)ffO P
;ffP Q
}gg 
_loggerii 
.ii 
LogInformationii "
(ii" #
ConstantVarriablesii# 5
.ii5 6,
 ProgramApiPostProgramExitMessageii6 V
)iiV W
;iiW X
returnjj 
responsejj 
;jj 
}kk 	
[tt 	
HttpPuttt	 
(tt 
$strtt 
)tt 
]tt 
publicuu 
asyncuu 
Taskuu 
<uu 
ActionResultuu &
>uu& '
Putuu( +
(uu+ ,
intuu, /
iduu0 2
,uu2 3
[uu4 5
FromBodyuu5 =
]uu= >
ProgramUpdateDtouu? O
programuuP W
)uuW X
{vv 	
_loggerww 
.ww 
LogInformationww "
(ww" #
ConstantVarriablesww# 5
.ww5 6,
 ProgramApiPutProgramEnterMessageww6 V
)wwV W
;wwW X
ObjectResultxx 
responsexx !
;xx! "
ifyy 
(yy 
idyy 
!=yy 
programyy 
.yy 
	ProgramIdyy '
)yy' (
responsezz 
=zz 

BadRequestzz %
(zz% &
ConstantVarriableszz& 8
.zz8 9
NoValidDatazz9 D
)zzD E
;zzE F
else{{ 
{|| 
try}} 
{~~ 
var 
programEntity %
=& '
_mapper( /
./ 0
Map0 3
<3 4
ProgramMaster4 A
>A B
(B C
programC J
)J K
;K L
await
ÄÄ 
_programService
ÄÄ )
.
ÄÄ) *
UpdateProgram
ÄÄ* 7
(
ÄÄ7 8
id
ÄÄ8 :
,
ÄÄ: ;
programEntity
ÄÄ< I
)
ÄÄI J
;
ÄÄJ K
response
ÅÅ 
=
ÅÅ 
Ok
ÅÅ !
(
ÅÅ! " 
ConstantVarriables
ÅÅ" 4
.
ÅÅ4 5
DataUpdated
ÅÅ5 @
)
ÅÅ@ A
;
ÅÅA B
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ  
ex
ÉÉ! #
)
ÉÉ# $
{
ÑÑ 
_logger
ÖÖ 
.
ÖÖ 
LogError
ÖÖ $
(
ÖÖ$ %
ex
ÖÖ% '
,
ÖÖ' (
ex
ÖÖ) +
.
ÖÖ+ ,
Message
ÖÖ, 3
)
ÖÖ3 4
;
ÖÖ4 5
response
ÜÜ 
=
ÜÜ 

BadRequest
ÜÜ )
(
ÜÜ) * 
ConstantVarriables
ÜÜ* <
.
ÜÜ< =$
GenericExeptionMessage
ÜÜ= S
)
ÜÜS T
;
ÜÜT U
}
áá 
}
àà 
_logger
ââ 
.
ââ 
LogInformation
ââ "
(
ââ" # 
ConstantVarriables
ââ# 5
.
ââ5 6-
ProgramApiPutProgramExitMessage
ââ6 U
)
ââU V
;
ââV W
return
ää 
response
ää 
;
ää 
}
ãã 	
[
ìì 	

HttpDelete
ìì	 
(
ìì 
$str
ìì 
)
ìì 
]
ìì 
public
îî 
async
îî 
Task
îî 
<
îî 
ActionResult
îî &
>
îî& '
Delete
îî( .
(
îî. /
int
îî/ 2
id
îî3 5
)
îî5 6
{
ïï 	
_logger
ññ 
.
ññ 
LogInformation
ññ "
(
ññ" # 
ConstantVarriables
ññ# 5
.
ññ5 61
#ProgramApiDeleteProgramEnterMessage
ññ6 Y
)
ññY Z
;
ññZ [
ObjectResult
óó 
response
óó !
;
óó! "
try
òò 
{
ôô 
var
öö 
status
öö 
=
öö 
await
öö "
_programService
öö# 2
.
öö2 3
DeleteProgram
öö3 @
(
öö@ A
id
ööA C
)
ööC D
;
ööD E
if
õõ 
(
õõ 
status
õõ 
==
õõ 
true
õõ "
)
õõ" #
response
úú 
=
úú 
Ok
úú !
(
úú! " 
ConstantVarriables
úú" 4
.
úú4 5
DataDeleted
úú5 @
)
úú@ A
;
úúA B
else
ùù 
response
ûû 
=
ûû 
NotFound
ûû '
(
ûû' ( 
ConstantVarriables
ûû( :
.
ûû: ;
ProgramNotFound
ûû; J
)
ûûJ K
;
ûûK L
}
üü 
catch
†† 
(
†† 
	Exception
†† 
ex
†† 
)
††  
{
°° 
_logger
¢¢ 
.
¢¢ 
LogError
¢¢  
(
¢¢  !
ex
¢¢! #
,
¢¢# $
ex
¢¢% '
.
¢¢' (
Message
¢¢( /
)
¢¢/ 0
;
¢¢0 1
response
££ 
=
££ 

BadRequest
££ %
(
££% & 
ConstantVarriables
££& 8
.
££8 9$
GenericExeptionMessage
££9 O
)
££O P
;
££P Q
}
§§ 
_logger
¶¶ 
.
¶¶ 
LogInformation
¶¶ "
(
¶¶" # 
ConstantVarriables
¶¶# 5
.
¶¶5 60
"ProgramApiDeleteProgramExitMessage
¶¶6 X
)
¶¶X Y
;
¶¶Y Z
return
ßß 
response
ßß 
;
ßß 
}
®® 	
}
©© 
}™™ ßg
RD:\Projects\IBBuisnessService\IBBusinessService.Api\Filters\CustomAuthorization.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Filters  '
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
)* +
]+ ,
public 

class 
CustomAuthorization $
:% &
	Attribute' 0
,0 1 
IAuthorizationFilter2 F
{ 
private 
IUserService 
_userService )
;) *
private #
IUserRoleMappingService '#
_userRoleMappingService( ?
;? @
public 
void 
OnAuthorization #
(# $&
AuthorizationFilterContext$ >
filterContext? L
)L M
{ 	
_userService 
= 
filterContext (
.( )
HttpContext) 4
.4 5
RequestServices5 D
.D E

GetServiceE O
<O P
IUserServiceP \
>\ ]
(] ^
)^ _
;_ `#
_userRoleMappingService   #
=  $ %
filterContext  & 3
.  3 4
HttpContext  4 ?
.  ? @
RequestServices  @ O
.  O P

GetService  P Z
<  Z [#
IUserRoleMappingService  [ r
>  r s
(  s t
)  t u
;  u v
if"" 
("" 
filterContext"" 
!=""  
null""! %
)""% &
{## 
	Microsoft$$ 
.$$ 

Extensions$$ $
.$$$ %

Primitives$$% /
.$$/ 0
StringValues$$0 <

authTokens$$= G
;$$G H
filterContext%% 
.%% 
HttpContext%% )
.%%) *
Request%%* 1
.%%1 2
Headers%%2 9
.%%9 :
TryGetValue%%: E
(%%E F
$str%%F Q
,%%Q R
out%%S V

authTokens%%W a
)%%a b
;%%b c
var'' 
	authToken'' 
='' 

authTokens''  *
.''* +
FirstOrDefault''+ 9
(''9 :
)'': ;
;''; <
if)) 
()) 
	authToken)) 
!=))  
null))! %
)))% &
{** 
var++ 
user++ 
=++ 
GetUser++ &
(++& '
	authToken++' 0
)++0 1
;++1 2
if,, 
(,, 
user,, 
!=,, 
null,,  $
),,$ %
{-- 
var.. &
controllerActionDescriptor.. 6
=..7 8
filterContext..9 F
...F G
ActionDescriptor..G W
as..X Z
	Microsoft..[ d
...d e

AspNetCore..e o
...o p
Mvc..p s
...s t
Controllers..t 
.	.. Ä(
ControllerActionDescriptor
..Ä ö
;
..ö õ
string// 
controllerName// -
=//. /&
controllerActionDescriptor//0 J
?//J K
.//K L
ControllerName//L Z
;//Z [
string00 

actionName00 )
=00* +&
controllerActionDescriptor00, F
?00F G
.00G H

ActionName00H R
;00R S
bool22 
	hasAccess22 &
=22' (
UserHasAccess22) 6
(226 7
user227 ;
.22; <
UserId22< B
,22B C
controllerName22D R
,22R S

actionName22T ^
)22^ _
;22_ `
if44 
(44 
	hasAccess44 %
)44% &
{55 
filterContext66 )
.66) *
HttpContext66* 5
.665 6
Response666 >
.66> ?
Headers66? F
.66F G
Add66G J
(66J K
$str66K V
,66V W
	authToken66X a
)66a b
;66b c
filterContext77 )
.77) *
HttpContext77* 5
.775 6
Response776 >
.77> ?
Headers77? F
.77F G
Add77G J
(77J K
$str77K W
,77W X
$str77Y e
)77e f
;77f g
filterContext99 )
.99) *
HttpContext99* 5
.995 6
Response996 >
.99> ?
Headers99? F
.99F G
Add99G J
(99J K
$str99K ^
,99^ _
$str99` l
)99l m
;99m n
return;; "
;;;" #
}<< 
else== 
{>> 
filterContext?? )
.??) *
HttpContext??* 5
.??5 6
Response??6 >
.??> ?
Headers??? F
.??F G
Add??G J
(??J K
$str??K V
,??V W
	authToken??X a
)??a b
;??b c
filterContext@@ )
.@@) *
HttpContext@@* 5
.@@5 6
Response@@6 >
.@@> ?
Headers@@? F
.@@F G
Add@@G J
(@@J K
$str@@K W
,@@W X
$str@@Y h
)@@h i
;@@i j
filterContextBB )
.BB) *
HttpContextBB* 5
.BB5 6
ResponseBB6 >
.BB> ?

StatusCodeBB? I
=BBJ K
(BBL M
intBBM P
)BBP Q
HttpStatusCodeBBQ _
.BB_ `
	ForbiddenBB` i
;BBi j
filterContextCC )
.CC) *
HttpContextCC* 5
.CC5 6
ResponseCC6 >
.CC> ?
HttpContextCC? J
.CCJ K
FeaturesCCK S
.CCS T
GetCCT W
<CCW X 
IHttpResponseFeatureCCX l
>CCl m
(CCm n
)CCn o
.CCo p
ReasonPhraseCCp |
=CC} ~
$str	CC è
;
CCè ê
filterContextDD )
.DD) *
ResultDD* 0
=DD1 2
newDD3 6

JsonResultDD7 A
(DDA B
$strDDB Q
)DDQ R
{EE 
ValueFF  %
=FF& '
newFF( +
{GG  !
StatusHH$ *
=HH+ ,
$strHH- 4
,HH4 5
MessageII$ +
=II, -
$strII. [
}JJ  !
,JJ! "
}KK 
;KK 
}LL 
}MM 
elseNN 
{OO 
filterContextPP %
.PP% &
HttpContextPP& 1
.PP1 2
ResponsePP2 :
.PP: ;
HeadersPP; B
.PPB C
AddPPC F
(PPF G
$strPPG R
,PPR S
	authTokenPPT ]
)PP] ^
;PP^ _
filterContextQQ %
.QQ% &
HttpContextQQ& 1
.QQ1 2
ResponseQQ2 :
.QQ: ;
HeadersQQ; B
.QQB C
AddQQC F
(QQF G
$strQQG S
,QQS T
$strQQU d
)QQd e
;QQe f
filterContextSS %
.SS% &
HttpContextSS& 1
.SS1 2
ResponseSS2 :
.SS: ;

StatusCodeSS; E
=SSF G
(SSH I
intSSI L
)SSL M
HttpStatusCodeSSM [
.SS[ \
	ForbiddenSS\ e
;SSe f
filterContextTT %
.TT% &
HttpContextTT& 1
.TT1 2
ResponseTT2 :
.TT: ;
HttpContextTT; F
.TTF G
FeaturesTTG O
.TTO P
GetTTP S
<TTS T 
IHttpResponseFeatureTTT h
>TTh i
(TTi j
)TTj k
.TTk l
ReasonPhraseTTl x
=TTy z
$str	TT{ ã
;
TTã å
filterContextUU %
.UU% &
ResultUU& ,
=UU- .
newUU/ 2

JsonResultUU3 =
(UU= >
$strUU> M
)UUM N
{VV 
ValueWW !
=WW" #
newWW$ '
{XX 
StatusYY  &
=YY' (
$strYY) 0
,YY0 1
MessageZZ  '
=ZZ( )
$strZZ* 9
}[[ 
,[[ 
}\\ 
;\\ 
}]] 
}__ 
else`` 
{aa 
filterContextbb !
.bb! "
HttpContextbb" -
.bb- .
Responsebb. 6
.bb6 7

StatusCodebb7 A
=bbB C
(bbD E
intbbE H
)bbH I
HttpStatusCodebbI W
.bbW X
ExpectationFailedbbX i
;bbi j
filterContextcc !
.cc! "
HttpContextcc" -
.cc- .
Responsecc. 6
.cc6 7
HttpContextcc7 B
.ccB C
FeaturesccC K
.ccK L
GetccL O
<ccO P 
IHttpResponseFeatureccP d
>ccd e
(cce f
)ccf g
.ccg h
ReasonPhrasecch t
=ccu v
$str	ccw ë
;
ccë í
filterContextdd !
.dd! "
Resultdd" (
=dd) *
newdd+ .

JsonResultdd/ 9
(dd9 :
$strdd: T
)ddT U
{ee 
Valueff 
=ff 
newff  #
{gg 
Statushh "
=hh# $
$strhh% ,
,hh, -
Messageii #
=ii$ %
$strii& @
}jj 
,jj 
}kk 
;kk 
}ll 
}mm 
}nn 	
publicuu 

UserMasteruu 
GetUseruu !
(uu! "
stringuu" (
	authTokenuu) 2
)uu2 3
{vv 	
varww 
dataww 
=ww 
_userServiceww #
.ww# $
FindUserByNameww$ 2
(ww2 3
	authTokenww3 <
)ww< =
.ww= >

GetAwaiterww> H
(wwH I
)wwI J
.wwJ K
	GetResultwwK T
(wwT U
)wwU V
;wwV W
returnxx 
dataxx 
;xx 
}yy 	
public
ÇÇ 
bool
ÇÇ 
UserHasAccess
ÇÇ !
(
ÇÇ! "
int
ÇÇ" %
UserId
ÇÇ& ,
,
ÇÇ, -
string
ÇÇ. 4
ControllerName
ÇÇ5 C
,
ÇÇC D
string
ÇÇE K

ActionName
ÇÇL V
)
ÇÇV W
{
ÉÉ 	
var
ÑÑ 
roleMappings
ÑÑ 
=
ÑÑ %
_userRoleMappingService
ÑÑ 6
.
ÑÑ6 7
FindAllAccess
ÑÑ7 D
(
ÑÑD E
UserId
ÑÑE K
)
ÑÑK L
.
ÑÑL M

GetAwaiter
ÑÑM W
(
ÑÑW X
)
ÑÑX Y
.
ÑÑY Z
	GetResult
ÑÑZ c
(
ÑÑc d
)
ÑÑd e
;
ÑÑe f
if
ÖÖ 
(
ÖÖ 
roleMappings
ÖÖ 
==
ÖÖ 
null
ÖÖ  $
)
ÖÖ$ %
return
ÜÜ 
false
ÜÜ 
;
ÜÜ 
string
áá 

methodType
áá 
=
áá 
string
áá  &
.
áá& '
Empty
áá' ,
;
áá, -
if
àà 
(
àà 

ActionName
àà 
.
àà 
ToLower
àà "
(
àà" #
)
àà# $
.
àà$ %
Contains
àà% -
(
àà- .
$str
àà. 4
)
àà4 5
)
àà5 6

methodType
ââ 
=
ââ 
$str
ââ "
;
ââ" #
else
ää 
if
ää 
(
ää 

ActionName
ää 
.
ää  
ToLower
ää  '
(
ää' (
)
ää( )
.
ää) *
Contains
ää* 2
(
ää2 3
$str
ää3 8
)
ää8 9
)
ää9 :

methodType
ãã 
=
ãã 
$str
ãã %
;
ãã% &
else
åå 
if
åå 
(
åå 

ActionName
åå 
.
åå 
ToLower
åå &
(
åå& '
)
åå' (
.
åå( )
Contains
åå) 1
(
åå1 2
$str
åå2 :
)
åå: ;
)
åå; <

methodType
çç 
=
çç 
$str
çç %
;
çç% &
else
éé 

methodType
èè 
=
èè 
$str
èè #
;
èè# $
var
ëë 
data
ëë 
=
ëë 
roleMappings
ëë #
.
ëë# $
Where
ëë$ )
(
ëë) *
w
ëë* +
=>
ëë, .
w
ëë/ 0
.
ëë0 1
ControllerName
ëë1 ?
.
ëë? @
ToLower
ëë@ G
(
ëëG H
)
ëëH I
.
ëëI J
Equals
ëëJ P
(
ëëP Q
ControllerName
ëëQ _
.
ëë_ `
ToLower
ëë` g
(
ëëg h
)
ëëh i
)
ëëi j
&&
íí/ 1
w
íí2 3
.
íí3 4
Action
íí4 :
.
íí: ;
ToLower
íí; B
(
ííB C
)
ííC D
.
ííD E
Equals
ííE K
(
ííK L

methodType
ííL V
)
ííV W
)
ííW X
;
ííX Y
if
ìì 
(
ìì 
data
ìì 
.
ìì 
FirstOrDefault
ìì #
(
ìì# $
)
ìì$ %
!=
ìì& (
null
ìì) -
&&
ìì. 0
data
ìì1 5
.
ìì5 6
FirstOrDefault
ìì6 D
(
ììD E
)
ììE F
.
ììF G
Allowed
ììG N
==
ììO Q
true
ììR V
)
ììV W
return
îî 
true
îî 
;
îî 
else
ïï 
return
ññ 
false
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô €
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
} »
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
}1 2
} 
} ˝

ND:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\CourseUpdateDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 
CourseUpdateDto  
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
int 
CourseId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) Y
)Y Z
]Z [
public 
string 

CourseName  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
? 
	ProgramId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Æ
MD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\MappingProfile.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{		 
public 

class 
MappingProfile 
:  !
Profile" )
{ 
public 
MappingProfile 
( 
) 
{ 	
	CreateMap 
< 
Course 
, 
	CourseDto '
>' (
(( )
)) *
;* +
	CreateMap 
< 
CourseCreationDto '
,' (
Course( .
>. /
(/ 0
)0 1
;1 2
	CreateMap 
< 
CourseUpdateDto %
,% &
Course' -
>- .
(. /
)/ 0
;0 1
	CreateMap 
< 
ProgramMaster #
,# $

ProgramDto$ .
>. /
(/ 0
)0 1
;1 2
	CreateMap 
< 
ProgramCreationDto (
,( )
ProgramMaster* 7
>7 8
(8 9
)9 :
;: ;
	CreateMap 
< 
ProgramUpdateDto &
,& '
ProgramMaster( 5
>5 6
(6 7
)7 8
;8 9
} 	
} 
} ‹
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
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public 

class 

ProgramDto 
{ 
public 
int 
	ProgramId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ProgramName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
ClassId 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ˇ

OD:\Projects\IBBuisnessService\IBBusinessService.Api\Mapping\ProgramUpdateDto.cs
	namespace 	
IBBusinessService
 
. 
Api 
.  
Mapping  '
{ 
public		 

class		 
ProgramUpdateDto		 !
{

 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
	ProgramId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) Z
)Z [
][ \
public 
string 
ProgramName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
int 
? 
ClassId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ω

>D:\Projects\IBBuisnessService\IBBusinessService.Api\Program.cs
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
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} È"
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
;((i j
}** 
}++ Á
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
} Ï
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
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
TermsOfService

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
object 
Contact 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ø)
>D:\Projects\IBBuisnessService\IBBusinessService.Api\Startup.cs
	namespace 	
IBBusinessService
 
. 
Api 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public!! 
void!! 
ConfigureServices!! %
(!!% &
IServiceCollection!!& 8
services!!9 A
)!!A B
{"" 	
services## 
.## 
AddControllers## #
(### $
)##$ %
;##% &
var&& 
ConnectionString&&  
=&&! "
Configuration&&# 0
.&&0 1
GetConnectionString&&1 D
(&&D E
$str&&E a
)&&a b
;&&b c
services)) 
.)) 
AddDbContext)) !
<))! "
IBBusinessContext))" 3
>))3 4
())4 5
options))5 <
=>))= ?
options))@ G
.))G H
UseSqlServer))H T
())T U
ConnectionString))U e
)))e f
)))f g
;))g h
services++ 
.++ 
	AddScoped++ 
<++ 
IUnitOfWork++ *
,++* +

UnitOfWork++, 6
>++6 7
(++7 8
)++8 9
;++9 :
services,, 
.,, 
	AddScoped,, 
<,, 
ICourseService,, -
,,,- .
CourseService,,/ <
>,,< =
(,,= >
),,> ?
;,,? @
services-- 
.-- 
	AddScoped-- 
<-- 
IProgramService-- .
,--. /
ProgramService--0 >
>--> ?
(--? @
)--@ A
;--A B
services.. 
... 
	AddScoped.. 
<.. 
IUserService.. +
,..+ ,
UserService..- 8
>..8 9
(..9 :
)..: ;
;..; <
services// 
.// 
	AddScoped// 
<// #
IUserRoleMappingService// 6
,//6 7"
UserRoleMappingService//8 N
>//N O
(//O P
)//P Q
;//Q R
services22 
.22 
AddAutoMapper22 "
(22" #
typeof22# )
(22) *
Startup22* 1
)221 2
)222 3
;223 4
services55 
.55 
AddSwaggerGen55 "
(55" #
c55# $
=>55% '
{66 
c77 
.77 

SwaggerDoc77 
(77 
$str77 !
,77! "
new77# &
Info77' +
{88 
Version99 
=99 
$str99 "
,99" #
Title:: 
=:: 
$str:: 4
,::4 5
Description;; 
=;;  !
$str;;" G
,;;G H
TermsOfService<< "
=<<# $
$str<<% +
,<<+ ,
Contact== 
=== 
new== !
Contact==" )
(==) *
)==* +
{>> 
Name?? 
=?? 
$str?? /
,??/ 0
Email@@ 
=@@ 
$str@@  7
,@@7 8
UrlAA 
=AA 
$strAA 9
}BB 
}CC 
)CC 
;CC 
}DD 
)DD 
;DD 
servicesGG 
.GG +
AddApplicationInsightsTelemetryGG 4
(GG4 5
)GG5 6
;GG6 7
}HH 	
publicKK 
voidKK 
	ConfigureKK 
(KK 
IApplicationBuilderKK 1
appKK2 5
,KK5 6
IWebHostEnvironmentKK7 J
envKKK N
)KKN O
{LL 	
ifMM 
(MM 
envMM 
.MM 
IsDevelopmentMM !
(MM! "
)MM" #
)MM# $
{NN 
appOO 
.OO %
UseDeveloperExceptionPageOO -
(OO- .
)OO. /
;OO/ 0
}PP 
appRR 
.RR 
UseHttpsRedirectionRR #
(RR# $
)RR$ %
;RR% &
appTT 
.TT 

UseRoutingTT 
(TT 
)TT 
;TT 
appVV 
.VV 
UseAuthorizationVV  
(VV  !
)VV! "
;VV" #
appXX 
.XX 
UseEndpointsXX 
(XX 
	endpointsXX &
=>XX' )
{YY 
	endpointsZZ 
.ZZ 
MapControllersZZ (
(ZZ( )
)ZZ) *
;ZZ* +
}[[ 
)[[ 
;[[ 
app^^ 
.^^ 

UseSwagger^^ 
(^^ 
)^^ 
;^^ 
app__ 
.__ 
UseSwaggerUI__ 
(__ 
c__ 
=>__ !
{`` 
caa 
.aa 
SwaggerEndpointaa !
(aa! "
$straa" <
,aa< =
$straa> I
)aaI J
;aaJ K
}bb 
)bb 
;bb 
}cc 	
}dd 
}ee 