require 'wicked_pdf'

(1..10).each do |i|
    Thread.new do
        begin
            wp = WickedPdf.new
            pdf_file = wp.pdf_from_string("pdf content")
            puts pdf_file
            puts "done thread #{i}"
        rescue => e
            puts "error thread #{i}: #{e}"
        end
    end
end

sleep(5) # wait all thread done
