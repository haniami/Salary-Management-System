//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SalaryManagementSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class Deduction
    {
        public int Deduction_ID { get; set; }
        public Nullable<decimal> Loan { get; set; }
        public decimal Tax { get; set; }
        public Nullable<int> Absent { get; set; }
        public Nullable<int> Holiday_Fullday { get; set; }
        public Nullable<int> Holiday_Halfday { get; set; }
        public decimal EPF { get; set; }
        public decimal SOCSO { get; set; }
        public int Salary_ID { get; set; }
    
        public virtual Salary Salary { get; set; }
    }
}