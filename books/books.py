'''
    books.py
    Sriya Konda and Kitty Tyree, 27 Sept 2021
    Revised by Kitty Tyree, 11 October 2021

    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.
'''

import booksdatasource
import argparse

def main():
    data_source = booksdatasource.BooksDataSource('books1.csv')

    args = setUpArgParserAndParse()
    search_results = []

    # If the help flag is used at any point, print the usage statement
    if args.help:
        usage = open('usage.txt', 'r')
        help_message = usage.read()
        print(help_message)
        usage.close()
        exit()

    # The user ran --findTitle
    elif args.findTitle is not None: # call books
        if args.findTitle == None:
            search_results = data_source.books(None)
        if args.year:
            search_results = data_source.books(args.findTitle, 'year')
        else:
            search_results = data_source.books(args.findTitle)
        printBooksFormatted(search_results, data_source)

    # The user ran --findAuthor
    elif args.findAuthor is not None: #call authors
        search_results = data_source.authors(args.findAuthor)
        for item in search_results:
            print(item)

    # The user ran --findYears
    elif args.findYears is not None:
        # No years were entered
        if len(args.findYears) == 0:
            search_results = data_source.books_between_years(None, None)
            printBooksFormatted(search_results, data_source)
        else:
            if len(args.findYears) == 1:
                start_year = args.findYears[0]
                end_year = None
            elif len(args.findYears) == 2:
                start_year = args.findYears[0]
                end_year = args.findYears[1]
            else:
                start_year = None
                end_year = None

            # reconfigure the years in order to increase usability
            if (start_year != None) and (end_year != None):
                if int(args.findYears[1]) >= int(args.findYears[0]):
                    start_year = args.findYears[0]
                    end_year = args.findYears[1]
                else:
                    start_year = args.findYears[1]
                    end_year = args.findYears[0]
            search_results = data_source.books_between_years(start_year, end_year)
            printBooksFormatted(search_results, data_source)



    # Print a message if the user's query had no results
    if search_results == []:
        print('Hm')
        print('There are no results that match your search.')

def setUpArgParserAndParse():
    ''' This function sets up an argument parser and parses the CLI user input.
        It returns the parsed arguments. '''
    parser = argparse.ArgumentParser(description='Search for books',
                                    add_help=False)

    # Prohibit the user from using multiple search categories
    mainFunctionGroup = parser.add_mutually_exclusive_group()
    mainFunctionGroup.add_argument('--findTitle',
                                    metavar='SEARCH_TEXT',
                                    help="Search for books by title",
                                    type=str, nargs='?', const='')
    mainFunctionGroup.add_argument('--findAuthor',
                                    metavar='SEARCH_TEXT',
                                    help="Search for books by author",
                                    type=str, nargs='?', const='')
    mainFunctionGroup.add_argument('--findYears',
                                    metavar='YEAR',
                                    help="Search for books by publication year",
                                    type=int, nargs='*')
    parser.add_argument('-h', '--help',
                        help="Print this usage statement then exit",
                        action='store_true')

    # Prohibit the user from using multiple sort flags
    searchGroup= parser.add_mutually_exclusive_group()

    searchGroup.add_argument('-y', '--year',
                help='sort results by publication year *ONLY FOR --findTitle',
                action='store_true')
    searchGroup.add_argument('-a', '--alpha',
                help='sort results by author *ONLY FOR --findTitle',
                action='store_true')

    args = parser.parse_args()
    return args

def printBooksFormatted(list_of_books, data_source):
    ''' This function prints out book objects in a nice formatted way.
        book_title (publication_year) written by author
    '''
    for book in list_of_books:
        book_string = str(book) + ' written by '
        for author in book.authors:
            book_string += author.given_name + ' ' + author.surname
        print(book_string)



if __name__ == '__main__':
    main()
