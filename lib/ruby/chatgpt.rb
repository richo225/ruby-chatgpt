# frozen_string_literal: true

require_relative "chatgpt/version"
require "openai"

module Ruby
  module Chatgpt
    class MissingApiKeyError < StandardError; end

    unless ENV["OPENAI_API_KEY"]
      raise MissingApiKeyError,
            "Please set a value for the OPENAI_API_KEY variable"
    end

    client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])

    print "Enter a prompt: "
    input = gets.chomp

    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo", # Required.
        messages: [{ role: "user", content: input }], # Required.
        temperature: 0.7
      }
    )

    puts response["choices"][0]["message"]["content"]
  end
end
