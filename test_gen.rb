require 'wicked_pdf'

wf = WickedPdf.new
GC.start
pdf = wf.pdf_from_string("pdf content")
puts "pdf content ------ ", pdf