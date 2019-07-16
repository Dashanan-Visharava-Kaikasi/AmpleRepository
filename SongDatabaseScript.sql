create table LanguageTable
(
Id int primary key identity(1,1) not null,
LanguageName nvarchar(100) NOT NULL UNIQUE
);

create table Songs
(
Id int primary key Identity(1,1) NOT NULL,
SongName nvarchar(100) NOT NULL,
SongLanguage int foreign key references LanguageTable(Id)
);

create table SongArtist
(
Id int primary key identity(1,1) not null,
FName nvarchar(100) Not NULL,
LName nvarchar(100) NOT NULL
);

create table ArtistDetails
(
Id int primary key identity(1,1) not null,
Age int not null,
ArtistImage nvarchar(255) Not null,
ArtistId int foreign key references SongArtist(Id)
);

create table ArtistSongRelation
(
Id int primary key identity(1,1) not null,
SongId int foreign key references Songs(Id),
ArtistId int foreign key references SongArtist(Id)
);