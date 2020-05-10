func @_IBBusinessService.Api.Resources.ApiExplorerVersionConvention.Apply$Microsoft.AspNetCore.Mvc.ApplicationModels.ControllerModel$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :7 :8) {
^entry (%_controller : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :7 :26)
cbde.store %_controller, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :7 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :9 :38) // Not a variable of known type: controller
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :9 :38) // controller.ControllerType (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :9 :38) // controller.ControllerType.Namespace (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :10 :29) // Not a variable of known type: controllerNamespace
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :10 :55) // '.' (CharacterLiteralExpression)
%7 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :10 :29) // controllerNamespace.Split('.') (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :10 :29) // controllerNamespace.Split('.').Last() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :10 :29) // controllerNamespace.Split('.').Last().ToLower() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :12 :12) // Not a variable of known type: controller
%12 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :12 :12) // controller.ApiExplorer (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :12 :12) // controller.ApiExplorer.GroupName (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Api\\Resources\\ApiExplorerVersionConvention.cs" :12 :47) // Not a variable of known type: apiVersion
br ^1

^1: // ExitBlock
return

}
