﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CentriluxDB : DbContext
    {
        public CentriluxDB()
            : base("name=CentriluxDB")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Chofer> Chofers { get; set; }
        public virtual DbSet<Documento_cedula> Documento_cedula { get; set; }
        public virtual DbSet<Documento_libreta> Documento_libreta { get; set; }
        public virtual DbSet<Documento_propiedad> Documento_propiedad { get; set; }
        public virtual DbSet<Movil> Movils { get; set; }
        public virtual DbSet<Movil_Chofer> Movil_Chofer { get; set; }
        public virtual DbSet<Propietario> Propietarios { get; set; }
        public virtual DbSet<Rol_usuario> Rol_usuario { get; set; }
        public virtual DbSet<Seguro> Seguroes { get; set; }
        public virtual DbSet<Ticket> Tickets { get; set; }
        public virtual DbSet<Turno> Turnoes { get; set; }
        public virtual DbSet<Usuario> Usuarios { get; set; }
        public virtual DbSet<Persona> Persona { get; set; }
    }
}
