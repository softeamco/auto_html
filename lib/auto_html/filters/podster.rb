AutoHtml.add_filter(:podster).with(width: 650, height: 85) do |text, options|
  text.gsub(/https?:\/\/(.*)?podster\.fm\/([A-Za-z0-9._%-\/]*)((\?|#)\S+)?/) do |match|
    vimeo_id = $2
    width  = options[:width]
    height = options[:height]

    %{<iframe width="#{width}" height="#{height}" src="#{match}" frameborder="0" allowtransparency="true"></iframe>}
  end
end
