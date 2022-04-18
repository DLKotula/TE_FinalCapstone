-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- INSERT statements go here

insert into app_user(user_name, password, role, salt)
values ('DaringDan', '9MN2TDj7giggOFR4yUwQGA==', 'Standard',
        'dRS4glw0yYHkE1fzXCZ6bIYFGlABukHngGnz2MB52vgUcmzsKrIkThSePz+kMdhnpCcoK1RY01Y//vbBgR4Uvu2WhZLoq0SVvfeGB381KyMbmd/Kc4NtEyX2I2DuwPqz5iWclfi3etLs1W4GlDVWn2H68HEAaxoxiBCfLou0ooE=');
insert into app_user(user_name, password, role, salt)
values ('NightWing', 'zOb7paPKdjPSdNWKwXckjw==', 'Standard',
        'hPM4Qu/d+J3ZLGR/OFX7GHPLbhU+yYnxLGr5SsFnJl0GMNm6I9Xml4EBxaohc6Wg5HZ/+oSJef7QV4XUwVI578Jjtby+NwF/IimXpR+IX/jBWOAgSTa2ONven6mVQ8JbbeBL2G4TEf9BZ528xhLIyyrz0smdSi8ZJ8tV+3dZCo0=');
insert into app_user(user_name, password, role, salt)
values ('DarthSarah', 'hvLlh524Kfn9aFjTVUZ0Jg==', 'Standard',
        'djzLePuXGBzrFkUENvlPhR3Kpo0k9XkdvfH4uZkP8sZrBC66nWWBIX6e6V9ah3+xbPN3J3ywRkP3/XU9u6bz9qOdJCqmgQOlYnUU4qRvR1q48+9n0bNUr6PexD7KYrNRYc/89OI4Af8O0a6oObUvY2L+Oj+dUkpPAT+ycQBxanY=');
insert into app_user(user_name, password, role, salt)
values ('Awesomeandy', 'andy', 'Premium', 'andy');
insert into app_user(user_name, password, role, salt)
values ('Rynerthegreat', 'ryan', 'Standard', 'ryan');
insert into app_user(user_name, password, role, salt)
values ('RadRandy', 'randy', 'Premium', 'randy');



insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
VALUES ('JEM and The Holograms', '2016/08/31', 'https://m.media-amazon.com/images/I/61v6Gvv6SXL._AC_SY550_.jpg',
        'Science Fiction', '2020/07/07', 'IDW', 'JEM', null, 'JEM in touch',
        'THE HOLOGRAMS struggle to come to grips with the emotional ramifications of Silica and their short tour gone wrong.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
VALUES ('FIGHT CLUB 2', '2015/05/15',
        'https://images-na.ssl-images-amazon.com/images/I/51f05KvTwyL._SX323_BO1,204,203,200_.jpg',
        'Crime', '2020/07/07', 'Diamond Comics', 'FIGHT CLUB 2', null, 'Tyler Durden Returns',
        'Set ten years after the ending of Fight Club, the sequel is told from the restrained perspective of Tyler Durden as he sits in the subconscious of Sebastian (the name the narrator of the original Fight Club currently uses).');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
VALUES ('Court of Owls #1', '2013/11/3',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/bm_robin_v2_23.2_5b19b7824f8be5.91908609.jpg?itok=R_y2M38I',
        'Crime', '2013/11/8', 'DC Comics/Detective Comics', 'Court Of Owls', null, 'Court of the Owls',
        'For years, the Talons have lived to see the expression of dread pass over the faces of their victims as they realized that the legends they had disbelieved for years -' ||
        ' dismissed as a childish nursery rhyme - were true, and that they were going to die at the command of the Court of Owls.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
VALUES ('BATMAN SUPERMAN #1 Variant Cover', '2014/11/18',
        'https://images-na.ssl-images-amazon.com/images/I/71Dp96zXS+L.jpg',
        'Crime', '2014/11/19', 'DC Comics/Detective Comics', 'BATMAN SUPERMAN', null,
        'Batman and Superman meet their earth two counter parts',
        'Batman and Superman cross over into another universe and meet their younger counter parts from another earth');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Wolverine Origins Variant cover', '2006/08/01',
        'https://cdn.keycollectorcomics.com/media/b1606991666015wolvhiddnemes.jpg',
        'Science Fiction', '2006/07/07', 'Marvel Comics/Atlas Comics', 'Wolverine', null, 'Origins',
        'BORBORN IN BLOOD PART 3 Logan''s quest for vengeance brings him to the jungles of Vietnam for a super-powered showdown with Nuke!N IN BLOOD PART 3 Logan''s quest for vengeance brings him to the jungles of Vietnam for a super-powered showdown with Nuke!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('X-Factor #92', '1986/01/01', 'https://d1466nnw0ex81e.cloudfront.net/n_iv/600/1081009.jpg', 'Science Fiction',
        '2010/03/24', 'Marvel Comics/Atlas Comics', 'X-Men', '#92', 'Fatal Attractions',
        'Fatal Attractions! "The Man Who Wasn''t...!" 1st appearance of Exodus. Story by Scott Lobdell, Joe Quasada, and J.M. DeMatteis. Art by Joe Quasada and Al Milgrom. When the Acolytes of Magneto begin slaughtering humans indiscriminately it''s up to X-Factor to stop them.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Death of Superman', '1993/01/01',
        'https://images-na.ssl-images-amazon.com/images/I/71aTvsHkhzL.jpg',
        'Science Fiction', '2013/03/07', 'DC Comics/Detective Comics', 'Superman', null, 'Death of superman',
        'Superman Dies? Read further to find out what happens in this exciting tale');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Star Trek #80 illusion of Guilt', '1996/01/04', 'https://www.comics.org/issue/58442/',
        'Fantasy', '2020/05/16', 'Star Trek', 'Spock', '#80', 'Star Trek',
        'Star Trek and the adventures into the Unknown!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Flashpoint #1', '2011/05/11',
        'https://i0.wp.com/ultimatecomics.com/wp-content/uploads/2021/02/Flashpoint-1-Andy-Kubert-Variant-350906471114.jpg?fit=1033%2C1600&ssl=1',
        'Science Fiction', '2011/05/11', 'DC Comics/Detective Comics', 'Flash', '#1', 'FlashPoint',
        'The world-changing limited series event continues! Where are the World''s Greatest Super Heroes? Barry Allen is on a mission to find out or die trying—and that may be what''s happening as he tries to make lightning strike twice!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('NightWing #9', '2012/05/16', 'https://www.previewsworld.com/SiteImage/MainImage/STK464329',
        'Crime', '2012/05/16', 'DC Comics/Detective Comics', 'NightWing', '#9', 'Night of the Owls',
        'NightWing takes on the Court of the Owls. Tune in to see who will win!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Batman Knight of vengeance #1', '2011/06/01',
        'https://imgix-media.wbdndc.net/ingest/book/preview/9af8a80c-be77-42d2-a118-9caf30ab956b/2a3bfb2b-a067-4c9f-8046-0994ef86182f/0.jpg',
        'Crime', '2011/06/01', 'DC Comics/Detective Comics', 'Batman', '#1', 'FlashPoint',
        'Wayne Casinos towers over Gotham City, but even the bright lights can''t keep the dark shadows from enveloping the city. When the Joker kidnaps the children of the city''s District Attorney, the Batman takes the case.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Detective Comics #607', '1989/10/01', 'https://d1466nnw0ex81e.cloudfront.net/n_iv/600/732311.jpg',
        'Crime', '2010/09/01', 'DC Comics/Detective Comics', 'Batman', '#607', 'The Mudpack',
        'Part 4 of the 4-part Mudpack: Batman is held captive by the four Clayfaces...can his one-time comrade from the Outsiders, Looker, save him?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Flashpoint #3', '2011/07/06', 'https://www.previewsworld.com/SiteImage/MainImage/STK444306',
        'Science Fiction', '2011/07/06', 'DC Comics/Detective Comics', 'Flash', '#3', 'FlashPoint',
        'FLASH QUESTION: Will The Flash and his new allies be able to fix the world?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('The Amazing Spider-man #300', '1988/01/12',
        'https://i.annihil.us/u/prod/marvel/i/mg/5/b0/5ceedfcb6ed55/clean.jpg',
        'Science Fiction', '2018/04/02', 'Marvel Comics/Atlas Comics', 'Spider-Man', '#300', null,
        'First full appearance of Venom; First issue inked by Todd McFarlane; Spider-Mans 25th anniversary issue');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Miles Morales: Spider-Man (2018) #37', '2022/04/13',
        'https://i.annihil.us/u/prod/marvel/i/mg/6/60/6241c68a76fc0/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Spider-Man', '#3', 'Lost In The Spider-Verse',
        'Miles and Shift survived Beyond and are thrust into an alter-dimensional quest that… ' ||
        'Well… Know this…The people who left on this quest are not going to be the same people who come back. Why is that? Ask Ultimatum.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('The Amazing Spider-Man (2018) #1', '2018/07/11',
        'https://i.annihil.us/u/prod/marvel/i/mg/b/90/5b3feb60f1a30/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Spider-Man', '#1', null,
        'An alien invasion hits New York City and the only one who can stop it is…Spider-Man?! And if even that is not enough, ' ||
        'you will see a new roommate,new love interests - and a new villain! Spider-Man goes back to basics courtesy of Nick Spencer ' ||
        '(SECRET EMPIRE, SUPERIOR FOES OF SPIDER-MAN) and the Marvel debut of RYAN OTTLEY (Invincible)!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Thor (1998) #1', '1998/07/01', 'https://i.annihil.us/u/prod/marvel/i/mg/9/70/59c3dade08381/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Thor', '#1', null,
        'To aid his fellow Avengers, Thor must do battle with the Destroy.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Thor (2014) #1', '2014/10/01', 'https://i.annihil.us/u/prod/marvel/i/mg/c/60/5ec67face2640/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Thor', '#1', null,
        'The great hammer MJOLNIR lies on the moon, unable to be lifted by anyone in all the heavens! Even THOR! ' ||
        'Something dark has befallen the God of Thunder, leaving him weakened and for the first time in forever... UNWORTHY! ' ||
        'But when Frost Giants invade the Earth, the hammer will be lifted and an all-new Thor will arise!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Thor (1966) #126', '1966/03/01', 'https://i.annihil.us/u/prod/marvel/i/mg/e/30/4f63909280397/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Thor', '#126', null,
        'Thor vs. Hercules! The heavens rumble as two gods do battle...for the love of one mortal woman! Meanwhile, ' ||
        'Odin inflicts his punishment on Thor.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('BATMAN: BEYOND THE WHITE KNIGHT #1', '202/03/29',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2022/03/BMBTWK_Cv1_00111_R1_C1_DIGITAL_6227dd032cf722.34813736.jpg?itok=DdmjuCsD',
        'Crime', '2022/04/13', 'DC Comics/Detective Comics', 'Batman', '#1', null,
        'A lot can change in 10 years, especially in Gotham! Batman, a.k.a. Bruce Wayne, may be behind bars, but the real criminals are still out there. Gotham Motors CEO Derek Powers has seized control of the Wayne' ||
        ' family assets and is using them to transform the GTO and the city they’ve sworn to protect. Crime is down, but at what cost? A new Batman has emerged in the city, and only Bruce is fully aware of the dangers to come.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Dark Nights: Death Metal #1', '2020/06/16',
        'https://imgix-media.wbdndc.net/ingest/book/preview/2e69f15a-5919-4d34-bd0f-b4e20bf5bbe9/73654fd5-3cbc-4ea2-a7c8-c6bb1bd8a89c/0.jpg',
        'Science Fiction', '2022/04/13', 'DC Comics/Detective Comics', 'Dark Nights', '#1', null,
        'Get ready for the earth-shattering encore! The legendary team behind Dark Nights: Metal and Batman: Last Knight on Earth take center stage and reunite for one last tour.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('NIGHTWING #99', '2010/10/10',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/nightwing_v2_99_5b16e0efe92f31.52597399.jpg?itok=YhGPDY26',
        'Crime', '2022/04/13', 'DC Comics/Detective Comics', 'NightWing', '#99', null,
        'Nightwing launches in a bold new direction! In this issue, Batman confronts Nightwing about Blockbusters death...and the role Dick Grayson had in the death ' ||
        'of the biggest baddie in Blüdhaven! And where does this leave the sultry-yet-venomous Tarantula?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Deadpool (2019) #1', '2019/10/20', 'https://i.annihil.us/u/prod/marvel/i/mg/c/c0/5dc98afbc2169/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Deadpool', '#1', null,
        'Deadpool’s newest mercenary job has him going after the King of Monsters, who has claimed a new kingdom for his monstrous subjects…on Staten Island! ' ||
        'But you know what they say, when you come at the king, you better not miss! ');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Deadpool: Secret Agent Deadpool (2018) #6', '2018/10/21',
        'https://i.annihil.us/u/prod/marvel/i/mg/b/a0/5be1f00ea9b32/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Deadpool', '#6', 'Secret Agent Deadpool',
        'It’s a case of mistaken identity when Wade Wilson, the regeneratin degenerate you know as DEADPOOL, kills an American superspy on a ' ||
        'mission to stop the deadly terrorist agency called GORGON! Now, it is up to Wade to complete his victims mission as only he can!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Spider-Man/Deadpool (2016) #50', '2019/05/08',
        'https://i.annihil.us/u/prod/marvel/i/mg/b/60/5ccb3b3bb0921/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Deadpool', '#50', null,
        'THE BIGGEST CLIMAX OF THE BIGGEST MARVEL EVENT OF ALL TIME! An epic 50th issue - guaranteed to blow your socks off! READ WITH EXTRA SOCKS! ' ||
        'Spider-Man and Deadpool fight the Manipulator for the fate of the entire Marvel Universe!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Black Panther Vs. Deadpool (2018) #4', '2019/01/30',
        'https://i.annihil.us/u/prod/marvel/i/mg/7/10/5c48f87e2483a/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Deadpool', '#4', null,
        'INTRODUCING...PANTHER-POOL! (YES, REALLY!) A classic Marvel team-up gone terribly wrong! Who could have predicted it?! Luckily, there is an easy solution. ' ||
        'All the Black Panther needs to do is give Deadpool a bullet-sized chunk of the worlds most precious resource and let him return to New York in one piece.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Avengers (1963) #12', '1965/04/01', 'https://i.annihil.us/u/prod/marvel/i/mg/3/40/5852b38bb0761/detail.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Avengers', '#12', null,
        'Ant-Man discovers a nefarious plot being perpetrated underground, so the Avengers must defeat Mole Man to save the earth!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Avengers (1963) #20', '1965/09/10', 'https://i.annihil.us/u/prod/marvel/i/mg/3/b0/585305ccc5585/detail.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Avengers', '#20', null,
        'With Swordsman and his high-tension conflict with the Avengers continues! But even with Iron Man vouching for him,' ||
        ' will the Avengers let him join the team?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('GREEN ARROW #72', '2007/03/14',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/garrow_v3_72_5b1717f5d11e00.40566481.jpg?itok=gCWv9sfm',
        'Crime', '2022/04/13', 'DC Comics/Detective Comics', 'Green Arrow', '#72', 'Seeing Red',
        '"Seeing Red" concludes as the Red Hood is within reach of their ultimate goal. Will it be another corrupted sidekick? Green Arrow and Batman race to rescue Speedy!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('GREEN ARROW #3', '2011/10/02',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/garrow_v5_3_5b172077b1d340.87678438.jpg?itok=F2mwz-_u',
        'Crime', '2022/04/13', 'DC Comics/Detective Comics', 'Green Arrow', '#3', null,
        'The Jersey Shore of super villains crashes Seattle to stream the Green Arrows death over the Internet! It is the final fight between Green Arrow and Rush:' ||
        ' media maven vs. media star! The whole world is watching on their QPhones and QPads.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Star Wars: Darth Vader and the Ghost Prison (2012) #1', '2012/05/23',
        'https://i.annihil.us/u/prod/marvel/i/mg/7/30/54ff38304e7f9/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Darth Vader', '#1', null,
        'The graduation celebration for the first class of Imperial cadets is disrupted by a sudden terrorist strike! But the real targets of the attack ' ||
        'are the new Emperor and his second in command, Darth Vader.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('JUSTICE LEAGUE ADVENTURES #34', '2004/08/04',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/jladventures_1_5b2951a254ecd7.26280107.jpg?itok=PDOxsZvU',
        'Science Fiction', '2022/04/13', 'DC Comics/Detective Comics', 'Justice League', '#34', null,
        'A bullet from the alley where Batman lost his parents! A broken piece of the rocketship that carried baby Superman! What secret villain is gathering up deadly relics ' ||
        'from the past, and how does Wonder Woman fit into his plot to destroy the Justice League?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #1', '2012/08/01', 'https://i.annihil.us/u/prod/marvel/i/mg/3/b0/51a515296fe75/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#1', 'Hawkeye Marvel Now',
        'The breakout star of this summers blockbuster Avengers film and self-made hero Hawkeye fights for justice! With ex-Young Avenger Kate Bishop by his side hes out to prove himself as one of Earths Mightiest Heroes!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #2', '2012/09/05', 'https://i.annihil.us/u/prod/marvel/i/mg/3/50/51a5153d7944c/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#2', 'Hawkeye Marvel Now',
        'What you need to know: Fraction. Aja. Hawkeye. Kate Bishop. Cars. Guns. Stealing from the rich never looked so good. Get. Now.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #3', '2012/10/17', 'https://i.annihil.us/u/prod/marvel/i/mg/3/70/51a5151f8681f/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#3', 'Hawkeye Marvel Now',
        'Clint Barton and Kate Bishop are double the Hawkeye - and double the trouble. But what is the Vagabond Code?');


insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #3', '2012/10/17', 'https://i.annihil.us/u/prod/marvel/i/mg/3/70/51a5151f8681f/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#3', 'Hawkeye Marvel Now',
        'Clint Barton and Kate Bishop are double the Hawkeye - and double the trouble. But what is the Vagabond Code?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #4', '2012/11/21', 'https://i.annihil.us/u/prod/marvel/i/mg/6/03/51a51531e9548/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#4', 'Hawkeye Marvel Now',
        'You wont believe whats on The Tape! S.H.I.E.L.D. recruits Clint to intercept incriminating evidence - before he becomes the most wanted man in the world. The situation quickly becomes a thriller that spans the globe and the darkest parts of Hawkeye.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #5', '2012/12/05', 'https://i.annihil.us/u/prod/marvel/i/mg/5/50/51a5151113edc/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#5', 'Hawkeye Marvel Now',
        'The Tape concludes! Someone has a deadly secret that will change the course of Hawkeyes relationship with the Avengers.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #6', '2012/12/19', 'https://i.annihil.us/u/prod/marvel/i/mg/e/d0/51a51604031a0/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#6', 'Hawkeye Marvel Now',
        'David Aja returns to the most critically acclaimed comic of 2012! The Ace Archer Clint Barton faces DVR-MAGEDDON!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #7', '2013/01/30', 'https://i.annihil.us/u/prod/marvel/i/mg/8/a0/51a515fc2bb35/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#7', 'Hawkeye Marvel Now',
        'Cherrys got a gun. And she looks good in it. Hawkeye gets distracted. Just like you are right now.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #8', '2013/02/27', 'https://i.annihil.us/u/prod/marvel/i/mg/c/30/51a515f5b5fce/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#8', 'Hawkeye Marvel Now',
        'Valentines Day with THE heartthrob of the Marvel Universe? This will be... confusing. Xoxo Hawkeye.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #9', '2013/04/10', 'https://i.annihil.us/u/prod/marvel/i/mg/e/c0/573ccc8dcba01/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#9', 'Hawkeye Marvel Now',
        'More ladies more problems. Featuring: The Girlfriend the Work-Wife and the Ex-Wife. Plus the tracksuits are back and aim to kill. Good luck Hawkeye.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #10', '2013/05/01', 'https://i.annihil.us/u/prod/marvel/i/mg/c/20/573dbf31c4a7c/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#10', 'Hawkeye Marvel Now',
        'The most acclaimed new book of the year continues! Who pulled the trigger? Where have you seen him before? Have you seen him before? Maybe. But not like this.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #11', '2013/06/26', 'https://i.annihil.us/u/prod/marvel/i/mg/9/20/51c9c9b1ae073/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#11', 'Hawkeye Marvel Now',
        'THE breakout character of 2012- becomes the breakout character of 2013-as PIZZA DOG gets his own issue. Literally the issue...its all from the dogs point-of-view.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Hawkeye (2012) #12', '2013/07/10', 'https://i.annihil.us/u/prod/marvel/i/mg/c/30/51d1cc5a9f18c/clean.jpg',
        'Crime', '2015/04/15', 'Marvel Comics/Atlas Comics', 'Hawkeye', '#12', 'Hawkeye Marvel Now',
        'The sleeper hit of 2012 is now the cant miss book of 2013 and probably the overhyped book youre sick of people talking about in 2014!');

-- insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
--                   story_arc, description)
-- values ('The Sandman #1', '2006/10/18',
--         'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/11/sandman_1_5bdcac3465cb99.69674278.jpg?itok=3w7lkV6K',
--         'Fantasy', '2010/04/15', 'Vertigo/DC Black Label', 'Sandman', '#1', 'Sandman',
--         'In celebration of The Absolute Sanman Vol. 1 HC Vertigo proudly re-presents the classic debut issue of The Sandman.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Archie Love & Heartbreak Special #1', '2022/02/09',
        'https://cdn.shopify.com/s/files/1/2026/1033/products/hms_1024x1024.jpg?v=1641836126',
        'Other', '2022/02/14', 'Archie Comics', 'Archie', '#1', 'Archie',
        'Join Archie and his friends on a date night at the Riverdale carnival! First up Betty wants to know If Jughead was interested in dating what would the perfect date look like?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('The Umbrella Academy #1', '2011/04/20',
        'https://d1p1su8170li4z.cloudfront.net/book_covers/132/focus@2x.jpg?git=a7da34df8f3d4a85c661fd738b8acaced224845c&ts=1591658829',
        'Science Fiction', '2021/03/15', 'Dark Horse', 'Umbrella Academy', '#1', 'Umbrella Academy',
        'Once the Umbrella Academy was unstoppable. Under the tutelage of their guardian and mentor Dr. Reginald Hargreeves its members spent their childhoods fighting evil and honing their extraordinary gifts.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Lumberjanes Vol. 1', '2014/04/20',
        'https://cdn.shopify.com/s/files/1/0514/5113/4119/products/Lumberjanes_v1_SC_Cover_LOW_360x.jpg?v=1627352351',
        'Other', '2015/05/15', 'Boom! Studios', 'Lumberjanes', '#1', 'Lumberjanes',
        'Friendship to the max! Jo April Mal Molly and Ripley are five best pals determined to have an awesome summer together...and theyre not gonna let any insane quest or an array of supernatural critters get in their way!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Batman #429', '1989/02/03',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/book-covers/12103_900x1350.jpg?itok=U1VUj4GZ',
        'Crime', '2021/02/16', 'DC Comics/Detective Comics', 'Batman', '#429', 'Death In the Family',
        'The game-changing Batman epic returns in a new deluxe edition hardcover! As the second person to assume the role of Batman’s sidekick, Jason Todd had a ' ||
        'completely different personality than the original Robin. Rash and prone to ignore Batman’s instructions, Jason was always quick to act without regard to consequences.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('America Chavez: Made in the USA (2021) #1', '2021/03/03',
        'https://i.annihil.us/u/prod/marvel/i/mg/f/b0/603035694ca02/clean.jpg',
        'Science Fiction', '2022/04/04', 'Marvel Comics/Atlas Comics', 'America Chavez', '#1', 'America Chavez',
        'WHO IS AMERICA? America Chavez is incredible - her origins, her strength, her dimension-shattering star portals! But when the foundation ' ||
        'of everything she believes is shaken, America will stand up and face the parts of herself she has been running from.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Scarlet Spider (2017) #1', '2017/04/26',
        'https://i.annihil.us/u/prod/marvel/i/mg/1/c0/58f798921783b/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Spider-Man', '#1', 'Scarlet Spider',
        'One of the most controversial characters in comics has returned - and the controversy has only BEGUN! ' ||
        'In the aftermath of THE CLONE CONSPIRACY, Ben has a new take on life…and he is not the same Scarlet Spider he was before.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Avengers (1963) #3', '1964/01/10', 'https://i.annihil.us/u/prod/marvel/i/mg/f/03/4e8f156675036/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Avengers', '#3', 'Avengers',
        'The mightiest heroes on Earth must face the mightiest malcontents in Marvel: the Hulk and the Sub-Mariner,' ||
        ' teaming up for the first time! Featuring the Fantastic Four and the X-Men!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Uncanny X-Men (1963) #49', '1968/10/01',
        'https://i.annihil.us/u/prod/marvel/i/mg/9/03/5372c5f168190/detail.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'X-Men', '#49', 'X-Men',
        'Iceman and Lorna versus Mesmero and the Demi-Men!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Uncanny X-Men (1963) #43', '1968/04/01',
        'https://i.annihil.us/u/prod/marvel/i/mg/6/f0/5372c9fa5d098/detail.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'X-Men', '#43', 'X-Men',
        'During a heist on the open seas, Magneto is confronted by the X-Men!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Uncanny X-Men (1963) #46', '1968/07/01',
        'https://i.annihil.us/u/prod/marvel/i/mg/3/60/5372c6e4171d5/detail.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'X-Men', '#46', 'X-Men',
        'The Juggernaut does battle with the X-Men in an effort to avenge himself upon Charles Xavier. But how will Juggernaut react when he learns about the death of Xavier?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Uncanny X-Men (1963) #96', '1975/12/01',
        'https://i.annihil.us/u/prod/marvel/i/mg/2/f0/58a604a4a5425/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'X-Men', '#96', 'X-Men',
        'Introducing the new housekeeper for the X-Men, Moira MacTaggart! But is this mysterious woman as domestic as she seems? ' ||
        'And what ties does she have to Professor X? Meanwhile, Cyclops accidentally releases two demons with his optic blasts.');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('SUPERMAN #8', '2011/11/23',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/superman_v3_3_5b11a01a2f2556.67105373.jpg?itok=x9PXmC5U',
        'Science Fiction', '2022/04/13', 'DC Comics/Detective Comics', 'Superman', '#3', 'SuperMan',
        'Superman, agent of the Daemonites?! How has Helspont bent The Man of Steel to his will?');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('SUPERMAN #3', '2012/04/25',
        'https://www.dccomics.com/sites/default/files/styles/covers192x291/public/comic-covers/2018/06/superman_v3_8_5b11a18e420a60.24652454.jpg?itok=P2sb6Bts',
        'Science Fiction', '2022/04/13', 'DC Comics/Detective Comics', 'Superman', '#9', 'SuperMan',
        'Superman finds himself beset as a TV reporter at the new Daily Planet makes a case that Superman brings Metropolis more harm than good, ' ||
        'while a vicious new foe attacks those nearest and dearest to Clark Kent! ');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Deadpool (2018) #13', '2019/06/05', 'https://i.annihil.us/u/prod/marvel/i/mg/3/f0/5ced980515476/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Deadpool', '#1', 'The War of the Realms',
        'WAR OF THE REALMS TIE-IN! As the War of the Realms rages, Deadpool is sent to Australia to take care of a pesky troll problem! ' ||
        'No, not those obnoxious internet nerds. REAL TROLLS! How many didgeridoo jokes can one comic book make? Let us find out together!');

insert into comic(comic_name, publish_date, image, genre, date_obtained, imprint, series, comic_serial_number,
                  story_arc, description)
values ('Spider-Man Versus Wolverine (1987) #1', '1987/02/01',
        'https://i.annihil.us/u/prod/marvel/i/mg/9/f0/5d8e38e7c50e4/clean.jpg',
        'Science Fiction', '2022/04/13', 'Marvel Comics/Atlas Comics', 'Wolverine', '#1', 'Spider-Man Versus Wolverine',
        'Wolverine and Spider-Man are both in Germany in a race to save Charlemagne, Wolverine''s close friend.');


insert into collection (collection_name, is_private, is_main, image, number_of_comics, description)
values ('Dans Dandy Collection', false, TRUE,
        'https://www.previewsworld.com/SiteImage/MainImage/STK444306', '1',
        'My private collection of comics.');
insert into collection(collection_name, is_private, is_main, image, number_of_comics, description)
values ('Joses Jiving Collection', false, TRUE,
        'https://i0.wp.com/ultimatecomics.com/wp-content/uploads/2021/02/Flashpoint-1-Andy-Kubert-Variant-350906471114.jpg?fit=1033%2C1600&ssl=1',
        '6', 'My lifelong Comic collection.');
insert into collection(collection_name, is_private, is_main, image, number_of_comics, description)
values ('Andys Awesome Collection', false, TRUE,
        'https://imgix-media.wbdndc.net/ingest/book/preview/9af8a80c-be77-42d2-a118-9caf30ab956b/2a3bfb2b-a067-4c9f-8046-0994ef86182f/0.jpg',
        '55', 'Hawkeye is the best ever.');
insert into collection(collection_name, is_private, is_main, image, number_of_comics, description)
values ('Sarahs Scorching Collection', false, TRUE,
        'https://i.annihil.us/u/prod/marvel/i/mg/5/b0/5ceedfcb6ed55/clean.jpg',
        '20', 'This collection is on fire it is so good!');
-- insert into collection(collection_name, is_private, is_main, image, number_of_comics, description)
-- values ('Sarahs X-Men Comics', false, TRUE,
--         'https://i.annihil.us/u/prod/marvel/i/mg/3/60/5372c6e4171d5/detail.jpg',
--         '20', 'This is my X-Men collection!');
-- insert into collection(collection_name, is_private, is_main, image, number_of_comics, description)
-- values ('Sarahs Spidey Collection', false, TRUE,
--         'https://i.annihil.us/u/prod/marvel/i/mg/6/60/6241c68a76fc0/clean.jpg',
--         '20', 'This is my Spider_Man collection!');

insert into collection (collection_name, is_private, is_main, image, number_of_comics, description)
values ('Ryner Rocking Collection', false, TRUE,
        'https://imgix-media.wbdndc.net/ingest/book/preview/2e69f15a-5919-4d34-bd0f-b4e20bf5bbe9/73654fd5-3cbc-4ea2-a7c8-c6bb1bd8a89c/0.jpg',
        '1',
        'The Greatest Collection of All Time!');
insert into collection(collection_name, is_private, is_main, image, number_of_comics, description)
values ('Randys Rad Collection', false, TRUE,
        'https://i.annihil.us/u/prod/marvel/i/mg/b/60/5ccb3b3bb0921/clean.jpg',
        '6', 'The Most Rad Collection');


insert into user_comics(id, comic_id)
values ((select id from app_user where user_name = 'DaringDan'),
        (select comic_id from comic where comic_name = 'Flashpoint #3')),
       ((select id from app_user where user_name = 'NightWing'),
        (select comic_id from comic where comic_name = 'NightWing #9'));



insert into user_collections(id, collection_id)
values ((select id from app_user where user_name = 'DaringDan'),
        (select collection_id from collection where collection_name = 'Dans Dandy Collection')),
       ((select id from app_user where user_name = 'NightWing'),
        (select collection_id from collection where collection_name = 'Joses Jiving Collection')),
       ((select id from app_user where user_name = 'Awesomeandy'),
        (select collection_id from collection where collection_name = 'Andys Awesome Collection')),
       ((select id from app_user where user_name = 'DarthSarah'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
--        ((select id from app_user where user_name = 'DarthSarah'),
--         (select collection_id from collection where collection_name = 'Sarahs X-Men Comics')),
--        ((select id from app_user where user_name = 'DarthSarah'),
--         (select collection_id from collection where collection_name = 'Sarahs Spidey Collection')),
       ((select id from app_user where user_name = 'Rynerthegreat'),
        (select collection_id from collection where collection_name = 'Ryner Rocking Collection')),
       ((select id from app_user where user_name = 'RadRandy'),
        (select collection_id from collection where collection_name = 'Randys Rad Collection'));


insert into comic_collections(comic_id, collection_id)
values ((select comic_id from comic where comic_name = 'NightWing #9'),
        (select collection_id from collection where collection_name = 'Joses Jiving Collection')),
       ((select comic_id from comic where comic_name = 'BATMAN SUPERMAN #1 Variant Cover'),
        (select collection_id from collection where collection_name = 'Joses Jiving Collection')),
       ((select comic_id from comic where comic_name = 'Wolverine Origins Variant cover'),
        (select collection_id from collection where collection_name = 'Joses Jiving Collection')),
       ((select comic_id from comic where comic_name = 'JEM and The Holograms'),
        (select collection_id from collection where collection_name = 'Joses Jiving Collection')),
       ((select comic_id from comic where comic_name = 'SUPERMAN #8'),
        (select collection_id from collection where collection_name = 'Joses Jiving Collection'));

insert into comic_collections(comic_id, collection_id)
values ((select comic_id from comic where comic_name = 'Batman Knight of vengeance #1'),
        (select collection_id from collection where collection_name = 'Andys Awesome Collection')),
       ((select comic_id from comic where comic_name = 'Court of Owls #1'),
        (select collection_id from collection where collection_name = 'Andys Awesome Collection')),
       ((select comic_id from comic where comic_name = 'Flashpoint #1'),
        (select collection_id from collection where collection_name = 'Andys Awesome Collection')),
       ((select comic_id from comic where comic_name = 'SUPERMAN #3'),
        (select collection_id from collection where collection_name = 'Andys Awesome Collection')),
((select comic_id from comic where comic_name = 'Deadpool (2018) #13'),
    (select collection_id from collection where collection_name = 'Dans Dandy Collection'));

insert into comic_collections(comic_id, collection_id)
values  ((select comic_id from comic where comic_name = 'FIGHT CLUB 2'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Thor (1998) #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Thor (1966) #126'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'NIGHTWING #99'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Deadpool (2019) #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Deadpool: Secret Agent Deadpool (2018) #6'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Avengers (1963) #3'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'GREEN ARROW #72'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'GREEN ARROW #3'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Star Wars: Darth Vader and the Ghost Prison (2012) #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'JUSTICE LEAGUE ADVENTURES #34'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #2'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #4'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #5'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #6'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #7'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #8'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #9'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #10'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #11'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Hawkeye (2012) #12'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Archie Love & Heartbreak Special #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'The Umbrella Academy #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Lumberjanes Vol. 1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'Batman #429'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection')),
       ((select comic_id from comic where comic_name = 'America Chavez: Made in the USA (2021) #1'),
        (select collection_id from collection where collection_name = 'Sarahs Scorching Collection'));

-- insert into comic_collections(comic_id, collection_id)
-- values ((select comic_id from comic where comic_name = 'Uncanny X-Men (1963) #49'),
--         (select collection_id from collection where collection_name = 'Sarahs X-Men Comics')),
--        ((select comic_id from comic where comic_name = 'Uncanny X-Men (1963) #43'),
--         (select collection_id from collection where collection_name = 'Sarahs X-Men Comics')),
--        ((select comic_id from comic where comic_name = 'Uncanny X-Men (1963) #96'),
--         (select collection_id from collection where collection_name = 'Sarahs X-Men Comics')),
--        ((select comic_id from comic where comic_name = 'Uncanny X-Men (1963) #46'),
--         (select collection_id from collection where collection_name = 'Sarahs X-Men Comics'));
--
-- insert into comic_collections(comic_id, collection_id)
-- values ((select comic_id from comic where comic_name = 'Miles Morales: Spider-Man (2018) #37'),
--         (select collection_id from collection where collection_name = 'Sarahs Spidey Collection')),
--        ((select comic_id from comic where comic_name = 'Scarlet Spider (2017) #1'),
--         (select collection_id from collection where collection_name = 'Sarahs Spidey Collection')),
--        ((select comic_id from comic where comic_name = 'The Amazing Spider-man #300'),
--         (select collection_id from collection where collection_name = 'Sarahs Spidey Collection')),
--        ((select comic_id from comic where comic_name = 'Spider-Man Versus Wolverine (1987) #1'),
--         (select collection_id from collection where collection_name = 'Andys Awesome Collection'));

insert into comic_collections(comic_id, collection_id)
values ((select comic_id from comic where comic_name = 'Black Panther Vs. Deadpool (2018) #4'),
        (select collection_id from collection where collection_name = 'Ryner Rocking Collection')),
       ((select comic_id from comic where comic_name = 'Dark Nights: Death Metal #1'),
        (select collection_id from collection where collection_name = 'Ryner Rocking Collection')),
       ((select comic_id from comic where comic_name = 'BATMAN: BEYOND THE WHITE KNIGHT #1'),
        (select collection_id from collection where collection_name = 'Ryner Rocking Collection'));

insert into comic_collections(comic_id, collection_id)
values ((select comic_id from comic where comic_name = 'Spider-Man/Deadpool (2016) #50'),
        (select collection_id from collection where collection_name = 'Randys Rad Collection')),
       ((select comic_id from comic where comic_name = 'Avengers (1963) #20'),
        (select collection_id from collection where collection_name = 'Randys Rad Collection'));

insert into comic_collections(comic_id, collection_id)
values ((select comic_id from comic where comic_name = 'Flashpoint #3'),
        (select collection_id from collection where collection_name = 'Dans Dandy Collection'));


COMMIT;