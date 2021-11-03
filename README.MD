# POC für Spring Boot mit HTTP/2 in K8s

#### Motivation: Server Sent Events (SSE) [https://developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events)

Einfach Backend mit zwei Endpunkten einen Normalen `GET` Request (`/`) und einen `GET` Request (`/sse`) mit `Content-Type: text/event-stream`
