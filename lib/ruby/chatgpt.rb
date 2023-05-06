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

    loop do
      print 'Enter a prompt (or "exit" to quit): '
      input = gets.chomp

      break if input.downcase == "exit"

      client.chat(
        parameters: {
          model: "gpt-3.5-turbo", # Required.
          messages: [{ role: "user", content: input }], # Required.
          temperature: 0.7,
          stream: proc do |chunk, _bytesize|
            print chunk.dig("choices", 0, "delta", "content")
          end
        }
      )

      puts
    end
  end
end
