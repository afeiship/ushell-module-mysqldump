# ushell-module-mysqldump
> Unix like shell module for mysqldump.

## resources:

## commands:
```bash
# To export to file (data only)
mysqldump -u [user] -p[pass] --no-create-info mydb > mydb.sql

# To export to file (structure only)
mysqldump -u [user] -p[pass] --no-data mydb > mydb.sql

# To import to database
mysql -u [user] -p[pass] mydb < mydb.sql
```
