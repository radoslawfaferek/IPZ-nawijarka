CREATE TABLE `user` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `surname` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `machine` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `max_length_x` integer,
  `max_lenght_y` integer,
  `max_lenght_z` integer,
  `max_wire` float,
  `status` integer,
  `created_at` timestamp
);

CREATE TABLE `task` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `user_id` integer NOT NULL,
  `machine_id` integer NOT NULL,
  `length_x` integer,
  `lenght_y` integer,
  `lenght_z` integer,
  `coils` integer,
  `wire` float,
  `status` integer,
  `created_at` timestamp
);

ALTER TABLE `task` ADD FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

ALTER TABLE `task` ADD FOREIGN KEY (`machine_id`) REFERENCES `machine` (`id`);
