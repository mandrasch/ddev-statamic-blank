# DDEV statamic

Status: WIP

[Statamic CMS](https://statamic.dev/) meets [DDEV](https://ddev.com/) & [Gitpod](https://gitpod.io/).

**Launch in your browser via Gitpod:**

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/mandrasch/ddev-statamic-blank/)

## Local setup after clone

1. `ddev composer install`
1. `ddev exec cp .env.example .env`
1. `ddev artisan key:generate`
1. `ddev launch`
1. Create admin user: `ddev please make:user`
1. Launch backend: `ddev launch /cp`

## How was this created?

```bash
ddev config --project-type=laravel --docroot=public --create-docroot
ddev composer create statamic/statamic
ddev exec cp .env.example .env
ddev artisan key:generate
ddev launch
```

Set the APP_URL to ddev project URL in .env, e.g. `APP_URL=https://ddev-statamic-blank.ddev.site`

Support of the please command was added in `.ddev/commands/web/please`.

Create first user:

```bash
ddev please make:user
ddev launch /cp
```

Technical details:

-   `ddev composer create` is a wrapper around `composer create-project` which moves the files to the project root folder automatically after install

## TODOs:

-   [ ] Add https://github.com/tyler36/ddev-browsersync#laravel-mix-example support
-   [ ] Use automatic command for .env replacement, something like (`ddev exec 'echo ${DDEV_PRIMARY_URL} && cat .env.example | sed -E \\'\s\/APP_URL=(.*)\/APP_URL=${DDEV_PRIMARY_URL}\/g\\'\ > .env'` is not working, see https://github.com/drud/ddev/issues/3636#issuecomment-1145743417)
-   [ ] Create simple DDEV addon for `please`-command (https://github.com/drud/ddev-addon-template)

## Resources

See [My DDEV lab: Statamic](https://my-ddev-lab.mandrasch.eu/tutorials/cms-and-frameworks/statamic.html) for further info.

## License

Please be aware that Statamic is only free and open source for personal and hobby projects, see: [Statamic Licensing](https://statamic.dev/licensing)
