require 'chef/handler'
require "chef/handler/fluentd/version"

require 'fluent-logger'

class Chef
  class Handler
    class Fluentd < Chef::Handler
      def initialize(tag_prefix, opts)
        @opts = opts
        @tag_prefix = tag_prefix
      end

      def report
        tag = success? ? 'report' : 'exception'
        logger.post(tag, data)
      end

      private
      def logger
        @logger ||= Fluent::Logger::FluentLogger.new(
          @tag_prefix, host: @opts[:host], port: @opts[:port]
        )
      end
    end
  end
end
