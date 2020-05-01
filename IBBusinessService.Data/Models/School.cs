using System;
using System.Collections.Generic;

namespace IBBusinessService.Data.Models
{
    public partial class School
    {
        public int SchoolId { get; set; }
        public string SchoolName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string Pin { get; set; }
        public string ContactNo { get; set; }
        public string EmailId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
