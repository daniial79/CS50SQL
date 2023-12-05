from cs50 import SQL

db = SQL("sqlite:///dont-panic.db")
db.execute("""
    UPDATE "users"
    SET "password" = 'CS50'
    WHERE "username" = ?;""", "admin")

db.execute("""
    DELETE FROM "user_logs" WHERE "old_username" = ?;""", "admin")

db.execute("""
    INSERT INTO "user_logs" ("type", "old_username", "new_username", "old_password", "new_password")
    SELECT 'update', 'admin', 'admin', NULL, (
    SELECT "password" FROM "users"
    WHERE "username" = ?
);""", "emily33")

print("hacked ;)")
