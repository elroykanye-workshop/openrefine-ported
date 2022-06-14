FROM ubuntu
ENV OPENREFINE_BUNDLE="openrefine-linux-3.5.2.tar.gz"
RUN apt-get update && apt-get install -y maven
RUN apt-get install default-
COPY OPENREFINE_BUNDLE ./
WORKDIR /home/openrefine/app

EXPOSE 80
SHELL [ "./refine" ]