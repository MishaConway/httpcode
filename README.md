## Installation

Add this line to your application's Gemfile:

    gem 'httpcode'

Or install it yourself as:

    $ gem install httpcode

## Usage

Allows you to specify http status codes by name rather than magic numbers for more readable code.

   Example:  HttpStatus.created.code  or HttpStatus.not_modified.code

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
      Example:
          We know we want to use the 200 code, but not sure what function to call.

          status = HttpStatus.from_code 200
            => #<StatusCode:0x007fb85403e2b0 @code=200, @message="OK", @symbol=:ok>
          status.symbol
            => :ok

          Now we know that we can call HttpStatus.ok




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
