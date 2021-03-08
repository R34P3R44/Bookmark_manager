**User Stories**
As a user.
So I can see my favourite websites.
I would like view my bookmarks as a list.

As a user.
So I can save a website for a later view.
I would like to add a website as a bookmark.

[domain model for bookmark list](/Bookmark_manager domain model.PNG)

**Database Instructions**<br>

1. Connect to <code>psql</code>
2. Create database like so <code>CREATE DATABASE bookmark_manager;</code>
3. Connect to the database using <code>\c bookmark_manager;</code>
4. Run the SQL query we have handily saved in the file <code>01_create_bookmarks_table.sql</code>

**Test_Database Instructions**

1. Type in the following command for creating a database <code>CREATE DATABASE "bookmark_manager_test";</code>
2. Type in the following command for creating a table<code>CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));</code>
