FROM python:2.7

COPY docker.sh .

RUN /bin/bash ./docker.sh

EXPOSE 8080
EXPOSE 8000

CMD /bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh && source ~/.bashrc && mkvirtualenv GREENDAY && workon GREENDAY && grunt server"
