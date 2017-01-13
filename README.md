# talkman
Server for hosting presentations written using the
[present tool](https://godoc.org/golang.org/x/tools/cmd/present). It uses the
[uit-present](https://github.com/fjukstad/uit-present) template. It hosts all of
the presentations in my [talks](https://github.com/fjukstad/talks) repository. 

# howto
```
$ git clone https://github.com/fjukstad/talkman.git
$ cd talkman
$ docker build -t talkman .
$ docker run -p 3999:3999 -t talkman
```

# your own talks? 
If you'd like to host some other talks than mine, edit the last line of the
Dockerfile: 
```
CMD /repo-man.sh https://github.com/fjukstad/talks/archive/master.zip /uit-present
```

and set the url to a zip anywhere on the interwebs with your
presentations. 


