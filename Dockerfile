FROM nginx:1.12.2

# Change Timezone
ENV TIME_ZONE Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone

VOLUME /data

# Make dir
RUN mkdir -p /data/logs/nginx \
    && mkdir -p /data/logs/app \
    && mkdir -p /data/logs/access \
    && mkdir -p /data/webapps \
    && chown -R www-data.www-data /data/logs /data/webapps
