FROM fedora
RUN dnf -y update \
	&& dnf install -y python
ENV FULLNAME='Humza Ahmad'
ENV INSTITUTION='Collin Community College'
ENV COURSE='Containers & Microservices'
ADD hello.py /home/hello.py
ENTRYPOINT ["python3","/home/hello.py"]
