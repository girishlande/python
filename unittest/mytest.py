import unittest
import mylib

class MyTest(unittest.TestCase):
    
    def test_addition(self):
        result = mylib.addition(10,20)
        self.assertEqual(result,30)
    
    def test_subtraction(self):
        result = mylib.subtraction(20,10)
        self.assertEqual(result,10)
        

if __name__ == "__main__":
    unittest.main()
    