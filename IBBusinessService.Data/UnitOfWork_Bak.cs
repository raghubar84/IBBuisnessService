using System;
using System.Collections.Generic;
using System.Text;
using IBBusinessService.Data.Models;
using IBBusinessService.Data.Repositories;

namespace IBBusinessService.Data
{
    public class UnitOfWork_Bak
    {
        private ProgramMasterRepository _programMasterRepository;
        private CourseRepository _courseRepository;
        private IBBusinessContext _dbContext;

        public UnitOfWork_Bak(IBBusinessContext dbContext)
        {
            _dbContext = dbContext;
        }

        public ProgramMasterRepository ProgramMasterRepo
        {
            get
            {
                if (_programMasterRepository == null)
                    _programMasterRepository = new ProgramMasterRepository(_dbContext);
                return _programMasterRepository;
            }
        }

        public CourseRepository CourseRepo
        {
            get
            {
                if (_courseRepository == null)
                    _courseRepository = new CourseRepository(_dbContext);
                return _courseRepository;
            }
        }
    }
}
