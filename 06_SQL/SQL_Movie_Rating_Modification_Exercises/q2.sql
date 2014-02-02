-- Insert 5-star ratings by James Cameron for all movies in the database. Leave the review date as NULL. 

insert into "Rating" select '207' as 'rID', '101' as 'mID', 5  as 'stars', null  as 'ratingDate'
union select '207' as 'rID', '102' as 'mID', 5 as 'stars', null as 'ratingDate'
union select '207' as 'rID', '103' as 'mID', 5 as 'stars', null as 'ratingDate'
union select '207' as 'rID', '104' as 'mID', 5 as 'stars', null as 'ratingDate'
union select '207' as 'rID', '105' as 'mID', 5 as 'stars', null as 'ratingDate'
union select '207' as 'rID', '106' as 'mID', 5 as 'stars', null as 'ratingDate'
union select '207' as 'rID', '107' as 'mID', 5 as 'stars', null as 'ratingDate'
union select '207' as 'rID', '108' as 'mID', 5 as 'stars', null as 'ratingDate'
;
