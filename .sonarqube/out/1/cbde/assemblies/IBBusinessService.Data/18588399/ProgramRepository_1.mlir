// Skipping function GetAllProgram(), it contains poisonous unsupported syntaxes

// Skipping function GetProgramById(i32), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Data.Repositories.ProgramRepository.CreateProgram$IBBusinessService.Domain.Models.ProgramMaster$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :41 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :41 :34)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :41 :34)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Create
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :43 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :43 :12) // Create(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.ProgramRepository.UpdateProgram$IBBusinessService.Domain.Models.ProgramMaster$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :50 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :50 :34)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :50 :34)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Update
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :52 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :52 :12) // Update(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.ProgramRepository.DeleteProgram$IBBusinessService.Domain.Models.ProgramMaster$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :59 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :59 :34)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :59 :34)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Delete
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :61 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\ProgramRepository.cs" :61 :12) // Delete(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
