// Skipping function GetAllCourses(), it contains poisonous unsupported syntaxes

// Skipping function GetCourseById(i32), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Data.Repositories.CourseRepository.CreateCourse$IBBusinessService.Domain.Models.Course$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :41 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :41 :33)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :41 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Create
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :43 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :43 :12) // Create(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.CourseRepository.UpdateCourse$IBBusinessService.Domain.Models.Course$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :50 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :50 :33)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :50 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Update
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :52 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :52 :12) // Update(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.CourseRepository.DeleteCourse$IBBusinessService.Domain.Models.Course$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :59 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :59 :33)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :59 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Delete
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :61 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :61 :12) // Delete(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
