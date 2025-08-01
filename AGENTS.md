# Repository Guidelines

This repository uses PHPUnit for automated tests and a Docker based environment.

## Testing

- Run the test suite with `./develop.sh test` which executes PHPUnit inside the PHP container.
- If Docker is not available, install dependencies (`composer install`) and run `./vendor/bin/phpunit`.

## Code Style

- PHP code should follow the Laravel preset defined in `.styleci.yml`.

## Documentation

- Update `README.md` whenever new commands or noteworthy configuration files are introduced.

