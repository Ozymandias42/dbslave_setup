ARG SQL_VERSION=5.7
FROM mysql:${CODE_VERSION}

COPY setup-slave.sh /usr/local/bin/
COPY wait-for-it.sh /usr/local/bin/

ENTRYPOINT ["/bin/bash"]
CMD ["setup-slave.sh"]
