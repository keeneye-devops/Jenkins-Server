# animated-couscous
Docker Based Jenkins Node

## What's new
- Jenkins Container now connects to it's hosts docker socket and uses it, therefore you can run docker commands inside it.
- Increased timeout when connecting to jenkins mirrors

## Installing
1. Clone Me!
2. Create a `jenkins_home` directory inside and provide full access to it.
  ```shell
  cd animated-couscous
  mkdir jenkins_home && chmod 777 jenkins_home
  ```
3. Run using docker-compose. 
  ```shell
  docker-compose up
  ```
4. That's it! Now you can access jenkins using port 9091 of wherever you are. Checkout the [main jenkins page](https://github.com/jenkinsci/docker/blob/master/README.md) for everything else.
