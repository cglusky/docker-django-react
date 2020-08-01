# docker-django-react

## WORK IN PROGRESS

A slightly opinionated local dev full stack template using docker-compose with Django backend and React frontend; all served behind NGINX. Keeping the full stack in one repo for ease of use. Composed of ideas from multiple tutorials, forum threads and official docs. Nothing original here.

## Main Frameworks/Libraries/Packages

Please see requirements.txt and package.json for full details.

Django

- Django v3 series
- Django Rest Framework
- Django Rest Framework Simple JWT
- PyTest

React

- Create React App
- Node dev server via Docker LTS alpine image
- Hot reload

Postgress

- Docker v12.0 alpine image

Ngnix

- Docker stable alpine
- See conf for details. Serves Django's static and media files as well.

## Notes

Django

- One app/installed created called core
- Custom user stubbed out in the Core app. No additional fields. Just a blank class that inherets AbstractUser. core.User is assigned as AUTH_USER_MODEL
- SimpleJWT is installed but not used.

## Fork or Template

Feel free to fork at will but it may be handier as template. The following are the steps I had in mind for using it as a project template:

1. Create a new repo on GitHub without ReadMe
2. On your local dev machine, and in your preferred parent directory:

```sh

$> git clone https://github.com/cglusky/docker-django-react.git <new-local-repo-dir>
$> cd <new-local-repo-dir>
$> git remote add origin <url-new-remote-repo-created-in-step-1>
$> git push -u origin master

```

### Edit And Rename .env-example

All services expect to read env variables from .env.dev file. Please make sure you review the example and change the name to env.dev. AND that your gitignore includes env files before you commit super secret stuff to a public repo.

### Useful Commands

Build containers. Add -up flag to bring services up after build.

```sh

$> docker-compose build

```

Bring containers up. Add -d flag to run output detached from current shell.

```sh

$> docker-compose up

```

Bring containers down. Add -v flag to also delete named volumes

```sh

$> docker-compose down

```

View logs by service name.

```sh

$> docker-compose logs <service-name>

```

Enter shell for specified container (must be running)

```sh

$> docker exec -it <container-name> sh

```

### Containers, Services and Ports

| Container  | Service | Host Port | Docker Port |
| ---------- | ------- | --------- | ----------- |
| dev-django | django  | 8001      | 8000        |
| dev-react  | react   | 3001      | 3000        |
| dev-db     | db      | 5432      | 5432        |
| dev-nginx  | nginx   | 8080      | 80          |

### Why NGINX for local dev?

I can barely spell CORS, let alone decode all of the issues trying to get Cross-Origin Resource Sharing to work. Using NGINX to redirect/proxy requests/responses to/from the correct container/service/ports helps make your browser happy. And it simulates real world infrastrcture as a bonus. This is an idea I picked up from the good folks at testdriven.io and I liked it enough to make it work(I think). So...

Please make all requests from your browser through http://localhost:8080 and NGINX will happily redirect the request and proxy all your services so your browser thinks it's all one and the same protocol/domain/port == CORS bliss.
