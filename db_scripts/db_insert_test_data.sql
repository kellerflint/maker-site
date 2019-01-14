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