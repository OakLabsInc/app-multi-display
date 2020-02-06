# app-multi-display

This is an example of how to implement multiple displays for OakOS using a two displays with multiple applications installed

## Running locally

Make sure that you are running the right version of Node locally. You will find the required version in the `.nvmrc` file
If you are not running the same version (`node -v`) then you will need to run

``` bash
nvm install $(cat .nvmrc)
npm run rebuild
```

### Now you can run electron locally

``` bash
npm run dev
```

### Running in a docker container

``` bash
xhost +
docker-compose up --build
```

### Shutting down the  docker container

``` bash
docker-compose down
```

## Example Installation

``` json
{
  "services": [
    {
      "image": "index.docker.io/oaklabs/app-multi-display:latest",
      "environment": {
        "REMOTE_URL": "https://zivelo.com",
        "TZ": "America_Los_Angeles",
        "FULLSCREEN": "true",
        "DISPLAY_ID": "0"
      }
    },
    {
      "image": "index.docker.io/oaklabs/app-multi-display:latest",
      "environment": {
        "REMOTE_URL": "https://fast.com",
        "TZ": "America_Los_Angeles",
        "FULLSCREEN": "true",
        "DISPLAY_ID": "1"
      }
    }
  ]
}

```
