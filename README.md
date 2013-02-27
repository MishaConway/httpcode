## Installation

Add this line to your application's Gemfile:

    gem 'httpcode'

Or install it yourself as:

    $ gem install httpcode

## Usage

Allows you to specify http status codes by name rather than magic numbers for more readable code.

      Example:
            HttpStatus.created.code  or HttpStatus.not_modified.code

      More Examples:
          status = HttpStatus.accepted
            => #<StatusCode:0x007fb85403e1c0 @code=202, @message="Accepted", @symbol=:accepted>
          status.code
            => 202
          status.message
            => "Accepted"
          status.code_and_message
            => [202, "Accepted"]

      If you know the number of the status code, but are not sure what function to call you can use from_id.
      Last Example:
          We know we want to use the 200 code, but not sure what function to call.

          status = HttpStatus.from_code 200
            => #<StatusCode:0x007fb85403e2b0 @code=200, @message="OK", @symbol=:ok>
          status.symbol
            => :ok

          Now we know that we can call HttpStatus.ok

Full list of statuses you can call:
    HttpStatus.continue
    HttpStatus.switching_protocols
    HttpStatus.processing
    HttpStatus.ok
    HttpStatus.created
    HttpStatus.accepted
    HttpStatus.non_authoritative_information
    HttpStatus.no_content
    HttpStatus.reset_content
    HttpStatus.partial_content
    HttpStatus.multi_status
    HttpStatus.im_used
    HttpStatus.multiple_choices
    HttpStatus.moved_permanently
    HttpStatus.found
    HttpStatus.see_other
    HttpStatus.not_modified
    HttpStatus.use_proxy
    HttpStatus.reserved
    HttpStatus.temporary_redirect
    HttpStatus.bad_request
    HttpStatus.unauthorized
    HttpStatus.payment_required
    HttpStatus.forbidden
    HttpStatus.not_found
    HttpStatus.method_not_allowed
    HttpStatus.not_acceptable
    HttpStatus.proxy_authentication_required
    HttpStatus.request_timeout
    HttpStatus.conflict
    HttpStatus.gone
    HttpStatus.length_required
    HttpStatus.precondition_failed
    HttpStatus.request_entity_too_large
    HttpStatus.request_uri_too_long
    HttpStatus.unsupported_media_type
    HttpStatus.requested_range_not_satisfiable
    HttpStatus.expectation_failed
    HttpStatus.im_a_teapot
    HttpStatus.unprocessable_entity
    HttpStatus.locked
    HttpStatus.failed_dependency
    HttpStatus.upgrade_required
    HttpStatus.internal_server_error
    HttpStatus.not_implemented
    HttpStatus.bad_gateway
    HttpStatus.service_unavailable
    HttpStatus.gateway_timeout
    HttpStatus.http_version_not_supported
    HttpStatus.variant_also_negotiates
    HttpStatus.insufficient_storage
    HttpStatus.not_extended




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
