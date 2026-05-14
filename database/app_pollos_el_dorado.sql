-- =========================================================
-- CREAR TABLA CUSTOMERS
-- =========================================================

CREATE TABLE `customers` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

  `name` VARCHAR(120) NOT NULL,
  `phone` VARCHAR(30) NOT NULL,
  `email` VARCHAR(120) DEFAULT NULL,

  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,

  PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- =========================================================
-- MODIFICAR TABLA ORDERS
-- =========================================================

ALTER TABLE `orders`
ADD COLUMN `customer_id` BIGINT(20) UNSIGNED NULL AFTER `user_id`;

-- =========================================================
-- MIGRAR CLIENTES EXISTENTES
-- =========================================================

INSERT INTO `customers` (
    `name`,
    `phone`,
    `email`,
    `created_at`,
    `updated_at`
)
SELECT DISTINCT
    `customer_name`,
    `customer_phone`,
    `customer_email`,
    NOW(),
    NOW()
FROM `orders`;

-- =========================================================
-- RELACIONAR PEDIDOS CON CLIENTES
-- =========================================================

UPDATE `orders` o
JOIN `customers` c
ON o.customer_name = c.name
AND o.customer_phone = c.phone
SET o.customer_id = c.id;

-- =========================================================
-- ELIMINAR COLUMNAS ANTIGUAS
-- =========================================================

ALTER TABLE `orders`
DROP COLUMN `customer_name`,
DROP COLUMN `customer_phone`,
DROP COLUMN `customer_email`;

-- =========================================================
-- AGREGAR FOREIGN KEY
-- =========================================================

ALTER TABLE `orders`
ADD CONSTRAINT `fk_orders_customer`
FOREIGN KEY (`customer_id`)
REFERENCES `customers`(`id`)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- =========================================================
-- ESTRUCTURA FINAL RECOMENDADA DE ORDERS
-- =========================================================

/*

CREATE TABLE `orders` (

  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

  `user_id` BIGINT(20) UNSIGNED DEFAULT NULL,
  `customer_id` BIGINT(20) UNSIGNED DEFAULT NULL,

  `tracking_code` VARCHAR(20) NOT NULL,

  `delivery_type`
  ENUM('pickup','delivery')
  NOT NULL,

  `status`
  ENUM(
    'pending',
    'confirmed',
    'preparing',
    'on_the_way',
    'delivered',
    'cancelled'
  )
  NOT NULL DEFAULT 'pending',

  `total_amount`
  DECIMAL(10,2)
  NOT NULL DEFAULT 0.00,

  `payment_method`
  VARCHAR(20)
  NOT NULL DEFAULT 'cod',

  `payment_gateway`
  VARCHAR(30) DEFAULT NULL,

  `payment_reference`
  VARCHAR(120) DEFAULT NULL,

  `payment_proof_path`
  VARCHAR(500) DEFAULT NULL,

  `payment_reported_at`
  TIMESTAMP NULL DEFAULT NULL,

  `payment_verified_at`
  TIMESTAMP NULL DEFAULT NULL,

  `payment_status`
  VARCHAR(20)
  NOT NULL DEFAULT 'pending',

  `billing_document_type`
  VARCHAR(20) DEFAULT NULL,

  `billing_document_number`
  VARCHAR(20) DEFAULT NULL,

  `billing_name`
  VARCHAR(180) DEFAULT NULL,

  `billing_email`
  VARCHAR(120) DEFAULT NULL,

  `billing_address`
  VARCHAR(255) DEFAULT NULL,

  `billing_receipt_type`
  VARCHAR(20) DEFAULT NULL,

  `billing_metadata`
  LONGTEXT
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_bin
  DEFAULT NULL
  CHECK (json_valid(`billing_metadata`)),

  `salad_type`
  VARCHAR(20) DEFAULT NULL,

  `drink_note`
  VARCHAR(120) DEFAULT NULL,

  `address`
  VARCHAR(255) DEFAULT NULL,

  `reference`
  VARCHAR(255) DEFAULT NULL,

  `latitude`
  DECIMAL(10,7) DEFAULT NULL,

  `longitude`
  DECIMAL(10,7) DEFAULT NULL,

  `created_at`
  TIMESTAMP NULL DEFAULT NULL,

  `updated_at`
  TIMESTAMP NULL DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_customer_id_foreign` (`customer_id`),

  CONSTRAINT `fk_orders_customer`
  FOREIGN KEY (`customer_id`)
  REFERENCES `customers` (`id`)
  ON DELETE SET NULL
  ON UPDATE CASCADE

)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

*/

-- =========================================================
-- EJEMPLO INSERT CUSTOMER
-- =========================================================

INSERT INTO `customers` (
  `name`,
  `phone`,
  `email`,
  `created_at`,
  `updated_at`
)
VALUES (
  'Marcelo',
  '987654321',
  'marcelo@gmail.com',
  NOW(),
  NOW()
);

-- =========================================================
-- EJEMPLO INSERT ORDER
-- =========================================================

INSERT INTO `orders` (
  `customer_id`,
  `tracking_code`,
  `delivery_type`,
  `status`,
  `total_amount`,
  `payment_method`,
  `payment_status`,
  `created_at`,
  `updated_at`
)
VALUES (
  1,
  'ORD-1001',
  'delivery',
  'pending',
  55.00,
  'yape',
  'paid',
  NOW(),
  NOW()
);

-- =========================================================
-- RELACIONES LARAVEL
-- =========================================================

/*

// app/Models/Order.php

public function customer()
{
    return $this->belongsTo(Customer::class);
}


// app/Models/Customer.php

public function orders()
{
    return $this->hasMany(Order::class);
}

*/

-- =========================================================
-- CONSULTA JOIN
-- =========================================================

SELECT
    o.id,
    o.tracking_code,
    c.name,
    c.phone,
    c.email,
    o.total_amount,
    o.status
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.id;
