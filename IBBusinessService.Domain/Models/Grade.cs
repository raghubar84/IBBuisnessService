using System;
using System.Collections.Generic;

namespace IBBusinessService.Domain.Models
{
    public partial class Grade
    {
        public int GradeId { get; set; }
        public string GradeName { get; set; }
        public int? GradeCrieteria { get; set; }
        public int? CourseId { get; set; }
        public int? ProgramId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
