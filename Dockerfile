FROM feiyizhou/alpine-base:3.19

WORKDIR /feiyizhou

COPY server /feiyizhou/server

RUN chmod +x /feiyizhou/server

EXPOSE 8080

CMD ["/feiyizhou/server"]