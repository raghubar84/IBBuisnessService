func @_IBBusinessService.Data.Migrations.AllowedColumnAddedinUserRoleMapping.Up$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :6 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :6 :35)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :6 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :8 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :9 :22) // "Allowed" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :10 :23) // "UserRoleMapping" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :11 :22) // "bit" (StringLiteralExpression)
%5 = constant 0 : i1 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :12 :26) // false
%6 = constant 0 : i1 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :13 :30) // false
%7 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :8 :12) // migrationBuilder.AddColumn<bool>(                  name: "Allowed",                  table: "UserRoleMapping",                  type: "bit",                  nullable: false,                  defaultValue: false) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Migrations.AllowedColumnAddedinUserRoleMapping.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :16 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :16 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :16 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :18 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :19 :22) // "Allowed" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :20 :23) // "UserRoleMapping" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Migrations\\20200508070358_AllowedColumnAddedinUserRoleMapping.cs" :18 :12) // migrationBuilder.DropColumn(                  name: "Allowed",                  table: "UserRoleMapping") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
