using Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Api.Service;


namespace Api.Controllers
{
    public class SectorController : ApiController
    {
        private SectorRepository sectorRepository;

    public SectorController()
    {
        this.sectorRepository = new SectorRepository();
    }

    public Sector[] Get() {
        return this.sectorRepository.GetAllSectores();
    } 

    }
}
