# Example Project

This repo is a minimum project to verify [this issue](https://github.com/ota42y/openapi_parser/issues/42)

## Verification

### Setup

```console
$ git clone https://github.com/kochoru/openapi_parser_example.git
$ cd example-api
$ bundle install
```

### Verify
```console
$ bundle exec rspec spec/request
F

Failures:

  1) API for Test test test
     Failure/Error: assert_schema_conform
     
     Committee::InvalidResponse:
       don't exist response definition #/paths/~1test/get/responses/404
     # ./spec/request/test_request_spec.rb:11:in `block (3 levels) in <top (required)>'
     # ./spec/request/test_request_spec.rb:9:in `block (2 levels) in <top (required)>'
     # ------------------
     # --- Caused by: ---
     # OpenAPIParser::NotExistContentTypeDefinition:
     #   don't exist response definition #/paths/~1test/get/responses/404
     #   ./spec/request/test_request_spec.rb:11:in `block (3 levels) in <top (required)>'

Finished in 0.01545 seconds (files took 0.77457 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/request/test_request_spec.rb:7 # API for Test test test
```