FROM archlinux:latest
MAINTAINER Busykoala info@busykoala.ch

RUN pacman -Suy --noconfirm
RUN pacman -S --needed --noconfirm pandoc

ADD ./blogposts /blogposts
ADD ./render_page.py /render_page
