﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using geraldBlog.Models;

namespace geraldBlog.Controllers
{ 
    public class PostController : Controller
    {
        private ModelContext db = new ModelContext();

        //
        // GET: /Blog/

        public ViewResult Index()
        {
            return View(db.Posts.ToList());
        }

        //
        // GET: /Blog/Details/5

        public ViewResult Details(int id)
        {
            Post blog = db.Posts.Find(id);
            return View(blog);
        }

        //
        // GET: /Blog/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Blog/Create

        [HttpPost]
        public ActionResult Create(Post blog)
        {
            if (ModelState.IsValid)
            {
                db.Posts.Add(blog);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(blog);
        }
        
        //
        // GET: /Blog/Edit/5
 
        public ActionResult Edit(int id)
        {
            Post blog = db.Posts.Find(id);
            return View(blog);
        }

        //
        // POST: /Blog/Edit/5

        [HttpPost]
        public ActionResult Edit(Post blog)
        {
            if (ModelState.IsValid)
            {
                db.Entry(blog).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(blog);
        }

        //
        // GET: /Blog/Delete/5
 
        public ActionResult Delete(int id)
        {
            Post blog = db.Posts.Find(id);
            return View(blog);
        }

        //
        // POST: /Blog/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Post blog = db.Posts.Find(id);
            db.Posts.Remove(blog);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}