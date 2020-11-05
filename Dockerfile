FROM python:3.6
ENV PYTHONUNBUFFERED=1
RUN apt-get update
RUN apt install -y python3-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev \
    libtiff5-dev libjpeg62-turbo-dev libopenjp2-7-dev zlib1g-dev libfreetype6-dev \
    liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev libpq-dev
RUN mkdir /odoo
COPY . /odoo
WORKDIR /odoo
RUN pip install setuptools wheel
RUN pip install -r requirements.txt
RUN ls -l
CMD ./odoo-bin


