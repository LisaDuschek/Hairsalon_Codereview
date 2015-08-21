# _{Hairsalon}_

##### _{Database application that allows salon owners to manage stylists and clients.}, {August 21st 2015}_

#### By Lisa Duschek

## Description

_{This app allows a salon owner to enter different Stylists and Clients into the tables of a database via html-forms.They can view,delete and create stylists and clients and add clients to a certain stylist.}_

## Setup

*  Install Ruby on your computer *Copy the folder to your desktop. *Install necessary gems as listed in the Gemfile *install and start a postgres-server in your terminal *create the databases (hair_salon and hair_salon_test), both with the following equal content *__in each: CREATE TABLE stylists (id serial PRIMARY KEY, name varchar); * in each: CREATE TABLE clients (id serial PRIMARY KEY, client_name varchar, stylist_id int); *__Start Sinatra by opening the uppermost app-folder in your command-prompt and typing 'ruby app.rb' *__open 'localhost:4567/' in your browser-window to see the app *
_

## Technologies Used

_{Ruby,PSQL}_

### Legal


Copyright (c) 2015 **Lisa Duschek}_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
