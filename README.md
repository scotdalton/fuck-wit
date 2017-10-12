# Fuck Wit

Fuck with Docker

## Control
```
~> docker-compose -f dc.yml run control
Starting fuckwit_dre_1 ... done

/ # curl google.com
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>301 Moved</TITLE></HEAD><BODY>
<H1>301 Moved</H1>
The document has moved
<A HREF="http://www.google.com/">here</A>.
</BODY></HTML>

/ # curl maps.google.com
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>302 Moved</TITLE></HEAD><BODY>
<H1>302 Moved</H1>
The document has moved
<A HREF="http://maps.google.com/maps">here</A>.
</BODY></HTML>
```

## Experiment
```
~> docker-compose -f dc.yml run experiment
Starting fuckwit_dre_1 ... done

/ # curl google.com
So won't they let you know\nThat if you fuck with Dre, you're fuckin' wit Death Row

/ # curl maps.google.com
So won't they let you know\nThat if you fuck with Dre, you're fuckin' wit Death Row
```
