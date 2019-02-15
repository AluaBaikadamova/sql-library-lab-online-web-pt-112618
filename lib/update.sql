UPDATE Characters set species = "Martian" WHERE id = (SELECT MAX(id) FROM Characters)
