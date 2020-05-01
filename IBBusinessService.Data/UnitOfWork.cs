using System;
using System.Collections.Generic;
using System.Text;
using IBBusinessService.Data.Models;
using IBBusinessService.Data.Repositories;

namespace IBBusinessService.Data
{
    public class UnitOfWork : IDisposable
    {
        private IBBusinessContext _dbContext;       
        private GenericRepository<ProgramMaster> _programMasterRepository;
        private GenericRepository<Course> _courseRepository;


        public UnitOfWork(IBBusinessContext dbContext)
        {
            _dbContext = dbContext;
        }

        public GenericRepository<ProgramMaster> ProgramMasterRepository
        {
            get
            {
                if (this._programMasterRepository == null)
                {
                    this._programMasterRepository = new GenericRepository<ProgramMaster>(_dbContext);
                }
                return _programMasterRepository;
            }
        }

        public GenericRepository<Course> CourseRepository
        {
            get
            {
                if (this._courseRepository == null)
                {
                    this._courseRepository = new GenericRepository<Course>(_dbContext);
                }
                return _courseRepository;
            }
        }

        public void Save()
        {
            _dbContext.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _dbContext.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
