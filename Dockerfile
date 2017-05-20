FROM docker.io/zerosizer/eap70-khan

USER root

ENV AUTO_DEPLOY_EXPLODED true

ADD jboss-spring-petclinic.war /opt/eap/standalone/deployments/jboss-spring-petclinic.war

RUN chown -R jboss:jboss /opt/eap/standalone/deployments/

USER 185

# Start the main process
CMD ["/opt/eap/bin/openshift-launch.sh"]

