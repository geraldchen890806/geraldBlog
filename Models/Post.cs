using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace geraldBlog.Models
{
    [Table("Gblog_Post",Schema="dbo")]
    public class Post
    {
        [Key]
        public int PostID { get; set; }
        public int UserID { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime AddTime { get; set; }
        public DateTime UpdateTime { get; set; }
    }
}