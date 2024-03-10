1. 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
   Answer:- The relationship between the "Product" and "Product_Category" entities is a one-to-many relationship. This means that each product belongs to one and only one category, but a category can have multiple products associated with it.
            This relationship is established through the "category_id" foreign key in the "Product" table, which references the "id" field in the "Product_Category" table.
   2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
      Answer:- To ensure that each product in the "Product" table has a valid category assigned to it, we can enforce referential integrity using database constraints. Specifically, we can set up a foreign key constraint on the "category_id" column in the "Product" table, which references the "id" column in the "Product_Category" table.
               This will ensure that every value in the "category_id" column of the "Product" table corresponds to a valid "id" value in the "Product_Category" table.
