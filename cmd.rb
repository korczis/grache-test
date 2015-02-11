#! /usr/bin/env ruby

require_relative 'core'

$SCRIPT_PARAMS = {} if $SCRIPT_PARAMS.nil?

cmd = $SCRIPT_PARAMS['cmd'] || $SCRIPT_PARAMS['CMD'] || 'echo hello world'

grash(cmd)

java -jar /usr/share/java/executor-wrapper/jruby-complete-1.7.12.jar -S gem install --no-ri --no-rdoc bundler; java -jar /usr/share/java/executor-wrapper/jruby-complete-1.7.12.jar -S /usr/share/ruby/gems/bin/bundler install