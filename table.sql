CREATE TABLE s368575.dinosaurs (
    "id" SERIAL PRIMARY KEY,
    "dino'name" TEXT,
    "species""type" TEXT,
    "favorite'food" TEXT,
    "complex""'name" TEXT,
    "weird""name" TEXT,
    "double''quote" TEXT,
    "mix""'ed""quotes" TEXT,
    "'single_start" TEXT,
    "double_end''" TEXT,
    """triple_quotes""" TEXT,
    "mid""'dle" TEXT,
    "''only_apostrophes''" TEXT,
    """only_quotes""" TEXT,
    "ends_with_quote""" TEXT,
    "'starts_with_apostrophe" TEXT,
    "in""the""middle" TEXT,
    "'mix''quotes'" TEXT
);

CREATE TABLE test_table2 (
    id SERIAL PRIMARY KEY,
    "bad'col" VARCHAR(100),
    "another""bad" NUMERIC,
    "mix'ed""case" TIMESTAMP
);


CREATE TABLE test_table3 (
    "''А'" INTEGER,
    """col""" TEXT,
    """'coil'""" BOOLEAN,
    """col""'name""" VARCHAR(50),
    """weird'''col""" TEXT,
    "normal_col" NUMERIC
);

CREATE TABLE test_table4 (
    """col""" TEXT,
    """'co''lk'""" TEXT
);


