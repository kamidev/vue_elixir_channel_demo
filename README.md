# Simple example of Phoenix and Vue.js integration

 Inspired by Dave Thomas great online course [Elixir for Programmers](https://codestool.coding-gnome.com/courses/elixir-for-programmers). 

## How it works

  1. Phoenix creates Vue instances in 'app.js'

  2. Standard Phoenix templates, such as 'index.html.eex', have some added Vue markup

  3. Phoenix runs the usual Elixir code on the server

  4. Vue.js Javascript methods injected by Phoenix run in the browser 

  5. Phoenix channels transfer data between server and browser

   ## Try it out

  * Go to application folder: `cd chan`
  * Install Elixir dependencies: `mix deps.get`
  * Install Node.js dependencies: `cd assets && npm install && cd ..`
  * Start application using `iex -S mix phx.server`

Now visit [`localhost:4000`](http://localhost:4000). 

If it works, it should look like these [screen shots](chan/README.md).

Have fun poking around with iex and browser debugging tools!

---

<i>Update 20180703: Phoenix project is now configured to use Webpack instead of Brunch. 
  
  When Phoenix 1.4 is released, Webpack will be default. I followed the gist below to configure Phoenix 1.3 and Webpack: https://gist.github.com/LostKobrakai/b28c18bc369f421cdc19136f8252b412).

<i>

