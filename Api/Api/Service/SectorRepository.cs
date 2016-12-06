using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Api.Models;

namespace Api.Service
{
    public class SectorRepository
    {
        public Sector[] GetAllSectores()
        {
            return new Sector[]
        {
             new Sector
             {
                  Id = 1,
                  Nombre = "Glenn Block"
             },
             new Sector
             {
                  Id = 2,
                  Nombre = "Dan Roth"
             }
        };
        }
    }
}