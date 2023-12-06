use strict;
use warnings;

use Test::More;
use Linux::TempFile;

my $tmpfile = Linux::TempFile->new;

is $tmpfile->tell, 0;
$tmpfile->print("Hello\n");
is $tmpfile->tell, 6;

ok $tmpfile->seek(0, 0);
is $tmpfile->tell, 0;

done_testing;

__END__
