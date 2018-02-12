#!perl -w

use strict;
use Excel::Writer::XLSX;
use Path::Tiny;
use 5.026;

#print "input filename:";
#my $fh = <STDIN>;
#my $fh = 'CNN_JAN_WORDS.xlsx';
#my $i;
#open $fh, '<', $fh or die "failed to open filehandle:$!";
my $fh;
while (42) {
  print "input filename:";
  $fh = <STDIN>;
  chomp $fh;
  if ($fh) {
      last;
  }
}

chomp $fh;
my $workbook = Excel::Writer::XLSX->new( "$fh\.xlsx" );
my $worksheet_wonder = $workbook->add_worksheet('wonders around the world');
my $worksheet_train = $workbook->add_worksheet('training');
my $worksheet_digest = $workbook->add_worksheet('digest');
#$worksheet->write( 0,0,'hi excel' );
#$workbook->close();

#binmode STDOUT;
#print $str;

# the words what I want to learn
my @words_wonder = ( 'prodigious',
              'cascade',
              'thunder down',
              'cloud of spray',
              'sightseer',
              'along with',
              'impressive',
              'observation deck',
              'a staple of',
              'date back to',
              'plunge pool',
              'plume',
              'be drenched in',
              'mist',
              'billow up into',
              'thoroughly',
              'exhilarate' );


my $i = 0;
foreach (@words_wonder) {
#  add word into the worksheet.
   $worksheet_wonder->write( $i++,0,$_ );
}

my @worksheet_train= ( 'literature',
                       'integrity',
                       'aesthetic universe',
                       'all one\'s own',
                       'electric',
                       'ambition',
                       'crafte',
                       'reveal',
                       'lofty',
                       'no less',
                       );

$i = 0;
foreach (@worksheet_train) {
#  add word into the worksheet.
   $worksheet_train->write( $i++,0,$_ );
}
#for my $i (0 .. $#words) {
#    print "$i: $words[$i]\n";
#}

my @worksheet_digest = ( 'antiracism',
                         'prominent',
                         'legendary',
                         'get down on both knees',
                         'drop to one\'s knees',
                         'tension',
                         'strip of',
                         'struggle',
                         'democracy',
                         'revoke',
                         'dismissal',
                         'numerous',
                         'accuse',
                         'ethnic cleansing',
                         'tough',
                         'sum up',
                         'tweet',
                         'take up',
                         'the worst massacre',
                         'suite',
                         'arsenal',
                         'bullet',
                         'mourn',
                         'vigil',
                         'nuclear weapon',
                         'coalition',
                         'disarmament',
                         'recognize A for B',
                         'treaty',
                         'prohibition',
                         'decertify',
                         'breach',
                         'massive',
                         'impact',
                         'initially',
                         'financial information',
                         'milestone',
                         'in an attempt to do',
                         'stop ... from doing',
                         'speak out for',
                         'spark',
                         'an attempt on someone\'s life',
                         'politburo',
                         'alternate',
                         'pull A into B',
                         'all-powerful',
                         'ruling',
                         'regime',
                         'sanction',
                         'war of words',
                         'congress',
                         'probe',
                         'hand over A to B',
                         'target A at/to B',
                         'entity',
                         'iindicate',
                         'investigator',
                         'meddle in',
                         'serial',
                         'sexual harassment',
                         'allegation',
                         'span',
                         'identify',
);

$i = 0;
foreach (@worksheet_digest) {
#  add words into the worksheet.
   $worksheet_digest->write( $i++,0,$_ );
}
