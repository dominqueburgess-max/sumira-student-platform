-- Separate admin accounts (email + password) instead of one shared admin
-- password, so each admin has their own distinct login.
CREATE TABLE IF NOT EXISTS admin_users (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  label TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

ALTER TABLE admin_sessions ADD COLUMN IF NOT EXISTS admin_user_id INTEGER REFERENCES admin_users(id) ON DELETE CASCADE;

INSERT INTO admin_users (email, password_hash, label) VALUES
('dominqueburgess8@gmail.com', '$2b$10$WmfmfGZ46n9Cvi6t4Qe5.eukWI/oisi6JZSC2Ahoq2rGip7Srt5wG', 'Founder & CEO'),
('connect@sumirastudio.com', '$2b$10$LSEp3ICVGQxHbDqb1lw7RO3jiOUMYumHfa.ZOPUef4wKFGLMZ9pji', 'Operations & Family Engagement Coordinator')
ON CONFLICT (email) DO NOTHING;
