using System.ComponentModel.DataAnnotations;

namespace IBBusinessService.Api.Mapping
{
    /// <summary>
    /// To Update course data
    /// </summary>
    public class CourseUpdateDto
    {
        [Required(ErrorMessage = "Course Id is required")]
        public int CourseId { get; set; }

        [Required(ErrorMessage = "Course Name is required")]
        [StringLength(50, ErrorMessage = "Course Name can't be longer than 50 characters")]
        public string CourseName { get; set; }

        [Required(ErrorMessage = "Program Id is required")]
        public int? ProgramId { get; set; }
    }
}
