# Nuitka Demo

<div>
    <a href="http://www.wtfpl.net/"><img src="http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png" alt="WTFPL" /></a>
</div>

Compile a Python program with [Nuitka](https://github.com/Nuitka/Nuitka) in [Docker](https://www.docker.com/).

# Details

All build related files are in `build` directory.

| Filename           | Function                              |
|--------------------|---------------------------------------|
| `Dockerfile`       | Compile with gcc.                     |
| `clang.Dockerfile` | Compile with clang.                   |
| `slim.Dockerfile`  | Compile with clang inside slim image. |
| `Jenkinsfile`      | Compile in a Jenkins pipeline.        |
