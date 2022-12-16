NOTE: I have'nt used .env File so that the company can also use or check the database on my remote server.
Using Project/Development without .env file is like giving someone licence to come in your house and destroy everything :)

NPM Packages Used/Included

Express - Framework used to create RESful API
Mysql2 - For using mysql database and also required for sequelize to work with mysql
Sequelize - It's a ORM (Object Relational Mapper) used to work with mysql
Path - it was used to render the html file as we have to take absolute path to render/send that
Body Parser - to parse the body of the incoming request.


API EndPoints
--------------

To Insert Patient Data
hostname /api/patients/ our data
example: https://localhost:3000/api/patients/? here our query
Query/Data Format:  name:Apple11234
                    address:some random text
                    email:gauravchahar@icloud.com
                    phoneNo:+917678694128
                    password:Gaurav@123
                    photo:some photo url
                    psychiatristID:120

To Fetch Hospital Data
hostname /api/hospitals/ our data
example: https://localhost:3000/api/hospitals/: here our query
Param/Data Format:  https://localhost:3000/api/hospitals/?HospitalID=2




