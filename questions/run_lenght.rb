#!/usr/bin/env ruby

# Implement Run-Length Encoding

def encode(s)
  # Implement me
end

def assert(actual, expected)
  fail "'#{expected}' is expected but '#{actual}' found." if actual != expected
end

assert encode('aa'), 'a2'
assert encode('abc'), 'a1b1c1'
assert encode('aaaabbbcc'), 'a4b3c2'
assert encode('aaaac'), 'a4c1'
assert encode('baaba'), 'b1a2b1a1'
