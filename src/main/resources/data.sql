-- Insert Media
INSERT INTO media (id, title, media_category)
VALUES
    (1, 'Come Together', 'MUSIC'),
    (2, 'Billie Jean', 'MUSIC'),
    (3, 'Tech Talk Episode 1', 'PODCAST');

-- Insert Users
INSERT INTO "user" (id, user_name)
VALUES
    (1, 'anna_svensson'),
    (2, 'erik_larsson');

-- Insert Top Media
INSERT INTO top_media (id, user_id, media_id, play_count)
VALUES
    (1, 1, 1, 10),
    (2, 2, 2, 15);