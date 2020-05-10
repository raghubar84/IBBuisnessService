// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Data.Migrations.UserRoleMappingAdded.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508065044_UserRoleMappingAdded.cs" :26 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508065044_UserRoleMappingAdded.cs" :26 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508065044_UserRoleMappingAdded.cs" :26 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508065044_UserRoleMappingAdded.cs" :28 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508065044_UserRoleMappingAdded.cs" :29 :22) // "UserRoleMapping" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508065044_UserRoleMappingAdded.cs" :28 :12) // migrationBuilder.DropTable(                  name: "UserRoleMapping") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
