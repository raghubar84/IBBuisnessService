ç
ED:\Projects\IBBuisnessService\IBBusinessService.Domain\IUnitOfWork.cs
	namespace 	
IBBusinessService
 
. 
Domain "
{ 
public 

	interface 
IUnitOfWork  
{ 
ICourseRepository 
CourseRepository *
{+ ,
get- 0
;0 1
}2 3
IProgramRepository		 
ProgramRepository		 ,
{		- .
get		/ 2
;		2 3
}		4 5
IUserRepository

 
UserRepository

 &
{

' (
get

) ,
;

, -
}

. /&
IUserRoleMappingRepository "%
UserRoleMappingRepository# <
{= >
get? B
;B C
}D E
Task 
Save 
( 
) 
; 
} 
} ú
KD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\Assessment.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 

Assessment #
{ 
public 
int 
AssessmentId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
AssessmentName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
DateTime		 
?		 
AssessmentStartDate		 ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
public

 
DateTime

 
?

 
CreatedDate

 $
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
1 2
} 
} ­
FD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\Board.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
Board 
{ 
public 
int 
BordId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	BoardName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
DateTime		 
?		 
CreatedDate		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
}

 
} Û
GD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\Course.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
Course 
{ 
public 
int 
CourseId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

CourseName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
int		 
?		 
	ProgramId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
DateTime

 
?

 
CreatedDate

 $
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
1 2
} 
} ­

FD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\Grade.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
Grade 
{ 
public 
int 
GradeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	GradeName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
int		 
?		 
GradeCrieteria		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
int

 
?

 
CourseId

 
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
public 
int 
? 
	ProgramId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ó
MD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\ProgramGroup.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
ProgramGroup %
{ 
public 
int 
ProgramGorupId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ProgramGroupName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
int		 
?		 
	ProgramId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
DateTime

 
?

 
CreatedDate

 $
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
1 2
} 
} é
ND:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\ProgramMaster.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
ProgramMaster &
{ 
public 
int 
	ProgramId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ProgramName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
int		 
?		 
ClassId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
DateTime

 
?

 
CreatedDate

 $
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
1 2
} 
} €
GD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\School.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
School 
{ 
public 
int 
SchoolId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

SchoolName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Address		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
City

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Pin 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	ContactNo 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
BoardId 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ²
GD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\Stream.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
Stream 
{ 
public 
int 
StreamId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

StreamName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
DateTime		 
?		 
CreatedDate		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
}

 
} Û
HD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\Student.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

partial 
class 
Student  
{ 
public 
int 
	StudentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
SchoolId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
StudentCode		 !
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
 
StudentFirstName

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
string 
StudentLastName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Pin 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	ContactNo 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ö
QD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\StudentViewModel.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

class 
StudentViewModel !
{ 
public 
int 
	StudentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
SchoolId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 

SchoolName		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
StudentCode

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
StudentFirstName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
StudentLastName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Pin 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	ContactNo 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ’

KD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\UserMaster.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

class 

UserMaster 
{ 
[		 	
Key			 
]		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Column	 
( 
TypeName 
= 
$str '
)' (
]( )
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Computed3 ;
); <
]< =
public 
DateTime 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} å
PD:\Projects\IBBuisnessService\IBBusinessService.Domain\Models\UserRoleMapping.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Models# )
{ 
public 

class 
UserRoleMapping  
{ 
[		 	
Key			 
]		 
[

 	
DatabaseGenerated

	 
(

 #
DatabaseGeneratedOption

 2
.

2 3
Identity

3 ;
)

; <
]

< =
public 
int 
	MappingId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
ControllerName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Action 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
Column	 
( 
TypeName 
= 
$str  
)  !
]! "
public 
bool 
Allowed 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Computed3 ;
); <
]< =
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ­	
XD:\Projects\IBBuisnessService\IBBusinessService.Domain\Repositories\ICourseRepository.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Repositories# /
{ 
public

 

	interface

 
ICourseRepository

 &
:

' (
IRepositoryBase

) 8
<

8 9
Course

9 ?
>

? @
{ 
Task 
< 
IEnumerable 
< 
Course 
>  
>  !
GetAllCourses" /
(/ 0
)0 1
;1 2
Task 
< 
Course 
> 
GetCourseById "
(" #
int# &
id' )
)) *
;* +
void 
CreateCourse 
( 
Course  
entity! '
)' (
;( )
void## 
UpdateCourse## 
(## 
Course##  
entity##! '
)##' (
;##( )
void)) 
DeleteCourse)) 
()) 
Course))  
entity))! '
)))' (
;))( )
}** 
}++ ø
YD:\Projects\IBBuisnessService\IBBusinessService.Domain\Repositories\IProgramRepository.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Repositories# /
{ 
public

 

	interface

 
IProgramRepository

 '
{ 
Task 
< 
IEnumerable 
< 
ProgramMaster &
>& '
>' (
GetAllProgram) 6
(6 7
)7 8
;8 9
Task 
< 
ProgramMaster 
> 
GetProgramById *
(* +
int+ .
id/ 1
)1 2
;2 3
void 
CreateProgram 
( 
ProgramMaster (
entity) /
)/ 0
;0 1
void## 
UpdateProgram## 
(## 
ProgramMaster## (
entity##) /
)##/ 0
;##0 1
void)) 
DeleteProgram)) 
()) 
ProgramMaster)) (
entity))) /
)))/ 0
;))0 1
}** 
}++ «	
VD:\Projects\IBBuisnessService\IBBusinessService.Domain\Repositories\IRepositoryBase.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Repositories# /
{ 
public 

	interface 
IRepositoryBase $
<$ %
T% &
>& '
{ 

IQueryable		 
<		 
T		 
>		 
FindAll		 
(		 
)		 
;		  

IQueryable

 
<

 
T

 
>

 
FindByCondition

 %
(

% &

Expression

& 0
<

0 1
Func

1 5
<

5 6
T

6 7
,

7 8
bool

9 =
>

= >
>

> ?

expression

@ J
)

J K
;

K L
void 
Create 
( 
T 
entity 
) 
; 
void 
Update 
( 
T 
entity 
) 
; 
void 
Delete 
( 
T 
entity 
) 
; 
} 
} ñ
VD:\Projects\IBBuisnessService\IBBusinessService.Domain\Repositories\IUserRepository.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Repositories# /
{ 
public		 

	interface		 
IUserRepository		 $
:		% &
IRepositoryBase		' 6
<		6 7

UserMaster		7 A
>		A B
{

 
Task 
< 

UserMaster 
> 

FindByName #
(# $
string$ *
UserName+ 3
)3 4
;4 5
} 
} Õ
aD:\Projects\IBBuisnessService\IBBusinessService.Domain\Repositories\IUserRoleMappingRepository.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Repositories# /
{ 
public 

	interface &
IUserRoleMappingRepository /
:0 1
IRepositoryBase2 A
<A B
UserRoleMappingB Q
>Q R
{ 
} 
} þ	
QD:\Projects\IBBuisnessService\IBBusinessService.Domain\Services\ICourseService.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Services# +
{ 
public

 

	interface

 
ICourseService

 #
{ 
Task 
< 
IEnumerable 
< 
Course 
>  
>  !
GetAllCourses" /
(/ 0
)0 1
;1 2
Task 
< 
Course 
> 
GetCourseById "
(" #
int# &
id' )
)) *
;* +
Task 
< 
Course 
> 
CreateCourse !
(! "
Course" (
entity) /
)/ 0
;0 1
Task## 
<## 
Course## 
>## 
UpdateCourse## !
(##! "
int##" %
id##& (
,##( )
Course##* 0
entity##1 7
)##7 8
;##8 9
Task)) 
<)) 
bool)) 
>)) 
DeleteCourse)) 
())  
int))  #
id))$ &
)))& '
;))' (
}** 
}++ ®

RD:\Projects\IBBuisnessService\IBBusinessService.Domain\Services\IProgramService.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Services# +
{ 
public

 

	interface

 
IProgramService

 $
{ 
Task 
< 
IEnumerable 
< 
ProgramMaster &
>& '
>' (
GetAllProgram) 6
(6 7
)7 8
;8 9
Task 
< 
ProgramMaster 
> 
GetProgramById *
(* +
int+ .
id/ 1
)1 2
;2 3
Task 
< 
ProgramMaster 
> 
CreateProgram )
() *
ProgramMaster* 7
entity8 >
)> ?
;? @
Task## 
<## 
ProgramMaster## 
>## 
UpdateProgram## )
(##) *
int##* -
id##. 0
,##0 1
ProgramMaster##2 ?
entity##@ F
)##F G
;##G H
Task)) 
<)) 
bool)) 
>)) 
DeleteProgram))  
())  !
int))! $
id))% '
)))' (
;))( )
}** 
}++ Ñ
ZD:\Projects\IBBuisnessService\IBBusinessService.Domain\Services\IUserRoleMappingService.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Services# +
{ 
public 

	interface #
IUserRoleMappingService ,
{ 
Task 
< 
IEnumerable 
< 
UserRoleMapping (
>( )
>) *
FindAllAccess+ 8
(8 9
int9 <
UserId= C
)C D
;D E
} 
} …
OD:\Projects\IBBuisnessService\IBBusinessService.Domain\Services\IUserService.cs
	namespace 	
IBBusinessService
 
. 
Domain "
." #
Services# +
{ 
public 

	interface 
IUserService !
{ 
Task 
< 

UserMaster 
> 
FindUserByName '
(' (
string( .
UserName/ 7
)7 8
;8 9
} 
} 