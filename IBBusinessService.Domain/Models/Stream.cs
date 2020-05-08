using System;

namespace IBBusinessService.Domain.Models
{
    public partial class Stream
    {
        public int StreamId { get; set; }
        public string StreamName { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
