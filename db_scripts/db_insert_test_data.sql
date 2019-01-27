/* source /var/www/html/maker-site/db_scripts/db_insert_test_data.sql */

insert into User values (default, 'kellerflint', 'Keller', 'Flint', 'adminpassword000', 'admin', now());
insert into User values (default, 'tamberuname', 'Tamber', 'Tamberlast', 'scrAtch03', 'student', now());
insert into User values (default, 'tooperuname', 'Tooper', 'Tooperlast', 'scrAtch03', 'student', now());
insert into User values (default, 'tethanuname', 'Tethan', 'Tethanlast', 'scrAtch03', 'student', now());
insert into User values (default, 'tergiuuname', 'Tergiu', 'Terguilast', 'scrAtch03', 'student', now());

insert into Subject values (default, 'Scratch');
insert into Subject values (default, 'Gamemaker');

set @scratch = (select subject_id from Subject where subject_title = 'Scratch');

insert into Rank values (default, @scratch, 'Unranked', 0);
insert into Rank values (default, @scratch, 'Novice', 1);
insert into Rank values (default, @scratch, 'Apprentice', 2);
insert into Rank values (default, @scratch, 'Adept', 3);
insert into Rank values (default, @scratch, 'Expert', 4);
insert into Rank values (default, @scratch, 'Master', 5);

set @unranked = (select rank_id from Rank where rank_title = 'Unranked');
set @novice = (select rank_id from Rank where rank_title = 'Novice');
set @apprentice = (select rank_id from Rank where rank_title = 'Apprentice');
set @adept = (select rank_id from Rank where rank_title = 'Adept');

insert into Badge values (default, 'Tutorial Master', @novice, 'false', 'TODO');
insert into Badge values (default, 'Animate from Scratch', @novice, 'true', 'TODO');
insert into Badge values (default, 'Musical Storyteller', @novice, 'true', 'TODO');
insert into Badge values (default, 'My First Game', @novice, 'true', 'TODO');

set @tutorial = (select badge_id from Badge where badge_title = 'Tutorial Master');
set @animate = (select badge_id from Badge where badge_title = 'Animate from Scratch');
set @musical = (select badge_id from Badge where badge_title = 'Musical Storyteller');
set @game = (select badge_id from Badge where badge_title = 'My First Game');

set @keller = (select user_id from User where user_name = 'kellerflint');
set @tamber = (select user_id from User where user_name = 'tamberuname');
set @tooper = (select user_id from User where user_name = 'tooperuname');
set @tethan = (select user_id from User where user_name = 'tethanuname');
set @tergiu = (select user_id from User where user_name = 'tergiuuname');

insert into User_Badge values (@tamber, @tutorial, now());
insert into User_Badge values (@tamber, @animate, now());
insert into User_Badge values (@tamber, @musical, now());
insert into User_Badge values (@tamber, @game, now());

insert into User_Badge values (@tethan, @tutorial, now());

insert into User_Badge values (@tooper, @tutorial, now());

insert into User_Badge values (@tergiu, @tutorial, now());
insert into User_Badge values (@tergiu, @animate, now());

insert into User_Rank values (@keller, @adept, now());
insert into User_Rank values (@tamber, @apprentice, now());
insert into User_Rank values (@tergiu, @novice, now());
insert into User_Rank values (@tooper, @novice, now());
insert into User_Rank values (@tethan, @unranked, now());


/* Old version

insert into User values (default, 'tamberuname', 'Tamber', 'Tamberlast', 'tamber1', now());
insert into User values (default, 'tooperuname', 'Tooper', 'Tooperlast', 'tooper1', now());
insert into User values (default, 'tethanuname', 'Tethan', 'Tethanlast', 'tethan1', now());
insert into User values (default, 'tergiuuname', 'Tergiu', 'Terguilast', 'tergiu1', now());

insert into Subject values (default, 'Scratch', 'We learn coding and make games using Scratch.');
insert into Subject values (default, 'Gamemaker', 'We learn coding and make games using Gamemaker Studio 2.');

set @scratch = (select subject_id from Subject where subject_title = 'Scratch');

insert into Rank values (default, 'Unranked', 0, @scratch);

insert into Rank values (default, 'Novice', 1, @scratch);

insert into Rank values (default, 'Apprentice', 1, @scratch);

insert into Rank values (default, 'Adept', 2, @scratch);

insert into Rank values (default, 'Expert', 3, @scratch);

insert into Rank values (default, 'Master', 4, @scratch);

set @novice = (select rank_id from Rank where rank_title = 'Novice');

insert into Badge values (default, 'Tutorial Master', @novice, 'true', 'TODO');

insert into Badge values (default, 'Animate from Scrath', @novice, 'true', 'TODO');

insert into Badge values (default, 'Musical Storyteller', @novice, 'true', 'TODO');

insert into Badge values (default, 'My First Game', @novice, 'true', 'TODO');

insert into Student values (default, 
                            (select user_id from User where user_name = 'tamberuname'), 
                            (select rank_id from Rank where rank_title = 'Apprentice'));

insert into Student values (default, 
                            (select user_id from User where user_name = 'tooperuname'), 
                            (select rank_id from Rank where rank_title = 'Novice'));

insert into Student values (default, 
                            (select user_id from User where user_name = 'tethanuname'), 
                            (select rank_id from Rank where rank_title = 'Unranked'));

insert into Student values (default, 
                            (select user_id from User where user_name = 'tergiuuname'), 
                            (select rank_id from Rank where rank_title = 'Novice'));

insert into Badge_Request values (
    (select student_id from Student where _name = 'tethanuname'),
    (select badge_id from Badge where )
);

*/