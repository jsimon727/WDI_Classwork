require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get ('/'){"
  <!doctype html>
<head>
  <title>Personal Profile</title>
</head>

<body>
  <header><h1>Welcome to the page!</h1></header>

    <div id ='Basic Info' class='personal-info'>
        <img src='http://m.c.lnkd.licdn.com/media/p/1/000/127/31f/28ea3a6.jpg' width='300' height='300' />
        <pre>
          <strong>First Name:</strong> Jessica
          <strong>Last Name:</strong> Simon
          <strong>Birthdate:</strong> 7/27/1989
          <strong>Home:</strong> New York, NY
      </pre>
        <ul>
          <li>Dog</li>
          <li>Cat</li>
          <li>Bird</li>
        </ul>
        <h2><strong>Favorite Color:</strong>Blue</h2>
    </div>
     <div id='statement' class='personal-info'>
        This is a statement.
        <a href='#'>
    </div>


    <footer>
      Made by Jessica
    </footer>
  </body>
</html>"}


get(''/name)
