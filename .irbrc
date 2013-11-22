#!/usr/bin/ruby
require 'irb/completion'
require 'rubygems'
require 'wirble'

Wirble.init
Wirble.colorize

AwesomePrint.irb!
AwesomePrint.pry!

def fuckme
  puts 'show-models #to view model info'
  puts 'show-models #to view model info'
end

#reloader
def reloader!
  reload!
  Fabrication.clear_definitions
  require '.irbrc'
  puts 'Rails ENV Reset'
  puts 'Fabrication Reset'
  puts 'Reload .irbrc'
end

def rst!
  reloader!
end

#sync
def sync_enable
  if Sync
    Sync::Model.enable!
    sync_status;
  end
end

def sync_disable
  if Sync
    Sync::Model.disable!
    sync_status;
  end
end

def sync_status
  if Sync
    if Sync::Model.enabled?
      puts "Sync is enabled";
    else
      puts "Sync is disabled";
    end
  end
end

sync_enable

