func @_IBBusinessAzure.Services.ServiceBusConsumer.RegisterOnMessageHandlerAndReceiveMessages$$() -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :32 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ExceptionReceivedHandler
%0 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :34 :40) // new MessageHandlerOptions(ExceptionReceivedHandler)              {                  MaxConcurrentCalls = 1,                  AutoComplete = false              } (ObjectCreationExpression)
%1 = constant 1 : i32 loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :36 :37)
%2 = constant 0 : i1 loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :37 :31) // false
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :40 :12) // Not a variable of known type: _subscriptionClient
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ProcessMessagesAsync
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :40 :77) // Not a variable of known type: messageHandlerOptions
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :40 :12) // _subscriptionClient.RegisterMessageHandler(ProcessMessagesAsync, messageHandlerOptions) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ProcessMessagesAsync(none, none), it contains poisonous unsupported syntaxes

func @_IBBusinessAzure.Services.ServiceBusConsumer.ExceptionReceivedHandler$Microsoft.Azure.ServiceBus.ExceptionReceivedEventArgs$(none) -> none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :63 :8) {
^entry (%_exceptionReceivedEventArgs : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :63 :46)
cbde.store %_exceptionReceivedEventArgs, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :63 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :65 :12) // Not a variable of known type: _logger
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :65 :29) // Not a variable of known type: exceptionReceivedEventArgs
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :65 :29) // exceptionReceivedEventArgs.Exception (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :65 :67) // "Message handler encountered an exception" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :65 :12) // _logger.LogError(exceptionReceivedEventArgs.Exception, "Message handler encountered an exception") (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :66 :26) // Not a variable of known type: exceptionReceivedEventArgs
%7 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :66 :26) // exceptionReceivedEventArgs.ExceptionReceivedContext (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :68 :12) // Not a variable of known type: _logger
%10 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :68 :44) // Not a variable of known type: context
%11 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :68 :44) // context.Endpoint (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :68 :29) // $"- Endpoint: {context.Endpoint}" (InterpolatedStringExpression)
%13 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :68 :12) // _logger.LogDebug($"- Endpoint: {context.Endpoint}") (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :69 :12) // Not a variable of known type: _logger
%15 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :69 :47) // Not a variable of known type: context
%16 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :69 :47) // context.EntityPath (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :69 :29) // $"- Entity Path: {context.EntityPath}" (InterpolatedStringExpression)
%18 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :69 :12) // _logger.LogDebug($"- Entity Path: {context.EntityPath}") (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :70 :12) // Not a variable of known type: _logger
%20 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :70 :52) // Not a variable of known type: context
%21 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :70 :52) // context.Action (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :70 :29) // $"- Executing Action: {context.Action}" (InterpolatedStringExpression)
%23 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :70 :12) // _logger.LogDebug($"- Executing Action: {context.Action}") (InvocationExpression)
// Entity from another assembly: Task
%24 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :72 :19) // Task.CompletedTask (SimpleMemberAccessExpression)
return %24 : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessAzure.Services\\ServiceBusConsumer.cs" :72 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function CloseTopicAsync(), it contains poisonous unsupported syntaxes

