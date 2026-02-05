CREATE DATABASE fraud_detection;
USE fraud_detection;

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    step INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    sender_id VARCHAR(50),
    sender_balance_before DECIMAL(12,2),
    sender_balance_after DECIMAL(12,2),
    receiver_id VARCHAR(50),
    receiver_balance_before DECIMAL(12,2),
    receiver_balance_after DECIMAL(12,2),
    is_fraud TINYINT NOT NULL DEFAULT 0,
    is_flagged_fraud TINYINT NOT NULL DEFAULT 0
);
