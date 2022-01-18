import unittest
from src.hello import Hello


class HelloTestCase(unittest.TestCase):
    def test_hello(self):
        self.assertEqual(Hello.gretter(), "Hello")
