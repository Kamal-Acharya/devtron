ALTER TABLE app ALTER COLUMN app_store DROP DEFAULT;
ALTER TABLE app ALTER app_store TYPE integer USING CASE WHEN app_store=true THEN 1 ELSE 0 end;
ALTER TABLE app ALTER COLUMN app_store SET DEFAULT 0;
ALTER TABLE app ADD COLUMN display_name varchar(250);
ALTER TABLE app ADD COLUMN description text;
