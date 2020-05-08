using System;

namespace IBBusinessService.Domain.Models
{
    public partial class ProgramMaster
    {
        public int ProgramId { get; set; }
        public string ProgramName { get; set; }
        public int? ClassId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
