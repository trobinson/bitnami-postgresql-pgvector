FROM pgvector/pgvector:0.8.0-pg17 AS builder

FROM bitnami/postgresql:17.4.0-debian-12-r16

COPY --from=builder /usr/lib/postgresql/17/lib/vector.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/17/extension/vector* /opt/bitnami/postgresql/share/extension/


