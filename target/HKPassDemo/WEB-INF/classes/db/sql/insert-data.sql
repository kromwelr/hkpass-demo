--INSERT INTO WORK (status, created_date, created_by) VALUES ('DRAFT', '12/04/2015', 'TEST USER');
--INSERT INTO WORK (status, created_date, created_by) VALUES ('SUBMITTED', '12/04/2015', 'TEST USER');
--INSERT INTO WORK (status, created_date, created_by) VALUES ('REJECTED', '12/04/2015', 'TEST USER');
--INSERT INTO WORK (status, created_date, created_by) VALUES ('RETURNED', '12/04/2015', 'TEST USER');
--INSERT INTO WORK (status, created_date, created_by) VALUES ('APPROVED', '12/04/2015', 'TEST USER');

<<<<<<< HEAD
INSERT INTO SCORES (work_id, spot, soundness, evenness, level, fall) VALUES (100, 1, 'A', 'C', 'A+', 'N');

INSERT INTO users(username,password,enabled)
VALUES ('assessor','password', true);
INSERT INTO users(username,password,enabled)
VALUES ('approver','password', true);
INSERT INTO users(username,password,enabled)
VALUES ('admin','password', true);


INSERT INTO user_roles (username, role)
VALUES ('assessor', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('approver', 'ROLE_AUTH');
INSERT INTO user_roles (username, role)
VALUES ('admin', 'ROLE_ADMIN');
=======
INSERT INTO ASSESSMENT (project, sub_contractor, contract_number, assessment_start_date, assessment_end_date, status, created_date, created_by, score_1, score_2, score_3, score_4, score_5, score_6, score_7, score_8, score_9, score_10, score_11, score_12, score_13, score_14) VALUES ('Lift Modernization for Mei Shan House', 'Hitachi Elevator Engineering CO (HK) LTD', '20139135', '12/07/2015', '12/08/2015', 'DRAFT', '12/07/2015', 'testuser@hkha.com', 'A','B','C','D','N','A','A','B','B','C','C','D','D','N');
>>>>>>> 6e0e426856f830555cf4250e0acf17e406634bf9
