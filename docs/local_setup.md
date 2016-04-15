### Installation
---

##### _The following is a sample of the expected content_

Just run `./util install`

enter any required responses when prompted. install will create a blocking file to avoid potential re-install issues. Override using the `--force` flag.

or...

#### Permissions on Mac OS X

- ```sudo chmod +a "_www allow delete,write,append,file_inherit,directory_inherit" app/cache app/logs```
- ```chmod +a "`whoami` allow delete,write,append,file_inherit,directory_inherit" app/cache app/logs```

#### Install vendor files

`composer install`

Composer will prompt for configuration. Mostly the defaults are fine:
```
#!bash
  database_driver (pdo_mysql): pdo_mysql
  database_host (127.0.0.1):
  database_port (null):
  database_name (symfony):
  database_user (root):
  database_password (null):
  mailer_transport (smtp):
  mailer_host (127.0.0.1):
  mailer_user (null):
  mailer_password (null):
  locale (en):
  secret (ThisTokenIsNotSoSecretChangeIt): <paste a random string here>
  debug_toolbar (true):
  debug_redirects (false):
  use_assetic_controller (true): false
```

Database drivers:

- use `pdo_mysql` for MySQL
- use `pdo_pgsql` for Postgres

Next, install other dependencies.

- `bower install`
- `npm -g install node-sass`

#### Compiling SASS and building assets
Located in app/Resources/scss
Prod or gereneral dump:
`app/console assetic:dump`

For devleopment, this can happen continously with:
`app/console assetic:watch`

Note: Partials are not watched, only app.scss: https://github.com/symfony/AsseticBundle/issues/341

At this point, you should be able to visit the app in a browser.
You can use PHP's built in webserver (>= php v5.4):
`app/console server:run`

Visit localhost:8000/config.php to be sure that the web server's environment
is set up to run a symfony app.

Setup create, update and load fixtures into database:

- `php app/console doctrine:database:create`
- `php app/console doctrine:schema:update --force`
- `php app/console doctrine:fixtures:load`

or `./util database`
