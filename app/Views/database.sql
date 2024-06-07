CREATE DATABASE zakiyah_portfolio;

USE zakiyah_portfolio;

CREATE TABLE resume
(
    id          INT             NOT NULL AUTO_INCREMENT,
    name        VARCHAR(100)    NOT NULL,
    age         INT             NOT NULL,
    phone       VARCHAR(100)         NOT NULL,
    website     VARCHAR(100)    NOT NULL,
    birthday    VARCHAR(100)    NOT NULL,
    country     VARCHAR(100)    NOT NULL,
    email       VARCHAR(100)    NOT NULL,
    work        VARCHAR(100)    NOT NULL,
    PRIMARY KEY(id)
) engine Innodb;

SELECT * FROM resume;

ALTER TABLE resume ADD COLUMN (address VARCHAR(255) NOT NULL);

DROP TABLE resume;

INSERT INTO resume (name, age, phone, website, birthday, country, email, work, address)
 VALUE ('Siti Zakiyah Alkarimah', 23, '081573913380','www.sitiZakiyah.com','01 April 2001','indonesia', 'szakiyyahalkarimah@gmail.com', 'student', "jl moh amir km01 rt02/01 Desa Berekah Kec Bojonggenteng Kab Sukabumi, West Java" );

SELECT * FROM resume;
DESC resume;

USE zakiyah_portfolio;

CREATE TABLE education 
(
    id INT AUTO_INCREMENT NOT NULL,
    nama_sekolah VARCHAR(100) NOT NULL,
    tahun_ajaran VARCHAR(100) NOT NULL,
    alamat_sekolah VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
)engine Innodb;

SELECT * FROM education;
DESC education;

DROP TABLE education;

INSERT INTO education (nama_sekolah, tahun_ajaran, alamat_sekolah)
VALUE   ('MI Bojonggenteng', "2007-2013", 'bojogenteng,Kab Sukabumi'),
        ('Mts Al Maarij', "2013-2016", 'Parung Kuda, Kab Sukabumi'),
        ('SMA negeri 1 parungkuda', "2016-2019", 'Parung Kuda, Kab Sukabumi');

INSERT INTO education (nama_sekolah, tahun_ajaran, alamat_sekolah)
VALUE ('Muhammadiyah Sukabumi University', '2021-Current', 'Sukabumi, Wes Java');