CREATE TABLE police_report(
    name TEXT PRIMARY KEY,
    report TEXT,
    map TEXT NOT NULL,
    severe_score INTEGER NOT NULL
);


INSERT INTO police_report (name, report, map, severe_score) VALUES
('Domingos Holden', 'VYyPJw', 'Lockinge', 2),
('Isabel Enid', NULL, 'Findochty', 7),
('Tadgán Musa', 'FgDqud', 'Kara''s Vale', 10),
('Filip Baxter', 'D1rJqH', 'Kirkwall', 3),
('Edorta Elias', 'pQ53RC', 'Dewsbury', 9),
('Kəmal Davy', 'Bsl86j', 'Kara''s Vale', 2),
('Isokrates Bituin', NULL, 'Findochty', 5),
('Kassy Ramirus', 'Pkjv7J', 'Kirkwall', 7),
('Doris Blessing', '0kJXq1', 'Dalmerlington', 6),
('Nedeljka Ganesh', 'EVe9ha', 'Kara''s Vale', 8),
('Karlene Timotheus', '2HUBHz', 'Dewsbury', 7),
('Emerens Raman', 'PAGdHI', 'Findochty', 1),
('Mijo Ambrosios', NULL, 'Luton', 5),
('Karlene Jairus', '4Z63Q5', 'Dalmerlington', 8),
('Khordad Peter', NULL, 'Findochty', 2),
('Biagio Mai', NULL, 'Findochty', 9),
('Liwen Sigiward', 'B51ETs', 'Mansfield', 3),
('Svante Mona', 'DC0kGh', 'Caerleon', 5),
('Kshitija Ladislav', 'cSA0hA', 'Caerleon', 2),
('Ha-Eun Tatiana', 'YNYhHV', 'Kara''s Vale', 4);

DROP TABLE police_report;

SELECT name AS worst_criminals FROM police_report
WHERE (map IN ('Caerleon','Dewsbury','Kirkwall','Findochty')) AND (report IS NULL OR (report LIKE '%g%' OR report LIKE '%b%' OR report LIKE '%G%' OR report LIKE '%B%'))
ORDER BY severe_score DESC
LIMIT 5
