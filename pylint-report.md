# Pylint Report

Pylint gives the following report for the application:

```
************* Module app
app.py:1:0: C0114: Missing module docstring (missing-module-docstring)
app.py:17:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:22:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:31:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:56:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:65:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:77:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:94:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:105:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:113:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:174:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:206:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:234:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:247:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:271:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:287:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:287:0: R0912: Too many branches (13/12) (too-many-branches)
app.py:335:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:359:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:364:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:390:0: C0116: Missing function or method docstring (missing-function-docstring)
app.py:421:0: C0116: Missing function or method docstring (missing-function-docstring)
************* Module config
config.py:1:0: C0114: Missing module docstring (missing-module-docstring)
************* Module db
db.py:1:0: C0114: Missing module docstring (missing-module-docstring)
db.py:5:0: C0116: Missing function or method docstring (missing-function-docstring)
db.py:12:0: C0116: Missing function or method docstring (missing-function-docstring)
db.py:22:0: C0116: Missing function or method docstring (missing-function-docstring)
db.py:26:0: C0116: Missing function or method docstring (missing-function-docstring)
************* Module items
items.py:1:0: C0114: Missing module docstring (missing-module-docstring)
items.py:4:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:17:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:30:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:35:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:43:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:49:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:61:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:66:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:74:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:80:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:85:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:90:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:104:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:119:0: C0116: Missing function or method docstring (missing-function-docstring)
items.py:133:0: C0116: Missing function or method docstring (missing-function-docstring)
************* Module seed
seed.py:1:0: C0114: Missing module docstring (missing-module-docstring)
seed.py:14:0: C0103: Constant name "user_count" doesn't conform to UPPER_CASE naming style (invalid-name)
seed.py:15:0: C0103: Constant name "item_count" doesn't conform to UPPER_CASE naming style (invalid-name)
seed.py:16:0: C0103: Constant name "review_count" doesn't conform to UPPER_CASE naming style (invalid-name)
************* Module users
users.py:1:0: C0114: Missing module docstring (missing-module-docstring)
users.py:6:0: C0116: Missing function or method docstring (missing-function-docstring)
users.py:12:0: C0116: Missing function or method docstring (missing-function-docstring)
users.py:17:0: C0116: Missing function or method docstring (missing-function-docstring)
users.py:23:0: C0116: Missing function or method docstring (missing-function-docstring)

------------------------------------------------------------------
Your code has been rated at 8.72/10 (previous run: 0.00/10, +8.72)
```

Next, the contents of the report are explained in more detail, along with reasoning for why certain issues were not fixed.

## Docstring warnings:

A large part of the reported issues are of the following type:


```
app.py:1:0: C0114: Missing module docstring (missing-module-docstring)
app.py:17:0: C0116: Missing function or method docstring (missing-function-docstring)
```

These warnings indicate that modules and functions do not contain docstring comments. During the development of the application, a conscious decision was made not to include docstrings, as the code is relatively small and remains clear and understandable without additional documentation.

## Too many branches

The report contains the following warning:
```
app.py:287:0: R0912: Too many branches (13/12) (too-many-branches)
```

This warning means that the function contains many conditional branches, which can make the code harder to read and maintain.

In this application, the function in question handles multiple form inputs, validations, and different cases for creating items. Because of this, several conditional statements are necessary. 

While the function could be refactored into smaller helper functions to reduce the number of branches, the current implementation was kept as is to maintain simplicity and keep all related logic in one place.

## Seed variable name warnings

The report contains warnings about `user_count`, `item_count`, and `review_count` not using uppercase constant names.

These variables define the amount of test data generated by `seed.py`. They were kept in lowercase because this matches the naming style used in the course material's seed script and makes the script easy to read.