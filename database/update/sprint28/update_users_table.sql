ALTER TABLE website.users ADD column activation_code VARCHAR(50);
COMMENT ON COLUMN USERS.ACTIVATION_CODE IS 'The activation code for password reset';

ALTER TABLE website.users ALTER column user_login SET NOT NULL;
ALTER TABLE website.users ALTER column email SET NOT NULL;

