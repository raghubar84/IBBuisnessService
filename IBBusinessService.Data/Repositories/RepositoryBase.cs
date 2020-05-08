using IBBusinessService.Domain.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace IBBusinessService.Data.Repositories
{
    public abstract class RepositoryBase<T> : IRepositoryBase<T> where T : class
    {
        protected IBBusinessContext _dbContext { get; set; }

        public RepositoryBase(IBBusinessContext dbContext)
        {
            this._dbContext = dbContext;
        }

        public IQueryable<T> FindAll()
        {
            return this._dbContext.Set<T>().AsNoTracking();
        }

        public IQueryable<T> FindByCondition(Expression<Func<T, bool>> expression)
        {
            return this._dbContext.Set<T>().Where(expression).AsNoTracking();
        }

        public void Create(T entity)
        {
            this._dbContext.Set<T>().Add(entity);
        }

        public void Update(T entity)
        {
            this._dbContext.Set<T>().Update(entity);
        }

        public void Delete(T entity)
        {
            this._dbContext.Set<T>().Remove(entity);
        }
    }
}
