// Skipping function OnAuthorization(none), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Api.Filters.CustomAuthorization.GetUser$string$(none) -> none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :116 :8) {
^entry (%_authToken : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :116 :34)
cbde.store %_authToken, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :116 :34)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :118 :23) // Not a variable of known type: _userService
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :118 :51) // Not a variable of known type: authToken
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :118 :23) // _userService.FindUserByName(authToken) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :118 :23) // _userService.FindUserByName(authToken).GetAwaiter() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :118 :23) // _userService.FindUserByName(authToken).GetAwaiter().GetResult() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :119 :19) // Not a variable of known type: data
return %7 : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Filters\\CustomAuthorization.cs" :119 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UserHasAccess(i32, none, none), it contains poisonous unsupported syntaxes

