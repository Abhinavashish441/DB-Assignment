CREATE TABLE product_category (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE product (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    SKU VARCHAR(50) UNIQUE,
    category_id INTEGER,
    inventory_id INTEGER,
    price DECIMAL(10, 2),
    discount_id INTEGER,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);

CREATE TABLE product_inventory (
    id INTEGER PRIMARY KEY,
    quantity INTEGER,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE discount (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    discount_percent DECIMAL(5, 2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);
