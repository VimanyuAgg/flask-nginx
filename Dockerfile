FROM tiangolo/uwsgi-nginx-flask:flask
COPY ./app /app
RUN rm /etc/nginx/conf.d/nginx.conf
COPY ./changes/nginx.conf /app/
RUN cp /app/nginx.conf /etc/nginx/conf.d/nginx.conf
ADD ./changes/nginx.conf /etc/nginx/conf.d/nginx.conf
