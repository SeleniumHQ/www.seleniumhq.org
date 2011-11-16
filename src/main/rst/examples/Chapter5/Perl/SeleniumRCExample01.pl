use strict;
use warnings;
use Time::HiRes qw(sleep);
use Test::WWW::Selenium;
use Test::More "no_plan";
use Test::Exception;

my $sel = Test::WWW::Selenium->new( host => "localhost",
    port => 4444,
    browser => "*firefox",
    browser_url => "http://www.google.com/" );

$sel->open_ok("/");
$sel->is_element_present_ok("q");
$sel->type_ok("q", "selenium rc");
$sel->value_is("q", "selenium rc");
$sel->is_element_present_ok("btnG");
$sel->click_ok("btnG");
$sel->wait_for_text_present("results", 30000);
$sel->is_element_present_ok("resultStats");
