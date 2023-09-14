INSERT INTO genre
VALUES
	(1, 'Рокн-Ролл'),
	(2, 'Поп'),
	(3, 'Металл');

INSERT INTO performer
VALUES
	(1, 'Артём Галкин'),
	(2, 'Лиза'),
	(3, 'Артур Пирожков'),
	(4, 'Манарх');

INSERT INTO ganre_performer
VALUES
	(1, 1, 2),
	(2, 1, 4),
	(3, 2, 1),
	(4, 2, 3),
	(5, 3, 2);

INSERT INTO album
VALUES
	(1, 'Монархия', '2018-07-25'),
	(2, 'Анархия', '2019-10-16'),
	(3, 'Друзья', '2018-03-07');

INSERT INTO performer_album
VALUES
	(1, 4, 1),
	(2, 2, 1),
	(3, 2, 2),
	(4, 1, 3),
	(5, 3, 3);

INSERT INTO track
VALUES
	(1, 'Полюшко', '00:03:55', 1),
	(2, 'Монарх', '00:02:30', 1),
	(3, 'На пролом', '00:04:00', 2),
	(4, 'Крепость', '00:03:25', 2),
	(5, 'Мой друг', '00:03:50', 3),
	(6, 'Навсегда', '00:02:15', 3),
	(7, 'my own', '00:01:55', 1),
	(8, 'own my', '00:02:35', 1),
	(9, 'my', '00:02:53', 2),
	(10, 'oh my god', '00:03:07', 2),
	(11, 'myself', '00:02:42', 3),
	(12, 'by myself', '00:03:33', 3),
	(13, 'bemy self', '00:04:12', 1),
	(14, 'myself by', '00:01:59', 1),
	(15, 'by myself by', '00:02:25', 2),
	(16, 'beemy', '00:03:28', 2),
	(17, 'premyne', '00:04:10', 3);

INSERT INTO collection
VALUES
	(1, 'В дорогу', '2018-08-26'),
	(2, 'Дома', '2021-12-20'),
	(3, 'Танцевальная', '2020-03-09'),
	(4, 'Любителям жести', '2022-11-19');

INSERT INTO track_collection
VALUES
	(1, 1, 1),
	(2, 5, 1),
	(3, 6, 1),
	(4, 3, 2),
	(5, 5, 2),
	(6, 6, 2),
	(7, 1, 3),
	(8, 2, 3),
	(9, 4, 3),
	(10, 2, 4),
	(11, 3, 4),
	(12, 4, 4);