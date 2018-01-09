This is my [exercism.io](https://exercism.io) setup.  If you need to override anything, just create docker-compose.override.yml and change it there.

When I get a new exercise (for example, foo), just set the build arg. 
Here's an example in action:

```$bash
cd scala
exercism fetch scala foo
docker-compose build --build-arg exercise=foo exercise
docker-compose run exercise

``` 