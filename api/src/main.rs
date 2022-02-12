#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;
extern crate rocket_contrib;

use std::process;
use std::env;
use rocket_contrib::serve::StaticFiles;

fn main() {
    rocket::ignite()
        .mount("/", StaticFiles::from("../ui/dist/"))
        .launch();
}
