# All commands can be executed with '-n' flag to disable any interactive inputs.

# Installs the main dependencies and all other groups from poetry.lock file.
poetry install

# Only installs the main dependencies excluding all other groups from poetry.lock file.
poetry install --only main

# Installs the main dependencies and the specified groups.
poetry install --with GROUP1 --with GROUP2

# Installs the latest version of the specified dependency into the main dependencies.
poetry add DEPENDENCY

# Installs the specified version of the specified dependency into the main dependencies.
poetry add DEPENDENCY@==VERSION

# Installs the latest minor and patch updates (within the same major version)
# into the main dependencies.
poetry add DEPENDENCY@^VERSION

# Installs the latest patch update (within the same major and minor versions)
# into the main dependencies.
poetry add DEPENDENCY@~VERSION

# Installs the latest version of the specified dependency only into the specified group.
poetry add --group GROUP DEPENDENCY

# Generates or updates the poetry.lock file to the latest compatible versions based on the
# version constraints from pyproject.toml file.
poetry lock

# Only generates or updates the poetry.lock file based on the current pyproject.toml
# file, without updating to the latest versions.
poetry lock --no-update

# Updates all dependencies in the project to the latest versions that are allowed
# by the version constraints specified in the pyproject.toml file.
poetry update

# Updates all dependencies to their absolute latest versions, completely ignoring the
# version constraints specified in the pyproject.toml file and updates the poetry.lock file.
# it will not change the version constraints in the pyproject.toml file.
poetry update --no-update --lock

# Only updates the specified dependency and its dependencies to the latest versions
# that are allowed by the version constraints in the pyproject.toml file..
poetry update DEPENDENCY

# Removes the specified dependency and its dependencies.
poetry remove DEPENDENCY
