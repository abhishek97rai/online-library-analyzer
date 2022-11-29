﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TryOutWebPage.ElectiveSoapServices {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ElectiveSoapServices.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetTopSearchUrlsFromKeywords", ReplyAction="http://tempuri.org/IService1/GetTopSearchUrlsFromKeywordsResponse")]
        string[] GetTopSearchUrlsFromKeywords(string keywords);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetTopSearchUrlsFromKeywords", ReplyAction="http://tempuri.org/IService1/GetTopSearchUrlsFromKeywordsResponse")]
        System.Threading.Tasks.Task<string[]> GetTopSearchUrlsFromKeywordsAsync(string keywords);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/RecurrenceCount", ReplyAction="http://tempuri.org/IService1/RecurrenceCountResponse")]
        int RecurrenceCount(string url, string word);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/RecurrenceCount", ReplyAction="http://tempuri.org/IService1/RecurrenceCountResponse")]
        System.Threading.Tasks.Task<int> RecurrenceCountAsync(string url, string word);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : TryOutWebPage.ElectiveSoapServices.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<TryOutWebPage.ElectiveSoapServices.IService1>, TryOutWebPage.ElectiveSoapServices.IService1 {
        
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
        
        public string[] GetTopSearchUrlsFromKeywords(string keywords) {
            return base.Channel.GetTopSearchUrlsFromKeywords(keywords);
        }
        
        public System.Threading.Tasks.Task<string[]> GetTopSearchUrlsFromKeywordsAsync(string keywords) {
            return base.Channel.GetTopSearchUrlsFromKeywordsAsync(keywords);
        }
        
        public int RecurrenceCount(string url, string word) {
            return base.Channel.RecurrenceCount(url, word);
        }
        
        public System.Threading.Tasks.Task<int> RecurrenceCountAsync(string url, string word) {
            return base.Channel.RecurrenceCountAsync(url, word);
        }
    }
}