* rebuild cvat using the scripts in ./bin/
* after rebuilding, create superuser with the following command

       docker exec -it cvat bash -ic 'python3 ~/manage.py createsuperuser  --no-input'