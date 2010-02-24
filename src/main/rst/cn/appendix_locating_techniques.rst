.. _appendix_locators-cn-reference:

Locating Techniques
===================

.. This is a very rough draft 

Useful XPATH patterns
---------------------

text
~~~~

Not yet written - locate elements based on the text content of the node.

starts-with
~~~~~~~~~~~

Many sites use dynamic values for element's id attributes, which can make them
difficult to locate. One simple solution is to use XPath functions and base the
location on what you do know about the element. For example, if your dynamic ids
have the format ``<input id="text-12345" />`` where ``12345`` is a dynamic number 
you could use the following XPath: ``//input[starts-with(@id, 'text-')]``

contains
~~~~~~~~

If an element can be located by a value that could be surrounded by other text, the
contains function can be used. To demonstrate, the element ``<span class="top heading 
bold">`` can be located based on the 'heading' class without having to couple it with
the 'top' and 'bold' classes using the following XPath: ``//span[contains(@class, 
'heading')]``. Incidentally, this would be much neater (and probably faster) using 
the CSS locator strategy ``css=span.heading``

siblings
~~~~~~~~

Not yet written - locate elements based on their siblings. Useful for forms and tables.

Starting to use CSS instead of XPATH
------------------------------------

Locating elements based on class
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to locate an element based on associated class in XPath you must consider that
the element could have multiple classes and defined in any order, however with CSS 
locators this is much simpler (and faster).

* XPath: ``//div[contains(@class, 'article-heading')]``
* CSS: ``css=div.article-heading``
 
