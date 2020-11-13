import os, sys
from behave import *
from hamcrest import *
import os.path


@given(u'the input file contains <Variable> elements')
def step_impl(context):
    pass


@then(u'transform <Variable> to <ph>')
def step_impl(context):
    pass


@then(u'transform <VariableName> in <Variable> to <ph> with attribute of keyref')
def step_impl(context):
    pass


@then(u'substitute underscore for any spaces or special characters in <ph> with attribute of keyref')
def step_impl(context):
    pass


@then(u'find any <map> containing <topicref> with attribute of href with value of the current dita topic filename')
def step_impl(context):
    pass


@then(u'in the found map add a <keydef> in <map>')
def step_impl(context):
    pass


@then(u'add attribute of keys to <keydef> in <map>')
def step_impl(context):
    pass


@then(u'copy value of attribute keyref in the current dita topic')
def step_impl(context):
    pass


@then(u'paste value of attribute keyref in keys attribute in <keydef> in <map>')
def step_impl(context):
    pass

