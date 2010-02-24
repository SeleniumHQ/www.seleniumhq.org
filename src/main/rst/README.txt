Some rules
==========

Here you'll find some rules we must follow to keep the documentation source 
files as clean as possible.

1) Try to keep lines of no more that 80 columns, this way most text editors 
   will be able to render the rst file in the same way, and will save us the
   annoyance of unending lines.
   The final html will be rendered 
   as espected as the parser joins all 
   consecutive lines to a single 
   paragraph until the next blank line.

2) Don't add extra spaces. The parser removes duplicated   spaces     anyway, 
   but it's better to keep the source rst files as clean as possible.
   
3) Don't use unicode characters, like ¶ ñ á or even “” and – (double dashes). 
   They sometimes are parsed correctly, but in some environment they don't, 
   which brings more problems than advantages...

Style Conventions
=================
Most of this is simply lifted from the Python documentation.

1) Use italics when defining a new term for the first time.
2) Capitalize and hyphenate each of the Selenium components:  Selenium-IDE,
   Selenium-RC, Selenium-Grid, Selenium-Core. Additionally, "Selenium" should be
   spelled out in full and not abbreviated to "Sel" in the official documentation.
3) JavaScript should be spelt with CamelCase, i.e. capital 'J' capital 'S.'
4) URLs, file directories, file names, and selenium commands written inline should
   be monospaced using ``mono``
4) Code Snippets should be prefaced with ".. code-block:: <language>"
   where <language> is the programming language
5) Command line input and output should be a block, indented and prefaced with two
   colons. See the end of the Selenium-RC chapter for reference.
6) Linux command line should be a code block prefaced with ".. code-block:: bash"


Tips
====

Text highlighting
-----------------
You can apply certain style to text, just by putting some marks on it, here are
some examples: **bold**, *italics*, ``monospaced text``.

Links
-----

To make links you have 4 alternatives:

1) Easy but cluttered way: `Text linking <http://url.linked.com>`_
2) Common way: `Text linking`_ then you can write more text and you can call the
   link anywhere you want like now `Text linking`_
   Then, when you have some free space, you can write the target to that link
   (see the end of the file for the target linking).
3) Titles are link targets also! All you have to do is put the title followed 
   with an underscore like in `Some rules`_ or Tips_
4) Links within the documentation but on other pages can be created by using the
   ":ref:" syntax. First, create a reference to the section you want by putting
   ".. _sectionName-reference:" without quotation marks just before the text. There
   are three important parts to this: The ".." at the beginning tells Sphinx not
   to display the output, the underscore denotes this is a reference (similar to
   method 3) and the colon (:) tells Sphinx that the following content is being
   referenced. Then, to create the link write :ref:`Section Title <sectionName-reference>`
   "Section Title" will be displayed in the output and linked to the section named 
   
Further reading
===============

Off course, the next point to go from here if you find any problems is:
http://docutils.sourceforge.net/docs/user/rst/quickref.html
or
http://sphinx.pocoo.org/rest.html

.. _`Text linking`: http://url.linked.com