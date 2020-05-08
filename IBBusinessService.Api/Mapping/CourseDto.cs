using System;


namespace IBBusinessService.Api.Mapping
{
    /// <summary>
    /// To get course data
    /// </summary>
    public class CourseDto
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public int? ProgramId { get; set; }
        public DateTime? CreatedDate { get; set; }
    }
}
