FROM dorowu/ubuntu-desktop-lxde-vnc

# err NO_PUBKEY
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4EB27DB2A3B88B8B

RUN rm -rf /var/lib/apt/lists/* && \
    apt-get update && \
    apt-get -y upgrade

RUN apt-get install -y vim wget

WORKDIR /root

# install python-tool
RUN apt-get install -y python3-setuptools python3-distutils

# install pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install --upgrade pip

# settings OpenCV
RUN python3 -m pip install opencv-python