ÿ
ID:\Projects\IBBuisnessService\IBBusinessService.Services\CourseService.cs
	namespace 	
IBBusinessService
 
. 
Services $
{ 
public 

class 
CourseService 
:  
ICourseService! /
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
public 
CourseService 
( 
IUnitOfWork (

unitOfWork) 3
)3 4
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Course& ,
>, -
>- .
GetAllCourses/ <
(< =
)= >
{ 	
return 
await 
_unitOfWork $
.$ %
CourseRepository% 5
.5 6
GetAllCourses6 C
(C D
)D E
;E F
} 	
public"" 
async"" 
Task"" 
<"" 
Course""  
>""  !
GetCourseById""" /
(""/ 0
int""0 3
id""4 6
)""6 7
{## 	
return$$ 
await$$ 
_unitOfWork$$ $
.$$$ %
CourseRepository$$% 5
.$$5 6
GetCourseById$$6 C
($$C D
id$$D F
)$$F G
;$$G H
}%% 	
public++ 
async++ 
Task++ 
<++ 
Course++  
>++  !
CreateCourse++" .
(++. /
Course++/ 5
entity++6 <
)++< =
{,, 	
_unitOfWork-- 
.-- 
CourseRepository-- (
.--( )
CreateCourse--) 5
(--5 6
entity--6 <
)--< =
;--= >
await.. 
_unitOfWork.. 
... 
Save.. "
(.." #
)..# $
;..$ %
return// 
await// 
GetCourseById// &
(//& '
entity//' -
.//- .
CourseId//. 6
)//6 7
;//7 8
}00 	
public66 
async66 
Task66 
<66 
Course66  
>66  !
UpdateCourse66" .
(66. /
int66/ 2
id663 5
,665 6
Course667 =
entity66> D
)66D E
{77 	
_unitOfWork88 
.88 
CourseRepository88 (
.88( )
UpdateCourse88) 5
(885 6
entity886 <
)88< =
;88= >
await99 
_unitOfWork99 
.99 
Save99 "
(99" #
)99# $
;99$ %
return:: 
await:: 
GetCourseById:: &
(::& '
id::' )
)::) *
;::* +
};; 	
publicAA 
asyncAA 
TaskAA 
<AA 
boolAA 
>AA 
DeleteCourseAA  ,
(AA, -
intAA- 0
idAA1 3
)AA3 4
{BB 	
CourseCC 
entityCC 
=CC 
awaitCC !
_unitOfWorkCC" -
.CC- .
CourseRepositoryCC. >
.CC> ?
GetCourseByIdCC? L
(CCL M
idCCM O
)CCO P
;CCP Q
ifDD 
(DD 
entityDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
falseFF 
;FF 
}GG 
_unitOfWorkHH 
.HH 
CourseRepositoryHH (
.HH( )
DeleteCourseHH) 5
(HH5 6
entityHH6 <
)HH< =
;HH= >
awaitII 
_unitOfWorkII 
.II 
SaveII "
(II" #
)II# $
;II$ %
returnJJ 
trueJJ 
;JJ 
}KK 	
}LL 
}MM Æ
JD:\Projects\IBBuisnessService\IBBusinessService.Services\ProgramService.cs
	namespace 	
IBBusinessService
 
. 
Services $
{ 
public 

class 
ProgramService 
:  !
IProgramService" 1
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
public 
ProgramService 
( 
IUnitOfWork )

unitOfWork* 4
)4 5
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
ProgramMaster& 3
>3 4
>4 5
GetAllProgram6 C
(C D
)D E
{ 	
return 
await 
_unitOfWork $
.$ %
ProgramRepository% 6
.6 7
GetAllProgram7 D
(D E
)E F
;F G
} 	
public"" 
async"" 
Task"" 
<"" 
ProgramMaster"" '
>""' (
GetProgramById"") 7
(""7 8
int""8 ;
id""< >
)""> ?
{## 	
return$$ 
await$$ 
_unitOfWork$$ $
.$$$ %
ProgramRepository$$% 6
.$$6 7
GetProgramById$$7 E
($$E F
id$$F H
)$$H I
;$$I J
}%% 	
public++ 
async++ 
Task++ 
<++ 
ProgramMaster++ '
>++' (
CreateProgram++) 6
(++6 7
ProgramMaster++7 D
entity++E K
)++K L
{,, 	
_unitOfWork-- 
.-- 
ProgramRepository-- )
.--) *
CreateProgram--* 7
(--7 8
entity--8 >
)--> ?
;--? @
await.. 
_unitOfWork.. 
... 
Save.. "
(.." #
)..# $
;..$ %
return// 
await// 
GetProgramById// '
(//' (
entity//( .
.//. /
	ProgramId/// 8
)//8 9
;//9 :
}00 	
public66 
async66 
Task66 
<66 
ProgramMaster66 '
>66' (
UpdateProgram66) 6
(666 7
int667 :
id66; =
,66= >
ProgramMaster66? L
entity66M S
)66S T
{77 	
_unitOfWork88 
.88 
ProgramRepository88 )
.88) *
UpdateProgram88* 7
(887 8
entity888 >
)88> ?
;88? @
await99 
_unitOfWork99 
.99 
Save99 "
(99" #
)99# $
;99$ %
return:: 
await:: 
GetProgramById:: '
(::' (
id::( *
)::* +
;::+ ,
};; 	
publicAA 
asyncAA 
TaskAA 
<AA 
boolAA 
>AA 
DeleteProgramAA  -
(AA- .
intAA. 1
idAA2 4
)AA4 5
{BB 	
ProgramMasterCC 
entityCC  
=CC! "
awaitCC# (
_unitOfWorkCC) 4
.CC4 5
ProgramRepositoryCC5 F
.CCF G
GetProgramByIdCCG U
(CCU V
idCCV X
)CCX Y
;CCY Z
ifDD 
(DD 
entityDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
falseFF 
;FF 
}GG 
_unitOfWorkHH 
.HH 
ProgramRepositoryHH )
.HH) *
DeleteProgramHH* 7
(HH7 8
entityHH8 >
)HH> ?
;HH? @
awaitII 
_unitOfWorkII 
.II 
SaveII "
(II" #
)II# $
;II$ %
returnJJ 
trueJJ 
;JJ 
}KK 	
}LL 
}MM ¦
RD:\Projects\IBBuisnessService\IBBusinessService.Services\UserRoleMappingService.cs
	namespace 	
IBBusinessService
 
. 
Services $
{		 
public 

class "
UserRoleMappingService '
:( )#
IUserRoleMappingService* A
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
public "
UserRoleMappingService %
(% &
IUnitOfWork& 1

unitOfWork2 <
)< =
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
UserRoleMapping& 5
>5 6
>6 7
FindAllAccess8 E
(E F
intF I
UserIdJ P
)P Q
{ 	
return 
await 
_unitOfWork $
.$ %%
UserRoleMappingRepository% >
.> ?
FindByCondition? N
(N O
uO P
=>Q S
uT U
.U V
UserIdV \
.\ ]
Equals] c
(c d
UserIdd j
)j k
)k l
.l m
ToListAsyncm x
(x y
)y z
;z {
} 	
} 
} Þ
GD:\Projects\IBBuisnessService\IBBusinessService.Services\UserService.cs
	namespace 	
IBBusinessService
 
. 
Services $
{ 
public 

class 
UserService 
: 
IUserService +
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
public 
UserService 
( 
IUnitOfWork &

unitOfWork' 1
)1 2
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
public 
async 
Task 
< 

UserMaster $
>$ %
FindUserByName& 4
(4 5
string5 ;
UserName< D
)D E
{ 	
return 
await 
_unitOfWork $
.$ %
UserRepository% 3
.3 4

FindByName4 >
(> ?
UserName? G
)G H
;H I
} 	
} 
} 