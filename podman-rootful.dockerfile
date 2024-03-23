FROM registry.suse.com/bci/bci-base:15.5

RUN zypper install -y podman

# rootful
RUN mkdir -p /var/lib/containers
VOLUME /var/lib/containers

CMD ["podman"]