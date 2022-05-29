FROM ubuntu
RUN apt update
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD bash /start.sh
