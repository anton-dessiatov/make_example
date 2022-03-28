# Trivial makefile conditional compilation flags

This is a dummy trivial example of how one could use conditional compilation flags in Makefiles.

The application is a simple Hello World that outputs "Release message" by default. But if compiled
with `MY_DEBUG=1` environment variable, it outputs "Debug message" instead.

Caveat is that you need to manually track if there is an existing build in the source tree and
`make clean` it if you're changing the value of `MY_DEBUG` variable. The reason is that  `make`
does not track flag values used during compilation and is not able to figure out that flags have
been changed by itself.

So the full flow is like this:

```
> make clean
> make
> ./src/example
Release message
> make clean
> MY_DEBUG=1 make
> ./src/example
Debug message
```
