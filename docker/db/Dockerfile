FROM postgres:14-alpine

ENV POSTGRES_DB=swt2
ENV POSTGRES_USER=swt2
ENV POSTGRES_PASSWORD=swt2

EXPOSE 5432

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]
