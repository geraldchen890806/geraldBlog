using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace geraldBlog.Models
{
    [Table("Gblog_User", Schema = "dbo")]
    public class User
    {
        [Key]
        public int UserID { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string DisplayName { get; set; }
    }
}