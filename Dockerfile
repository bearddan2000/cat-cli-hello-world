FROM node

WORKDIR /workspace

RUN apt update && \
    apt install -y git

RUN git clone https://github.com/cdiggins/cat-language.git /code

WORKDIR /code

COPY bin .

CMD "./run.sh"