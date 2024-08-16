ARG JZERO_VERSION=latest

FROM jaronnie/jzero:${JZERO_VERSION}

CMD ["jzero", "-h"]