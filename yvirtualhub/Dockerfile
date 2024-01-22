ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache binutils libusb glib libc6-compat

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

COPY aarch64/VirtualHub /
RUN chmod a+x /VirtualHub

CMD [ "/run.sh" ]