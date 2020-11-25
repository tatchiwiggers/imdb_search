## Notes
This morning we'll see three different of serching on you r rails app.
The first one will be using plain active active record, that is, we will not be using any gems for this type of search.
We will be using plain active record and SQL queries so that we can understand the funcitonalitu o the queries behind it.
But honestly, unless you are doing a really simple search, you would rarely use it. There are lots of limitations as to what
Active Record can do compared to PG SEARCH GEM. PG Search is very powerful and lightweight and definitely recommended for
your projects rather than actvive record.
And later we are going to talk a bit abou t elastic search, which is a real professional way go about implementing search 
in you application. But then again, fot the project, PG search will be they way to go...

For the sake of time we are just gonna start with a minimal template, meaning that there is no devise, no users, we only
need a few different models related to movies and tv shows and we'll just search thru them.

## SCHEMA
So this is what we'll implement today;
Notice how we have 3 different tables being the TV shows table not associated with the others. So thoday we are gonna
learn a very advanced way of searching that will involve all 3 tables using something called multimodel search. It is
something like we have om imdb 

Ok guys let's generate our models:
Movies belong to Directos
Tc Shows

rails db:migrate
check models and add has_many

SEED - COPY FROM SLIDE

Add route!
Add controller Movies -> index method!
Add view!!

## HOW DO WE GO TO OUR MOVIES INDEX PAGE? 
We dont wanna type movies in our search bar.
So let's add a link to our homepage;

<div class="container text-center mt-3">
    <%= link_to "Search Movies", movies_path, class: 'btn btn-secondary' %>
</div>

## INDEX MOVIES
here we have a container from boostrap with a row (flexbox by default);
col-sm-8 which makes it slightly smaller than the full screen
offset-sm-2 -> offsets it to the middle, moves the column to the middle.
another way is using this is adding "justify-content-center inside row (has the smallest element inside which we want to be the flexbox);
div row will center column col-sm-8;

## LET'S START SEEARCHING!
We need a form - SLIDE. JUST ABOVE MOVIES.

This form is called form tag. We could use it with simple form, however it would be an unconventional way of using simple form. (WHY)???
wHEN DO WE USE SIMPLE FORM? Simple for is usually tied to a certain model and it also does validations for us. FOr example if we pass an input which isnt related to the model, it'll break. It will say, tabatha i dont know what name is for movies (our table says title). You can use simple for but would would have to disable some of its features. Form_tag is a simpler type of form which contains no restrictions.
And this is the syntax for form_tag... i dont think we have seen one yet. It has a text field tag where you pass what you need.