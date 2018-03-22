require 'matrix'
module DoubleTranspositionCipher
  def self.encrypt(document, key)
    # TODO: FILL THIS IN!
    ## Suggested steps for double transposition cipher
    # 1. find number of rows/cols such that matrix is almost square
    # 2. break plaintext into evenly sized blocks
    # 3. sort rows in predictibly random way using key as seed
    # 4. sort columns of each row in predictibly random way
    # 5. return joined cyphertext
    matrix_number=Math.sqrt(document.to_s.chars.length).ceil
    plaintext=document.to_s.chars.each_slice(matrix_number).to_a
    Matrix.rows(plaintext)
  end

  def self.decrypt(ciphertext, key)
    # TODO: FILL THIS IN!
  end
end
