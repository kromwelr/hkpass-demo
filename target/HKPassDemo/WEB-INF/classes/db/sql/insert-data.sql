INSERT INTO WORK (status, created_date, created_by) VALUES ('DRAFT', '12/04/2015', 'TEST USER');
INSERT INTO WORK (status, created_date, created_by) VALUES ('SUBMITTED', '12/04/2015', 'TEST USER');
INSERT INTO WORK (status, created_date, created_by) VALUES ('REJECTED', '12/04/2015', 'TEST USER');
INSERT INTO WORK (status, created_date, created_by) VALUES ('RETURNED', '12/04/2015', 'TEST USER');
INSERT INTO WORK (status, created_date, created_by) VALUES ('APPROVED', '12/04/2015', 'TEST USER');

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