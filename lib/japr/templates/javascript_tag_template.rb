module JAPR
  # Default output for JavaScript assets
  class JavaScriptTagTemplate < JAPR::Template
    def self.filetype
      '.js'
    end

    def self.priority
      -1
    end
    
    def outpath
      path = @path.to_s.strip
      (path.nil? || path.empty? || path == 'nil' || path == '/') ? '' : "/#{@path}"
    end

    def html
      "<script src='#{outpath}/#{@filename}' type='text/javascript'></script>"
    end
  end
end
