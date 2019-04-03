FROM ubuntu
RUN apt-get update && \
    apt-get install -y \
            git \
            nodejs \
            npm
WORKDIR /app
RUN git clone \
    https://github.com/fourcolorssuffice/cpe2.git
RUN npm install
EXPOSE 8000
CMD ["npm", "start"]
