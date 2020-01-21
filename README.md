# Schemer

This elixir app is designed to be used as a command line tool to generate SmartCitiesData compliant schemas from data samples. It can be run either from the command line or via Docker.

## Running

### From the Command Line

#### Installing the script
```sh
mix deps.get
mix escript.build
mix escript.install
```

#### Running the script
```sh
schemer source_data.json
```
The script will output a file called `schema.json` that contains the derived schema.

> **Note:** The actual installation directory will vary depending on your system, but the output of the install task will tell you where it went. Consider adding the parent directory to your path.

### In Docker
On Mac:
```sh
docker run -v $(pwd):/app schemer source_data.json
```

On Windows PowerShell:
```sh
docker run --rm -v ${PWD}:/app schemer source_data.json
```

On Windows CMD:
```bat
docker run --rm -v %cd%:/app schemer source_data.json
```

The script will output a file called `schema.json` that contains the derived schema.
