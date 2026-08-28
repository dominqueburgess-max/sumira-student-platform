-- Fix two student login email typos flagged by their families:
--   DESYIA Benton: dbenron@sumirastudio.com -> dbenton@sumirastudio.com
--   Jamal Hill:    jhill@surmirastudio.com  -> jhill@sumirastudio.com (wrong domain)
UPDATE students SET email = 'dbenton@sumirastudio.com' WHERE email = 'dbenron@sumirastudio.com';
UPDATE students SET email = 'jhill@sumirastudio.com' WHERE email = 'jhill@surmirastudio.com';
