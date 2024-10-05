

-- Insert Users
INSERT IGNORE INTO user (id, user_name, email, created_at)
VALUES
    (1, 'kalle_anka', 'kalle@example.com', '2023-01-01 10:00:00'),
    (2, 'lisa_svensson', 'lisa@example.com', '2023-01-02 11:00:00'),
    (3, 'erik_eriksson', 'erik@example.com', '2023-01-03 12:00:00'),
    (4, 'anna_andersson', 'anna@example.com', '2023-01-04 13:00:00');


INSERT IGNORE INTO media (id, title, media_type, genre_id, release_date, url, duration) VALUES
    (1, 'Tech Talk Episode 1', 'Podcast', 1, '2023-01-01', 'http://example.com/tech-talk-1', '00:30:00'),  -- Kalle (User 1)
    (2, 'Planet Earth II Episode 1', 'Documentary', 2, '2016-11-06', 'http://example.com/planet-earth-2-1', '01:00:00'),  -- Lisa (User 2)
    (3, 'Come Together', 'Song', 3, '1969-09-26', 'http://example.com/come-together', '00:04:20'),  -- Erik (User 3)
    (4, 'Billie Jean', 'Song', 4, '1982-11-30', 'http://example.com/billie-jean', '00:04:54'),  -- Anna (User 4)
    (5, 'So What', 'Song', 5, '1959-08-17', 'http://example.com/so-what', '00:09:22'),
    (6, 'Beethoven Symphony No. 9', 'Song', 6, '1824-05-07', 'http://example.com/beethoven-9', '01:05:00'),
    (7, 'Jazz Vibes Episode 2', 'Podcast', 5, '2022-06-08', 'http://example.com/jazz-vibes-2', '00:40:00'),
    (8, 'The Future of Tech II', 'Podcast', 1, '2023-03-01', 'http://example.com/future-tech-2', '00:35:00'),  -- Kalle (User 1)
    (9, 'Nature Wonders', 'Documentary', 2, '2018-01-05', 'http://example.com/nature-wonders', '00:50:00'),  -- Lisa (User 2)
    (10, 'Rock Legends Vol 2', 'Music', 3, '1997-08-22', 'http://example.com/rock-legends-2', '00:03:50'),  -- Erik (User 3)
    (11, 'Pop Classics', 'Music', 4, '2021-09-30', 'http://example.com/pop-classics', '00:03:20'),
    (12, 'Classical Masterpieces', 'Music', 6, '2023-04-01', 'http://example.com/classical-masterpieces', '01:20:00'),  -- Anna (User 4)
    (13, 'Technology Insights', 'Podcast', 1, '2023-04-05', 'http://example.com/tech-insights', '00:25:00'),
    (14, 'The Nature Chronicles', 'Documentary', 2, '2021-07-12', 'http://example.com/nature-chronicles', '00:45:00'),
    (15, 'Rock Legends Vol 3', 'Music', 3, '1999-10-10', 'http://example.com/rock-legends-3', '00:04:10'),
    (16, 'Pop Forever', 'Music', 4, '2022-11-18', 'http://example.com/pop-forever', '00:03:30'),
    (17, 'Jazz Beats', 'Podcast', 5, '2022-02-01', 'http://example.com/jazz-beats', '00:38:00'),
    (18, 'Classical Elegance', 'Music', 6, '1810-12-20', 'http://example.com/classical-elegance', '01:30:00'),
    (19, 'Tech Innovators', 'Podcast', 1, '2023-05-15', 'http://example.com/tech-innovators', '00:30:00'),
    (20, 'Exploring Nature', 'Documentary', 2, '2021-05-20', 'http://example.com/exploring-nature', '00:55:00');


-- Insert Top Media (track media popularity by play count)
INSERT IGNORE INTO top_media (id, user_id, media_id, play_count)
VALUES
    (1, 1, 1, 5),  -- Tech Talk Episode 1 is popular with Kalle (5 plays)
    (2, 2, 2, 3),  -- Planet Earth II Episode 1 is moderately popular with Lisa
    (3, 3, 3, 7),  -- Come Together is popular with Erik (7 plays)
    (4, 4, 4, 2),  -- Billie Jean is slightly popular with Anna
    (5, 1, 8, 4),  -- The Future of Tech II is also popular with Kalle (4 plays)
    (6, 2, 9, 5),  -- Nature Wonders is popular with Lisa (5 plays)
    (7, 3, 10, 6), -- Rock Legends Vol 2 is very popular with Erik (6 plays)
    (8, 4, 12, 3); -- Classical Masterpieces is moderately popular with Anna