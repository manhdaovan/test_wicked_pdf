require "tempfile"

def create_file
    f = Tempfile.new("testfile.txt")
    f.write("test content")
    f.rewind
    f.path
end

fpath = create_file
GC.start
content = File.read(fpath)
puts "content -- ", content

# $ruby test_tempfile.rb
# Traceback (most recent call last):
#         1: from test_tempfile.rb:12:in `<main>'
# test_tempfile.rb:12:in `read': No such file or directory @ rb_sysopen - /var/folders/79/b9g5dfxd3hz1w1xyvrymzhkrx5d5wn/T/testfile.txt20210126-16369-1v1b669 (Errno::ENOENT)