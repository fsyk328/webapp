--DROP TABLE users,user_roles,topic,reply,attachment,poll,poll_ans,vote;

CREATE TABLE users (
    id INTEGER NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE user_roles (
    id INTEGER  PRIMARY KEY,
    user_id INTEGER NOT NULL,
    role VARCHAR(50) NOT NULL
);

CREATE TABLE topic (
    id INTEGER  PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    msg VARCHAR(200),
    category VARCHAR(20) NOT NULL
);

CREATE TABLE reply (
    id INTEGER  PRIMARY KEY,
    user_id INTEGER NOT NULL,
    msg VARCHAR(200),
    topic_id INTEGER NOT NULL
);

CREATE TABLE attachment (
    id INTEGER PRIMARY KEY,
    topic_id INTEGER,
    reply_id INTEGER,
    user_id INTEGER,
    attachment varchar(200)
);

CREATE TABLE poll (
    id INTEGER  PRIMARY KEY,
    question VARCHAR(100)
);

CREATE TABLE poll_ans (
    id INTEGER  PRIMARY KEY,
    poll_id INTEGER NOT NULL,
    ans VARCHAR(100)
);

CREATE TABLE vote (
    id INTEGER  PRIMARY KEY,
    poll_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    ans_id INTEGER NOT NULL
);

INSERT INTO users VALUES (1,'demo', 'demo');
INSERT INTO user_roles(id, user_id, role) VALUES ((SELECT MAX(ID) FROM users),1, 'ROLE_ADMIN');


/*INSERT INTO users VALUES (2,'keith', 'keithpw');
INSERT INTO user_roles(user_id, role) VALUES (2, 'ROLE_USER');
INSERT INTO user_roles(user_id, role) VALUES (2, 'ROLE_ADMIN');

INSERT INTO users VALUES (3,'andrew', 'andrewpw');
INSERT INTO user_roles(user_id, role) VALUES (3, 'ROLE_ADMIN');

INSERT INTO users VALUES (4,'maria', 'mariapw');
INSERT INTO user_roles(user_id, role) VALUES (4, 'ROLE_USER');

INSERT INTO users VALUES (5,'oliver', 'oliverpw');
INSERT INTO user_roles(user_id, role) VALUES (5, 'ROLE_USER');*/