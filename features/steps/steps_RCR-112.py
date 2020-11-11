import os, sys
from behave import *
from hamcrest import *
import os.path
from conversionService.conversion import Conversion


@given(u'a map file has been created for each <book> entry in MIF->XML file')
def step_impl(context):
    pass


@given(u'the input file is a map file')
def step_impl(context):
    pass


@given(u'that topic files have not yet been created from MIF-XML')
def step_impl(context):
    pass


@then(u'for each file referenced by map/topicref@href create a file with a .dita extension using the dita topic dtd')
def step_impl(context):
    pass


@then(u'set the value of the id attribute on topic to the file name without extension')
def step_impl(context):
    pass


@then(u'insert a <title> in <topic>')
def step_impl(context):
    pass


@then(u'find the <PgfTag> with attribute value with value Heading1')
def step_impl(context):
    pass


@then(u'transform <Unique> attribute value of value in <Para> and place that value into the value for attribute value of id on <title> in <topic>')
def step_impl(context):
    pass


@then(u'transform <String> attribute value in <ParaLine> in <Para> to CDATA in <title> in <topic>')
def step_impl(context):
    pass


@then(u'wrap the rest of the contents with <body> in <topic>')
def step_impl(context):
    pass


@given(u'the initial topic file has been created')
def step_impl(context):
    pass


@then(u'find <PgfTag> with attriute of value with value of Heading*')
def step_impl(context):
    pass


@then(u'transform <Para> to <topic>')
def step_impl(context):
    pass


@then(u'transform <Unique> with attribute value of value in <Para> to id attribute value on <topic>')
def step_impl(context):
    pass


@then(u'add id attribute to <topic>')
def step_impl(context):
    pass


@then(u'add id attribute value of filename_value where filename is the name of the file and value is the attribute value on <Unique>')
def step_impl(context):
    pass


@then(u'transform <ParaLine> in <Para> to <title> in <topic>')
def step_impl(context):
    pass


@then(u'transform value attribute value in <Unique> in <Marker> in <ParaLine> in <Para> to value attribute value in <title> in <topic>')
def step_impl(context):
    pass


@then(u'transform each attribute value of value of <String> in <ParaLine> in <Para> to CDATA within <title> in <topic>')
def step_impl(context):
    pass


@when(u'you find the next value attribute value of Heading* on <PgfTag> in <Para>')
def step_impl(context):
    pass


@then(u'wrap the content between <title> in <topic> and value attribute value of Heading* in <PgfTag> in <Para> with <body> in <topic>')
def step_impl(context):
    pass


@when(u'you find </body> before finding value with attribute value of Heading* in <PgfTag> in <Para>')
def step_impl(context):
    pass


@then(u'wrap the content between <title> in <topic> and </body> with <body> in <topic>')
def step_impl(context):
    pass
