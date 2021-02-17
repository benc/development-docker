* rebuild cvat using the scripts in ./bin/
* after rebuilding, create superuser with the following command

       docker exec -it cvat bash -ic 'python3 ~/manage.py createsuperuser'

* add prebuilt models to nuclio:
** create a project 'cvat'
** add a new function with the name of your model
** select github
** use cvat as github source
** point to the model you want (look in the 'serverless' dir)
