namespace IBBusinessService.Api.Resources
{
    /// <summary>
    /// To store string messages
    /// </summary>
    public static class ConstantVarriables
    {
        public const string GenericExeptionMessage = "An error occured while processing request.";
        public const string NoValidData = "Not valid data.";
        public const string DataSaved = "Data saved successfuly.";
        public const string DataUpdated = "Data updated successfuly.";
        public const string DataDeleted = "Data deleted successfuly.";
        public const string ModelEmpty = "Model is empty.";

        #region Course
        public const string CourseNotFound = "Course not found.";
        public const string CourseApiGetAllEnterMessage = "CoursesApi GetAll Method enter.";
        public const string CourseApiGetAllExitMessage = "CoursesApi GetAll Method exit.";
        public const string CourseApiGetCourseEnterMessage = "CoursesApi GetCourse Method enter.";
        public const string CourseApiGetCourseExitMessage = "CoursesApi GetCourse Method exit.";        
        public const string CourseApiPostCourseEnterMessage = "CoursesApi PostCourse Method enter.";
        public const string CourseApiPostCourseExitMessage = "CoursesApi PostCourse Method exit.";
        public const string CourseApiPutCourseEnterMessage = "CoursesApi PutCourse Method enter.";
        public const string CourseApiPutCourseExitMessage = "CoursesApi PutCourse Method exit.";
        public const string CourseApiDeleteCourseEnterMessage = "CoursesApi DeleteCourse Method enter.";
        public const string CourseApiDeleteCourseExitMessage = "CoursesApi DeleteCourse Method exit.";
        #endregion

        #region Program
        public const string ProgramNotFound = "Program not found.";
        public const string ProgramApiGetAllEnterMessage = "ProgramsApi GetAll Method enter.";
        public const string ProgramApiGetAllExitMessage = "ProgramsApi GetAll Method exit.";
        public const string ProgramApiGetProgramEnterMessage = "ProgramsApi GetProgram Method enter.";
        public const string ProgramApiGetProgramExitMessage = "ProgramsApi GetProgram Method exit.";
        public const string ProgramApiPostProgramEnterMessage = "ProgramsApi PostProgram Method enter.";
        public const string ProgramApiPostProgramExitMessage = "ProgramsApi PostProgram Method exit.";
        public const string ProgramApiPutProgramEnterMessage = "ProgramsApi PutProgram Method enter.";
        public const string ProgramApiPutProgramExitMessage = "ProgramsApi PutProgram Method exit.";
        public const string ProgramApiDeleteProgramEnterMessage = "ProgramsApi DeleteProgram Method enter.";
        public const string ProgramApiDeleteProgramExitMessage = "ProgramsApi DeleteProgram Method exit.";
        #endregion

        #region FileHandler
        public const string FileNotFound = "File not found.";
        public const string FileUploadMessage = "File uploaded and file path is: ";
        public const string FileHandlerApiUploadEnterMessage = "FileHandlerApi Upload Method enter.";
        public const string FileHandlerApiUploadExitMessage = "FileHandlerApi Upload Method exit.";
        public const string FileHandlerApiDownloadEnterMessage = "FileHandlerApi Download Method enter.";
        public const string FileHandlerApiDownloadExitMessage = "FileHandlerApi Download Method exit.";
        public const string FileHandlerApiDeleteEnterMessage = "FileHandlerApi Delete Method enter.";
        public const string FileHandlerApiDeleteExitMessage = "FileHandlerApi Delete Method exit.";
        #endregion

        #region AzureFuntionInvoke
        public const string AzureFuntionInvokeGetFunctionValueEnterMessage = "AzureFuntionInvoke GetFunctionValue Method enter.";
        public const string AzureFuntionInvokeGetFunctionValueExitMessage = "AzureFuntionInvoke GetFunctionValue Method exit.";
        #endregion

        #region AzureServiceBus
        public const string TopicPushSuccessMessage = "Topic successfuly pushed to azure service bus.";
        public const string AzureServiceBusApiCreateEnterMessage = "AzureServiceBusAp Create Method enter.";
        public const string AzureServiceBusApiCreateExitMessage = "AzureServiceBusAp Create Method exit.";
        #endregion
    }
}
