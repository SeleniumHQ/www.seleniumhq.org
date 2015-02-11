use Selenium::Remote::Driver;

# Create a new instance of the driver
my $driver = Selenium::Remote::Driver->new;

# Go to the google homepage
$driver->get("http://www.google.com");

# Print original page title
my $title = $driver->get_title();
print "$title\n";

# Find the element that's name attribute is q (google search box)
my $inputElement = $driver->find_element("q", "name");

# type in the search
$inputElement->send_keys("cheese!");

# submit the form (although google automatically searches now without submitting)
$inputElement->submit();

# Set the timeout for searching for elements to 10 seconds (0 by default)
$driver->set_implicit_wait_timeout(10000);
# then use XPath to search for a page title containing cheese!
$driver->find_element("/html/head/title[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'cheese!')]");

# You should see "cheese! - Google Search"
$title = $driver->get_title();
print "$title\n";

$driver->quit();
