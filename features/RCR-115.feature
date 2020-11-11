Feature: Convert base xml to DITA based on constructed rule sets (base DTDs, XSDs, schematron, custom xml rules)

  Rule: Cut nested topics into their own file
    Each <topic> element equates to a separate dita file

    Background:
      Given a dita topic file for each file referenced by a <topicref> in a map file has already been created
      
    Scenario: Initial topic cutout
      Given that the topics have not already been cut out
      Then cut out any <topic> element into its own file
      Then name the new file the concatenated string of ditamap title plus topic id value
    
    Scenario: Preserve hierarchy in ditamap referencing topic
	  Given that a dita map file references the parent topic file from which other topic files have been cut out
	  Then nest a <topicref> with attribute of href in <topicref> in <map> 
	  Then add value of the filename of the parent topic file in attribute href
