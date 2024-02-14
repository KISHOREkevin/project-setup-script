echo "Enter the project name : "
read projectName
currentPath=$(pwd)
mkdir -p $currentPath/$projectName
cd $currentPath/$projectName
mkdir server
echo "configuring backend ..."
cd server
touch index.js
npm init -y
npm install express mongoose cors
mkdir controllers models routes
echo "Enter the port : "
read portNumber
echo "Enter the mongodb url : "
read -e  mongodbUrl
echo "Enter the database name :"
read databaseName

echo -e "import express from \"express\";\nimport mongoose from \"mongoose\";\nconst app=express();\nmongoose.connect(\"${mongodbUrl}/${databaseName}\")\n.then(app.listen(${portNumber},()=>console.log(\"Server and Database are initiated ...\")))\n.catch((err)=>{if (err) throw err});" > index.js
echo "configuring frontend..."
cd ..
npm create vite@latest

