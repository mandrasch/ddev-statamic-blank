# DDEV statamic

Status: WIP

[Statamic CMS](https://statamic.com/) meets [DDEV](https://ddev.com/) & [Gitpod](https://gitpod.io/).

See [Statamic @ My DDEV lab](https://my-ddev-lab.mandrasch.eu/tutorials/cms-and-frameworks/statamic.html) for further info.

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

See: https://my-ddev-lab.mandrasch.eu/tutorials/cms-and-frameworks/statamic.html

Technical details:

-   `ddev composer create` is a wrapper around `composer create-project` which moves the files to the project root folder automatically after install

## TODOs:

-   [ ] Add https://github.com/tyler36/ddev-browsersync#laravel-mix-example support
-   [ ] Use automatic command for .env replacement, something like (`ddev exec 'echo ${DDEV_PRIMARY_URL} && cat .env.example | sed -E \\'\s\/APP_URL=(.*)\/APP_URL=${DDEV_PRIMARY_URL}\/g\\'\ > .env'` is not working, see https://github.com/drud/ddev/issues/3636#issuecomment-1145743417)
-   [ ] Create simple DDEV addon for `please`-command (https://github.com/drud/ddev-addon-template)

## Resources

## License

Please be aware that Statamic is only free and open source for personal and hobby projects, see: [Statamic Licensing](https://statamic.dev/licensing)
