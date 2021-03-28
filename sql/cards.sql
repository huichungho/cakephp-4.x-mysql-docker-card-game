SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

DROP TABLE IF EXISTS `cards`; 

CREATE TABLE cards (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  -- S H D C
  suit varchar(1) NOT NULL,
  -- A,2-9,X,J,Q,K
  card_number varchar(1) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- INSERT INTO articles (id, title, body)
-- VALUES (NULL, 'テスト1', 'テスト\r\nテスト\r\nテスト'); 

-- Spade
INSERT INTO cards (suit, card_number) VALUES ('S', 'A');
INSERT INTO cards (suit, card_number) VALUES ('S', '2');
INSERT INTO cards (suit, card_number) VALUES ('S', '3');
INSERT INTO cards (suit, card_number) VALUES ('S', '4');
INSERT INTO cards (suit, card_number) VALUES ('S', '5');
INSERT INTO cards (suit, card_number) VALUES ('S', '6');
INSERT INTO cards (suit, card_number) VALUES ('S', '7');
INSERT INTO cards (suit, card_number) VALUES ('S', '8');
INSERT INTO cards (suit, card_number) VALUES ('S', '9');
INSERT INTO cards (suit, card_number) VALUES ('S', 'X');
INSERT INTO cards (suit, card_number) VALUES ('S', 'J');
INSERT INTO cards (suit, card_number) VALUES ('S', 'Q');
INSERT INTO cards (suit, card_number) VALUES ('S', 'K');

-- Heart
INSERT INTO cards (suit, card_number) VALUES ('H', 'A');
INSERT INTO cards (suit, card_number) VALUES ('H', '2');
INSERT INTO cards (suit, card_number) VALUES ('H', '3');
INSERT INTO cards (suit, card_number) VALUES ('H', '4');
INSERT INTO cards (suit, card_number) VALUES ('H', '5');
INSERT INTO cards (suit, card_number) VALUES ('H', '6');
INSERT INTO cards (suit, card_number) VALUES ('H', '7');
INSERT INTO cards (suit, card_number) VALUES ('H', '8');
INSERT INTO cards (suit, card_number) VALUES ('H', '9');
INSERT INTO cards (suit, card_number) VALUES ('H', 'X');
INSERT INTO cards (suit, card_number) VALUES ('H', 'J');
INSERT INTO cards (suit, card_number) VALUES ('H', 'Q');
INSERT INTO cards (suit, card_number) VALUES ('H', 'K');

-- Diamond
INSERT INTO cards (suit, card_number) VALUES ('D', 'A');
INSERT INTO cards (suit, card_number) VALUES ('D', '2');
INSERT INTO cards (suit, card_number) VALUES ('D', '3');
INSERT INTO cards (suit, card_number) VALUES ('D', '4');
INSERT INTO cards (suit, card_number) VALUES ('D', '5');
INSERT INTO cards (suit, card_number) VALUES ('D', '6');
INSERT INTO cards (suit, card_number) VALUES ('D', '7');
INSERT INTO cards (suit, card_number) VALUES ('D', '8');
INSERT INTO cards (suit, card_number) VALUES ('D', '9');
INSERT INTO cards (suit, card_number) VALUES ('D', 'X');
INSERT INTO cards (suit, card_number) VALUES ('D', 'J');
INSERT INTO cards (suit, card_number) VALUES ('D', 'Q');
INSERT INTO cards (suit, card_number) VALUES ('D', 'K');

-- Club
INSERT INTO cards (suit, card_number) VALUES ('C', 'A');
INSERT INTO cards (suit, card_number) VALUES ('C', '2');
INSERT INTO cards (suit, card_number) VALUES ('C', '3');
INSERT INTO cards (suit, card_number) VALUES ('C', '4');
INSERT INTO cards (suit, card_number) VALUES ('C', '5');
INSERT INTO cards (suit, card_number) VALUES ('C', '6');
INSERT INTO cards (suit, card_number) VALUES ('C', '7');
INSERT INTO cards (suit, card_number) VALUES ('C', '8');
INSERT INTO cards (suit, card_number) VALUES ('C', '9');
INSERT INTO cards (suit, card_number) VALUES ('C', 'X');
INSERT INTO cards (suit, card_number) VALUES ('C', 'J');
INSERT INTO cards (suit, card_number) VALUES ('C', 'Q');
INSERT INTO cards (suit, card_number) VALUES ('C', 'K');
