CREATE TABLE todolists (
  id serial PRIMARY KEY,
  title text NOT NULL UNIQUE,
  username text 
    NOT NULL    
    REFERENCES users (username)
    ON DELETE CASCADE,
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  title text NOT NULL,
  done boolean NOT NULL DEFAULT false,
  username text 
    NOT NULL
    REFERENCES users (username)
    ON DELETE CASCADE,
  todolist_id integer
    NOT NULL
    REFERENCES todolists (id)
    ON DELETE CASCADE
);

CREATE TABLE users (
  username text PRIMARY KEY,
  password text NOT NULL
);