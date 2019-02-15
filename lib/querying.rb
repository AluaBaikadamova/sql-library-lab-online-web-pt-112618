def select_books_titles_and_years_in_first_series_order_by_year
" select title,year
from Books
where series_id=1
order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  " select name,motto
  from Characters
    order by length(motto) desc limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(*)
  from Characters
  group by species
    order by count(species) desc limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name,  subgenres.name
  from Authors
   left join  Series, Subgenres
where authors.id=series.author_id and subgenres.id=series.subgenre_id"
end
def select_series_title_with_most_human_characters
  "select series.title
  from Series
  join Characters
  where characters.species='human' and characters.series_id=series.id
  order by length(series.title) desc limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count (characters.name)
  from characters

  left join character_books
  group by characters.name
having characters.id=character_books.character_id
   "
end
