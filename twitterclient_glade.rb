#!/usr/bin/env ruby
#
# This file is gererated by ruby-glade-create-template 1.1.4.
#
require 'libglade2'

class TwitterclientGlade
  include GetText

  attr :glade
  
  def initialize(path_or_data, root = nil, domain = nil, localedir = nil, flag = GladeXML::FILE)
    bindtextdomain(domain, localedir, nil, "UTF-8")
    @glade = GladeXML.new(path_or_data, root, domain, localedir, flag) {|handler| method(handler)}
    
  end
  
  def on_entry1_activate(widget)
    puts "on_entry1_activate() is not implemented yet."
  end
  def on_cancel_clicked(widget)
    puts "on_cancel_clicked() is not implemented yet."
  end
  def gtk_main_quit(widget, arg0)
    puts "gtk_main_quit() is not implemented yet."
  end
  def on_loginbutton_clicked(widget)
    puts "on_loginbutton_clicked() is not implemented yet."
  end
  def on_submit_clicked(widget)
    puts "on_submit_clicked() is not implemented yet."
  end
  def on_window1_destroy(widget)
    puts "on_window1_destroy() is not implemented yet."
  end
end

# Main program
if __FILE__ == $0
  # Set values as your own application. 
  PROG_PATH = "twitterclient.glade"
  PROG_NAME = "YOUR_APPLICATION_NAME"
  TwitterclientGlade.new(PROG_PATH, nil, PROG_NAME)
  Gtk.main
end
