# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/active_job'
require_relative 'rubocop/active_job/version'
require_relative 'rubocop/active_job/inject'

RuboCop::ActiveJob::Inject.defaults!

require_relative 'rubocop/cop/active_job_cops'
