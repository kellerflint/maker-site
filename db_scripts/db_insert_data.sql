/* source /var/www/html/maker-site/db_scripts/db_insert_test_data.sql */

insert into User values (default, 'kellerflint', 'Keller', 'Flint', 'adminpass', 'admin', now());

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
set @expert = (select rank_id from Rank where rank_title = 'Expert');
set @master = (select rank_id from Rank where rank_title = 'Master');

set @keller = (select user_id from User where user_name = 'kellerflint');
insert into User_Rank values (@keller, @adept, now());

/* Novice Badges */

insert into Badge values (default, 'Animate from Scratch', @novice, 'true', 'https://resources.scratch.mit.edu/www/cards/en/scratch-cards-all.pdf',
 'Complete the Animate a Name and Animate a Character starter projects. Remember to save your work!'
 );
insert into Badge values (default, 'Musical Storyteller', @novice, 'true', 'https://resources.scratch.mit.edu/www/cards/en/scratch-cards-all.pdf',
'Complete the Make Music and Create a Story starter projects. Remember to save your work!'
);
insert into Badge values (default, 'My First Game', @novice, 'true', 'https://resources.scratch.mit.edu/www/cards/en/scratch-cards-all.pdf', 
'Complete the Chase Game starter project. Now, make your own game to show what you’ve learned! Remember to save your work!'
);

/* Apprentice Badges */

insert into Badge values (default, 'Move to the Code', @apprentice, 'true', 'https://codeclubprojects.org/en-GB/scratch/lost-in-space/', 
'Make the Lost in Space animation. Remember to save your work!'
);

insert into Badge values (default, 'Who You Gonna Call', @apprentice, 'true', 'https://codeclubprojects.org/en-GB/scratch/ghostbusters/', 
'Make the Ghostbusters game AND complete the challenge at the end of the project. Remember to save your work!'
);

insert into Badge values (default, 'Talk to the Bot', @apprentice, 'true', 'https://codeclubprojects.org/en-GB/scratch/chatbot/', 
'Make the Chatbot game AND complete the challenge at the end of the project. Remember to save your work!'
);

insert into Badge values (default, 'Artistic License', @apprentice, 'true', 'https://codeclubprojects.org/en-GB/scratch/paint-box/', 
'Make the Paint Box game AND complete BOTH of the challenges at the end of the project. Remember to save your work!'
);

insert into Badge values (default, 'Whatever Floats Your Boat', @apprentice, 'true', 'https://codeclubprojects.org/en-GB/scratch/boat-race/', 
'Make the Boat Race game AND complete the “More Obstacles” and “More Boats” challenges at the end ofthe project. Remember to save your work!'
);

/* Adept Badges */

/* Expert Badges */

/* Master Badges */
