# node-injector-proxy
Proxy HTTP requests and inject JavaScript into the response.  NB this is a proof of concept, and there are plenty of cases where additional logic would make sense.

Uses [Traefik](https://github.com/containous/traefik) to handle route incoming requests.  Set it up as a load balancer between multiple Node servers if you want.

## Deploying

- Build the docker image

```bash
docker build -t node-injector-proxy .
```

- Deploy, or run locally with:

```bash
docker-compose up
```

Proxies requests to `http://localhost` through your script injector, EG

`http://localhost/https://www.google.com`

The page will be rendered, with your JS injected at the bottom of the page.  Other modification can be made to the request body in `/routes/index.js`

Enjoy!


