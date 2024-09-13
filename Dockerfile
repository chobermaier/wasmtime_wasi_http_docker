FROM chainguard/wasmtime

EXPOSE 8080
USER nonroot
COPY --chmod=666 hello-wasi-http/target/wasm32-wasip1/debug/hello_wasi_http.wasm /home/nonroot/hello_wasi_http.wasm

CMD ["serve", "--addr=0.0.0.0:8080", "/home/nonroot/hello_wasi_http.wasm"]
