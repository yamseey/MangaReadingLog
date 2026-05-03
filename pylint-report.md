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
Your code has been rated at 8.72/10 (previous run: 8.72/10, +0.00)
```

Next, the contents of the report are explained in more detail, along with reasoning for why certain issues were not fixed.

## Docstring warnings:

A large part of the reported issues are of the following type:


```
app.py:1:0: C0114: Missing module docstring (missing-module-docstring)
app.py:17:0: C0116: Missing function or method docstring (missing-function-docstring)
```

Most of the remaining warnings are missing module or function docstrings. These were not added because the modules are small and self-contained. Adding module-level docstrings would repeat information already visible from the code structure.

In `app.py`, many functions are Flask route handlers, so their purpose is also visible from the route decorator above each function. Adding docstrings to every route would make the code longer without significantly improving readability.

## Too many branches

The report contains the following warning:
```
app.py:287:0: R0912: Too many branches (13/12) (too-many-branches)
```

This warning comes from a route handler that validates form input, checks user permissions, and handles several possible form values.

The function could be split into smaller helper functions, but the current version keeps related validation logic in one place. The code is still divided into clear blocks, and early returns are used where possible.

## Seed variable name warnings

The report contains warnings about `user_count`, `item_count`, and `review_count` not using uppercase constant names.

These variables are used to control how much test data is generated in `seed.py`. They were kept lowercase because they work as configurable values rather than fixed constants. This makes the script easier to adjust during testing.
