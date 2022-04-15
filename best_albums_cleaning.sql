WITH simplified_genres AS
(SELECT *,
	CASE WHEN Genres LIKE '%Rock%' OR Genres LIKE '%Prog%' OR Genres LIKE '%Baggy%' OR Genres LIKE '%Slowcore%' OR Genres LIKE '%Psychedelia%' OR Genres LIKE '%Shoegaze%'
				OR Genres LIKE '%Mathcore%' OR Genres LIKE '%Grunge%' OR Genres LIKE '%Canterbury%' OR Genres LIKE '%zeuhl%' OR Genres LIKE '%Sound%' OR Genres LIKE '%Parody%'
				OR Genres LIKE '%Heavy Psych%' THEN 'Rock'
		WHEN Genres LIKE '%Hip hop%' OR Genres LIKE '%Rap%' OR Genres LIKE '%Bap%' OR Genres LIKE '%Breakbeat%' OR Genres LIKE '%Horrorcore%' OR Genres LIKE '%Big Beat%' THEN 'Hip hop'
		WHEN Genres LIKE '%Pop%' OR Genres LIKE '%Bubblegum%' OR Genres LIKE '%Vaporwave%' OR Genres LIKE '%Girl%' THEN 'Pop'
		WHEN Genres LIKE '%Metal%' OR Genres LIKE '%Djent%' OR Genres LIKE '%Industrial%' OR Genres LIKE '%Thrash%' THEN 'Metal'
		
		WHEN Genres LIKE '%Classical%' OR Genres LIKE '%Symphony%' OR Genres LIKE '%Baroque%' OR Genres LIKE '%Minimalism%' OR Genres LIKE '%Romanticism%' OR Genres LIKE '%Serialism%'
					OR Genres LIKE '%Impressionism%' OR Genres LIKE '%Chamber%' OR Genres LIKE '%Spectralism%' OR Genres LIKE '%Renaissance%' OR Genres LIKE '%Reductionism%'
					OR Genres LIKE '%Orchestra%' OR Genres LIKE '%Gregorian%' THEN 'Classical'
		
		WHEN Genres LIKE '%Folk%' OR Genres LIKE '%Singer/Songwriter%' OR Genres LIKE '%Country%' OR Genres LIKE '%Americana%' OR Genres LIKE '%Primitivism%'  OR Genres LIKE '%Cowboy%'
					OR Genres LIKE '%Bluegrass%' THEN 'Folk/Country'
		WHEN Genres LIKE '%Jazz%' OR Genres LIKE '%Bop%' OR Genres LIKE '%MPB%' OR Genres LIKE '%Big Band%' OR Genres LIKE '%Bossa%' OR Genres LIKE '%Tango%' OR Genres LIKE 'Swing'
					OR Genres LIKE '%Standards%' OR Genres LIKE '%Stride%' THEN 'Jazz'
		WHEN Genres LIKE '%Blues%' THEN 'Blues'
		WHEN Genres LIKE '%Electronic%' OR Genres LIKE '%Trip hop%' OR Genres LIKE '%EDM%' OR Genres LIKE '%Techno%' OR Genres LIKE '%Plunderphonics%' OR Genres LIKE '%IDM%'
										OR Genres LIKE '%House%' OR Genres LIKE '%Dubstep%' OR Genres LIKE '%Berlin%' OR Genres LIKE '%Experimental%' OR Genres LIKE '%Drill%' OR Genres LIKE '%Field%'
										OR Genres LIKE '%Electroacoustic%' OR Genres LIKE '%New Age%' OR Genres LIKE '%Drone%' OR Genres LIKE '%Noise%' OR Genres LIKE '%Glitch%' 
										OR Genres LIKE '%Garage%' OR Genres LIKE '%EAI%' THEN 'Electronic'
		WHEN Genres LIKE '%Soul%' OR Genres LIKE '%R&B%' THEN 'Soul'
		WHEN Genres LIKE '%Punk%' OR Genres LIKE '%Hardcore%' OR Genres LIKE '%riot%' OR Genres LIKE '%Oi%' OR Genres LIKE '%2 Tone%' OR Genres LIKE '%d-beat%' OR Genres LIKE '%No Wave%' OR Genres LIKE '%Emo%' OR Genres LIKE '%New Wave%' OR Genres LIKE '%Grindcore%' OR Genres LIKE '%Deathgrind%' OR Genres LIKE '%Screamo%' THEN 'Punk'
		WHEN Genres LIKE '%Film%' OR Genres LIKE '%Television%' OR Genres LIKE '%Show%' THEN 'Film/Television Music'
		WHEN Genres LIKE '%Video Game%' THEN 'Video Game Music'
		WHEN Genres LIKE '%Funk%' OR Genres LIKE '%Afrobeat%' OR Genres LIKE '%Disco%' THEN 'Funk/Disco'
		WHEN Genres LIKE '%Reggae%' OR Genres LIKE '%Dub%' THEN 'Reggae'
		WHEN Genres LIKE '%Ambient%' THEN 'Ambient'
		WHEN Genres LIKE '%Spoken%' OR Genres LIKE '%Poetry%' THEN 'Spoken Word'
	ELSE 'World Music'
END AS simplified_genre
FROM dbo.rym_top_5000_all_time$)

SELECT Ranking, Album, [Artist Name], [Release Date], simplified_genre AS Genre, [Average Rating], [Number of Reviews] 
FROM simplified_genres;