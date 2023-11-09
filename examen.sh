#!/bin/bash

echo "clone repo "

git clone "git@github.com:RavoniainaDarisse/examen.git"

cd examen

ls -al

touch index.html

cat <<EOF >> index.html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <p>EXAMEN GIT</p>
    </div>
</body>
</html>

EOF

echo "ajout de fichier"

git status

git add index.html

echo "creation dossier style"

mkdir style

touch style/.gitkeep

git status

git add style

echo "commit"

git commit -m "ajout fichier html et dossier style"

echo "push"

git push origin main


