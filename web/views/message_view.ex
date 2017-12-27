defmodule HelloPhoenix.MessageView do
	use HelloPhoenix.Web, :view 
	alias HelloPhoenix.Message 

	def render("show.json", %{message: message}) do
		%{message: message}
	end
	def render("error.json", %{changeset: changeset}) do
		%{changeset: changeset}
	end
end