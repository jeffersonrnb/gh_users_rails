# README

## Using the ruby version 2.7.2 (maybe will be necessary)
```bash
$ rvm use 2.7.2
```

## Installing dependencies
```bash
$ bundle install
```

## Copying the application config file from the example
```bash
$ cp config/application.yml.example config/application.yml
```
* It would be like that:

```yaml
development:
  GITHUB_HOST: 'https://api.github.com'
  FRONTEND_CORS_ORIGIN: 'localhost:3001'

test:
  GITHUB_HOST: 'https://api.github.com'
  FRONTEND_CORS_ORIGIN: 'localhost:3001'

production:
  GITHUB_HOST: 'https://api.github.com'
  FRONTEND_CORS_ORIGIN: 'localhost:3001'
```

### Edit the config/application.yml to the correct host/port

```yaml
development:
  GITHUB_HOST: 'https://api.github.com'       # The Github API Host
  FRONTEND_CORS_ORIGIN: 'localhost:3001'      # The gh_users_react host origin to be allowed on the CORS policy
```
