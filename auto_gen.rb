# functions=File.open("test/IndexTest.js").read.scan(/describe[(]['][A-z]+[(][)]/)
functions=File.open("test/IndexTest.js").read.scan(/describe[(]['][A-z]+/)
functions.map! do |el|
  "\nfunction #{el[10..-1]} {\n  \n}"
end
index=File.open("index.js", 'w+')
index.write(functions.join(''))
def js_object_gen(name, attrs)
  code=attrs.map{|el| "\nthis.#{el} = #{el}"}
  "\nfunction #{name} {\n  \n}"
end

# function BoardMember(v1, v2, v3, v4) {
#   this.v1 = v1
#   this.v2 = v2
#   this.v3 = v3
#   this.v4 = v4
# }

# File.open("test.js", 'w+').write(s.join(''))
# ((File.open("index.js", 'w+')).write
# ((File.open("test/IndexTest.js").read.scan(/describe[(]['][A-z]+[(][)]/)).map!{|el| "\nconst #{el[10..-1]} {\n  \n}"}).close
