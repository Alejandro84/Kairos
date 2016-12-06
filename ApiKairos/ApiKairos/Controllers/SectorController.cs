using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using ApiKairos.Models;

namespace ApiKairos.Controllers
{
    public class SectorController : ApiController
    {
        private kairosappEntities db = new kairosappEntities();

        // GET api/Sector
        public IQueryable<sectores> Getsectores()
        {
            return db.sectores;
        }

        // GET api/Sector/5
        [ResponseType(typeof(sectores))]
        public IHttpActionResult Getsectores(int id)
        {
            sectores sectores = db.sectores.Find(id);
            if (sectores == null)
            {
                return NotFound();
            }

            return Ok(sectores);
        }

        // PUT api/Sector/5
        public IHttpActionResult Putsectores(int id, sectores sectores)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sectores.id_sector)
            {
                return BadRequest();
            }

            db.Entry(sectores).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!sectoresExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST api/Sector
        [ResponseType(typeof(sectores))]
        public IHttpActionResult Postsectores(sectores sectores)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.sectores.Add(sectores);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (sectoresExists(sectores.id_sector))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = sectores.id_sector }, sectores);
        }

        // DELETE api/Sector/5
        [ResponseType(typeof(sectores))]
        public IHttpActionResult Deletesectores(int id)
        {
            sectores sectores = db.sectores.Find(id);
            if (sectores == null)
            {
                return NotFound();
            }

            db.sectores.Remove(sectores);
            db.SaveChanges();

            return Ok(sectores);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool sectoresExists(int id)
        {
            return db.sectores.Count(e => e.id_sector == id) > 0;
        }
    }
}