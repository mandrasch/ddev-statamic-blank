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

See my docs for all information:

https://my-ddev-lab.mandrasch.eu/tutorials/cms-and-frameworks/statamic.html

## License

Please be aware that Statamic is only free and open source for personal and hobby projects, see: [Statamic Licensing](https://statamic.dev/licensing)
