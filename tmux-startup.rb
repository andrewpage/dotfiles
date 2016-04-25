#!/usr/bin/env ruby -w

require 'open3'

DEBUG = ENV['DEBUG']

CODE_SESSION_NAME = 'code'
CODE_SESSION_BASE_DIR = '$HOME/code'
CODE_SESSION_REPOSITORIES = %w(agentmachine api jobs agentcrm microsite core_utils deploy)

SERVER_SESSION_NAME = 'servers'
SERVER_SESSION_BASE_DIR = '$HOME/code'

# Execute a Tmux command.
def t_execute(command)
  command = %(tmux #{command})

  puts "$ #{command}" if DEBUG
  Open3.popen3(command)
end

# Initialize a new Tmux session.
def t_new_session(name, base_dir)
  # Kill previous session beforehand
  t_execute %(kill-session -t #{name})
  # Create a new tmux session
  t_execute %(new-session -Ad -s '#{name}' -c #{base_dir})
end

# Create sessions
t_new_session(CODE_SESSION_NAME, CODE_SESSION_BASE_DIR)
t_new_session(SERVER_SESSION_NAME, SERVER_SESSION_BASE_DIR)

# Create windows for each repository
CODE_SESSION_REPOSITORIES.each_with_index do |repo, index|
  window_index = index + 1
  repo_path = File.join(CODE_SESSION_BASE_DIR, repo)

  t_execute %(new-window -t #{CODE_SESSION_NAME}:#{window_index} -n '#{repo}' -c #{repo_path})
end

# Kill the initial code session bash window
t_execute %(kill-window -t #{CODE_SESSION_NAME}:0)

# Attach to the code session
t_execute %(-2 attach-session -t #{CODE_SESSION_NAME})
