func @_IBBusinessService.Data.IBBusinessContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :29 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :29 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :29 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :31 :17) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :31 :17) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :31 :16) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :31 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :33 :30) // new ConfigurationBuilder() (ObjectCreationExpression)
// Entity from another assembly: System
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :33 :69) // System.IO.Directory (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :33 :69) // System.IO.Directory.GetCurrentDirectory() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :33 :30) // new ConfigurationBuilder().SetBasePath(System.IO.Directory.GetCurrentDirectory()) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :33 :124) // "appsettings.json" (StringLiteralExpression)
%9 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :33 :30) // new ConfigurationBuilder().SetBasePath(System.IO.Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json") (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :34 :36) // Not a variable of known type: builder
%12 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :34 :36) // builder.Build() (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :35 :39) // Not a variable of known type: configuration
%15 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :35 :73) // "IBBusinessConnectionString" (StringLiteralExpression)
%16 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :35 :39) // configuration.GetConnectionString("IBBusinessConnectionString") (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :36 :16) // Not a variable of known type: optionsBuilder
%19 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :36 :44) // Not a variable of known type: connectionString
%20 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\IBBusinessContext.cs" :36 :16) // optionsBuilder.UseSqlServer(connectionString) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function OnModelCreating(none), it contains poisonous unsupported syntaxes

