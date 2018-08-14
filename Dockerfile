# docker build -t multi-deploy .
FROM        multi-deploy:base

COPY        .   /srv/backend
WORKDIR     /srv/backend

# supervisor.conf파일 복사
RUN         cp -f /srv/backend/.config/supervisord.conf \
                  /etc/supervisor/conf.d/

CMD         supervisord -n