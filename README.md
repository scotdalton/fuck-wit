# Fuck Wit

Fuck with Docker

## Curl

### Control
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

### Experiment
```
~> docker-compose -f dc.yml run experiment
Starting fuckwit_dre_1 ... done

/ # curl google.com
So won't they let you know
That if you fuck with Dre, you're fuckin' wit Death Row

/ # curl maps.google.com
So won't they let you know
That if you fuck with Dre, you're fuckin' wit Death Row
```

## Chrome

### Setup (OSX)

1.  You need some tools to make the display work
    ```
    ~> brew install socat
    ~> brew cask install xquartz
    ```

2.  Run XQuartz which should provide an `xterm` window for you
    ```
    ~> open -a XQuartz
    ```

3.  In the XQuartz `xterm` window, some magic byte streaming thing
    ```
    % socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
    ```

4.  In another XQuartz `xterm` window, get into the repo directory and run Chrome
    ```
    % docker-compose -f dc.yml run experiment
    ```

5.  Navigate to http://google.com in Chrome
