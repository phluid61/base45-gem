module Base45
  ALPHABET = [
    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B',
    'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
    'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
    ' ', '$', '%', '*', '+', '-', '.', '/', ':'
  ]

  REVERSE_ALPHABET = {
    '0' =>  0, '1' =>  1, '2' =>  2, '3' =>  3, '4' =>  4, '5' =>  5,
    '6' =>  6, '7' =>  7, '8' =>  8, '9' =>  9, 'A' => 10, 'B' => 11,
    'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15, 'G' => 16, 'H' => 17,
    'I' => 18, 'J' => 19, 'K' => 20, 'L' => 21, 'M' => 22, 'N' => 23,
    'O' => 24, 'P' => 25, 'Q' => 26, 'R' => 27, 'S' => 28, 'T' => 29,
    'U' => 30, 'V' => 31, 'W' => 32, 'X' => 33, 'Y' => 34, 'Z' => 35,
    ' ' => 36, '$' => 37, '%' => 38, '*' => 39, '+' => 40, '-' => 41,
    '.' => 42, '/' => 43, ':' => 44
  }

  ##
  # Encodes a string in Base45.
  #
  # @param  [String] bytes the string to be encoded
  # @return [String]       a Base45-encoded string
  #
  def self.encode bytes
    bytes.each_byte.each_slice(2).map do |ab|
      if ab.length == 1
        len = 2
      else
        len = 3
      end

      b = ab.pop
      a = ab.pop || 0

      n = (a << 8) + b

      len.times.map do |_|
        i = n % 45
        n /= 45

        ALPHABET[i]
      end.join
    end.join
  end

  ##
  # Decodes a Base45-encoded string.
  #
  # @param  [String] b45 the Base45-encoded string to be decoded
  # @return [String]     the decoded bytes, as a string
  #
  def self.decode b45
    b45.each_byte.each_slice(3).map do |cde|
      cde.inject([0, 1]) do |memo, byte|
        n, p = *memo   # n = accumulated value; p = 45**i

        v = REVERSE_ALPHABET[byte.chr]
        raise "invalid Base45 character (#{byte})" unless v

        [
          n + (v * p), # n += (v * p)
          p * 45       # p *= 45      ; i.e. p = 45**i
        ]
      end.first        # only take the `n` from the resulting array
    end.map do |n|
      [n].pack(n < 256 ? 'C' : 'n')
    end.join
  end
end

