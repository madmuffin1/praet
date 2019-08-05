PRAET
==

PRAET is a *P*ostfix *R*elay that *A*dds X-*E*nvelope-*T*o.

It is based on a very basic alpine image (currently 3.10), which in turn contains a Postfix 3.4.

It has a single purpose: Accept mail for a specified domain (specified as `$RELAY_DOMAIN`), set the `X-Envelope-To` mail header and pass the mail onto another mailserver (specified using `$RELAY_HOST` and `$RELAY_PORT`).

Example startup:

    docker run -e RELAY_DOMAIN=mydomain.web -e RELAY_HOST=realmailhost.mydomain.web -e RELAY_PORT=25 madmuffin1/praet

