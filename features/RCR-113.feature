Feature: Convert base xml to DITA based on constructed rule sets (base DTDs, XSDs, schematron, custom xml rules)

  Delete metadata content from MIF XML files
    Rule: Locate PgfTag with value of Heading 1 and delete all contents before it, if not present then locate Heading2 and Heading3, etc.

    Background:
      Given a dita topic file has been created for each file referenced by a <topicref> in a map file
      And the input file contains a <topic>
    
    Scenario: Delete content that comes before <PgfTag> with value of Heading1
      Given the topic contains <PgfTag> with value of Heading1
      Then find the first instance of <PgfTag> with value of Heading1
      Then delete all XML content that came before it
      
      Given that XML is not cut
      Then find the first instance of <PgfTag> with value of Heading2
      Then delete all XML content that came before it
      
      Given that XML is not cut
      Then find the first instance of <PgfTag> with value of Heading3
      Then delete all XML content that came before it
      
      Given that XML is not cut
      Then find the first instance of <PgfTag> with value of Heading4
      Then delete all XML content that came before it
      
      Given that XML is not cut
      Then find the first instance of <PgfTag> with value of Heading5
      Then delete all XML content that came before it
       
      Given that XML is not cut
      Then find the first instance of <PgfTag> with value of Heading6
      Then delete all XML content that came before it
