from test_python.c1 import C1
import unittest
import os, sys


class TestValidationMethods(unittest.TestCase):

    def test_init(self):
        c1_object = C1()
        self.assertIsInstance(c1_object, C1.__class__)

    def test_say_hello_world(self):
        c1_object = C1()
        assert 'hello world' == c1_object.say_hello_world()

if __name__ == '__main__':
    unittest.main()