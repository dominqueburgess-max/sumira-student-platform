ALTER TABLE enrollment_inquiries ADD COLUMN IF NOT EXISTS enrollment_type TEXT NOT NULL DEFAULT 'learning_studio';
