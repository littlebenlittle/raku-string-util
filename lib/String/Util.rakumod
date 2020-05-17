
unit module String::Util;

#| Return a string of length no more than C<$width>
our sub fold-string(
    Str:D $string,
    Int:D $width,
    Str:D $replace-pattern = '...'
) is export {
    return $string if $string.chars <= $width;
    my $diff = $string.chars - $width + $replace-pattern.chars;
    my $start-skip  = $string.chars div 2
                    - $diff  div 2;
    my $finish-skip = $string.chars div 2
                    + $diff div 2
                    + $diff % 2;
    return $string.substr(0, $start-skip)
         ~ $replace-pattern
         ~ $string.substr($finish-skip, $string.chars);
}

