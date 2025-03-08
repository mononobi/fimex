# Sets the PyPi token in poetry config.
poetry config pypi-token.pypi PYPI_TOKEN

# Builds the package to be published on PyPi.
poetry build

# Publishes the package on PyPi.
poetry publish
