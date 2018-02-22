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

For something like Elm, which installs packages with NPM, you have to
run install commands once:

```$bash
docker-compose run exercise npm install
docker-compose run exercise npm test
```  

Then, you can use the `watch` script to finish (which is automatic) to
watch your local dir as you work on your code:

```$bash
docker-compose up
```