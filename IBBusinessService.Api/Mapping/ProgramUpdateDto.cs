using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace IBBusinessService.Api.Mapping
{
    public class ProgramUpdateDto
    {
        [Required(ErrorMessage = "Program Id is required")]
        public int ProgramId { get; set; }

        [Required(ErrorMessage = "Program Name is required")]
        [StringLength(50, ErrorMessage = "Program Name can't be longer than 50 characters")]
        public string ProgramName { get; set; }

        [Required(ErrorMessage = "Class Id is required")]
        public int? ClassId { get; set; }
    }
}
