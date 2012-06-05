WKHTMLTOPDF_PATH = File.expand_path("../../bin/wkhtmltopdf-0.11_rc1-amd64", File.expand_path(__FILE__))

begin
  require 'pdfkit'

  PDFKit.configure do |config|
    config.wkhtmltopdf = WKHTMLTOPDF_PATH
  end
rescue LoadError
end

begin
  require 'wicked_pdf'
  WickedPdf.config[:exe_path] = WKHTMLTOPDF_PATH
rescue LoadError
end
