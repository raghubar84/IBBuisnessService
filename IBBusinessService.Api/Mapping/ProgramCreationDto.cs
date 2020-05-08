using System.ComponentModel.DataAnnotations;

namespace IBBusinessService.Api.Mapping
{
    /// <summary>
    /// To create a program
    /// </summary>
    public class ProgramCreationDto
    {
        [Required(ErrorMessage = "Program Name is required")]
        [StringLength(50, ErrorMessage = "Program Name can't be longer than 50 characters")]
        public string ProgramName { get; set; }

        [Required(ErrorMessage = "Class Id is required")]       
        public int? ClassId { get; set; }
    }
}
