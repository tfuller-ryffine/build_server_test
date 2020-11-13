import os, sys
from behave import *
from hamcrest import *
import os.path


@given(u'a dita topic file for each file referenced by a <topicref> in a map file has already been created')
def step_impl(context):
    pass


@given(u'that the topics have not already been cut out')
def step_impl(context):
    pass


@then(u'cut out any <topic> element into its own file')
def step_impl(context):
    pass


@then(u'name the new file the concatenated string of ditamap title plus topic id value')
def step_impl(context):
    pass


@given(u'that a dita map file references the parent topic file from which other topic files have been cut out')
def step_impl(context):
    pass


@then(u'nest a <topicref> with attribute of href in <topicref> in <map>')
def step_impl(context):
    pass


@then(u'add value of the filename of the parent topic file in attribute href')
def step_impl(context):
    pass

