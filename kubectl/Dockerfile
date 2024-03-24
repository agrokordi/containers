FROM scratch

ARG KUBECTL_VERSION

COPY --from=bitnami/kubectl:$KUBECTL_VERSION /opt/bitnami/kubectl/bin/kubectl /medius-kubectl
