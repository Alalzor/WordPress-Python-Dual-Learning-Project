CREATE DATABASE IF NOT EXISTS wordpress;
USE wordpress;

-- Grant privileges to WordPress user
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;

-- Optional: Create some initial tables or data
-- This will be handled by WordPress installation
