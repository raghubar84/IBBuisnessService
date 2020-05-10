func @_IBBusinessConsole.Program.Main$string$$$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :10 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :10 :25)
cbde.store %_args, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :10 :25)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Console
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :12 :30) // "======================================================" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :12 :12) // Console.WriteLine("======================================================") (InvocationExpression)
// Entity from another assembly: Console
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :13 :30) // "Press ENTER key to exit after receiving all the messages." (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :13 :12) // Console.WriteLine("Press ENTER key to exit after receiving all the messages.") (InvocationExpression)
// Entity from another assembly: Console
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :14 :30) // "======================================================" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :14 :12) // Console.WriteLine("======================================================") (InvocationExpression)
// Entity from another assembly: Microsoft
%7 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :16 :26) // Microsoft.AspNetCore.WebHost (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :16 :26) // Microsoft.AspNetCore.WebHost.CreateDefaultBuilder() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :16 :26) // Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :16 :26) // Microsoft.AspNetCore.WebHost.CreateDefaultBuilder().UseStartup<Startup>().Build() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :17 :23) // Not a variable of known type: webHost
%13 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :17 :23) // webHost.Services (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :17 :23) // webHost.Services.GetRequiredService<IServiceBusConsumer>() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :18 :12) // Not a variable of known type: serv
%17 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :18 :12) // serv.RegisterOnMessageHandlerAndReceiveMessages() (InvocationExpression)
// Entity from another assembly: Console
%18 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessConsole\\Program.cs" :19 :12) // Console.ReadKey() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
