CREATE TABLE cellphones (
    model TEXT PRIMARY KEY,
    price INTEGER NOT NULL,
    wifi_5g BOOLEAN NOT NULL
);

INSERT INTO cellphones (model, price, wifi_5g) VALUES
('mqopal', 2590, 1),
('mlop12', 1293, 1),
('maqw99', 1490, 0),
('	qpola21', 1092 , 1),
('	hj52wdf', 800, 0),
('m1oa32', 1392, 1),
('12o09p', 999, 0),
('mtozavg', 452, 1),
('kflwp67', 3098, 0),
('nbgfert', 1189, 1);

SELECT model AS id FROM cellphones
WHERE id LIKE 'm_o%' AND (price BETWEEN 1000 AND 1500) AND wifi_5g =1