'''
   booksdatasourcetest.py
   Kitty Tyree and Sriya Konda, 27 September 2021
'''

import booksdatasource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = booksdatasource.BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0].surname == 'Pratchett')

    def test_title_One_no_flag(self):
        books = self.data_source.books('One')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0].title == 'And Then There Were None')

    def test_empty_title(self):
        books = self.data_source.books(None)
        self.assertTrue(len(books) == 41)

    def test_title_Girl_year_flag(self):
        books = self.data_source.books('girl', 'year')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0].title == 'Schoolgirls')

    def test_title_EE_title_flag(self):
        books = self.data_source.books('ee', 'title')
        self.assertTrue(len(books) == 4 )
        self.assertTrue(books[0].title == 'A Wild Sheep Chase')
        self.assertTrue(books[3].title == 'Right Ho, Jeeves')

    def test_title_And_random_flag(self):
        books = self.data_source.books('and', 'apple')
        self.assertFalse(len(books) == 17)
        self.assertTrue(books[2].title == 'Girls and Sex')

    def test_unknown_author(self):
        authors = self.data_source.authors('John')
        self.assertTrue(len(authors) == 0)

    def test_empty_author(self):
        authors = self.data_source.authors(None)
        self.assertTrue(len(authors) == 22)
        self.assertTrue(authors[0].surname == 'Austen')

    def test_author_PE(self):
        authors = self.data_source.authors('PE')
        self.assertTrue(len(authors) == 2)
        self.assertTrue(authors[1].given_name == 'Peggy')

    def test_author_2_last_names(self):
        authors = self.data_source.authors('G')
        self.assertTrue(len(authors) == 6)
        self.assertTrue(authors[2].surname == 'García Márquez')
        self.assertTrue(authors[3].surname == 'Grenville Wodehouse')

    def test_no_start_year(self):
        books = self.data_source.books_between_years(None, '1938')
        self.assertTrue(len(books) == 16)
        self.assertTrue(books[0].title == 'The Life and Opinions of Tristram Shandy, Gentleman')

    def test_no_end_year(self):
        books = self.data_source.books_between_years('2000', None)
        self.assertTrue(len(books) == 9)
        self.assertTrue(books[2].title == 'All Clear')

    def test_single_year(self):
        books = self.data_source.books_between_years('1994', '1994')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0].title == 'Mirror Dance')

    def test_range_of_years(self):
        books = self.data_source.books_between_years('1985', '1990')
        self.assertTrue(len(books) == 5)
        self.assertTrue(books[3].title == 'Beloved')

    def test_empty_years(self):
        books = self.data_source.books_between_years('1998', '2002')
        self.assertTrue(len(books) == 0)

    def test_no_years(self):
        books = self.data_source.books_between_years(None,None)
        self.assertTrue(len(books) == 41)
        self.assertTrue(books[0].title == 'The Life and Opinions of Tristram Shandy, Gentleman')



if __name__ == '__main__':
    unittest.main()
