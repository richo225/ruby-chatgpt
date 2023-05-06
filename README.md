# Ruby ChatGPT

[![Gem Version](https://badge.fury.io/rb/ruby-chatgpt.svg)](https://badge.fury.io/rb/ruby-chatgpt)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/richo225/ruby-chatgpt/blob/main/LICENSE.txt)

CLI for interacting and conversing with [OpenAI](https://platform.openai.com/docs/api-reference/chat).

Stream text with GPT-3.5 from the command line! 🌊🤖

Demo for an article I wrote on my [blog](https://richardbates.dev/blog/2023-05-05).

## Installation

Install the gem:

```shell
$ gem install ruby-chatgpt
```

## Usage

- Get your API key from [https://platform.openai.com/account/api-keys](https://platform.openai.com/account/api-keys).
- Set this value to the `OPENAI_API_KEY` environment variable.

Run the `chatgpt` executable:

```shell
    $ chatgpt
    => Enter a prompt (or "exit" to quit): What is the capital of Taiwan?
    The capital of Taiwan is Taipei.
    => Enter a prompt (or "exit" to quit): How many people live in Taipei?
    As an AI language model, I do not have access to real-time data. However, according to the United Nations, the estimated population of Taipei in 2021 is around 2.8 million.
    => Enter a prompt (or "exit" to quit):
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/richo225/ruby-chatgpt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/ruby-chatgpt/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ruby::Chatgpt project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ruby-chatgpt/blob/master/CODE_OF_CONDUCT.md).
