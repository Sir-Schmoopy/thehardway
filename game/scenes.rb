#this should pull all the files in the scenes directory

#require_relative ./scenes/

# Dir Docs
# ~~~https://ruby-doc.org/core-2.5.1/Dir.html~~~  WHOOPS -- https://ruby-doc.org/core-3.0.1/Dir.html

# Let's use this as an example:
# d = Dir.new("testdir")
# d.each  {|x| puts "Got #{x}" }
# If we're running puts, we can probably run require.

# d = Dir("./scenes/*")
# d.each {|file| require file }

#it did not work

# Golfing a little bit because clean ---------- Why is it a variable, does it have to be? Probably not if it's still not working.
# Dir.each_child("scenes") { |file| require file }


### https://ruby-doc.org/stdlib-3.0.1/libdoc/pathname/rdoc/Pathname.html
if true
  require "pathname"
  here = Pathname.new(File.dirname(__FILE__))
  scenes_dir = here.join("scenes")

  Dir.each_child(scenes_dir) { |file|
    fname = file.gsub(".rb", "")
    require_relative scenes_dir.join(fname)
  }
end
