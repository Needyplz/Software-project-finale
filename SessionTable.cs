//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Software_project
{
    using System;
    using System.Collections.Generic;
    
    public partial class SessionTable
    {
        public int UsernameID { get; set; }
        public string PasswordID { get; set; }
        public int CustomerID { get; set; }
    
        public virtual Customer Customer { get; set; }
    }
}
