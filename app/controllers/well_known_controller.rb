class WellKnownController < ApplicationController
  def funding_manifest_urls
    file_path = Rails.root.join("public", ".well-known", "funding-manifest-urls.json")
    if File.exist?(file_path)
      @data = JSON.parse(File.read(file_path))
    else
      @data = { error: "File not found" }
    end
  end
end
