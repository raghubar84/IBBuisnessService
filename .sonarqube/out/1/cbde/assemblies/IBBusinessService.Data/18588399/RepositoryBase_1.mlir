func @_IBBusinessService.Data.Repositories.RepositoryBase$T$.FindAll$$() -> none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :17 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :19 :19) // this (ThisExpression)
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :19 :19) // this._dbContext (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :19 :19) // this._dbContext.Set<T>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :19 :19) // this._dbContext.Set<T>().AsNoTracking() (InvocationExpression)
return %3 : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_IBBusinessService.Data.Repositories.RepositoryBase$T$.FindByCondition$System.Linq.Expressions.Expression$System.Func$T.bool$$$(none) -> none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :22 :8) {
^entry (%_expression : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :22 :45)
cbde.store %_expression, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :22 :45)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :19) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :19) // this._dbContext (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :19) // this._dbContext.Set<T>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :50) // Not a variable of known type: expression
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :19) // this._dbContext.Set<T>().Where(expression) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :19) // this._dbContext.Set<T>().Where(expression).AsNoTracking() (InvocationExpression)
return %6 : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_IBBusinessService.Data.Repositories.RepositoryBase$T$.Create$T$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :27 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :27 :27)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :27 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :29 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :29 :12) // this._dbContext (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :29 :12) // this._dbContext.Set<T>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :29 :41) // Not a variable of known type: entity
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :29 :12) // this._dbContext.Set<T>().Add(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.RepositoryBase$T$.Update$T$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :32 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :32 :27)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :32 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :34 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :34 :12) // this._dbContext (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :34 :12) // this._dbContext.Set<T>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :34 :44) // Not a variable of known type: entity
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :34 :12) // this._dbContext.Set<T>().Update(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_IBBusinessService.Data.Repositories.RepositoryBase$T$.Delete$T$(none) -> () loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :37 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :37 :27)
cbde.store %_entity, %0 : memref<none> loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :37 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :39 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :39 :12) // this._dbContext (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :39 :12) // this._dbContext.Set<T>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :39 :44) // Not a variable of known type: entity
%5 = cbde.unknown : none loc("D:\\Projects\\IBBuisnessService\\IBBusinessService.Data\\Repositories\\RepositoryBase.cs" :39 :12) // this._dbContext.Set<T>().Remove(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
