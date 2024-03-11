CREATE TABLE Product_Category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE Product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  SKU VARCHAR(255) UNIQUE,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Product_Category(id),
  price DECIMAL(10,2) NOT NULL,
  discount_id INT DEFAULT NULL,
  FOREIGN KEY (discount_id) REFERENCES Discount(id),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE Product_Inventory (  -- Assuming this table exists 
  id INT PRIMARY KEY AUTO_INCREMENT,
  quantity INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE Discount (  -- Assuming this table exists 
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  discount_percent DECIMAL(5,2) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);
