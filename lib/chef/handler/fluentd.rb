require "chef/handler/fluentd/version"
require 'fluent-logger'

module Chef
  module Handler
    class Fluentd
      def initialize(tag_prefix, opts)
        @opts = opts
        @tag_prefix = tag_prefix
      end

      def report
        logger.post(data)
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
