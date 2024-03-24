FROM scratch

ARG VERSION
ENV KUBECTL_VERSION=${VERSION}

COPY --from=bitnami/kubectl:$KUBECTL_VERSION /opt/bitnami/kubectl/bin/kubectl /medius-kubectl
