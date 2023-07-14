# taking python image version 3.9 on top of this base image all below operation will be done.
FROM python:3.9

# changin working directory all operation will be done this dir
WORKDIR /app

#installing django version 4.2.3
RUN pin install django==4.2.3

#copying everying thing from host's current directory to image's current dir wihc is  "/app" folder
COPY . . 
# installing django dependencies which are mentioned in requirement.txt
# generate requirement.txt using "pip freeze > requirements.txt"
RUN pip install -r requirements.txt

# startind django's inbuild server on "any-ip:8000" which will make this app accesible from open internet
CMD ["python3", "manage.py", "runserver 0.0.0.0:8080"]
