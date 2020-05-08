using System;

namespace IBBusinessService.Domain.Models
{
    public partial class Board
    {
        public int BordId { get; set; }
        public string BoardName { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
