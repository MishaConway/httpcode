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
          status.to_i
            => 202
          status.message
            => "Accepted"
          status.code_and_message
            => [202, "Accepted"]

      If you know the number of the status code, but are not sure what function to call you can use from_code.
      Last Example:
          We know we want to use the 200 code, but not sure what function to call.

          status = HttpStatus.from_code 200
            => #<StatusCode:0x007fb85403e2b0 @code=200, @message="OK", @symbol=:ok>
          status.symbol
            => :ok

          Now we know that we can call HttpStatus.ok

## Full list of statuses you can call:
    HttpStatus.continue				                100
    HttpStatus.switching_protocols				    101
    HttpStatus.processing				            102
    HttpStatus.ok				                    200
    HttpStatus.created				                201
    HttpStatus.accepted				                202
    HttpStatus.non_authoritative_information		203
    HttpStatus.no_content				            204
    HttpStatus.reset_content				        205
    HttpStatus.partial_content				        206
    HttpStatus.multi_status				            207
    HttpStatus.im_used				                226
    HttpStatus.multiple_choices				        300
    HttpStatus.moved_permanently				    301
    HttpStatus.found				                302
    HttpStatus.see_other				            303
    HttpStatus.not_modified				            304
    HttpStatus.use_proxy				            305
    HttpStatus.reserved				                306
    HttpStatus.temporary_redirect				    307
    HttpStatus.bad_request				            400
    HttpStatus.unauthorized				            401
    HttpStatus.payment_required				        402
    HttpStatus.forbidden				            403
    HttpStatus.not_found				            404
    HttpStatus.method_not_allowed				    405
    HttpStatus.not_acceptable				        406
    HttpStatus.proxy_authentication_required		407
    HttpStatus.request_timeout				        408
    HttpStatus.conflict				                409
    HttpStatus.gone				                    410
    HttpStatus.length_required				        411
    HttpStatus.precondition_failed				    412
    HttpStatus.request_entity_too_large				413
    HttpStatus.request_uri_too_long				    414
    HttpStatus.unsupported_media_type				415
    HttpStatus.requested_range_not_satisfiable		416
    HttpStatus.expectation_failed				    417
    HttpStatus.im_a_teapot				            418
    HttpStatus.unprocessable_entity				    422
    HttpStatus.locked				                423
    HttpStatus.failed_dependency				    424
    HttpStatus.upgrade_required				        426
    HttpStatus.internal_server_error				500
    HttpStatus.not_implemented				        501
    HttpStatus.bad_gateway				            502
    HttpStatus.service_unavailable				    503
    HttpStatus.gateway_timeout				        504
    HttpStatus.http_version_not_supported			505
    HttpStatus.variant_also_negotiates				506
    HttpStatus.insufficient_storage				    507
    HttpStatus.not_extended				            510


## Additional methods
    HttpStatus.valid_codes
    HttpStatus.from_code http_status_code




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

or.......
If you have any suggestions for how to make this better or extend it, please email me at MishaAConway@gmail.com and I
will be happy to consider suggestions.
