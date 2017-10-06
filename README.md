# omniauth-pipedrive

This is the OmniAuth strategy for authenticating to [Pipedrive](https://www.pipedrive.com). To use it, you'll need to create an Application and copy the Client ID and Client Secret. Get in touch with [Pipedrive](https://www.pipedrive.com) to get earlya access to their Marketplace.

## Installation

```ruby
gem 'omniauth-pipedrive', git: "https://github.com/SupportBee/omniauth-pipedrive"
```

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :pipedrive, ENV['client_id'], ENV['client_secret']
end
```

## Credits

This gem was authored by [SupportBee](https://supportbee.com/) to integrate Pipedrive with their [Integrations Platform](https://github.com/SupportBee/SupportBee-Apps).

## License

**MIT License**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
