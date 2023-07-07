FROM quay.io/keycloak/keycloak:latest as builder

ENV KC_FEATURES=step-up-authentication 
# Build Image with the configuation from ENV
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:latest
COPY --from=builder /opt/keycloak/lib/quarkus/ /opt/keycloak/lib/quarkus/
#COPY --from=builder /opt/keycloak/conf/cache-ispn-jdbc-ping.xml /opt/keycloak/conf
WORKDIR /opt/keycloak
#ENV KC_HOSTNAME=localhost
CMD [ "start-dev" ]
ENTRYPOINT ["/opt/keycloak/bin/kc.sh" ]