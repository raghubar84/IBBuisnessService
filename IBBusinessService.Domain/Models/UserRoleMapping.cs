using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IBBusinessService.Domain.Models
{
    public class UserRoleMapping
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MappingId { get; set; }

        [Required]
        public int UserId { get; set; }

        [Column(TypeName = "varchar(50)")]
        public string ControllerName { get; set; }

        [Column(TypeName = "varchar(50)")]
        public string Action { get; set; }

        [Required]
        [Column(TypeName = "bit")]
        public bool Allowed { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        public DateTime CreatedDate { get; set; }
    }
}
