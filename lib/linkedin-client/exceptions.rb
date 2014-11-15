# encoding: UTF-8

##
# Exceptions for using the LinkedIn client
# It is recommended that you handle these.
##

module LinkedIn

  class GenericException < StandardError; end

  class TimeoutError < GenericException; end

  # Some problems might take care of themselves if you try again later. Others won't.
  class TemporaryError < GenericException; end # fire warnings on these
  class PermanentError < GenericException; end # fire errors on these

end
