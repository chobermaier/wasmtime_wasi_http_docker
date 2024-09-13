# wasmtime_wasi_http_docker

Demo for running a WebAssembly WASI http server inside a docker container.

Built ontop of https://github.com/sunfishcode/hello-wasi-http with [wasmtime](https://wasmtime.dev).

## requirements

 - [Rust](https://rust-lang.org)
 - [cargo component](https://github.com/bytecodealliance/cargo-component)
 - [Docker](https://www.docker.com/)

## build

```shell
git submodule init
git submodule update
make
```

## start

```shell
docker compose up -d
curl http://localhost:8080
```

should give this output:
```
Hello, wasi:http/proxy world!
```

