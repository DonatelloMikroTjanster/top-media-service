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