# Chef::Handler::Fluentd

Handler for Chef to send logs to Fluentd

## Usage

Install:

```
gem install chef-handler-fluentd
```

Set up handler:

```
# solo.rb / client.rb
require 'chef/handler/fluentd'
handler = Chef::Handler::Fluentd.new('chef', host: 'localhost', port: 24224)
exception_handlers << handler
report_handlers << handler
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/chef-handler-fluentd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
