require 'wicked_pdf'

Thread.new do
    (1..200).each do
        GC.start
        sleep 1
    end
end

done = 0
(1..50).each do |i|
    Thread.new do
        begin
            pdf_content = []
            (1..1_000).each do
                pdf_content << "a" * 64
            end
            wp = WickedPdf.new
            pdf_file = wp.pdf_from_string(pdf_content.join(",\n"))
            puts pdf_file
            puts "done thread #{i}"
        rescue => e
            puts "error thread #{i}: #{e}"
        end
        done += i
    end
end

loop do
    puts "done ----- #{done}"
    break if done == 1275 # sum from 1 to 50
    sleep 5
end
