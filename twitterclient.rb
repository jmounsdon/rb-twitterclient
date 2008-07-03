
require 'twitterclient_glade'
require 'rubygems'
require 'twitter'

class TwitterclientGlade
	attr :twit_conn
	
	def form
		@glade["login"]
	end

	def password
		@glade["passwordentry"]
	end
	
	def email
		@glade["emailentry"]
	end
	
	def update
		@glade["update"]
	end
	
	def submit
                @glade["submit"]
	end
	
	def friendtimeline
        Twitter::Base.new(email.text, password.text).friends.each do |u|
          puts u.name, u.status.text
          puts

	end
	
	def show
		form.show
	end

	#if this signal exists, exit nicely
	#
	def on_window1_destroy(widget)
		Gtk.main_quit
	end
	
	def gtk_main_quit(widget)
		Gtk.main_quit
	end
	
	def on_entry1_activate(widget)
		submit.set_focus_on_click
	end
	
	def on_submit_clicked(widget)
		@twit_conn.update(update.text)

	end
	
	def on_cancel_clicked(widget)
		Gtk.main_quit
	end
	
	def on_loginbutton_clicked(widget)
		@twit_conn = Twitter::Base.new(email.text, password.text)
		
		@glade["twitters"].show
		form.close
	end
		

	
end

form = TwitterclientGlade.new("twitterclient.glade", nil, "Application")
form.show

Gtk.main

