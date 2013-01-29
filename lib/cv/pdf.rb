module CV
  class PDF
    attr_reader :root

    def initialize(root)
      @root = Pathname.new(root)
    end

    def html_path
      root.join("output/cv.html")
    end

    def pdf_path
      root.join("output/cv.pdf")
    end

    def export
      save_to pdf_path
    end

    def save_to(path)
      HTML.new(root).save_to(html_path)
      system "prince", html_path.to_s, pdf_path.to_s
    end
  end
end
