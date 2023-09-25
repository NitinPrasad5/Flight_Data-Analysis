-- copy data into carrier table
copy carrier
from 's3://my-flights-processed-data/carriers.csv'
iam_role 'arn:aws:iam::-------' /* iam_role arn*/
ignoreheader 1
delimiter ',';

select * from carrier limit 5;

-- copy data into airport table
copy airport
from 's3://my-flights-processed-data/airports.csv'
iam_role 'arn:aws:iam::-------' /* iam_role arn*/
ignoreheader 1
delimiter ',';

select * from airport limit 5;

-- copy data into date table
copy date
from 's3://my-flights-processed-data/date.csv'
iam_role 'arn:aws:iam::-------' /* iam_role arn*/
ignoreheader 1
delimiter ',';

select * from date limit 5;

-- copy data into flights table
copy flights
from 's3://my-flights-processed-data/flights.csv'
iam_role 'arn:aws:iam::-------' /* iam_role arn*/
ignoreheader 1
delimiter ',';

select * from flights order by id limit 5;
