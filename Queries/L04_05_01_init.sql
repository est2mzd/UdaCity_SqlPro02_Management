CREATE TABLE "denormalized_people" (
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "emails" VARCHAR
);

CREATE TABLE "people" (
  "id" SERIAL,
  "first_name" VARCHAR,
  "last_name" VARCHAR
);

CREATE TABLE "people_emails" (
  "person_id" INTEGER,
  "email_address" VARCHAR
);

INSERT INTO "denormalized_people" ("first_name", "last_name", "emails") VALUES 
('Minerva', 'Burks', 'velit@Cras.org,vel.sapien.imperdiet@vel.edu,est.Mauris@sagittissemperNam.net'),
('Carolyn', 'Travis', 'ornare@tristiquesenectus.ca,Mauris.quis.turpis@milacinia.edu,mauris@auctorullamcorpernisl.ca'),
('Ria', 'Hogan', 'mauris.Morbi@loremsitamet.org,placerat@etlacinia.edu,cursus.diam@Aenean.edu'),
('Rinah', 'Watts', 'Aenean.egestas.hendrerit@Phasellus.ca,dignissim.lacus@Donectincidunt.org,leo.Morbi@vitaenibhDonec.ca'),
('Maisie', 'Salas', 'Donec@Cum.com,sem@mattis.co.uk,a.magna@odio.net'),
('Jillian', 'Daugherty', 'Etiam@utmiDuis.org,Phasellus.elit@euturpis.co.uk,Nam.interdum@PhasellusnullaInteger.ca'),
('Harding', 'Bowen', 'diam@ligulaconsectetuer.com,Cras@adipiscing.net,et@dolorsitamet.ca'),
('Honorato', 'Herman', 'a.purus.Duis@acurnaUt.com,tristique@malesuadaiderat.edu,Donec.consectetuer.mauris@felispurus.net'),
('September', 'Joyner', 'ligula@fringilla.org,accumsan.neque.et@Nullatinciduntneque.com,aliquet@ligulaeuenim.org'),
('Alden', 'Mercado', 'semper.pretium@elitAliquam.net,malesuada@Sedmolestie.co.uk,aliquet.lobortis@duiFusce.co.uk'),
('Ferdinand', 'Todd', 'Duis.risus.odio@erat.net,et.ultrices@Nullaeget.ca,ut@tortor.edu'),
('Macy', 'Poole', 'eget.varius.ultrices@enim.org,sagittis.semper.Nam@nec.co.uk,orci@orciDonecnibh.edu'),
('Kylynn', 'Schroeder', 'urna.et@Nullamscelerisqueneque.edu,Aliquam@rutrumurna.com'),
('Deirdre', 'Kent', 'ornare.placerat.orci@lacusMaurisnon.org'),
('Casey', 'Gordon', 'congue@ornare.org'),
('Yolanda', 'Olson', 'Pellentesque@duinec.co.uk'),
('Gisela', 'Cardenas', 'turpis.nec@sociisnatoquepenatibus.co.uk'),
('Illana', 'Mcguire', 'hendrerit.neque@faucibusid.ca,amet@nuncsed.ca,mauris.eu.elit@Duisa.net'),
('Isabella', 'Woodard', 'libero.lacus@et.ca'),
('Xenos', 'Waller', 'sodales@vulputatenisisem.org'),
('Charde', 'Wall', 'adipiscing.elit.Etiam@arcu.com,vulputate@fringillaporttitorvulputate.edu,ac.fermentum.vel@nec.co.uk'),
('Abigail', 'Middleton', 'Mauris@eleifend.org,Aliquam@Suspendisse.net,In.ornare@et.com'),
('Noelani', 'Mccoy', 'velit@utnisi.com,enim.Mauris.quis@quistristiqueac.net,taciti@pharetrasedhendrerit.net'),
('Jermaine', 'Salas', 'penatibus.et.magnis@ipsumacmi.ca,in@scelerisque.net,suscipit.est.ac@lectusquismassa.net'),
('Idola', 'Fulton', 'sit@ridiculusmusProin.co.uk,magna.sed@disparturientmontes.edu,a.magna@acmetusvitae.org'),
('Brendan', 'Mcneil', 'dictum.eleifend@tortoratrisus.edu,ut.dolor@ullamcorper.com,Sed@ornaretortorat.org'),
('Zelenia', 'Delaney', 'commodo.hendrerit@molestiedapibus.net,malesuada.fames.ac@lacusEtiambibendum.com,nisi.Aenean@orciUtsemper.com'),
('Stewart', 'Stuart', 'posuere.at@semmagnanec.edu,sem.elit@elitfermentum.com,euismod@tellusimperdiet.edu'),
('Lenore', 'Talley', 'massa.lobortis@Sednuncest.co.uk,dui.quis.accumsan@magnaa.edu,ridiculus@justosit.org'),
('Francis', 'Daugherty', 'mollis.Integer.tincidunt@tinciduntorci.net,ad.litora.torquent@erateget.ca'),
('Laura', 'Harrington', 'nulla.vulputate.dui@Praesenteunulla.co.uk,per.conubia@nibhQuisquenonummy.co.uk'),
('Zane', 'Merritt', 'lacus.Quisque.purus@necenim.co.uk,risus.Duis.a@felisNullatempor.org'),
('Hall', 'Bolton', 'Pellentesque.habitant.morbi@quamelementum.com,dui@nisimagnased.net'),
('Todd', 'West', 'arcu.Sed@et.org,viverra.Donec.tempus@laoreet.org'),
('Montana', 'Mcclure', 'ante.dictum.cursus@hendrerit.org,Lorem@sapienNuncpulvinar.ca'),
('Noel', 'Skinner', 'ac.mattis@nibhAliquamornare.com,Etiam.gravida.molestie@sapienimperdietornare.com'),
('Zoe', 'Bryant', 'dictum@nullamagnamalesuada.edu,fringilla.Donec.feugiat@netus.ca'),
('Kelly', 'Dunlap', 'luctus.Curabitur.egestas@DonecegestasAliquam.co.uk,eleifend.nec@nullaat.ca'),
('Jolie', 'Kline', 'varius.orci.in@Donec.org,Phasellus@nec.ca'),
('Blossom', 'Frederick', 'elementum.dui@Quisque.co.uk,augue.Sed.molestie@habitant.net'),
('Aiko', 'Ferrell', 'tellus.sem.mollis@ullamcorperDuis.net,aliquam.iaculis.lacus@molestie.ca'),
('Charity', 'Wong', 'Curae.Donec.tincidunt@lacusUtnec.org,purus@acfacilisis.ca'),
('Gray', 'Rutledge', 'erat@auctor.edu,adipiscing.elit@Duiscursus.org'),
('Oscar', 'Schneider', 'posuere.vulputate.lacus@scelerisqueloremipsum.com,elit@mi.org'),
('Bethany', 'Mitchell', 'metus@tempus.com,lectus.convallis.est@estacmattis.org'),
('Zoe', 'Wall', 'nulla@NullafacilisisSuspendisse.edu,ut.molestie@Loremipsum.net'),
('Tyrone', 'Whitfield', 'dignissim@augueeutellus.com,urna.et.arcu@sitamet.ca'),
('Lucius', 'Velez', 'felis.purus@Nullasemper.net,Sed.diam@cursus.org'),
('Geoffrey', 'Lee', 'ultricies@nibhAliquam.org,netus@etnetus.edu'),
('Sean', 'Jordan', 'nulla@nislsemconsequat.org,natoque.penatibus@libero.net'),
('Sybil', 'Callahan', 'augue@SednequeSed.org,nisi@a.net'),
('Aladdin', 'Patrick', 'adipiscing.fringilla@turpisnonenim.co.uk,ipsum.cursus@feugiat.edu'),
('Galena', 'Bradford', 'augue.ut.lacus@risusQuisquelibero.edu,Pellentesque@lectusantedictum.org'),
('Brenden', 'Warner', 'condimentum@duiquisaccumsan.ca,Nulla.tempor.augue@eu.net'),
('TaShya', 'Sanchez', 'convallis.ligula.Donec@ipsum.co.uk,vitae@Pellentesqueultriciesdignissim.edu'),
('Shana', 'Pope', 'leo.Vivamus@sitamet.co.uk,quis.arcu.vel@Praesent.edu'),
('Rhea', 'Malone', 'lorem.fringilla.ornare@Nunc.ca,eu.ligula.Aenean@viverra.co.uk'),
('Ayanna', 'Cobb', 'eget.metus.In@Aeneanegestas.edu,ornare@sociis.org'),
('Graiden', 'Bird', 'non.cursus@Duismienim.net,erat.nonummy.ultricies@ullamcorpermagna.co.uk'),
('Jolie', 'Wilson', 'quis.accumsan.convallis@tortordictum.co.uk,lacus.Quisque.purus@Praesentinterdum.ca'),
('Erica', 'Barry', 'magna.Cras.convallis@vehiculaaliquet.edu,tincidunt.dui@montes.org'),
('Moana', 'Ayers', 'aliquam.iaculis@Sed.ca,risus.Donec.egestas@Donecdignissim.org'),
('Justine', 'Dyer', 'ullamcorper.velit@Integermollis.com,est.arcu@posuere.ca'),
('Veronica', 'Allen', 'elementum@Duis.net,nulla@lorem.com'),
('Dana', 'Leblanc', 'convallis.in.cursus@Quisquepurussapien.net,Fusce.dolor@cubilia.edu'),
('Kai', 'Goodwin', 'sit@sociisnatoque.com,orci.adipiscing@congue.com'),
('Phillip', 'Edwards', 'dignissim@necleo.net,nulla.magna.malesuada@Vivamusnon.org'),
('Amber', 'Larson', 'non.sollicitudin.a@euismod.org,aliquet.nec@vitae.net'),
('Ina', 'Cain', 'consequat.dolor.vitae@faucibusorci.edu,lobortis@aptenttaciti.org'),
('Catherine', 'Reilly', 'velit.egestas@sem.ca,dictum.sapien@lobortis.net'),
('Nevada', 'Pruitt', 'id.mollis@senectuset.org,nec.urna.suscipit@dignissimtemporarcu.edu'),
('Yvonne', 'Howell', 'sem.Nulla@adipiscingnon.com,In.mi.pede@eleifendegestas.edu'),
('Irene', 'Jefferson', 'libero.et.tristique@Craseutellus.org,adipiscing.enim.mi@Morbinonsapien.edu'),
('Xander', 'Tate', 'congue.a@elitpellentesque.edu,vel@interdumligula.net'),
('Shelly', 'Santiago', 'lacus@amet.co.uk,vestibulum@nequenonquam.org'),
('Charde', 'Christian', 'risus.Donec@ante.co.uk,augue.id@facilisiSedneque.org'),
('Rashad', 'Tyler', 'eget@Donec.org,nonummy.Fusce@nequeseddictum.org'),
('Marvin', 'Banks', 'Duis.at@feugiat.ca,egestas.hendrerit@Donecnibh.org'),
('Gage', 'Dillon', 'Fusce@Suspendisse.com,Nullam.feugiat@Cras.co.uk'),
('Cassady', 'Gates', 'Quisque.porttitor.eros@ultrices.edu,lobortis.Class.aptent@necurna.ca'),
('Margaret', 'Saunders', 'magna.Praesent@ornare.ca,eu.ultrices@NullamnislMaecenas.edu'),
('Leslie', 'Nichols', 'mi.ac.mattis@duiFusce.com,Curabitur.egestas.nunc@augueeutempor.net'),
('Keith', 'Shelton', 'pede.malesuada.vel@atiaculisquis.co.uk,per@necorciDonec.ca'),
('Brody', 'Craig', 'fermentum.fermentum@auctorvelit.com,egestas.lacinia@semperNam.edu'),
('Amethyst', 'Mcgee', 'leo.Morbi@orcilobortis.ca,magna@velitin.co.uk'),
('Lucas', 'Byrd', 'vitae.purus@scelerisqueneque.edu,magna.Cras.convallis@hendreritid.edu'),
('Grant', 'Morgan', 'nulla.magna@erat.com,et.magnis.dis@dolorquamelementum.org'),
('Tad', 'Morrison', 'Etiam.gravida.molestie@sagittislobortismauris.com,augue.scelerisque.mollis@eu.edu'),
('Alea', 'Galloway', 'mi.Aliquam@temporerat.edu,mauris.sit@sempercursusInteger.com'),
('Stacy', 'Knapp', 'a.sollicitudin.orci@cursus.com,luctus.sit@habitantmorbi.net'),
('Macon', 'Greer', 'fringilla.ornare.placerat@lobortis.co.uk'),
('Mariam', 'Blanchard', 'Aliquam@convallis.org'),
('Adrian', 'Mccullough', 'nunc.interdum.feugiat@purusaccumsaninterdum.org'),
('Jessamine', 'House', 'eget.odio@nisl.co.uk'),
('Wesley', 'Raymond', 'nibh.vulputate@nectellusNunc.net'),
('Bianca', 'Marsh', 'Nam@scelerisque.co.uk'),
('Dante', 'Velazquez', 'ac.turpis.egestas@pede.org'),
('Molly', 'Oliver', 'eu.odio@et.edu'),
('Sylvester', 'Cantu', 'lacus.vestibulum@dictummagna.com'),
('Nicole', 'Boone', 'sodales.Mauris.blandit@malesuada.ca');