require "httpcode/version"

class StatusCode
  attr_reader :symbol, :code, :message

  def initialize symbol, code, message
    @symbol, @code, @message = symbol, code, message
  end

  def code_and_message
    [code, message]
  end

  def to_i
    code
  end

  #def to_s
  #  code.to_s
  #end
end

class HttpStatus
  def self.valid_codes
    [:continue,
     :switching_protocols,
     :processing,
     :ok,
     :created,
     :accepted,
     :non_authoritative_information,
     :no_content,
     :reset_content,
     :partial_content,
     :multi_status,
     :im_used,
     :multiple_choices,
     :moved_permanently,
     :found,
     :see_other,
     :not_modified,
     :use_proxy,
     :reserved,
     :temporary_redirect,
     :bad_request,
     :unauthorized,
     :payment_required,
     :forbidden,
     :not_found,
     :method_not_allowed,
     :not_acceptable,
     :proxy_authentication_required,
     :request_timeout,
     :conflict,
     :gone,
     :length_required,
     :precondition_failed,
     :request_entity_too_large,
     :request_uri_too_long,
     :unsupported_media_type,
     :requested_range_not_satisfiable,
     :expectation_failed,
     :im_a_teapot,
     :unprocessable_entity,
     :locked,
     :failed_dependency,
     :upgrade_required,
     :internal_server_error,
     :not_implemented,
     :bad_gateway,
     :service_unavailable,
     :gateway_timeout,
     :http_version_not_supported,
     :variant_also_negotiates,
     :insufficient_storage,
     :not_extended]
  end
  valid_codes.each { |c| cattr_reader c }

  def self.from_code code
    valid_codes.each{ |c| return send(c) if send(c).code == code }
    nil
  end

  @@continue=			StatusCode.new :continue, 100, 'Continue'
  @@switching_protocols=			StatusCode.new :switching_protocols, 101, 'Switching Protocols'
  @@processing=			StatusCode.new :processing, 102, 'Processing'
  @@ok=			StatusCode.new :ok, 200, 'OK'
  @@created=			StatusCode.new :created, 201, 'Created'
  @@accepted=			StatusCode.new :accepted, 202, 'Accepted'
  @@non_authoritative_information=			StatusCode.new :non_authoritative_information, 203, 'Non-Authoritative Information'
  @@no_content=			StatusCode.new :no_content, 204, 'No Content'
  @@reset_content=			StatusCode.new :reset_content, 205, 'Reset Content'
  @@partial_content=			StatusCode.new :partial_content, 206, 'Partial Content'
  @@multi_status=			StatusCode.new :multi_status, 207, 'Multi-Status'
  @@im_used=			StatusCode.new :im_used, 226, 'IM Used'
  @@multiple_choices=			StatusCode.new :multiple_choices, 300, 'Multiple Choices'
  @@moved_permanently=			StatusCode.new :moved_permanently, 301, 'Moved Permanently'
  @@found=			StatusCode.new :found, 302, 'Found'
  @@see_other=			StatusCode.new :see_other, 303, 'See Other'
  @@not_modified=			StatusCode.new :not_modified, 304, 'Not Modified'
  @@use_proxy=			StatusCode.new :use_proxy, 305, 'Use Proxy'
  @@reserved=			StatusCode.new :reserved, 306, 'Reserved'
  @@temporary_redirect=			StatusCode.new :temporary_redirect, 307, 'Temporary Redirect'
  @@bad_request=			StatusCode.new :bad_request, 400, 'Bad Request'
  @@unauthorized=			StatusCode.new :unauthorized, 401, 'Unauthorized'
  @@payment_required=			StatusCode.new :payment_required, 402, 'Payment Required'
  @@forbidden=			StatusCode.new :forbidden, 403, 'Forbidden'
  @@not_found=			StatusCode.new :not_found, 404, 'Not Found'
  @@method_not_allowed=			StatusCode.new :method_not_allowed, 405, 'Method Not Allowed'
  @@not_acceptable=			StatusCode.new :not_acceptable, 406, 'Not Acceptable'
  @@proxy_authentication_required=			StatusCode.new :proxy_authentication_required, 407, 'Proxy Authentication Required'
  @@request_timeout=			StatusCode.new :request_timeout, 408, 'Request Timeout'
  @@conflict=			StatusCode.new :conflict, 409, 'Conflict'
  @@gone=			StatusCode.new :gone, 410, 'Gone'
  @@length_required=			StatusCode.new :length_required, 411, 'Length Required'
  @@precondition_failed=			StatusCode.new :precondition_failed, 412, 'Precondition Failed'
  @@request_entity_too_large=			StatusCode.new :request_entity_too_large, 413, 'Request Entity Too Large'
  @@request_uri_too_long=			StatusCode.new :request_uri_too_long, 414, 'Request-URI Too Long'
  @@unsupported_media_type=			StatusCode.new :unsupported_media_type, 415, 'Unsupported Media Type'
  @@requested_range_not_satisfiable=			StatusCode.new :requested_range_not_satisfiable, 416, 'Requested Range Not Satisfiable'
  @@expectation_failed=			StatusCode.new :expectation_failed, 417, 'Expectation Failed'
  @@im_a_teapot=			StatusCode.new :im_a_teapot, 418, "I'm a Teapot"
  @@unprocessable_entity=			StatusCode.new :unprocessable_entity, 422, 'Unprocessable Entity'
  @@locked=			StatusCode.new :locked, 423, 'Locked'
  @@failed_dependency=			StatusCode.new :failed_dependency, 424, 'Failed Dependency'
  @@upgrade_required=			StatusCode.new :upgrade_required, 426, 'Upgrade Required'
  @@internal_server_error=			StatusCode.new :internal_server_error, 500, 'Internal Server Error'
  @@not_implemented=			StatusCode.new :not_implemented, 501, 'Not Implemented'
  @@bad_gateway=			StatusCode.new :bad_gateway, 502, 'Bad Gateway'
  @@service_unavailable=			StatusCode.new :service_unavailable, 503, 'Service Unavailable'
  @@gateway_timeout=			StatusCode.new :gateway_timeout, 504, 'Gateway Timeout'
  @@http_version_not_supported=			StatusCode.new :http_version_not_supported, 505, 'HTTP Version Not Supported'
  @@variant_also_negotiates=			StatusCode.new :variant_also_negotiates, 506, 'Variant Also Negotiates'
  @@insufficient_storage=			StatusCode.new :insufficient_storage, 507, 'Insufficient Storage'
  @@not_extended=			StatusCode.new :not_extended, 510, 'Not Extended'

end