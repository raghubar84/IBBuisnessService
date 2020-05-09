using AutoMapper;
using IBBusinessService.Domain.Models;

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
