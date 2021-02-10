def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year FROM series INNER JOIN books on series.id = books.series_id WHERE series.title = 'A Song of Ice and Fire' ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT species, COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(*) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON authors.id = series.author_id INNER JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title
  FROM series 
    JOIN books ON series.id = books.series_id
    JOIN character_books ON books.id = character_books.book_id
    JOIN characters ON character_books.character_id = characters.id
    WHERE characters.species = 'human'
    GROUP BY series.title 
    ORDER BY count(characters.species) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(characters.id)
  FROM characters
    JOIN character_books ON characters.id = character_books.character_id
    
    GROUP BY characters.name
    ORDER BY COUNT(characters.id) DESC, characters.name;"
end
