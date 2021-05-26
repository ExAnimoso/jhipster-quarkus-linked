FROM jhipster/jhipster:v6.10.5 AS runner

ARG JHIPSTER_PASSWORD

RUN cd /home/jhipster && \
    git clone https://github.com/jhipster/generator-jhipster-quarkus.git
RUN cd /home/jhipster/generator-jhipster-quarkus && \
    echo $JHIPSTER_PASSWORD | sudo -S npm link
RUN echo $JHIPSTER_PASSWORD | sudo -S chmod 777 ~/.config -R

