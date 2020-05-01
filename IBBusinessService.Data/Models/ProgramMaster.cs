using System;
using System.Collections.Generic;

namespace IBBusinessService.Data.Models
{
    public partial class ProgramMaster
    {
        public int ProgramId { get; set; }
        public string ProgramName { get; set; }
        public int? ClassId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
