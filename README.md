## About Formidable
Formidable is a Imba Framework for Rapid API Development.

![Status](https://github.com/formidablejs/framework/actions/workflows/test.yml/badge.svg)
![npm](https://img.shields.io/npm/v/@formidablejs/framework)
![GitHub](https://img.shields.io/github/license/formidablejs/framework)

## Installation

To get started, you need to install the Craftsman CLI. The Craftsman CLI will allow you to create new projects, and also provides a number of helpful commands that can assist you while building your application.

#### Your first Formidable Application (recommended)

When creating a new application, the Craftsman CLI will clone the formidablejs repository from Github and install all the dependencies for you:

```bash
npm i -g @formidablejs/craftsman
craftsman new project-name
```

> Note: You only need to install the `@formidablejs/craftsman` package once.

Once done, you can run your application using the following command.

```bash
cd project-name
npm start
```

#### Alternative Installation (not recommended)

You may also create a new application using the following commands:

Clone the Formidablejs repository from Github:

```bash
git clone https://github.com/formidablejs/formidablejs.git project-name
```

`cd` and install the dependencies:

```bash
cd project-name
npm i
```

Copy the `.env.example` file to `.env`:

```bash
cp .env.example .env
```

Generate an application key:

```bash
./node_modules/.bin/craftsman key
```

Publish `@formidablejs/framework` and `@formidablejs/mailer`:

```bash
./node_modules/.bin/craftsman install --package=@formidablejs/framework -v
./node_modules/.bin/craftsman install --package=@formidablejs/mailer -v
```

And finally, run your application:

```bash
npm start
```

For more information, please visit the [Formidable Documentation](https://formidablejs.org/docs/).

## Security Vulnerabilities

If you discover a security vulnerability within Formidable, please send an e-mail to Donald Pakkies via [donaldpakkies@gmail.com](mailto:donaldpakkies@gmail.com). All security vulnerabilities will be promptly addressed.

## License

The Formidable framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
