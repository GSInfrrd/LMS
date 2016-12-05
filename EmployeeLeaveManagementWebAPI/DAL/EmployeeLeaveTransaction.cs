//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmployeeLeaveTransaction
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EmployeeLeaveTransaction()
        {
            this.Workflows = new HashSet<Workflow>();
        }
    
        public long Id { get; set; }
        public int RefEmployeeId { get; set; }
        public System.DateTime FromDate { get; set; }
        public Nullable<System.DateTime> ToDate { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int RefStatus { get; set; }
        public int NumberOfWorkingDays { get; set; }
        public int RefLeaveType { get; set; }
        public string EmployeeComment { get; set; }
        public string ManagerComments { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual EmployeeDetail EmployeeDetail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Workflow> Workflows { get; set; }
        public virtual MasterDataValue MasterDataValue { get; set; }
        public virtual MasterDataValue MasterDataValue1 { get; set; }
    }
}