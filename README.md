# shell-novice-docker

A docker image to run live coding exercises for the [Software Carpentry `shell-novice` lesson](https://swcarpentry.github.io/shell-novice/)

## Why?

The lesson is based on a particular shell flavor ([bash](https://www.gnu.org/software/bash/)) and assumes a particular file hierarchy that may not match that used by the instructor on their computer.

This Docker image has been designed to align as closely as possible to the lesson content, so output shown by the instructor should match what is depicted in the lesson.

## About the example data

The lesson requires downloading [shell-lesson-data.zip](https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip) and unzipping it on your Desktop.

Since the instructor may want to switch to the file explorer on their OS and show their Desktop, it is recommended to unzip the example data folder locally and mount the local Desktop to `/Users/nelle/Desktop` in the Docker image.

## Recommended command

This command will mount your desktop to `/Users/nelle/Desktop` in the image and drop you into `/Users/nelle` with a bash prompt:

```
docker run --rm -it -v ${HOME}/Desktop:/Users/nelle/Desktop joelnitta/shell-novice:latest
```

## License

[MIT](LICENSE)