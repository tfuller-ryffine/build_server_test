Feature: Convert base xml to DITA based on constructed rule sets (base DTDs, XSDs, schematron, custom xml rules) 

  Rule: Create a dita topic file for each file referenced by a <topicref> in a map file
    Each <topicref> with attribute href in <map> equates to a topic

    Background:
      Given a map file has been created for each <book> entry in MIF->XML file
      And the input file is a map file

    Scenario: Initial topic file creation
      Given that topic files have not yet been created from MIF-XML 
      Then for each file referenced by map/topicref@href create a file with a .dita extension using the dita topic dtd
      Then set the value of the id attribute on topic to the file name without extension
      Then insert a <title> in <topic>
      Then find the <PgfTag> with attribute value with value Heading1
      Then transform <Unique> attribute value of value in <Para> and place that value into the value for attribute value of id on <title> in <topic>
      Then transform <String> attribute value in <ParaLine> in <Para> to CDATA in <title> in <topic>
      Then wrap the rest of the contents with <body> in <topic>
      
    Scenario: Find topics within topics
      Given the initial topic file has been created
      Then find <PgfTag> with attriute of value with value of Heading*
      Then transform <Para> to <topic>
      Then transform <Unique> with attribute value of value in <Para> to id attribute value on <topic> 
      Then add id attribute to <topic>
      Then add id attribute value of filename_value where filename is the name of the file and value is the attribute value on <Unique>
      Then transform <ParaLine> in <Para> to <title> in <topic>
      Then transform value attribute value in <Unique> in <Marker> in <ParaLine> in <Para> to value attribute value in <title> in <topic>
      Then transform each attribute value of value of <String> in <ParaLine> in <Para> to CDATA within <title> in <topic>
      When you find the next value attribute value of Heading* on <PgfTag> in <Para> 
      Then wrap the content between <title> in <topic> and value attribute value of Heading* in <PgfTag> in <Para> with <body> in <topic>
      When you find </body> before finding value with attribute value of Heading* in <PgfTag> in <Para>
      Then wrap the content between <title> in <topic> and </body> with <body> in <topic>
