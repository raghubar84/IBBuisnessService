// Skipping function InvokeFunction(none), it contains poisonous unsupported syntaxes

// Skipping function SerializeJsonIntoStream(none, none), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Api.Resources.AzureFunctionInvokeHelper.CreateHttpContent$object$(none) -> none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :71 :8) {
^entry (%_content : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :71 :46)
cbde.store %_content, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :71 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :73 :38) // null (NullLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :75 :16) // Not a variable of known type: content
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :75 :27) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :75 :16) // comparison of unknown type: content != null
cond_br %5, ^1, ^2 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :75 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :77 :25) // new MemoryStream() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SerializeJsonIntoStream
%8 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :78 :40) // Not a variable of known type: content
%9 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :78 :49) // Not a variable of known type: ms
%10 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :78 :16) // SerializeJsonIntoStream(content, ms) (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :79 :16) // Not a variable of known type: ms
%12 = constant 0 : i32 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :79 :24)
// Entity from another assembly: SeekOrigin
%13 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :79 :27) // SeekOrigin.Begin (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :79 :16) // ms.Seek(0, SeekOrigin.Begin) (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :80 :48) // Not a variable of known type: ms
%16 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :80 :30) // new StreamContent(ms) (ObjectCreationExpression)
%17 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :81 :16) // Not a variable of known type: httpContent
%18 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :81 :16) // httpContent.Headers (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :81 :16) // httpContent.Headers.ContentType (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :81 :75) // "application/json" (StringLiteralExpression)
%21 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :81 :50) // new MediaTypeHeaderValue("application/json") (ObjectCreationExpression)
br ^2

^2: // JumpBlock
%22 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :84 :19) // Not a variable of known type: httpContent
return %22 : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\AzureFunctionInvokeHelper.cs" :84 :12)

^3: // ExitBlock
cbde.unreachable

}
