FROM scratch

ARG KUBECTL_VERSION

COPY --from=bitnami/kubectl:${KUBECTL_SHA256} /opt/bitnami/kubectl/bin/kubectl /medius-kubectl
