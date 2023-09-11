# 🐍 Python Project Boilerplate

We kept this project simple on purpose, it is intended as a starting point for any Python project: ML packages, backend microservices or whatever the best programming language in the world (🐍) is awesome for! For example, [we](https://www.compiuta.com)'ve used it to bootstrap multiple [Connhex](https://www.connhex.com) services.

This project was developed using the so-called `src layout`: see [here](https://packaging.python.org/en/latest/discussions/src-layout-vs-flat-layout/) for more details.

## ✨ Features

### 📃 Project Metadata

The [`setup.cfg`](./setup.cfg) file contains all the metadata for the project, including the project name, version, author, description, supported Python version, and more.

The [`pyproject.tml`](./pyproject.toml) file contains build system requirements and information, which are used by pip to build the package.

### 📦 Dependencies

The project uses `setuptools` to manage dependencies.

All dependencies are listed in the `requirements.txt` file. This file is typically generated using the command:

```bash
$ python -m pip freeze > requirements.txt
```

Instead, the `install_requires` keyword within the [`setup.cfg`](./setup.cfg) file [should be used to specify what the project minimally needs to run correctly](https://packaging.python.org/en/latest/discussions/install-requires-vs-requirements/#install-requires).

### 🧪 Testing

The project is set up with [`pytest`](https://docs.pytest.org/) for testing. All test files should be placed inside the `tests` folder.

You can change the target tests folder by updating the `testpaths` variable in the [`pyproject.toml`](./pyproject.toml) file.

To run the tests, simply use the following command:

```bash
$ pytest
```

> ⚠️ If you encouter the `ModuleNotFoundError: No module named 'python_project_boilerplate'` error when running this command, you're probably using the wrong `pytest` executable. If you have installed the dependencies in a virtual environment, you should use: `$ <path-to-env>/bin/pytest`.

### 🐳 Docker Support

The project includes a [Dockerfile](./Dockerfile) and a [docker-build.sh](./docker-build.sh) script to build a Docker image of the project.

To build a Docker image of your project, use the following command:

```bash
$  ./docker-build.sh
```

This will create a Docker image with a `python-project-boilerplate` tag.

## 🎬 Getting started

- Create a virtual environment using your favorite tool:

```bash
$ virtualenv -p python venv
```

- Install the project in [`editable`](https://setuptools.pypa.io/en/latest/userguide/development_mode.html) mode:

```bash
$ python -m pip install -e .
```

- Run:

```bash
$ python src/python_project_boilerplate/main.py
```

or using the console script defined in the [setup.cfg](./setup.cfg) file:

```bash
$ python_project_boilerplate
```

## 💻 License

This project is licensed under the MIT License.
