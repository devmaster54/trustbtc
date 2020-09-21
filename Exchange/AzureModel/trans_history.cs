//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Exchange.AzureModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class trans_history
    {
        public int id { get; set; }
        public Nullable<int> buyer { get; set; }
        public Nullable<int> seller { get; set; }
        public Nullable<double> btc { get; set; }
        public Nullable<double> cash { get; set; }
        public Nullable<bool> holdBTC { get; set; }
        public Nullable<bool> sentBTC { get; set; }
        public Nullable<bool> sentCash { get; set; }
        public Nullable<bool> recieveCash { get; set; }
        public string holdTransID { get; set; }
        public string sentTransID { get; set; }
        public string status { get; set; }
        public string holdWallet { get; set; }
        public string buyerWallet { get; set; }
        public string firstname_seller { get; set; }
        public string lastname_seller { get; set; }
        public string IBAN { get; set; }
        public string SWIFT { get; set; }
        public string REFERENCE { get; set; }
        public Nullable<System.DateTime> sellTime { get; set; }
        public Nullable<System.DateTime> buyTime { get; set; }
        public Nullable<double> holdAmount { get; set; }
    
        public virtual user_table user_buyer { get; set; }
        public virtual user_table user_seller { get; set; }
    }
}