def caesar_cipher (string, shift)
  arr = Array.new
  string.each_byte do |c|
    arr << (c.chr.match(/[A-Z]+/) ? ((((c + shift) % 90) < 64) ? (((c + shift) % 90) + 64).chr : ((c + shift) % 90)).chr : 
        c.chr.match(/[a-z]+/) ? ((((c + shift) % 122) < 96) ? (((c + shift) % 122) + 96).chr : ((c + shift) % 122)).chr : c.chr)
  end
  return arr.join('')
end

puts caesar_cipher("What a string!", 5)