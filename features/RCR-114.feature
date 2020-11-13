Feature: Convert base xml to DITA based on constructed rule sets (base DTDs, XSDs, schematron, custom xml rules)
Transform FrameMaker variables to DITA keyrefs
  Rule: Transform <Variable> to <ph keyref>
    

    Background:
      Given the input file contains MIF/XML
      And the input file contains <Variable> elements

    Scenario: Substitution of DITA keyrefs for FrameMaker Variables
      Then transform <Variable> to <ph>
      Then transform <VariableName> in <Variable> to <ph> with attribute of keyref
      Then substitute underscore for any spaces or special characters in <ph> with attribute of keyref
      
	Scenario: Create a keydef placeholder in any referencing ditamaps
	  Then find any <map> containing <topicref> with attribute of href with value of the current dita topic filename
	  Then in the found map add a <keydef> in <map>
	  Then add attribute of keys to <keydef> in <map>
	  Then copy value of attribute keyref in the current dita topic
	  Then paste value of attribute keyref in keys attribute in <keydef> in <map>
	  
