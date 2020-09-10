/* Create Tables*/
CREATE TABLE IF NOT EXISTS entries (id INTEGER PRIMARY KEY AUTOINCREMENT, amount DECIMAL, description TEXT)

/* Commands */

INSERT = /* Insert values */
    INSERT INTO entries (amount, description) VALUES (?, ?), [12.00, 'value equal 1']

UPDATE = /* Update values */
    UPDATE entries SET amount = 1.99, description = 'some text' WHERE id = 10

SELECT = /* Select values */
    SELECT SUM(amount) AS saldo FROM entries;

DELETE = /* Delete values */
    DELETE FROM entries WHERE id = ?
