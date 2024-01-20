--
-- Drop Tables
--

SET foreign_key_checks = 0;
DROP TABLE if exists dogs;
DROP TABLE if exists users;
DROP TABLE if exists likes;
SET foreign_key_checks = 1;

--
-- Create Tables
--

CREATE TABLE dogs(
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `age` INT NULL,
  `breedId` INT NOT NULL,
  `profileImageUrl` VARCHAR(255) NOT NULL,
  `description` VARCHAR(500),
  `gender` VARCHAR (255) NOT NULL,
  `hearts` INTEGER DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
  );

CREATE TABLE users(
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(300) NOT NULL,
  `displayName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `displayName_UNIQUE` (`displayName` ASC) VISIBLE
  );

  -- CREATE TABLE likes (
  --   `id` INTEGER NOT NULL AUTO_INCREMENT,
  --   `liked` BOOLEAN,
  --   `hearts` INTEGER,
  --   `dogLikeId` INTEGER,
  --   PRIMARY KEY (`id`),
  --   -- UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  --   FOREIGN KEY (`dogLikeId`) REFERENCES dogs(`id`)
  -- );


INSERT INTO users (email, displayName)
    VALUES
        ('happyrooster@gmail.com', 'Saturn'),
        ('pups@hotmail.com', 'PepperPup');

INSERT INTO dogs (name, age, breedId, profileImageUrl, description, gender, hearts)
    VALUES
        ('Cooper', 2, 140, 'https://cdn.discordapp.com/attachments/1065282633006846045/1138087431531397230/PXL_20230807_123251572.jpg', 'Cute on the outside and a devil on the inside, do not let Coopers sweet cuddly face fool you, he will steal your clothes the second you are not looking! But luckily, he still has a heart of gold.', 'male', 1),
        ('Frosty', 3, 6, 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRJzdGrpj7uWealRuHdwsPpcmAfT9zbcc7I_8zZ2aJiSrnPm631W44ln6tbfpmkJIP5nJtufCh67qA82B0', 'Frosty is anything but frosty in personality. He is our best boy and proudly leads our pack of dogs with a cute howl and lots of cuddles.', 'male', 3),
        ('Bubby', 4, 164, 'https://www.akc.org/wp-content/uploads/2017/11/Lhasa-Apso-standing-in-a-mountainous-landscape.jpg', 'Bubby will stare at you with the biggest eyes until you have magically given him your food. He loves belly rubs and his quarterly groom session. He is not friends with the brush though!', 'female', 2),
        ('Minnie', 1, 140, 'https://i.imgur.com/3wvzeAx.jpeg', 'Coopers sister, Minnie, just as wild with a spark in her eye.', 'female', 4),
        ('Luna', 4, 170, 'https://random.dog/0df9bda3-4d07-463d-952c-7c742727e396.jpg', 'The youngest member of our family, Luna is already proving to be quite the handful, but we love her!', 'female', 2),
        ('Blob', 8, 6, 'https://i.pinimg.com/564x/d2/d9/f6/d2d9f6c020432cb75ae6d60f088a0185.jpg', 'A cute blob with a lot of fur, he loves cats and long walks in the living room (he sleeps all day)', 'male', 1),
        ('Flubber', 1, 6, 'https://www.ukpets.com/oc-content/uploads/breeds/0/5044.jpg', 'Son of Blob! The flubbiest of all flubbies. Flubber loves all food, even vegetables!', 'male', 1),
        ('Scruffy', 10, 284, 'https://www.sciencenews.org/wp-content/uploads/2022/04/042822_AG_dog-breeds_feats-1030x580.jpg', 'Saved from the streets of Spain, Scruffy is a sweet and loving dog with a playful puppy heart.', 'female', 1),
        ('Zoey', 6, 284, 'https://i.imgur.com/k3AZuVS.jpeg', 'A mix between a pomeranian and a papillon, Zoey is the sweetest creature on the planet that has ever existed.', 'female', 1),
        ('Buddy', 7, 123, 'https://i.imgur.com/gN1bGse.jpg', 'A sophisticated and educated gentleman, Bud enjoys walks in the woods and a whisky by the fireplace.', 'male', 1),
        ('Toby', 7, 139, 'https://i.imgur.com/LuOhHx9.jpg', 'Brother as well as apprentice of Buddy, tobes enjoys fake sneezing and involuntry shaking upon the arrival of guests.', 'male', 2),
        ('Nana Tobes', 7, 139, 'https://i.imgur.com/lnImSmM.jpg', 'Alter ego of Toby, available upon request and on weekends.', 'female', 3),
        ('Rufus', 2, 49, 'https://i.imgur.com/lypmlGM.jpg', 'Australian born and a Dingo dooge at heart, this boy is the 2023 winner of Melbournes most bombastic side eye. Also enjoys fashionable walks.', 'male', 3);

  -- INSERT INTO likes (liked, hearts, dogLikeId)
  --   VALUES
  --   (true, 5, 6),
  --   (false, 0, 2); 