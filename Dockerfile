FROM sandy1709/FidgetUserbot:alpine

#clonning repo 
RUN git clone https://github.com/king-cobra-user/FIDJET-USERBOT.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
