using System;
using System.Collections.Generic;

namespace ClassLibrary;

public partial class Supplier
{
    public int IdSuppliers { get; set; }

    public string SuppliersName { get; set; } = null!;

    public string Goods { get; set; } = null!;

    public virtual ICollection<Assortment> Assortments { get; set; } = new List<Assortment>();
}
