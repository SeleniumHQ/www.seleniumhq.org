# These pragmas are optional, but it is strongly recommended to use them
use strict;
use warnings;

# It requires at least these modules
use Time::HiRes qw(sleep);  
use Test::WWW::Selenium;
use Test::More "no_plan";
use Test::Exception;

# prototypes
sub e($$);
sub w($);

# We instantiate and start the browser
my $sel = Test::WWW::Selenium->new( 
        host => "localhost", 
        port => 4444, 
        browser => "*chrome", 
        browser_url => "http://www.google.com/" 
);
                        
# Time to run some test
# NOTE: Add an 'or function()' to start your own error handling.   
$sel->open_ok("/")                                     || e("could not open google"               , 1);   # open www.google.com
$sel->is_element_present_ok("q")                       || e("could not find query field!"         , 2);   # check if query field exists
$sel->type_ok("q", "selenium rc")                      || e("could not write to query field!"     , 3);   # insert query string
$sel->value_is("q", "selenium rc")                     || e("query field has an unexpected value!", 4);   # check field value
$sel->is_element_present_ok("btnG")                    || e("could not find go button!"           , 5);   # check if submit button exists
$sel->click_ok("btnG")                                 || w("could not submit query!"                );   # submit query
$sel->wait_for_page_to_load_ok("30000")                || e("query timeout"                       , 7);   # wait until the page is loaded (max. 30 sec.)             
$sel->is_element_present_ok("//p[\@id='resultStats']") || w("could not find query statistic!");           # check if statistic element is present    
  
#----------------------------------------------------------------------------------------------
# subs
sub e($$) {
        my $msg = shift;
        my $e   = shift;
        print "ERROR: $msg\n";
        exit $e;
}
sub w($) {
        my $msg = shift;
        print "WARNING: $msg\n";
}
