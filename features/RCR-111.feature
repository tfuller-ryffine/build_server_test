Feature: Convert base xml to DITA based on constructed rule sets (base DTDs, XSDs, schematron, custom xml rules)

  Rule: Create a map file for each <book> entry in MIF->XML file
    Each <book> element equates to a map

    Background:
      Given the input file contains MIF/XML
      And the input file contains <book> elements

    Scenario: Initial run
      Then convert the books elements to <map>
      Then convert the book elements to <map>
      Then add <title> element within a book element
      Then convert the <chapter> element within a <book> element to a <topicref> element
      Then cut out any <map> elements within a <map> element and put into their own file
      Then any <topicref> elements that were within a <book> elements are now within <map> elements