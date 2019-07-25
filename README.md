# SonarQube Scanner Container

Unofficial container for [SonarQube Scanner](https://github.com/SonarSource/sonar-scanner-cli).

## How to use

Mount your source code directory to `/data`.  For example, `docker run -it --rm --mount type=bind,target=/data,source=$(pwd) sonar-scanner-cli`

## License

Copyright 2019 Orlando Caro.

Licensed under the [GNU Lesser General Public License, Version 3.0](LICENSE)
