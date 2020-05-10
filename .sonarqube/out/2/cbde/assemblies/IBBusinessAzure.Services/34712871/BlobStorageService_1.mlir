// Skipping function UploadFileToBlob(none, none, none), it contains poisonous unsupported syntaxes

// Skipping function DeleteBlobData(none), it contains poisonous unsupported syntaxes

func @_IBBusinessAzure.Services.BlobStorageService.GenerateFileName$string$(none) -> none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :74 :8) {
^entry (%_fileName : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :74 :40)
cbde.store %_fileName, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :74 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :76 :33) // string (PredefinedType)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :76 :33) // string.Empty (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :77 :31) // Not a variable of known type: fileName
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :77 :46) // '.' (CharacterLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :77 :31) // fileName.Split('.') (InvocationExpression)
// Entity from another assembly: DateTime
%8 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // DateTime.Now (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // DateTime.Now.ToUniversalTime() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :66) // "yyyy-MM-dd" (StringLiteralExpression)
%11 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :82) // "/" (StringLiteralExpression)
%13 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // Binary expression on unsupported types DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") + "/"
// Entity from another assembly: DateTime
%14 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :88) // DateTime.Now (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :88) // DateTime.Now.ToUniversalTime() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :128) // "yyyyMMdd\\THHmmssfff" (StringLiteralExpression)
%17 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :88) // DateTime.Now.ToUniversalTime().ToString("yyyyMMdd\\THHmmssfff") (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // Binary expression on unsupported types DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") + "/" + DateTime.Now.ToUniversalTime().ToString("yyyyMMdd\\THHmmssfff")
%19 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :154) // "." (StringLiteralExpression)
%20 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // Binary expression on unsupported types DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") + "/" + DateTime.Now.ToUniversalTime().ToString("yyyyMMdd\\THHmmssfff") + "."
%21 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :160) // Not a variable of known type: strName
%22 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :168) // Not a variable of known type: strName
%23 = cbde.unknown : i32 loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :168) // strName.Length (SimpleMemberAccessExpression)
%24 = constant 1 : i32 loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :185)
%25 = subi %23, %24 : i32 loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :168)
%26 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :160) // strName[strName.Length - 1] (ElementAccessExpression)
%27 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :78 :26) // Binary expression on unsupported types DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd") + "/" + DateTime.Now.ToUniversalTime().ToString("yyyyMMdd\\THHmmssfff") + "." + strName[strName.Length - 1]
%28 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :79 :19) // Not a variable of known type: strFileName
return %28 : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\BlobStorageService.cs" :79 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UploadFileToBlobAsync(none, none, none), it contains poisonous unsupported syntaxes

