FROM python:3.12-slim
WORKDIR /helloWorldApache
COPY helloworldapp.sh .
RUN chmod +x helloworldapp.sh


ENV PORT_KNOB=80
EXPOSE $PORT_KNOB

ARG NICE_QUOTE='You found the secret sauce - original text'
ENV test1=${NICE_QUOTE}
HEALTHCHECK --interval=10s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --spider -q http://localhost:${PORT_KNOB}/ || exit 1
CMD [ "./helloworldapp.sh" ]