# sql_play
A playground for SQL tests

## Introduction
Based on recent job interview questions, and other sources of interesting SQL questions/challenges, this is a place to keep interesting results/ideas

## Tour
### Reporting
Because generating reports is such a frequent task, the reporting directory exists to gather queries for that common purpose.

#### Top Two items in the collection
Based on an interview question. Given that there is a table with location, product, device, and user information, generate a report on the top N=2 most popular devices for each product in each location.

The sample data used assumes that the id-field is representitive of the userdata. Locations are states, and devices are one of "Android", "iOS", and "Web". There are only two products, "widgets" and "sprongs".

The final result is based on the solution to a similar problem discussed here:https://rickosborne.org/blog/2008/01/sql-getting-top-n-rows-for-a-grouped-query/
