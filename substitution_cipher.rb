module SubstitutionCipher
  module Caesar
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caesar cipher
      document.to_s.chars.inject('') do |result, char|
        ascii = char.ord + key
        result << ascii.chr
      end
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caesar cipher
      document.to_s.chars.inject('') do |result, char|
        ascii = char.ord - key
        result << ascii.chr
      end  
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using a permutation cipher
      document.to_s.chars.each_slice(3).to_a.inject([]){ |result,phrase|
        result=result+phrase.shuffle(random: Random.new(3)) 
        result
      }.join('')
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using a permutation cipher
      document.to_s.chars.each_slice(3).to_a.inject([]){ |result,phrase|
        result=result+phrase.shuffle(random: Random.new(3)) 
        result
      }.join('')
    end
  end
end
