# 🐍 Python Project Boilerplate

We kept this project simple on purpose, it is intended as a starting point for any Python project: ML packages, backend microservices or whatever the best programming language in the world (🐍) is awesome for! For example, [we](https://www.compiuta.com)'ve used it to bootstrap multiple [Connhex](https://www.connhex.com) services.

This project was developed using [uv](https://docs.astral.sh/uv) package manager. In particular, we used the [uv packaged application concept](https://docs.astral.sh/uv/concepts/projects/#packaged-applications).

## ✨ Features

### 📃 Project Metadata

The [`pyproject.toml`](./pyproject.toml) file contains all the metadata for the project, including the project name, version, author, description, supported Python version, and more.

### 📦 Dependencies

All dependencies are managed using `uv`. In order to add or remove dependencies, follow its [documentation](https://docs.astral.sh/uv/concepts/dependencies).

### 📝 Linting and formatting

We use [`ruff`](https://docs.astral.sh/ruff) for linting and formatting. The configuration can be customized in the [`pyproject.toml`](./pyproject.toml) file.

### 🧪 Testing

The project is set up with [`pytest`](https://docs.pytest.org/) for testing. All test files should be placed inside the `tests` folder.

You can change the target tests folder by updating the `testpaths` variable in the [`pyproject.toml`](./pyproject.toml) file.

To run the tests, simply use the following command:

```bash
$ uv run pytest
```

### 🐳 Docker Support

The project includes a [Dockerfile](./Dockerfile) and a [docker-build.sh](./docker-build.sh) script to build a Docker image of the project.

To build a Docker image of your project, use the following command:

```bash
$  ./docker-build.sh
```

This will create a Docker image with a `python-project-boilerplate` tag.

## 🎬 Getting started

- Install [uv](https://docs.astral.sh/uv/getting-started/installation)

- Run the project:

```bash
$ uv run python_project_boilerplate
```

## 💻 License

This project is licensed under the MIT License.
