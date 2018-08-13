FROM openjdk:11
LABEL maintainer=Florian.Mayer@dbca.wa.gov.au
LABEL description="Openrefine 3.0-rc1 Docker image."

WORKDIR /opt/openrefine
RUN wget -O or.tar.gz \
  https://github.com/OpenRefine/OpenRefine/releases/download/3.0-rc.1/openrefine-linux-3.0-rc.1.tar.gz \
  && tar xzf or.tar.gz \
  && rm or.tar.gz \
  && mkdir -p /var/openrefine

EXPOSE 3333
CMD ["./openrefine-3.0-rc.1/refine", "-i", "0.0.0.0", "-d", "/var/openrefine"]
HEALTHCHECK --interval=1m --timeout=10s --start-period=10s --retries=3 \
  CMD ["wget", "-q", "-O", "-", "http://localhost:3333/"]