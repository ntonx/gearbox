FROM antnp/gearbox_pipeline:binary
VOLUME ["/home/source","/home/sink"]
#RUN cp config /home/encode2f/ 
ENTRYPOINT ["pipeline","-s"]
CMD ["pipeline","-c"]


#USER default
#EXPOSE 8080
#ENV RACK_ENV production
#ENV RAILS_ENV production
#COPY . /opt/app-root/src/
#ENV GEM_HOME ~/.gem
#RUN scl enable rh-ruby25 "bundle install"
#CMD ["scl", "enable", "rh-ruby25", "./run.sh"]
#CMD["./pipeline -s","./pipeline -c"]
#USER root
#RUN chmod og+rw /opt/app-root/src/db
#USER default