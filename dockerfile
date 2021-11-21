#Deriving the latest base image
FROM python:latest


#Labels as key value pair
LABEL Maintainer="roushan.me17"


# Any working direcrtory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
CMD ["pwd "]
RUN pwd
CMD ["ls -ltr "]
RUN echo $(ls -ltr)
#to COPY the remote file at working directory in container
COPY test.py /home/
RUN echo $(ls -ltr /home/)
RUN echo $(ls -ltr)
CMD ["ls -ltr "]
CMD ["ls -ltr /home/"]
# Now the structure looks like this '/usr/app/src/test.py'


#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD [ "python3", "/home/test.py"]
