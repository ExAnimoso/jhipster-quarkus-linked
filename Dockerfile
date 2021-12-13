FROM jhipster/jhipster:v6.10.5 AS runner

RUN cd /home/jhipster && \
    git clone https://github.com/Synqcom/generator-jhipster-quarkus.git && \
    cd generator-jhipster-quarkus && \
    git checkout develop

RUN cd /home/jhipster/generator-jhipster-quarkus && \
    echo jhipster | sudo -S npm link

RUN echo jhipster | sudo -S chmod 777 ~/.config -R

RUN wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp

RUN echo jhipster | sudo -S tar xf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt/

RUN echo jhipster | sudo -S ln -s /opt/apache-maven-3.6.3/bin/mvn /usr/bin/mvn
