docker build -t <image_name> <filepath>

docker run -e NAME="[your name]" <image_name>

The Dockerfile should be named Dockerfile.
The Dockerfile should be in the root directory of the project.
The base image should be alpine:latest.
The Dockerfile should contain a single instruction to print “Hello, Captain!” to the console before exiting.

If you are looking to build a more advanced version of this project, you can consider adding the ability to pass your name to the Docker image as an argument, and have the Docker image print “Hello, [your name]!” instead of “Hello, Captain!”.