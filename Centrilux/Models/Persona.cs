//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Centrilux.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Persona
    {
        public int Persona_ID { get; set; }
        public Nullable<int> Documento_cedula_ID { get; set; }
        public Nullable<int> Documento_libreta_ID { get; set; }
        public string Nombre_completo { get; set; }
        public string Fecha_nacimiento { get; set; }
        public string Ciudad { get; set; }
        public string Departamento { get; set; }
        public string Email { get; set; }
        public string Contacto1 { get; set; }
        public string Contacto2 { get; set; }
    }
}
