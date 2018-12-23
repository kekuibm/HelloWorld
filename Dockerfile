FROM docker.io/centos:7
MAINTAINER kedar.m.kulkarni@in.ibm.com
COPY helloworld /tmp/helloworld
RUN yum -y install sudo
RUN sudo yum -y install java-1.8.0-openjdk-devel
WORKDIR /tmp/helloworld
RUN javac HelloWorld.java
RUN java HelloWorld
