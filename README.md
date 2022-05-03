# hetic








I ) Docker build images

En ce metant dans le dossier correspondant:
1) dataset_image
    docker build -t dataset_image -f dataset_image.Dockerfile .

2) train_image
    docker build -t train_image -f train_image.Dockerfile .
    


II ) Create Volume

    docker create volume shared 
    shared etant le nom du volume

II) Docker run images with volume

    1 ) dataset_image
        docker run -v shared:/data dataset_image

    2 ) train_image : 

        docker run -it -v shared:/data train_image bash

            -it et bash permet de laisser le container ouvert tant que l'interface terminal est ouverte. On le met car notre container n'a pas d'os mais seulement python 3

III) Docker push in repo



docker push 2570/devops_train_image_1:tagname