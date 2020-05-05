using System;
using System.Collections.Generic;
using System.Text;
using IBBusinessService.Data.Repositories;
using IBBusinessService.Domain.Models;

namespace IBBusinessService.Data
{
    public class UnitOfWork : IDisposable
    {
        private IBBusinessContext _dbContext = new IBBusinessContext();       
        private GenericRepository<ProgramMaster> _programMasterRepository;
        private GenericRepository<ProgramGroup> _programGroupRepository;
        private GenericRepository<Course> _courseRepository;
        private GenericRepository<School> _schoolRepository;
        private GenericRepository<Student> _studentRepository;

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

        public GenericRepository<ProgramGroup> ProgramGroupRepository
        {
            get
            {
                if (this._programGroupRepository == null)
                {
                    this._programGroupRepository = new GenericRepository<ProgramGroup>(_dbContext);
                }
                return _programGroupRepository;
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

        public GenericRepository<School> SchoolRepository
        {
            get
            {
                if (this._schoolRepository == null)
                {
                    this._schoolRepository = new GenericRepository<School>(_dbContext);
                }
                return _schoolRepository;
            }
        }

        public GenericRepository<Student> StudentRepository
        {
            get
            {
                if (this._studentRepository == null)
                {
                    this._studentRepository = new GenericRepository<Student>(_dbContext);
                }
                return _studentRepository;
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
