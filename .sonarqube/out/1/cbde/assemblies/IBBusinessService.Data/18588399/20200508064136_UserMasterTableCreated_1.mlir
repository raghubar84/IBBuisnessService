// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Data.Migrations.UserMasterTableCreated.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508064136_UserMasterTableCreated.cs" :24 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508064136_UserMasterTableCreated.cs" :24 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508064136_UserMasterTableCreated.cs" :24 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508064136_UserMasterTableCreated.cs" :26 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508064136_UserMasterTableCreated.cs" :27 :22) // "UserMaster" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508064136_UserMasterTableCreated.cs" :26 :12) // migrationBuilder.DropTable(                  name: "UserMaster") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
