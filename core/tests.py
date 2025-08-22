from unittest import skipIf, skipUnless
from django.core.exceptions import ValidationError
from django.test import TestCase


class CoreTestCase(TestCase):
    def test_true_success(self):
        self.assertTrue(True)

    @skipUnless(False, "mocking skipping a failed test")
    def test_true_failed(self):
        self.assertTrue(False)

    def test_raise_error_success(self):
        with self.assertRaises(ValidationError):
            raise ValidationError("Raised")

    @skipIf(True, "mocking skipping a failed test")
    def test_raise_error_Failed(self):
        with self.assertRaises(ValidationError):
            pass
