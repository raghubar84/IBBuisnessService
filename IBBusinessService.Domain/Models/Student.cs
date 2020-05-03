using System;
using System.Collections.Generic;

namespace IBBusinessService.Domain.Models
{
    public partial class Student
    {
        public int StudentId { get; set; }
        public int? SchoolId { get; set; }
        public string StudentCode { get; set; }
        public string StudentFirstName { get; set; }
        public string StudentLastName { get; set; }
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
