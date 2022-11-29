﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TryOutWebPage.BookAnalyzerService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="BookAnalyzerService.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/WebDownload", ReplyAction="http://tempuri.org/IService1/WebDownloadResponse")]
        string WebDownload(string url);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/WebDownload", ReplyAction="http://tempuri.org/IService1/WebDownloadResponse")]
        System.Threading.Tasks.Task<string> WebDownloadAsync(string url);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Top10ContentWords", ReplyAction="http://tempuri.org/IService1/Top10ContentWordsResponse")]
        string[] Top10ContentWords(string url);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/Top10ContentWords", ReplyAction="http://tempuri.org/IService1/Top10ContentWordsResponse")]
        System.Threading.Tasks.Task<string[]> Top10ContentWordsAsync(string url);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : TryOutWebPage.BookAnalyzerService.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<TryOutWebPage.BookAnalyzerService.IService1>, TryOutWebPage.BookAnalyzerService.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string WebDownload(string url) {
            return base.Channel.WebDownload(url);
        }
        
        public System.Threading.Tasks.Task<string> WebDownloadAsync(string url) {
            return base.Channel.WebDownloadAsync(url);
        }
        
        public string[] Top10ContentWords(string url) {
            return base.Channel.Top10ContentWords(url);
        }
        
        public System.Threading.Tasks.Task<string[]> Top10ContentWordsAsync(string url) {
            return base.Channel.Top10ContentWordsAsync(url);
        }
    }
}
