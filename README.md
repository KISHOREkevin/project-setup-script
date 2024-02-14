# Mern project setup script 
## This script creates an folder structure for mern application with vite as frontend

the folder structure look like this ... <br />
```
your_project_name/
                  |-- server/
                  |      node_modules/
                  |      controllers/
                  |      models/
                  |      routes/
                  |      index.js
                  |      package.json
                  |      package-lock.json
                  |-- client/
                  |        vite-folder-structure..
```
* here the script automatically installs express and mongoose packages from npm package manager.
* inside index.js , the code would be appended by this script;
```
          import express from "express";
          import mongoose from "mongoose";
          const app=express();
          mongoose.connect("'Your_mongo_url'/'Your_database_name'")
          .then(app.listen(Your_server_port,()=>console.log("Server and Database are initiated ...")))
          .catch((err)=>{if (err) throw err});
```

* the server port, mongo url, database name would be asked in the runtime of the script , so its by default the index.js would be filled with boilerplate with your informations provided.

* By using it , the boilerplate setup process can be made easy , time and focus of your project also wont disrupt , btw...
# steps to run 
  * download the script
  * run `chmod +x <script_file.sh>`
  * enter into your preferred folder
  * give the path where script folder is present. (eg. ~/Documents/script.sh)
  * give the infoermations as its asks , such as server port, mongo url, database name....
  * yeah now the setup is completed
# ENJOY CODING !!!
