ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache binutils libusb glib libc6-compat

ARG BUILD_ARCH


# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
RUN echo "echo \"Start VirtualHub for ${BUILD_ARCH}\" " >> /run.sh;

RUN if [ "${BUILD_ARCH}" = "i386" ]; then \
      echo "./32bits/VirtualHub -c /data/.virtualhub.dat" >> /run.sh; \
    elif [ "${BUILD_ARCH}" = "amd64" ]; then \
      echo "./64bits/VirtualHub -c /data/.virtualhub.dat" >> /run.sh; \
    else \
      echo "./${BUILD_ARCH}/VirtualHub -c /data/.virtualhub.dat" >> /run.sh; \
    fi

COPY 32bits/VirtualHub  /32bits/VirtualHub
COPY 64bits/VirtualHub /64bits/VirtualHub
COPY armhf/VirtualHub /armhf/VirtualHub
COPY aarch64/VirtualHub /aarch64/VirtualHub
RUN chmod a+x /32bits/VirtualHub
RUN chmod a+x /64bits/VirtualHub
RUN chmod a+x /armhf/VirtualHub
RUN chmod a+x /aarch64/VirtualHub

CMD [ "/run.sh" ]