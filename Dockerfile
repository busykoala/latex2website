FROM archlinux:latest
MAINTAINER Busykoala info@busykoala.ch

# Install system dependencies
RUN pacman -Suy --noconfirm
RUN pacman -S --needed --noconfirm pandoc
RUN pacman -S --needed --noconfirm python
RUN pacman -S --needed --noconfirm python-pip

# Add python dependencies & script
RUN pip3 install pypandoc
ADD ./render_page.py /render_page.py

# remove and re-add posts and parts
RUN rm -rf /blogposts
COPY ./blogposts /blogposts
RUN rm -rf /parts
COPY ./parts /parts

# render to out
CMD rm /out/*
CMD python3 render_page.py
