
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



