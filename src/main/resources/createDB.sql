Use test;
DROP TABLE IF EXISTS book;

CREATE TABLE `test`.`book` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `author` VARCHAR(100) NOT NULL,
  `isbn` VARCHAR(20) NOT NULL,
  `printYear` INT NOT NULL,
  `readAlready` BOOLEAN,
  PRIMARY KEY (`ID`))
  COLLATE='utf8_general_ci';


INSERT INTO
  book (title, description , author, isbn, printYear, readAlready)
VALUES
  ('uraplayer 1', 'Bestseller 1', 'Donald Trump 1', '0-9690745-2-1', '1979', false),
  ('uraplayer 2', 'Bestseller 2', 'Donald Trump 2', '0-9690745-2-2', '1980', false),
  ('uraplayer 3', 'Bestseller 3', 'Donald Trump 3', '0-9690745-2-3', '1981', false),
  ('uraplayer 4', 'Bestseller 4', 'Donald Trump 4', '0-9690745-2-4', '1982', false),
  ('uraplayer 5', 'Bestseller 5', 'Donald Trump 5', '0-9690745-2-5', '1983', false),
  ('uraplayer 6', 'Bestseller 6', 'Donald Trump 6', '0-9690745-2-6', '1984', false),
  ('uraplayer 7', 'Bestseller 7', 'Donald Trump 7', '0-9690745-2-7', '1985', false),
  ('uraplayer 8', 'Bestseller 8', 'Donald Trump 8', '0-9690745-2-8', '1986', false),
  ('uraplayer 9', 'Bestseller 9', 'Donald Trump 9', '0-9690745-2-9', '1987', false),
  ('uraplayer 10', 'Bestseller 10', 'Donald Trump 10', '0-9690745-2-10', '1988', false),
  ('uraplayer 11', 'Bestseller 11', 'Donald Trump 11', '0-9690745-2-11', '1989', false),
  ('uraplayer 12', 'Bestseller 12', 'Donald Trump 12', '0-9690745-2-12', '1990', false),
  ('uraplayer 13', 'Bestseller 13', 'Donald Trump 13', '0-9690745-2-13', '1991', false),
  ('uraplayer 14', 'Bestseller 14', 'Donald Trump 14', '0-9690745-2-14', '1992', false),
  ('uraplayer 15', 'Bestseller 15', 'Donald Trump 15', '0-9690745-2-15', '1993', false),
  ('uraplayer 16', 'Bestseller 16', 'Donald Trump 16', '0-9690745-2-16', '1994', false),
  ('uraplayer 17', 'Bestseller 17', 'Donald Trump 17', '0-9690745-2-17', '1995', false),
  ('uraplayer 18', 'Bestseller 18', 'Donald Trump 18', '0-9690745-2-18', '1996', false),
  ('uraplayer 19', 'Bestseller 19', 'Donald Trump 19', '0-9690745-2-19', '1997', false),
  ('uraplayer 20', 'Bestseller 20', 'Donald Trump 20', '0-9690745-2-20', '1998', false),
  ('uraplayer 21', 'Bestseller 21', 'Donald Trump 21', '0-9690745-2-21', '1999', false),
  ('uraplayer 22', 'Bestseller 22', 'Donald Trump 22', '0-9690745-2-22', '2000', false),
  ('uraplayer 23', 'Bestseller 23', 'Donald Trump 23', '0-9690745-2-23', '2001', false),
  ('uraplayer 24', 'Bestseller 24', 'Donald Trump 24', '0-9690745-2-24', '2002', false),
  ('uraplayer 25', 'Bestseller 25', 'Donald Trump 25', '0-9690745-2-25', '2003', false),
  ('uraplayer 26', 'Bestseller 26', 'Donald Trump 26', '0-9690745-2-26', '2004', false),
  ('uraplayer 27', 'Bestseller 27', 'Donald Trump 27', '0-9690745-2-27', '2005', false),
  ('uraplayer 28', 'Bestseller 28', 'Donald Trump 28', '0-9690745-2-28', '2006', false),
  ('uraplayer 29', 'Bestseller 29', 'Donald Trump 29', '0-9690745-2-29', '2007', false),
  ('uraplayer 30', 'Bestseller 30', 'Donald Trump 30', '0-9690745-2-30', '2008', false),
  ('uraplayer 31', 'Bestseller 31', 'Donald Trump 31', '0-9690745-2-31', '2009', false),
  ('uraplayer 32', 'Bestseller 32', 'Donald Trump 32', '0-9690745-2-32', '2010', false),
  ('uraplayer 33', 'Bestseller 33', 'Donald Trump 33', '0-9690745-2-33', '2011', false),
  ('uraplayer 34', 'Bestseller 34', 'Donald Trump 34', '0-9690745-2-34', '2012', false),
  ('uraplayer 35', 'Bestseller 35', 'Donald Trump 35', '0-9690745-2-35', '2013', false),
  ('uraplayer 36', 'Bestseller 36', 'Donald Trump 36', '0-9690745-2-36', '2014', false),
  ('uraplayer 37', 'Bestseller 37', 'Donald Trump 37', '0-9690745-2-37', '2015', false),
  ('uraplayer 38', 'Bestseller 38', 'Donald Trump 38', '0-9690745-2-38', '2016', false),
  ('uraplayer 39', 'Bestseller 39', 'Donald Trump 39', '0-9690745-2-39', '2017', false),
  ('uraplayer 40', 'Bestseller 40', 'Donald Trump 40', '0-9690745-2-40', '2018', false)





