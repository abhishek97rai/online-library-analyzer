using System.ServiceModel;

/*
 * Name: Abhishek Rai
 * ASU ID: 1225176537
 */
namespace WebDownloadingService
{
    /// <summary>
    /// Interface for web service containing declaration for all operations
    /// </summary>
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        //Service operations declared here
        [OperationContract]
        string WebDownload(string url); //download content of webpage as a string

        [OperationContract]
        string[] Top10ContentWords(string url); //return 10 most frequently occurring content keywords from given webpage

    }

}
