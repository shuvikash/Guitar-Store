# Guitar Store web app 

This is a simple application developed on top of Ruby on Rails framework where we can perform CRUD operations on a guitar store.

### Database Requirement(MySQL):
guitars

### Table: 
guitars( <br />
      id INT NOT NULL AUTO_INCREMENT, <br />
      g_type varchar(255), <br />
      brand_name varchar(255), <br />
      no_of_strings INT, <br />
      price INT, <br />
      bought_date varchar(20) )<br />

### Command to run the server: 
rails s