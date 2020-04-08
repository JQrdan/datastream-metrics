FROM docker.elastic.co/beats/metricbeat:7.5.2
COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
# COPY kafka.yml /usr/share/metricbeat/kafka.yml
USER root
RUN chown root:metricbeat /usr/share/metricbeat/metricbeat.yml
USER metricbeat