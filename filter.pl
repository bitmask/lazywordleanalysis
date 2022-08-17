#!/usr/bin/env perl

$w = $ARGV[0];
@l = split(//, $w);
# count the number of words that don't contain any of the letters in these positions
$countposition = `grep -e '[^$l[0]][^$l[1]][^$l[2]][^$l[3]][^$l[4]]' 5letterwords |wc -l`;
chomp($countposition);
# count the number of words that don't contain any of these letters in any position
$countpresence = `grep -ve '[$w]' 5letterwords|wc -l`;
print "$w\t$countposition\t$countpresence";
