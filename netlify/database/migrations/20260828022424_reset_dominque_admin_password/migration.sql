-- Temporary admin password reset for dominqueburgess@burbrella.org so she can
-- log into /admin (the original password from account creation was not
-- available in this session). New temp password: SuMiraAdmin2026!
-- She should change it via the admin panel once a "change password" flow exists.
UPDATE admin_users
SET password_hash = '$2b$10$Es/rdEoKd5osF7KnAlQJneEmB1THaPIEpmE4Y/IFEE58k2J0DNfQ6'
WHERE email = 'dominqueburgess@burbrella.org';
