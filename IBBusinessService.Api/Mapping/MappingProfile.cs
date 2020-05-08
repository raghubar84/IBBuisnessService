using AutoMapper;
using IBBusinessService.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IBBusinessService.Api.Mapping
{
    /// <summary>
    /// Automapper to map dto to entity class
    /// </summary>
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Course, CourseDto>();
            CreateMap<CourseCreationDto,Course>();
            CreateMap<CourseUpdateDto, Course>();

            CreateMap<ProgramMaster,ProgramDto>();
            CreateMap<ProgramCreationDto, ProgramMaster>();
            CreateMap<ProgramUpdateDto, ProgramMaster>();
        }
    }
}
