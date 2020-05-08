using System.ComponentModel.DataAnnotations;

namespace IBBusinessService.Api.Mapping
{
    /// <summary>
    /// To Create course data
    /// </summary>
    public class CourseCreationDto
    {
        [Required(ErrorMessage = "Course Name is required")]
        [StringLength(50, ErrorMessage = "Course Name can't be longer than 50 characters")]
        public string CourseName { get; set; }

        [Required(ErrorMessage = "Program Id is required")]
        public int? ProgramId { get; set; }
    }
}
