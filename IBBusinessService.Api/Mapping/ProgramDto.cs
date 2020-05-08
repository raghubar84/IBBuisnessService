using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IBBusinessService.Api.Mapping
{
    /// <summary>
    /// To get program data
    /// </summary>
    public class ProgramDto
    {
        public int ProgramId { get; set; }
        public string ProgramName { get; set; }
        public int? ClassId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
