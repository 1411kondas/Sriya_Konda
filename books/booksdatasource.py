#!/usr/bin/env python3
'''
    booksdatasource.py
    Sriya Konda and Kitty Tyree, 27 September 2021
    Revised by Kitty Tyree, 11 October 2021

    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.
'''

import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year
        self.books_written = []

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name

    def __str__(self):
        ''' String function that makes the object print in a formatted way.
            Gives author's name and all of the books they wrote in alphabetical
            order. '''
        author_string = (self.given_name + ' ' + self.surname +
                        ' (' + self.birth_year + '-' )
        if self.death_year == None:
            author_string += ' )'
        else:
            author_string += self.death_year + ')'

        author_string += '\n' + self.formatBookList()
        return author_string

    def formatBookList(self):
        ''' Helper function to cycle through an author's books and format them
            into string format. '''
        formatted_book_list = ''
        self.books_written.sort(key=lambda book: (book.title))
        for book in self.books_written:
            formatted_book_list += ('\t' + str(book)+ '\n')
        return formatted_book_list

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

    def __str__(self):
        ''' String function that makes the object print in a formatted way.
            Gives book title and publication year.'''
        book_string = self.title + ' (' + str(self.publication_year) + ')'

        return book_string

class BooksDataSource:
    list_of_all_authors = []
    list_of_all_books = []
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:

                title,publication_year,author_description

            For example:

                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)

            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''

        file = open(books_csv_file_name)
        reader = csv.reader(file)
        for row in reader:
            title = row[0]
            publication_year = int(row[1])
            author_string = row[2]

            author_list = self.authorStringToObjects(author_string)
            book_object = Book(title, publication_year, author_list)

            for author_object in author_list:
                if author_object not in self.list_of_all_authors:
                    self.list_of_all_authors.append(author_object)
                for k in range(len(self.list_of_all_authors)):
                    if author_object == self.list_of_all_authors[k]:
                        self.list_of_all_authors[k].books_written.append(book_object)

            if book_object not in self.list_of_all_books:
                self.list_of_all_books.append(book_object)
        file.close()


    def authorStringToObjects(self, authorString):
        '''
        Helper function that takes in the author description and returns a list of
        author objects.
        '''
        author_list = []
        # if there are two authors, this will split the authors
        author_attributes_list = authorString.split(' and ')
        for author in author_attributes_list:
            author_attributes = author.split(' ')
            # one first name, one last name
            if len(author_attributes) == 3:
                given_name, surname, author_years_string = author_attributes[0], author_attributes[1], author_attributes[2]
            # more than one first or last name
            elif len(author_attributes) == 4:
                given_name, surname, author_years_string = author_attributes[0], author_attributes[1] + ' ' + author_attributes[2], author_attributes[3]

            birth_year, death_year = self.processAuthorYearsString(author_years_string)
            author_object = Author(surname, given_name, birth_year, death_year)
            author_list.append(author_object)

        return author_list


    def processAuthorYearsString(self, author_years_string):
        '''
         Helper function that takes in the author years string in the format
            '(birth_year-death_year)'
        and returns birth_year, death_year
        '''
        author_years_string = author_years_string[1:]
        author_years_string = author_years_string[:-1]
        author_years = author_years_string.split('-')
        birth_year = author_years[0]
        if len(author_years) == 2:
            death_year = author_years[1]
        else:
            death_year = None
        return birth_year, death_year


    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        author_list = []

        if (search_text == None) or (search_text == ''):
            author_list = self.list_of_all_authors
        else:
            formatted_search_string = search_text.lower()
            for author in self.list_of_all_authors:
                if formatted_search_string in author.surname.lower() or formatted_search_string in author.given_name.lower():
                    author_list.append(author)

        author_list.sort(key=lambda auth: (auth.surname, auth.given_name))

        return author_list



    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.

            The list of books is sorted in an order depending on the sort_by parameter:

                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title, breaking ties with publication_year
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        book_list = []

        if (search_text == None) or (search_text == ''):
            book_list = self.list_of_all_books


        else:
            formatted_search_string = search_text.lower()
            for book in self.list_of_all_books:
                if formatted_search_string in book.title.lower():
                    book_list.append(book)

        if sort_by == 'year':
            book_list.sort(key=lambda book: (book.publication_year, book.title))

        else: #otherwise it is null or title search, so sort by title
            book_list.sort(key=lambda book: (book.title, book.publication_year))

        return book_list


    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).

            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''

        book_list = []
        if start_year == None:
            start_year_int = 0
        else:
            start_year_int = int(start_year)

        if end_year == None:
            end_year_int = 2050
        else:
            end_year_int = int(end_year)

        for book in self.list_of_all_books:
            if start_year_int <= book.publication_year <= end_year_int:
                book_list.append(book)

        book_list.sort(key=lambda book: (book.publication_year, book.title))

        return book_list
