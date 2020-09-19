#!/usr/bin/env ruby

def parse(text)
  # Implement me
end

def assert(actual, expected)
  fail "'#{expected}' is expected but '#{actual}' found." if actual != expected
end

assert parse('0'),            nil
assert parse('1'),            '1 Jan 2020'
assert parse('2'),            '1 Feb 2020'
assert parse('3'),            '1 Mar 2020'
assert parse('4'),            '1 Apr 2020'
assert parse('5'),            '1 May 2020'
assert parse('6'),            '1 Jun 2020'
assert parse('7'),            '1 Jul 2020'
assert parse('8'),            '1 Aug 2020'
assert parse('9'),            '1 Sep 2020'
assert parse('10'),           '1 Oct 2020'
assert parse('11'),           '1 Nov 2020'
assert parse('12'),           '1 Dec 2020'
assert parse('13'),           nil
assert parse('01 01 2020'),   '1 Jan 2020'
assert parse('2 2 21'),       '2 Feb 2021'
assert parse('3 March 2022'), '3 Mar 2022'
assert parse('4 Ap 2023'),    '4 Apr 2023'
assert parse('5-5-2024'),     '5 May 2024'
assert parse('6.6.2025'),     '6 Jun 2025'
assert parse('7/7/2026'),     '7 Jul 2026'
