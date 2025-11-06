FROM dtzar/helm-kubectl:3.19.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
