Mid SERIAL NOT NULL REFERENCES Museums(Mid),
TeamName text NOT NULL,
PRIMARY KEY(Tid)
);

Drop table if exists TeamMembers;
CREATE TABLE TeamMembers(
Pid SERIAL NOT NULL REFERENCES People(Pid),
Tid SERIAL NOT NULL REFERENCES Teams(Tid),
PRIMARY KEY(Pid, Tid)
);

Drop table if exists Layers;
CREATE TABLE Layers(
Lid SERIAL NOT NULL,
GeoPeriod text NOT NULL REFERENCES DateSpecs(GeoPeriod),
RockType text NOT NULL,
PRIMARY KEY(Lid)
);

Drop table if exists Fossils;
CREATE TABLE Fossils(
Fid SERIAL NOT NULL,
SpeciesName text NOT NULL,
Tid SERIAL NOT NULL REFERENCES Teams(Tid),
Lid SERIAL NOT NULL REFERENCES Layers(Lid),
Quadrant INT NOT NULL,
DateFound date NOT NULL,
PRIMARY KEY(Fid)
);

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('John','Smith','Supervisor','PHD','Marist College')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Alan','Labouseur','Supervisor','PHD','Marist College')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Marcus','Zimmermann','Paleontologist','Masters','Harvard University')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('G','Leaden','Geologist','PHD','University of Pheonix')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Troy','Demers','Supervisor','Masters','Dartmouth University')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('William','Wise','Supervisor','PHD','Berkley College')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Kevin','Kleinschmidt','Paleontologist','Masters','Culinary Institute of America')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('James','Bond','Paleontologist','PHD','Classified University of London')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Sean','Connery','Supervisor','Masters','Prinston University')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Daniel','Craig','Geologist','Masters','Dutchess County Community College')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Ian','Sniffen','Supervisor','PHD','Boston College')
;

INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Brandon','Litwin','Geologist','Masters','Clown College')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Maria','Valenti','Paleontologist','PHD','Boston University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Danielle','Markus','Supervisor','PHD','Tufts University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Taylor','Albert','Supervisor','PHD','Brown University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Olivia','Milano','Paleontologist','Masters','Johns Hopkins University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Doctor','Pepper','Supervisor','PHD','Bard College')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Elizabeth','Garrison','Geologist','Masters','Vassar College')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Jeffrey','Lupia','Supervisor','PHD','University of Pennsylvania')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Margaret','Caulfield','Supervisor','PHD','Adelphi University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Ariana','Singer','Supervisor','PHD','New York University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Frankie','Amodio','Geologist','Masters','Rutgers University')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Jamie','Cross','Paleontologist','Masters','University of Arizona')
;
INSERT INTO People (FirstName,LastName,FieldPosition,DegreeLevel,SchoolAttended) 
VALUES ('Harry','Potter','Geologist','Masters','Hogwarts School of Witchcraft and Geology')
;



INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Quaternary','Cenozoic','Phanerozoic','[0,1500000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Neogene','Cenozoic','Phanerozoic','(1500000,23000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Paleogene','Cenozoic','Phanerozoic','(23000000,66000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Cretaceous','Mesozoic','Phanerozoic','(66000000,145000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Jurassic','Mesozoic','Phanerozoic','(145000000,201000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Triassic','Mesozoic','Phanerozoic','(201000000,252000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Permian','Paleozoic','Phanerozoic','(252000000,299000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Carboniferous','Paleozoic','Phanerozoic','(299000000,359000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Devonian','Paleozoic','Phanerozoic','(359000000,419000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Silurian','Paleozoic','Phanerozoic','(419000000,444000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Ordovician','Paleozoic','Phanerozoic','(444000000,485000000]')
;
INSERT INTO DateSpecs (GeoPeriod, GeoEra, GeoEon, ApproxAge)
VALUES ('Cambrian','Paleozoic','Phanerozoic','(485000000,541000000]')
;

INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Marcus Rock Museum', 'Poughkeepsie', 'New York', 'Quaternary')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Marcus Shiny Rock Museum', 'Carbondale', 'Pennsylvania', 'Neogene')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Marcus Fossil Museum', 'San Diego', 'California', 'Paleogene')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Antons Museum of Rocks', 'Chicago', 'Illinois', 'Cretaceous')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Antons Museum of Shiny Rocks', 'Greensboro', 'North Carolina', 'Jurassic')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Antons Rock Museum', 'Warwick', 'Rhode Island', 'Triassic')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Marcus Museum of Rocks', 'Danbury', 'Connecticut', 'Permian')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Marcus Museum of Shiny Rocks', 'Salem', 'Oregon', 'Carboniferous')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Antons Shiny Rock Museum', 'Kansas City', 'Kansas', 'Devonian')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Antons Fossil Museum', 'Dallas', 'Texas', 'Silurian')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Antons Museum of Fossils', 'Pheonix', 'Arizona', 'Ordovician')
;
INSERT INTO Museums(Name, City, State, GeoPeriod)
VALUES('Marcus Museum of Fossils', 'Colorado City', 'Colorado', 'Cambrian')
;

INSERT INTO TEAMS (TeamName)
VALUES ('Team Quaternary')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Neogene')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Paleogene')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Cretaceous')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Jurassic')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Triassic')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Permian')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Carboniferous')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Devonian')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Silurian')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Ordovician')
;
INSERT INTO TEAMS (TeamName)
VALUES ('Team Cambrian')
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (1,1)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (2,2)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (5,3)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (6,4)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (9,5)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (11,6)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (14,7)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (15,8)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (17,9)
;

INSERT INTO TeamMembers(Pid, Tid)
VALUES (19,10)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (20,11)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (21,12)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (3,1)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (4,2)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (7,3)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (8,4)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (10,5)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (12,6)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (13,7)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (16,8)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (18,9)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (22,10)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (23,11)
;
INSERT INTO TeamMembers(Pid, Tid)
VALUES (24,12)
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Quaternary', 'Sandstone')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Neogene', 'Limestone')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Paleogene', 'Shale')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Cretaceous', 'Sandstone')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Jurassic', 'Dolomite')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Triassic', 'Limestone')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Permian', 'Dolomite')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Carboniferous', 'Shale')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Devonian', 'Sandstone')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Silurian', 'Shale')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Ordovician', 'Limestone')
;
INSERT INTO Layers(GeoPeriod, RockType)
VALUES ('Cambrian', 'Dolomite')
;

INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 1, 1, 12, '2016-12-08')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 1, 1, 13, '2016-12-09')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 1, 1, 7, '2016-12-13')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 2, 1, 4, '2016-12-08')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 3, 1, 8, '2016-12-19')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 3, 1, 2, '2016-12-07')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 4, 1, 9, '2016-12-12')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 5, 1, 16, '2016-12-17')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 5, 1, 13, '2016-12-18')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 6, 1, 15, '2016-12-14')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 7, 1, 8, '2016-12-19')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 8, 1, 2, '2016-12-16')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 9, 1, 1, '2016-12-21')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 10, 1, 2, '2016-12-23')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 12, 1, 13, '2016-12-14')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Pecten Gibbus', 12, 1, 6, '2016-12-16')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 5, 1, 3, '2016-12-06')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 1, 1, 5, '2016-12-09')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 7, 1, 14, '2016-12-11')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 11, 1, 12, '2016-12-15')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 1, 1, 1, '2016-12-18')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 5, 1, 7, '2016-12-19')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Neptunea Tabulata', 5, 1, 9, '2016-12-16')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Calyptraphorus Velatus', 3, 2, 9, '2016-12-18')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Venericardia Planicosta', 10, 3, 9, '2016-12-13')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Scaphites Hippocrepis', 12, 4, 9, '2016-12-09')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Nerinea Trindosa', 2, 5, 9, '2016-12-10')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Trophites Subbullatus', 8, 6, 9, '2016-12-11')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Trophites Subbullatus', 5, 6, 9, '2016-12-18')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Leptodus Americanus', 6, 7, 9, '2016-12-22')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Dictyoclostus Americanus', 1, 8, 9, '2016-12-20')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Mucrospirifer Mucronatus', 4, 9, 9, '2016-12-19')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Hexamoceras Hertzeri', 11, 10, 9, '2016-12-09')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Bathyurus Extans', 7, 11, 9, '2016-12-06')
;
INSERT INTO Fossils(SpeciesName, Tid, Lid, Quadrant, DateFound)
VALUES('Paradoxides Pinus', 9, 12, 9, '2016-12-07')
;


