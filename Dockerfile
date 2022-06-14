FROM ubuntu
ENV OPENREFINE_BUNDLE="file.tar.gz"
RUN apt-get update && apt-get install -y maven
RUN apt-get install default-
COPY OPENREFINE_BUNDLE ./
WORKDIR /home/openrefine/app

EXPOSE 80
SHELL [ "./refine" ]