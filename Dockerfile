FROM alpine:3.10

RUN apk add --no-cache postfix postfix-pcre rsyslog && \
    postconf maillog_file=/dev/stdout && \
    echo '/(.+)/	PREPEND X-Envelope-To: $1' >> /etc/postfix/append_header && \
    postconf "smtpd_recipient_restrictions=check_recipient_access pcre:/etc/postfix/append_header"

CMD postconf relay_domains=$RELAY_DOMAIN && \
    postconf relayhost=[$RELAY_HOST]:$RELAY_PORT && \
    /usr/libexec/postfix/post-install meta_directory=/etc/postfix create-missing && postfix start-fg
