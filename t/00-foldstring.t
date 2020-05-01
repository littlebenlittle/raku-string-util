
use Test;
use String::Util;

is fold-string('A shorty', 20),
   'A shorty',
   "don't fold short strings";
is fold-string('This string is too long!', 20),
   'This stri...oo long!',
   'shorten a string';
is fold-string("This string is  waaaaaaaaaaaaaaaaaaaaaay  too long!", 40),
   'This string is  wa...aaaaaaay  too long!',
   'fold another string';
is fold-string("This string is  waaaaaaaaaaaaaaaaaaaaaay  too long!", 40, ' ★★ '),
   'This string is  wa ★★ aaaaaay  too long!',
   'fold a string using special characters';

done-testing();

