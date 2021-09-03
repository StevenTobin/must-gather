FROM quay.io/openshift/origin-must-gather:latest

# Save original gather script
RUN mv /usr/bin/gather /usr/bin/gather_original

# Use our gather script in place of the original one
COPY gather_managed_kafka /usr/bin/gather
COPY version /usr/bin/version

ENTRYPOINT /usr/bin/gather
