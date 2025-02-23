CREATE OR REPLACE PROCEDURE rename_columns_in_schema(schema_name TEXT)
DECLARE
    column_record RECORD;
    new_column_name TEXT;
    columns_renamed INT := 0;
    tables_changed INT := 0;
BEGIN
    FOR column_record IN
        SELECT table_name, column_name
        FROM information_schema.columns
        WHERE table_schema = schema_name
          AND (column_name LIKE '%"%' OR column_name LIKE "%'%")
    LOOP
        new_column_name := regexp_replace(column_record.column_name, '["'']', '', 'g');
        EXECUTE format('ALTER TABLE %I.%I RENAME COLUMN %I TO %I', schema_name, column_record.table_name, column_record.column_name, new_column_name);
        columns_renamed := columns_renamed + 1;
        tables_changed := tables_changed + 1;
    END LOOP;

    RAISE NOTICE 'Схема: %', schema_name;
    RAISE NOTICE 'Столбцов переименовано: %', columns_renamed;
    RAISE NOTICE 'Таблиц изменено: %', tables_changed;
END;
