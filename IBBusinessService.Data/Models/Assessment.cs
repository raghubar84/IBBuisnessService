using System;
using System.Collections.Generic;

namespace IBBusinessService.Data.Models
{
    public partial class Assessment
    {
        public int AssessmentId { get; set; }
        public string AssessmentName { get; set; }
        public DateTime? AssessmentStartDate { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
