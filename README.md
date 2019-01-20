# docker-octave

Octave in docker with UI.

# How-To

## Build

This will create kalemena/octave:latest image

```bash
$ make build
```

## Run

This will start the Octave UI, with redirecting display to current user display.

```bash
$ make start
```

## UI example

In Octave UI, you can try plot to check UI is fully working:

```bash
>> x = -10:0.1:10;
>> plot (x, sin (x));
```

![Octave UI Plot](/octave-ui.png)

