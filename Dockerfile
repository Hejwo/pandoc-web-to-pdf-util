FROM ubuntu:20.04

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive
ENV PDF_ENGINE xelatex

ENV SITE https://typelevel.org/cats-effect/datatypes/io.html
ENV FILE cats-effect-io.pdf
ENV MARGIN 1.5cm

RUN apt-get update && \
    apt-get install apt-utils -y

RUN apt-get install pandoc -y
RUN apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra -y
RUN apt-get install lmodern -y
RUN apt-get install texlive-lang-arabic -y
RUN apt-get install texlive-xetex -y

WORKDIR /pandoc

CMD ["/bin/bash"]
