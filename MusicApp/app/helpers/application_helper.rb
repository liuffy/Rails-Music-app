module ApplicationHelper
  def ugly_lyrics(lyrics)
    formatted_lyrics = ""
    lyrics.lines.each do |line|
      formatted_lyrics << "&#9835; #{h(line)}" # html_safe, lets you escape HTML
    end

    "<pre>#{formatted_lyrics}</pre>".html_safe
  end

# Break up the lyrics on newlines.
# Insert a ♫ at the start of each line (the html entity that will render as a music note is &#9835;).
# Properly escape the user input (avoid HTML injection attacks).
# Wrap the lyrics in a pre tag so that the newlines are respected (in a<pre> or preformatted text tag, whitespace is preserved).
# Mark the produced HTML as safe for insertion (otherwise your <pre> tag will get escaped when you insert it into the template).
# In Rails >= 4.2, you will need to include ERB::Util in your helper module.
end
