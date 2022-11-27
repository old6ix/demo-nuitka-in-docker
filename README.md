# Nuitka Demo

<div>
    <a href="http://www.wtfpl.net/">
        <img src="http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png" alt="WTFPL" />
    </a>
    <a href="https://gitmoji.dev">
		<img src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg" alt="Gitmoji" />
	</a>
    <a href="https://www.docker.com/">
        <img src="https://img.shields.io/badge/Docker-20.10.21-2496ED?logo=docker" alt="Docker" />
    </a>
    <a href="https://www.jenkins.io/">
        <img src="https://img.shields.io/badge/Jenkins-2.361.4-D24939?logo=jenkins" alt="Jenkins" />
    </a>
</div>

Compile a Python program with [Nuitka](https://github.com/Nuitka/Nuitka):

1. in [Docker](https://www.docker.com/).
2. with [Jenkins](https://www.jenkins.io/).

# Details

All build related files are in `build` directory.

| Filename           | Function                              |
|--------------------|---------------------------------------|
| `Dockerfile`       | Compile with gcc.                     |
| `clang.Dockerfile` | Compile with clang.                   |
| `slim.Dockerfile`  | Compile with clang inside slim image. |
| `Jenkinsfile`      | Compile in a Jenkins pipeline.        |
