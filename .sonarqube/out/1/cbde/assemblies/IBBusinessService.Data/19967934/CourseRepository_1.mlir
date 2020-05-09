// Skipping function GetAllCourses(), it contains poisonous unsupported syntaxes

// Skipping function GetCourseById(i32), it contains poisonous unsupported syntaxes

func @_IBBusinessService.Data.Repositories.CourseRepository.CreateCourse$IBBusinessService.Domain.Models.Course$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :42 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :42 :33)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :42 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Create
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :44 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :44 :12) // Create(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.CourseRepository.UpdateCourse$IBBusinessService.Domain.Models.Course$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :51 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :51 :33)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :51 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Update
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :53 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :53 :12) // Update(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.CourseRepository.DeleteCourse$IBBusinessService.Domain.Models.Course$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :60 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :60 :33)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :60 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Delete
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :62 :19) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\CourseRepository.cs" :62 :12) // Delete(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
