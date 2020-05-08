using System;

namespace IBBusinessService.Domain.Models
{
    public partial class ProgramGroup
    {
        public int ProgramGorupId { get; set; }
        public string ProgramGroupName { get; set; }
        public int? ProgramId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
