//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccountingAndAnalysis1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CashRegister
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CashRegister()
        {
            this.Sale = new HashSet<Sale>();
        }
    
        public int Id { get; set; }
        public string Number { get; set; }
        public int StoreId { get; set; }
        public int CashRegisterTypeId { get; set; }
    
        public virtual CashRegisterType CashRegisterType { get; set; }
        public virtual Store Store { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sale> Sale { get; set; }
    }
}
