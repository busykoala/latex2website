FROM archlinux:latest
MAINTAINER Busykoala info@busykoala.ch

ENV STYLES=$STYLES
ENV SOURCE=$SOURCE

RUN pacman -Suy --noconfirm
RUN pacman -S --needed --noconfirm pandoc

ADD ./render_page.py /render_page.py

# dummy command
CMD echo $SOURCE
