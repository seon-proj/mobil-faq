CREATE TABLE faq_items ( 
    faq_id INT PRIMARY KEY AUTO_INCREMENT,
    faq_category VARCHAR(255),
    faq_question TEXT,
    faq_answer TEXT,
    faq_link TEXT DEFAULT NULL
);

