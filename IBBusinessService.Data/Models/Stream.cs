using System;
using System.Collections.Generic;

namespace IBBusinessService.Data.Models
{
    public partial class Stream
    {
        public int StreamId { get; set; }
        public string StreamName { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
