﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApiKairos.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class kairosappEntities : DbContext
    {
        public kairosappEntities()
            : base("name=kairosappEntities")
        {
        }
      
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.Configuration.LazyLoadingEnabled = false;
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<celulares> celulares { get; set; }
        public DbSet<coberturas_celular> coberturas_celular { get; set; }
        public DbSet<indumentarias> indumentarias { get; set; }
        public DbSet<perfiles_riesgos> perfiles_riesgos { get; set; }
        public DbSet<rutas> rutas { get; set; }
        public DbSet<sectores> sectores { get; set; }
        public DbSet<telefonos_emergencias> telefonos_emergencias { get; set; }
        public DbSet<usuarios> usuarios { get; set; }
        public DbSet<velocidades> velocidades { get; set; }
    }
}
