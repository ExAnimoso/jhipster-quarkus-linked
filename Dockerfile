FROM jhipster/jhipster:v6.10.5 AS runner

RUN cd /home/jhipster && \
    git clone https://github.com/Synqcom/generator-jhipster-quarkus.git
RUN cd /home/jhipster/generator-jhipster-quarkus && \
    echo jhipster | sudo -S npm link
RUN echo jhipster | sudo -S chmod 777 ~/.config -R

