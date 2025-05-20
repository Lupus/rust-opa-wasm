# AGENTS.md

## Project Overview
This repository contains a Rust project.

## Environment Constraints
- You are operating in an offline environment without internet access
- ALWAYS add `--offline` flag to all cargo commands
- Do not attempt to modify or update dependencies as they cannot be downloaded
- Do not try to install new packages or dependencies

## Code Style & Formatting
- Always format Rust code before submitting changes: `cargo fmt --all`
- All Clippy warnings in changes that you introduce must be fixed
- Use automatic fixing when possible: `cargo clippy --fix --all --offline --allow-dirty -- -D warnings`

## Testing Requirements
- Run Rust tests with: `cargo test --offline`

## Build Process
1. Format code: `cargo fmt --all`
2. Fix linting issues: `cargo clippy --fix --all --offline --allow-dirty -- -D warnings`
3. Run Rust tests: `cargo test --offline`

## PR Instructions
- Title format: [Component] Brief description
- Include a "Testing Done" section that lists verification steps performed
- Ensure all tests pass locally before submission

## Specification for `http.send` in OPA

You can find the specification for `http.send` in OPA [here](./http-send.md).

## Prior work

There is a prior work on the `http.send` function in OPA. You can find it in [implements-http-send.patch](./implements-http-send.patch). This patch is extracted from [matrix-org/rust-opa-wasm!218](https://github.com/matrix-org/rust-opa-wasm/pull/218) and is authored by [@MatMaul](https://github.com/MatMaul).

According to PR description, the following is implemented:

* `url`
* `method`
* `body`
* `raw_body`
* `headers`
* `enable_redirect`
* `force_json_decode`
* `force_yaml_decode`
* `timeout`
* `raise_error`
* `max_retry_attempts`

The rest of the parameters are about TLS and cache behavior control and are not implemented.
