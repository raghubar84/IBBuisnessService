using System;
using System.Collections.Generic;

namespace IBBusinessService.Domain.Models
{
    public partial class Course
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public int? ProgramId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
