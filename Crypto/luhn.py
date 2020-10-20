#!/usr/bin/env python3

def luhn(number):
    def digits_of(n):
        return [int(d) for d in str(n)]
    digits = digits_of(number)
    odds = digits[-1::-2]
    evens = digits[-2::-2]
    checksum = 0
    checksum += sum(odds)
    for d in evens:
        checksum += sum(digits_of(d*2))
    return checksum % 10

def is_luhn_valid(number):
    return luhn_checksum(number) == 0
