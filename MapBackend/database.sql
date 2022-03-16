CREATE DATABASE colleges;

CREATE TABLE colleges(
    sl_ SERIAL NOT NULL,
    institute VARCHAR(255),
    district VARCHAR(255),
    subdivision VARCHAR(255),
    block VARCHAR(255),
    status VARCHAR(255),
    address VARCHAR(255),
    contact VARCHAR(255),
    email VARCHAR(255)
);

INSERT INTO colleges (sl_,institute,district,subdivision,block,status,address,contact,email) VALUES(4,'WEST BENGAL SURVEY INSTITUTE','HOOGHLY','Chinsurah Sadar','Chinsurah - Mogra','Goverment','P.O.-Bandel, Dist.-Hooghly, PIN - 712123.','033-26312588','bandelsurveycivil@yahoo.com');