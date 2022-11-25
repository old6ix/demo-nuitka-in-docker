# Nuitka Demo

Compile a Python program with [Nuitka](https://github.com/Nuitka/Nuitka) in [Docker](https://www.docker.com/).

# Details

All build related files are in `build` directory.

| Filename           | Function                              |
|--------------------|---------------------------------------|
| `Dockerfile`       | Compile with gcc.                     |
| `clang.Dockerfile` | Compile with clang.                   |
| `slim.Dockerfile`  | Compile with clang inside slim image. |
| `Jenkinsfile`      | Compile in a Jenkins pipeline.        |
