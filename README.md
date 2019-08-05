PRAET
==

![Docker Automated build](https://img.shields.io/docker/automated/madmuffin/praet) 
![Docker Build Status](https://img.shields.io/docker/build/madmuffin/praet)
![Docker Pulls](https://img.shields.io/docker/pulls/madmuffin/praet)
![Docker Stars](https://img.shields.io/docker/stars/madmuffin/praet)
[![](https://images.microbadger.com/badges/image/madmuffin/praet.svg)](https://microbadger.com/images/madmuffin/praet "Get your own image badge on microbadger.com")

PRAET is a *P*ostfix *R*elay that *A*dds X-*E*nvelope-*T*o.

It is based on a very basic alpine image (currently 3.10), which in turn contains a Postfix 3.4.

It has a single purpose: Accept mail for a specified domain (specified as `$RELAY_DOMAIN`), set the `X-Envelope-To` mail header and pass the mail onto another mailserver (specified using `$RELAY_HOST` and `$RELAY_PORT`).

Example startup:

    docker run -e RELAY_DOMAIN=mydomain.web -e RELAY_HOST=realmailhost.mydomain.web -e RELAY_PORT=25 madmuffin/praet


Contributing
--

This project is open to contributions, but the scope of the project should not be vastly extended. Feel free to open a PR and I will review and comment as fast as time allows.


License
--

Copyright 2019 Patrick Brueckner

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
