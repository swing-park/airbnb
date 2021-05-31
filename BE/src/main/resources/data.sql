INSERT INTO city(name)
values ('서울'),('경기도'),('강원도'),('충청도'),('경상남도'),('경상북도'),('전라남도'),('전라북도');

INSERT INTO image_type(type)
values ('HERO'),('MAIN'),('DETAIL');

INSERT INTO category(name)
values ('자연생활을 만끽 할 수 있는 숙소'),('독특한 공간'),('집 전체'),('반려 동물과 함께 할 수 있는 공간');

INSERT INTO image(url,image_type)
values ('https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=1920', 'HERO');

INSERT INTO image(url,image_type,city_id)
values ('https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240','MAIN',1),
       ('https://a0.muscache.com/im/pictures/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpg?im_q=medq&im_w=240','MAIN',2),
       ('https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240','MAIN',3),
       ('https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240','MAIN',4),
       ('https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240','MAIN',5),
       ('https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240','MAIN',6),
       ('https://a0.muscache.com/im/pictures/558a403a-aeed-4829-83a6-c9b0ccf21866.jpg?im_q=medq&im_w=240','MAIN',7),
       ('https://a0.muscache.com/im/pictures/a161fb95-6875-4aaa-aecd-3a46dead3220.jpg?im_q=medq&im_w=240','MAIN',8);

INSERT INTO image(url,image_type,category_id)
values ('https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=480','MAIN',1),
       ('https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=480','MAIN',2),
       ('https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=480','MAIN',3),
       ('https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=480','MAIN',4);

INSERT INTO image(url,image_type,room_id)
values ('https://a0.muscache.com/im/pictures/c45d08e5-f560-44f0-83fc-83290ccd1670.jpg?im_w=1200', 'MAIN', 1),
       ('https://a0.muscache.com/im/pictures/83ea7cb5-a925-4fc8-835f-da8df7f24bec.jpg?im_w=1200', 'MAIN', 2),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/04dc2ade-cd11-4599-a7fb-a6f4b6176f4e.jpeg?im_w=1200', 'MAIN', 3),
       ('https://a0.muscache.com/im/pictures/42c6cd5c-512c-4f39-9e9c-9ed274f2f0e5.jpg?im_w=1200', 'MAIN', 4),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44090615/original/c2904e87-4014-4d26-a977-b789248c77ce.jpeg?im_w=1200', 'MAIN', 5),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/82c508c8-e0b5-4da2-805f-8772ad9bfe9d.jpeg?im_w=1200', 'MAIN', 6),
       ('https://a0.muscache.com/im/pictures/a63a845b-c16e-4a0f-b0ca-a124a677b3d2.jpg?im_w=1200', 'MAIN', 7),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47897490/original/b0238603-d063-4f5c-9e10-c835132669e4.jpeg?im_w=1200', 'MAIN', 8);
       ('https://a0.muscache.com/im/pictures/57e41b94-36b9-4a59-b665-6121fb415d7a.jpg?im_w=1200', 'MAIN', 9),
       ('https://a0.muscache.com/im/pictures/03a2ff43-67e2-40aa-9b09-1f58a014507e.jpg?im_w=1200', 'MAIN', 10),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-26406487/original/135e3333-312b-4f67-b2c9-ffbc3ff1c493.jpeg?im_w=1200', 'MAIN', 11),
       ('https://a0.muscache.com/im/pictures/88810bd3-7542-472d-8148-00c9627c4b98.jpg?im_w=1200', 'MAIN', 18),
       ('https://a0.muscache.com/im/pictures/2bdfabdf-dce5-4c74-91e1-dbab2e57863e.jpg?im_w=1200', 'MAIN', 19),
       ('https://a0.muscache.com/im/pictures/b2a2cd77-4667-452d-ade3-84a2eab5dfc3.jpg?im_w=1200', 'MAIN', 20),
       ('https://a0.muscache.com/im/pictures/ed22a989-2650-4730-b6e8-b3dfacbca944.jpg?im_w=1200', 'MAIN', 21),
       ('https://a0.muscache.com/im/pictures/3cf625e4-0821-41d5-8c5c-83592203486f.jpg?im_w=1200', 'MAIN', 22),
       ('https://a0.muscache.com/im/pictures/95027829-7f7a-4b28-a60d-a9e21bd9ac91.jpg?im_w=1200', 'MAIN', 23),
       ('https://a0.muscache.com/im/pictures/40102b47-e8a8-42a5-8b70-56bb5b883894.jpg?im_w=1200', 'MAIN', 24),
       ('https://a0.muscache.com/im/pictures/b5159250-a793-4268-8806-3816208f2c4a.jpg?im_w=1200', 'MAIN', 25),
       ('https://a0.muscache.com/im/pictures/66a59cfc-c218-4370-bcbb-28b81a9640a3.jpg?im_w=1200', 'MAIN', 26),
       ('https://a0.muscache.com/im/pictures/1f6ebb5f-2e6f-4076-804c-1408498564ae.jpg?im_w=1200', 'MAIN', 27),
       ('https://a0.muscache.com/im/pictures/d9502ccd-74ff-4234-9455-336ca2d2b708.jpg?im_w=1200', 'MAIN', 28),
       ('https://a0.muscache.com/im/pictures/5150f05c-e77f-4844-b8fc-afa65e1c74b3.jpg?im_w=1200', 'MAIN', 29),
       ('https://a0.muscache.com/im/pictures/0a4b979a-ac4b-46b9-9d5a-c63f6fac6734.jpg?im_w=1200', 'MAIN', 30),
       ('https://a0.muscache.com/im/pictures/69ba6825-b1f4-46b0-a861-36d01abcef86.jpg?im_w=1200', 'MAIN', 31),
       ('https://a0.muscache.com/im/pictures/4496e003-3e4f-4b5e-8faf-f8bbb78a2e76.jpg?im_w=1200', 'MAIN', 32),
       ('https://a0.muscache.com/im/pictures/cb9d7547-bc8d-4aa8-b513-f43cc0356742.jpg?im_w=1200', 'MAIN', 33),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-45485421/original/a4a80467-3f96-4316-8f6f-f60bd1990bfd.jpeg?im_w=1200', 'MAIN', 34),
       ('https://a0.muscache.com/im/pictures/0dbb4dae-e308-42df-8c06-143f03c695d7.jpg?im_w=1200', 'MAIN', 35);

INSERT INTO image(url,image_type, room_id)
values ('https://a0.muscache.com/im/pictures/41ee09fc-eddb-49c5-a3b4-ae2caacaf759.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/e3258341-b4f3-4988-b958-bec903936a0b.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/adca4292-084c-45a2-a9c5-1e4679ba81fe.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/a13322a6-c136-4df0-9a10-348dd91a926c.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/ecf38b8f-9986-4a66-99de-4273e12942f7.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/b7aea036-c13b-4cbd-9472-24832c3360d9.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/4210eef3-ae67-488b-bc8d-d55f8fe690dc.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/de1c13f8-554b-4abb-9fa6-98299a10f67c.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/c6c1a442-b449-495a-8ee9-f1779f36b5b4.jpeg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/66bd535a-ba05-43e7-adbe-6953bbc13da5.jpeg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/d1857908-90c8-48fd-9e68-a743187664ed.jpeg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/39b76268-042e-4a89-aa3b-89abe9865c58.jpg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/063465ea-3f1f-4b83-b0b4-75952fc4c424.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/dddaa2fd-78a9-4105-92cd-bfefebe65d5f.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/c1c9e49b-2e5a-47e5-bda8-95390cfde907.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/800c7310-bf61-4fac-a248-06cdc7081629.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44090615/original/c5f66ab8-24fe-479d-8b67-a512176ddbef.jpeg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44090615/original/149e034a-2716-4bb2-8561-a7ccede18571.jpeg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/02b368b7-63b0-4748-847f-bf5a81c08dd5.jpg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/58b752dd-8143-4636-83ce-09ebe235683f.jpg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/08d1c75c-4a6b-423e-a908-a624419f4cf6.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/7c29ac12-fd28-4b6a-a40d-bf193a418c57.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/a15d42b5-c8c9-47a1-aee6-627fcb64bb9f.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/2fe6bde7-9e85-4fb2-bbc6-e1cd780b5679.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/44ae81dc-e8a9-4623-bccd-97af889a8b16.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/61b3e6ed-a29f-44a0-8edb-f6985bf2aa62.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/92bc9188-4c09-40dc-9984-b38a6f1fa70a.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/50e7a497-3675-4e66-b487-db58f4e5d6c3.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47897490/original/56311d70-1328-4f37-bd10-15ef43f576c2.jpeg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/3be5bd86-f7fe-46d8-80ba-d138cf920df5.jpg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/ef4e5dfc-4da9-4101-ae90-5ad2aaab3c77.jpg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/1a5e31a5-7b1e-4276-9751-8f1a308dd324.jpg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/8d653c86-fb0e-43dd-95e8-be1a71e7cfa5.jpg?im_w=720', 'DETAIL', 9),
       ('https://a0.muscache.com/im/pictures/bbed66b0-d3e5-4007-b467-21fbfc8cfa0f.jpg?im_w=720', 'DETAIL', 9),
       ('https://a0.muscache.com/im/pictures/3e92bb7a-232a-4d0d-b1e8-75335257186d.jpg?im_w=720', 'DETAIL', 9),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/76a3800d-2601-4ae3-8f71-3d6e7960d80a.jpeg?im_w=720', 'DETAIL', 9),
       ('https://a0.muscache.com/im/pictures/fd9dde33-d5c2-440f-9256-588759cbf861.jpg?im_w=720', 'DETAIL', 10),
       ('https://a0.muscache.com/im/pictures/8893f007-55e6-495a-8b2b-27c685fe7789.jpg?im_w=720', 'DETAIL', 10),
       ('https://a0.muscache.com/im/pictures/31dd0307-76b2-4285-9e5f-321dfd4d3852.jpg?im_w=720', 'DETAIL', 10),
       ('https://a0.muscache.com/im/pictures/70a61d85-5d46-43f6-8b3e-e09c866095ea.jpg?im_w=720', 'DETAIL', 10),
       ('https://a0.muscache.com/im/pictures/5e99b933-9c9a-4c97-b50e-19ccee39f7a4.jpg?im_w=720', 'DETAIL', 11),
       ('https://a0.muscache.com/im/pictures/bdec78fe-f371-4260-a94b-b3564afab63c.jpg?im_w=720', 'DETAIL', 11),
       ('https://a0.muscache.com/im/pictures/6bac64ae-94cb-4571-97eb-016d9f2f854d.jpg?im_w=720', 'DETAIL', 11),
       ('https://a0.muscache.com/im/pictures/94744d71-3a5f-4275-aea2-6904fc9cb20e.jpg?im_w=720', 'DETAIL', 11),
       ('https://a0.muscache.com/im/pictures/bf3e9928-0443-4aef-8f33-0678ea7bf01f.jpg?im_w=720', 'DETAIL', 18),
       ('https://a0.muscache.com/im/pictures/45abd3f9-1e41-43be-9603-ee280c2e5855.jpg?im_w=720', 'DETAIL', 18),
       ('https://a0.muscache.com/im/pictures/49775417-08f0-47e1-8904-91d49fd08df2.jpg?im_w=720', 'DETAIL', 18),
       ('https://a0.muscache.com/im/pictures/481155b4-644f-4bdb-b0b4-4820d5b1e013.jpg?im_w=720', 'DETAIL', 18),
       ('https://a0.muscache.com/im/pictures/5ceb265e-79fc-4c2e-8894-04798a24557f.jpg?im_w=720', 'DETAIL', 19),
       ('https://a0.muscache.com/im/pictures/b031f086-54f8-4a66-9cad-bf85c4c73ecb.jpg?im_w=720', 'DETAIL', 19),
       ('https://a0.muscache.com/im/pictures/7395ee13-dd3b-48bf-9b91-38dad778f2fb.jpg?im_w=720', 'DETAIL', 19),
       ('https://a0.muscache.com/im/pictures/b2d94b13-295c-432a-adf3-d78075545234.jpg?im_w=720', 'DETAIL', 19),
       ('https://a0.muscache.com/im/pictures/f64cb8b8-496c-4318-bd6a-090c0ab3894f.jpg?im_w=720', 'DETAIL', 20),
       ('https://a0.muscache.com/im/pictures/7a591f24-d246-486b-8979-61eccb3a4917.jpg?im_w=720', 'DETAIL', 20),
       ('https://a0.muscache.com/im/pictures/93596041-b12a-4995-9f81-302c37dd5dc2.jpg?im_w=720', 'DETAIL', 20),
       ('https://a0.muscache.com/im/pictures/b0906855-cd69-4b36-8067-7659abe0c4e8.jpg?im_w=720', 'DETAIL', 20),
       ('https://a0.muscache.com/im/pictures/bcbda6fd-481a-43ae-8e6d-e7efda81c8b0.jpg?im_w=720', 'DETAIL', 21),
       ('https://a0.muscache.com/im/pictures/3304dbcf-6e31-40e8-8675-135dd5da0668.jpg?im_w=720', 'DETAIL', 21),
       ('https://a0.muscache.com/im/pictures/84c77ae5-f7dc-4b37-b2b6-fb91334a080e.jpg?im_w=720', 'DETAIL', 21),
       ('https://a0.muscache.com/im/pictures/9c3bca6b-7b86-4f11-950b-1d60b94fb595.jpg?im_w=720', 'DETAIL', 21),
       ('https://a0.muscache.com/im/pictures/5b98fff9-db60-42e3-bece-31785f38a8ae.jpg?im_w=720', 'DETAIL', 22),
       ('https://a0.muscache.com/im/pictures/70507e0e-97ad-4d4d-8161-4c1c2a7a54b1.jpg?im_w=720', 'DETAIL', 22),
       ('https://a0.muscache.com/im/pictures/ef16e0a9-8de6-4a7b-8121-9b78a8777265.jpg?im_w=720', 'DETAIL', 22),
       ('https://a0.muscache.com/im/pictures/6125d1df-d081-44bb-bc9e-c465cdc4ec14.jpg?im_w=720', 'DETAIL', 22),
       ('https://a0.muscache.com/im/pictures/f5e4b265-4db7-4759-a1dd-75b72c104ed5.jpg?im_w=720', 'DETAIL', 23),
       ('https://a0.muscache.com/im/pictures/01ab840e-a965-4288-bfa0-0abeb45cd9f3.jpg?im_w=720', 'DETAIL', 23),
       ('https://a0.muscache.com/im/pictures/a4a1d101-532a-4bae-a4c2-f22475b24b78.jpg?im_w=720', 'DETAIL', 23),
       ('https://a0.muscache.com/im/pictures/35d36c08-20ee-46e7-9f33-9da75895d9cb.jpg?im_w=720', 'DETAIL', 23),
       ('https://a0.muscache.com/im/pictures/578aaf1b-1f31-498c-bc86-65049e39b2c5.jpg?im_w=720', 'DETAIL', 24),
       ('https://a0.muscache.com/im/pictures/9702f832-fff6-43e1-923b-8f0eb0615f6b.jpg?im_w=720', 'DETAIL', 24),
       ('https://a0.muscache.com/im/pictures/c429543a-896f-4258-924e-5dbb110581ef.jpg?im_w=720', 'DETAIL', 24),
       ('https://a0.muscache.com/im/pictures/2e52bc47-f456-495b-afe8-7db794d20ee6.jpg?im_w=720', 'DETAIL', 24),
       ('https://a0.muscache.com/im/pictures/7e80204c-1b5e-4179-b782-13a3fb7e710e.jpg?im_w=720', 'DETAIL', 25),
       ('https://a0.muscache.com/im/pictures/0908104a-4949-4c05-b6db-d1a195f1b59b.jpg?im_w=720', 'DETAIL', 25),
       ('https://a0.muscache.com/im/pictures/c51a4d5d-5486-4899-a913-5aeaf3f620f5.jpg?im_w=720', 'DETAIL', 25),
       ('https://a0.muscache.com/im/pictures/ee4f1a8f-9aa6-4429-a51b-70f8a5188b20.jpg?im_w=720', 'DETAIL', 25),
       ('https://a0.muscache.com/im/pictures/979ad14c-7d68-4b8e-bb58-17eb2e43479b.jpg?im_w=720', 'DETAIL', 26),
       ('https://a0.muscache.com/im/pictures/a4727766-3761-4f31-bd74-a6306df46c84.jpg?im_w=720', 'DETAIL', 26),
       ('https://a0.muscache.com/im/pictures/2192d80f-6838-4dda-8860-6ecf7051e761.jpg?im_w=720', 'DETAIL', 26),
       ('https://a0.muscache.com/im/pictures/7de4f935-94c6-418c-b023-49bddf57ddd7.jpg?im_w=720', 'DETAIL', 26),
       ('https://a0.muscache.com/im/pictures/6f340908-b0f2-4aa6-b727-eca9278d9f93.jpg?im_w=720', 'DETAIL', 27),
       ('https://a0.muscache.com/im/pictures/6a25488b-a483-4359-8ab8-6954834ad544.jpg?im_w=720', 'DETAIL', 27),
       ('https://a0.muscache.com/im/pictures/9f0ad197-c82c-4c9c-b22c-a97c082bfca8.jpg?im_w=720', 'DETAIL', 27),
       ('https://a0.muscache.com/im/pictures/cea6b380-d646-4b8f-8ead-051f08162f23.jpg?im_w=720', 'DETAIL', 27),
       ('https://a0.muscache.com/im/pictures/c87633af-9106-4833-94f1-b119ceccc0cc.jpg?im_w=720', 'DETAIL', 28),
       ('https://a0.muscache.com/im/pictures/a61c5233-959d-40a3-abca-b22cc4091485.jpg?im_w=720', 'DETAIL', 28),
       ('https://a0.muscache.com/im/pictures/8c405e46-3870-4b0c-8251-3ff7c99baeac.jpg?im_w=720', 'DETAIL', 28),
       ('https://a0.muscache.com/im/pictures/3812d37c-8993-4c3f-9464-89a2889ecda4.jpg?im_w=720', 'DETAIL', 28),
       ('https://a0.muscache.com/im/pictures/dfe0eb9a-26c3-41a6-9d91-b1686568f1c4.jpg?im_w=720', 'DETAIL', 29),
       ('https://a0.muscache.com/im/pictures/32ff9ea7-c3d2-4f41-910b-1757051399b9.jpg?im_w=720', 'DETAIL', 29),
       ('https://a0.muscache.com/im/pictures/b5c67646-0644-424d-b9a3-aa32a0155fac.jpg?im_w=720', 'DETAIL', 29),
       ('https://a0.muscache.com/im/pictures/0e2630a9-bda4-4cbc-b2bb-1d2a4e19507f.jpg?im_w=720', 'DETAIL', 29),
       ('https://a0.muscache.com/im/pictures/83281fb9-7420-439a-9622-c63191c141d0.jpg?im_w=720', 'DETAIL', 30),
       ('https://a0.muscache.com/im/pictures/d79db437-e7cb-43fd-a9b5-4f48ebeb6913.jpg?im_w=720', 'DETAIL', 30),
       ('https://a0.muscache.com/im/pictures/8e9119f3-a8ef-4048-afd5-a048d186561f.jpg?im_w=720', 'DETAIL', 30),
       ('https://a0.muscache.com/im/pictures/66639615/66509d53_original.jpg?im_w=720', 'DETAIL', 30),
       ('https://a0.muscache.com/im/pictures/f351561a-35df-4162-ad77-a6dae6b0063c.jpg?im_w=720', 'DETAIL', 31),
       ('https://a0.muscache.com/im/pictures/a2705b4b-5e3b-4bcb-9c8c-8e13ddd13798.jpg?im_w=720', 'DETAIL', 31),
       ('https://a0.muscache.com/im/pictures/f0178b06-aafb-4a2f-9fad-cce75558e411.jpg?im_w=720', 'DETAIL', 31),
       ('https://a0.muscache.com/im/pictures/49265b0c-fcd0-4784-8b35-c6f59f0048d4.jpg?im_w=720', 'DETAIL', 31),
       ('https://a0.muscache.com/im/pictures/7c2aec1e-afea-4494-8758-35d734dbea1e.jpg?im_w=720', 'DETAIL', 32),
       ('https://a0.muscache.com/im/pictures/47f40991-dd60-48c3-9fd6-8b83499f433c.jpg?im_w=720', 'DETAIL', 32),
       ('https://a0.muscache.com/im/pictures/5c91afdb-196e-44c3-9cd5-692612f068f1.jpg?im_w=720', 'DETAIL', 32),
       ('https://a0.muscache.com/im/pictures/8f60d46c-db92-4a38-9ac1-68e4f742b286.jpg?im_w=720', 'DETAIL', 33),
       ('https://a0.muscache.com/im/pictures/bafe5e1d-b6e6-44f9-9e7a-d090a8b5c646.jpg?im_w=720', 'DETAIL', 33),
       ('https://a0.muscache.com/im/pictures/73b93150-0f44-4187-928d-766ba072f2a8.jpg?im_w=720', 'DETAIL', 33),
       ('https://a0.muscache.com/im/pictures/98ca8d6f-ae8c-442a-b754-17bdf797b5c7.jpg?im_w=720', 'DETAIL', 33),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-45485421/original/2df309e5-40cc-47b2-8cdc-b72040623c07.jpeg?im_w=720', 'DETAIL', 34),
       ('https://a0.muscache.com/im/pictures/92a26180-a5e1-428d-96d3-d85b57f6a00c.jpg?im_w=720', 'DETAIL', 34),
       ('https://a0.muscache.com/im/pictures/fb93df06-8bb8-4437-8322-79d8adb38449.jpg?im_w=720', 'DETAIL', 34),
       ('https://a0.muscache.com/im/pictures/2a4e50ac-1136-43c6-93dd-79ae2ff68133.jpg?im_w=720', 'DETAIL', 34),
       ('https://a0.muscache.com/im/pictures/01c2cd68-b25b-4381-b355-e34a26c5428f.jpg?im_w=720', 'DETAIL', 35),
       ('https://a0.muscache.com/im/pictures/b674b348-877b-433d-ab3d-45431b1b04a0.jpg?im_w=720', 'DETAIL', 35),
       ('https://a0.muscache.com/im/pictures/ed47248c-29f6-419e-a647-f5c541a8a25a.jpg?im_w=720', 'DETAIL', 35),
       ('https://a0.muscache.com/im/pictures/61d00a50-af92-4def-a94a-25869dc0c8b7.jpg?im_w=720', 'DETAIL', 35);



INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (153200, '이태원에 아늑한 숙소 Y 하우스', '이태원역에서 도보로 4분거리에 위치하고 있고 대로변에서 상당히 가까운 지역에 위치하여 여성분들도 안전하게 머무시며 이태원을 만끽하실 수 있으세요.'
        , 2, false, 2, 1, true, true, true, 25000, 1, 1),
       (223000, '강남역 1번 출구 바로 옆 편리하고 깔끔한 숙소', '- 전철까지 도보 30초
- 침구로 매번 깨끗이 교체
- 18층으로 좋은 전망
- 세탁기 + 건조기
- 지하창고에 짐 보관 무료
- 주차는 1시간에 1000원으로 꼭 미리 문의 주셔야합니다' , 3, false, 3, 1, true, true, true, 22000, 1, 1),
       (345300, '1호선 제기동 역에서 부터 도보로 30초거리에 위치' , '1. 1호선 제기동 역에서 부터 도보로 30초거리에 위치하고 있어 접근성이 훌륭합니다.
2. 모든 가구와 인테리어가 새것이라 매우 청결합니다.
3. 퀸사이즈 침대가 설치되어 있어 매우 편한 수면을 취할 수 있습니다.
4. 스마트 티비가 있습니다. 다양한 채널의 TV는 물론 본인 계정의 유튜브, 넷플릭스 계정을 연결하여 시청 할 수 있습니다.
5. 고급형 접이식 식탁이 있어서 공간을 유용하게 사용 할 수 있습니다.
6. 최신형 공기청정기가 있어 쾌적한 공기를 유지합니다.
7. 게스트분들의 피드백으로 전자레인지가 추가 되었습니다.', 3, false, 3, 1, true, true, true, 23000, 1, 2),
     (53400, '뷰가 너무 좋은 숙소', '본 숙소는 친구, 지인들과의 모임장소나 회포를 풀고 생일파티를 하는 등 밤 늦게까지 술를 마시는 장소로는 적합하지 않습니다. 만약 그런 이유로 민원이 발생할경우 바로 퇴실조치 하겠습니다.',
      4, false, 3, 2, true, true, true, 18000, 1, 3),
     (72500, '자가격리만 전문으로 하는 숙소입니다 :-)', '호텔에서 쓰는 40수 프리미엄 침구류로 이불, 배게 쾌적한 환경을 자랑합니다.
빔프로젝터(넷플릭스&왓챠 등), WIFI 가능
식사를 위한 인덕션, 후라이팬, 냄비, 조리도구, 접시 등 모든 취사에 필요한 도구들이 준비되어 있습니다.' , 2, true, 2, 1, true, true, true, 20100, 1, 2),
     (85100, '스마트 숙소관리 프리모(Premo)를 사용할 수 있는 AI 숙소', '-비대면 언택트 스마트 도어락 사용
-일회용 비밀번호 사용으로 안전합니다.
▶응암역(6호선) 도보 7분 내외
▶신축 / 엘레베이터
▶이마트 도보 2분' , 3, false, 2, 1, true, true, true, 23000, 1, 3),
     (153000, '당산역 1분거리에 있는 고층아파트', '무료주차(입.출차 1회제공)
빌트인가구와 퀸침대 55인치 tv
sk인터넷,tv, 와이파이제공
선유도와 여의도한강공원산책가능', 2, true, 2, 1, true, true, true, 20000, 1, 1),
      (418000, '어반스테이 더 남산', '말이 필요없다 일단 와라!!!', 4, false, 4, 2, true, true, true, 30000, 1, 4);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (65200, '양평시내와 근접한 마을초입에 있는 게스트 하우스입니다.' , '전망이 아름다운 곳입니다.
하루 한팀만 지낼수 있으며 1층은 사무겸용 공간으로 사용하고 있어서 계시는 동안 편히 계실수 있습니다.'
        , 2, false, 2, 1, true, true, true, 23000, 2, 1),
        (55300, '안녕하세요. 느티나무집 호스트 입니다.' , '느티나무집은 화려함을 드릴 수는 없지만, 쾌적하고 편안함을 드리겠다는 마음으로 준비를 했습니다.
쾌적함을 드리기 정말 열심히 청소하고, 세탁하고 소독하며 준비를 하고 있습니다.
그 준비를 알아주시는 게스트분이 있다는 사실에 더욱 열심히 준비 하고 있습니다.'
        , 16, false, 3, 3, true, true, true, 30000, 2, 2),
        (87400, '해발고도 400m 숲속에 위치한 shelter입니다' , '맑은 공기, 더 맑은 미소?와 고요함, 지져김, 숲의 노래, 수 많은 별과 함께 하실수 있답니다. 또 다큐멘터리 사진을 전공한 주인장의 취향을 느낄수도 있구요. 책 보구, 음악 듣구, 모닥불을 피워도 좋구요...... 가장 좋은건 숲속에서 내려먹는 커피는 일품이랍니다.
하지만 남들에게 좋다구 나에게도 좋은곳은 아닐수도 있어요. '
        , 4, false, 4, 1, true, true, true, 20000, 2, 4);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (154200, '하조델리 앤 스테이' , '80년대 하조대의 명동이라 불리던 “조준길”에 위치한 민박집을 개조한 곳입니다.
정겨운 바닷가 마을 민박집의 모습을 유지한 곳으로 예약전 참고 부탁드립니다.
하조대 해수욕장 도보 2분!
서피비치 도보 15분!'
        , 2, false, 1, 1, true, true, true, 22000, 3, 1),
        (95400, '쉼이 필요할 때, 자연과 함께 힐링하기 좋은 Ram''s Gallery House' , '🌟코로나19 관련하여 방침에 위배 되지 않는 게스트님들에 한해 사전예약 받고자하오니 많은 협조 바랍니다.
🌱instagram : soulpa_ram
바로 앞 평창강과 산이 있는 조용하고 작은 마을 도돈리에 위치하고 있습니다.
영월(주천 기준) 차량 이용 시 약 20분, 평창읍(평창시외버스터미널)까지 약 10분, KTX 평창역과는 약 40분 거리에 위치하고 있습니다.
강변을 따라 산책 가능하며 20가구 내외가 있는 조용한 단독주택들이 있는 마을입니다.
도시에서 지친 마음을 힐링하기에 최적인 곳!👍
늦은 밤 하늘에서 쏟아질듯한 별을 감상하실 수 있어요:)'
        , 2, false, 2, 1, true, true, true, 15000, 3, 3),
        (78200, '특별한 손님을 위해 저희 부부는 현재 하루 한팀만을 받고 방역을 철저히 하고 있습니다.' , '도시생활에 지쳐 작은 시골마을로 내려온 저희 부부는
저희와 같은 사람들이 쉴 수 있는 공간을 마련하기로 했습니다.'
        , 4, false, 1, 1, true, true, true, 35000, 3, 1);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (61900, '나무를 엮어 시장 옥상에 여행자를 위한 공간을 만들었습니다' , '시장은 해산물이 많고 야채시장도 잘 갖추어져 있어 식재료를 손쉽게 구해 드실 수 있습니다'
        , 2, false, 1, 1, true, true, true, 10000, 4, 1),
        (111200, '숲이 있는 가(家)' , '20여 년 전에 지어진 고택에 자리한 ‘숲이 있는 家’는 운치 있는 돌담과 정겨운 장독대가 눈길을 끄는 뒷동산에 둘러싸여 있어 그 자체로 힐링의 공간입니다.'
        , 4, false, 0, 1, true, true, true, 15200, 4, 3),
        (94100, '금강변이 내려다보이는 뛰어난 자연' , '경관의 목조주택(8평)으로 여름에는 시원하고 겨울에는 따뜻합니다.
건물 전면의 데크(7평)와 앞 마당의 잔디는 캠핑의 기분을 느끼게 해줍니다.'
        , 4, false, 2, 1, true, true, true, 19400, 4, 4);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (193200, '코로나 바이러스 이유로 서로간의 안전상 저희가족들끼리만 사용하다가 4월부터 다시 오픈합니다. 변수들을 대비해 소독도 매일하고 있으니 안심하시고 예약해주세요**' , '이 숙소는 저희 가족의 별장입니다. 거실창 밖으로 탁 트인 바다가보이며, 집 바로옆으로 RCE 세자트라숲이 있어 산책하기 좋습니다. 숲길을 걸어가다보면 이순신공원으로 연결되어 있습니다. 마을 전체가 조용하구요. 집앞 방파제에서 낚시배들이 출발합니다. 통영IC에서 차로 5분거리, 주요관광지(동피랑,중앙시장 등)8분거리, 롯데마트에서 차로 5분거리에 위치하고있습니다. 저희 숙소는 자차 이용하셔야 편하세요. 택시이용하시면 시외버스터미널에서 숙소까지 10분거리쯤 됩니다. :)'
        , 2, false, 1, 1, true, true, true, 25000, 5, 2),
        (21500, '비슬산 자락 조용한 마을에 위치한 전원주택입니다.' , '마음의 평화를 얻고, 도심에서 벗어나 삶의 여유를 느끼고 싶을때 방문해주세요.
•힘든 도시 생활에 지친 몸과 마음, 기댈곳 없는 삶속에서 그리운남자(그리운선비:그린비)에게 기대어 쉴수있는 힐링되는 공간이길 소망합니다.'
        , 6, false, 3, 1, true, true, true, 18000, 5, 1),
        (33200, '손으로 지은 보기드문 코브흙집' , '마산합포구에서 30분거리 서북산 자락의 산골에 위치한 전망이 좋은 흙집입니다. '
        , 4, false, 1, 1, true, true, true, 12000, 5, 1);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (42300, '동해바다가 내려다 보이는글램핑 산장' , '동해바다가 한 눈에 내려다 보이는 산자락에 있는
산장이었는데 지난 겨울 화재가 발생해서
초대형 글램핑 텐트 숙소로 리오픈합니다.
인연이 있다면 최고의 일출과 월출을 보실 수 있습니다'
        , 4, false, 3, 1, true, true, true, 9000, 6, 3),
        (490300, '고층시티뷰/아늑한공간/무료주차/5G Wifi' , '구미ic인접, 구미역 10분, 구미터미널 5분
3사 대형마트 인접, 금오산올레길 10분거리
건물 내 주차가능 고층 멋진 시티뷰'
        , 2, false, 2, 1, true, true, true, 12000, 6, 1),
        (173000, '울진 한적한 바닷가 마을의 목조주택 #2인전용독채 #복층구조' , '경북 울진군 기성면, 조용한 바닷가 마을에 위치한
복층구조의 목조주택입니다.'
        , 2, false, 1, 1, true, true, true, 13000, 6, 1);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (39100, '셀프체크인 럭셔리 독채한옥' , '호선당은 지드래곤의 드림하우스 가운데 한곳으로 선정된 한국 유일의 숙소입니다. 또한 담양군에 등록된 농촌민박 숙소입니다.'
        , 2, false, 1, 1, true, true, true, 25000, 7, 4),
        (153200, '가족이 머물기 좋은 땅끝 해남의 작은 한옥민박' , '산과 들과 바다가 함께 어우러진 아름다운 땅끝 해남김치마을의 작은 한옥 산들바다애는 마당옆 편백숲에서 전해오는 그윽한 향기와 새들의 지저귐이 함께하는 힐링공간입니다.
단독으로 쓰실수 있는 정자와 아이들이 좋아하는 다락방, 다양한 전통놀이를 함께 즐기실수 있는 가족형 공간으로 제공되는 쌀과 김치, 각종 양념류로 간단한 식사가 가능하십니다.'
        , 4, false, 1, 1, true, true, true, 15000, 7, 2),
        (117300, '정원이 예쁜 장성 편백숲속 목조 독채펜션' , '백양사와 차로 10분, 담양 죽녹원, 메타프로방스와 15분, 고창과 정읍은 30분 거리에 위치하고 있습니다.
담양여행, 단풍으로 유명한 백양사와 내장사 여행을 계획 중이신 분들께 추천드리며 장성군 내에 있어 상무대 면회 오시는 분들께도 강추합니다!!'
        , 4, false, 1, 1, true, true, true, 21000, 7, 3);

INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (150300, '전주 객리단길▪동가STAY▪전주 감성 숙소 / 뷰 좋은 숙소 / 고즈넉한 분위기' , '고즈넉한 느낌의 전통 한옥, 한국 고유의 고풍스러움과
감성 가득한 숙소입니다.'
        , 2, true, 1, 1, true, true, true, 10000, 8, 4),
        (90700, '테라스가 있는 아늑한 공간, 오쉐르 [osher]' , '여행은 언제나 설레고 행복한 일이죠!
그리고 그 행복한 시간을 든든하게 받쳐주기
위해선 편안하고 쾌적한 숙소를 고르는것도
중요합니다'
        , 2, false, 2, 1, true, true, true, 20000, 8, 1),
        (297100, '진안 고원의 아름다운 #독채, 소안(少安)' , '이 곳은 사랑하는 사람들과
편안하게 쉬어갈 수 있는 독채, 소안(少安)'' 입니다♥
바쁜 일상에서 벗어나 자연을 느껴보세요.'
        , 6, false, 3, 2, true, true, true, 15400, 8, 2);

INSERT INTO reservation(room_id, check_in, check_out)
values (1, '2021-05-27', '2021-05-28'),
       (2, '2021-06-02', '2021-06-07'),
       (5, '2021-05-30', '2021-06-10');
