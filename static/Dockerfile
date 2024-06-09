FROM nginx:alpine

LABEL maintainer="Dev Shah" \
      description="This is the terminal resume of Dev Shah."

COPY index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
        CMD curl --fail localhost:80 || exit 1