This is my [exercism.io](https://exercism.io) setup.  If you need to override anything, just create docker-compose.override.yml and change it there.

When I get a new exercise (for example, foo), just set the build arg. 
Here's an example in action:

```$bash
cd scala
exercism fetch scala foo
docker-compose build --build-arg exercise=foo exercise
docker-compose run exercise

``` 

For each of these, I have an override to mount my current exercism dir
as a volume, like this:

```$bash
  exercise:
    volumes:
      - ~/exercism/elm:/exercism/elm

```

For something like Elm, there is a built in script to watch for code changes
and execute tests, so after building just run it thusly:

```$bash
docker-compose up
```