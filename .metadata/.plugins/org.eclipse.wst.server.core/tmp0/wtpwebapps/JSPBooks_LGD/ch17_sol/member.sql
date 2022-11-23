drop table memjsp;

CREATE TABLE IF NOT EXISTS memjsp(
   id VARCHAR(20) NOT NULL,
   passwd  VARCHAR(20),
   name VARCHAR(30),    
   PRIMARY KEY (id)
);
INSERT INTO memjsp VALUES('1', '1234', '홍길순');
INSERT INTO memjsp VALUES('2', '1235', '홍길동');


select * from memjsp;
