FROM archlinux:latest
MAINTAINER Busykoala info@busykoala.ch

ENV STYLES=$STYLES
ENV SOURCE=$SOURCE

RUN pacman -Suy --noconfirm
RUN pacman -S --needed --noconfirm pandoc
RUN pacman -S --needed --noconfirm python
RUN pacman -S --needed --noconfirm python-pip

ADD ./requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt
ADD ./blogposts /blogposts
ADD ./parts /parts
ADD ./render_page.py /render_page.py

CMD rm /out/*
CMD python3 render_page.py
