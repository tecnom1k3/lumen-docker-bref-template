# Lumen Docker Bref Template

This repository is a small example of the [Lumen](https://lumen.laravel.com/) framework configured to run inside Docker and to be deployed to AWS Lambda using [Bref](https://bref.sh/) and the Serverless Framework.

## Features

- Docker environment with `nginx` and `php-fpm` (PHP 7.4) for local development
- `develop.sh` helper script providing common commands
- Serverless configuration (`serverless.yml`) for deploying the app to AWS Lambda
- Example `IndexController` that returns the current timestamp

## Requirements

- Docker and docker-compose available locally
- AWS credentials for deployment

## Getting Started

Install Composer dependencies and start the local containers:

```bash
./develop.sh composer install
./develop.sh up -d
```

Visit `http://localhost:8080/` to verify the application is running.

## Running Tests

Execute the test suite with phpunit:

```bash
./develop.sh test
```

If docker-compose is unavailable you can run `./vendor/bin/phpunit` directly after running `composer install`.

## Deployment

Deploy the application to AWS Lambda via the Serverless Framework:

```bash
./develop.sh deploy
```

To remove the deployed stack:

```bash
./develop.sh remove
```

AWS credentials are loaded from `phpdocker/php-fpm/credentials.ini` when using the Docker container.

## Additional Information

- Docker configuration lives in the `phpdocker/` directory.
- Terraform configuration for the backend is in `terraform/`.

## License

This project is released under the MIT License.
