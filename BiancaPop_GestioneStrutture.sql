--Week 4 - Data

--Creare un database(NomeCognome.GestioneStrutture) che permetta di gestire le prenotazioni di varie 
--strutture.

--Le strutture hanno un nome, la città in cui si trovano, lo stato in cui si trovano, la tipologia
--della struttura, i servizi che offrono e le formule di pernottamento consentite.

--Le strutture possono essere agriturismi, hotel, casa vacanze, residence.
--I servizi che possono offrire sono piscina, wifi, cassaforte, spa&centro benessere, animali ammessi.
--Le tipologie di pernottamento consentite sono: solo pernottamento, pernottamento e prima colazione,
--mezza pensione, pensione completa.

--Ogni struttare avrà quindi un costo relativo a ogni tipo di pernottamento offerto espresso 
--per persona a giorno.

-- Creare una tabella Clienti per gestire le informazioni del cliente che effettua la 
--prenotazione(nome, cognome, data di nascita).




create table [dbo].[Tipologie]
(	
	[Id]                   [int] primary key identity(1,1),
	[Descrizione]          [nvarchar](50) not null
)
create table [dbo].[Strutture]
(
	[Id]                   [int] primary key identity(1,1),
	[Nome]                 [nvarchar](50) not null,
	[Città]                [nvarchar](50) not null,
	[Stato]                [nvarchar](50) not null,
	[IdTipologia]          [int] not null constraint FK_Tipologia foreign key references Tipologie(Id)
)

create table [dbo].[Servizi]
(
	[Id]                   [int] primary key identity(1,1),
	[Descrizione]          [nvarchar](50) not null
)

create table [dbo].[TipiPernottamento]
(
	[Id]                   [int] primary key identity(1,1),
	[Descrizione]          [nvarchar](50) not null
)

create table [dbo].[StrutturePernottamenti]
(
	[Id]                   [int] primary key identity(1,1),
	[IdStruttura]          [int] not null constraint FK_Struttura foreign key references Strutture(Id),
	[IdTipoPernottamento]  [int] not null constraint FK_Pernottamento foreign key references TipiPernottamento(Id)
)

create table [dbo].[CostiStrutturePernottamenti]
(
	[CostoPersona/Die]     [decimal] not null,
	[IdSoluzione]          [int] not null constraint FK_StrutturePernottamenti foreign key references StrutturePernottamenti(Id)
)

create table [dbo].[ServiziStrutture]
(
	[IdStruttura]          [int] not null constraint FK_StrutturaServizio foreign key references Strutture(Id),
	[IdServizio]           [int] not null constraint FK_ServizioStruttura foreign key references Servizi(Id)
)

create table [dbo].[Clienti]
(
	[Id]                   [int] primary key identity(1,1),
	[Nome]                 [nvarchar](50) not null,
	[Cognome]              [nvarchar](50) not null,
	[DataDiNascita]        [date] not null
)

create table [dbo].[Prenotazioni]
(
	[Id]                   [int] primary key identity(1,1),
	[IdCliente]            [int] not null constraint FK_Cliente foreign key references Clienti(Id),
	[IdStruttura]          [int] not null constraint FK_StrutturaPrenotata foreign key references Strutture(Id),
	[DataArrivo]           [date] not null,
	[DataPartenza]         [date] not null,
	[NumeroPersone]        [int] not null,
	[IdTipoPernottamento]  [int] not null constraint FK_TipoPernottamento foreign key references StrutturePernottamenti(Id)
)

insert into dbo.Tipologie
values
		('Agriturismo'),
		('Hotel'),
		('Casa vacanze'),
		('Residence')

insert into dbo.Servizi
values 
		('Piscina'),
		('Wi-fi'),
		('Cassaforte'),
		('Spa & Centro benessere'),
		('Animali ammessi')

insert into dbo.TipiPernottamento
values 
		('Solo pernottamento'),
		('Pernottamento e prima colazione'),
		('Mezza pensione'),
		('Pensione completa')

insert into dbo.Strutture
values 
		('Hotel Il Campanile','Cherasco','Italia',2),
		('Ca'' Nadin Agriturismo', 'San Damiano d''Asti','Italia',1),
		('Wenceslas Square Hotel','Praga','Repubblica Ceca',2),
		('Residence Caffè Savona','Alba','Italia',4),
		('Villa El Jaguel','Tenerife','Spagna',3),
		('Tenuta Pian D''Attesio','Castelletto Soprano','Italia',1),
		('Au Royal Mad','Parigi','Francia',4),
		('Rainforest Eco Cabin','Volcano','Hawaii',3)


insert into dbo.ServiziStrutture
values 
		(1,2),
		(1,3),
		(1,4),
		(1,5),
		(2,1),
		(2,5),
		(3,1),
		(3,2),
		(3,3),
		(3,4),
		(4,1),
		(4,2),
		(4,5),
		(5,1),
		(5,2),
		(5,5),
		(6,1),
		(6,2),
		(6,3),
		(6,5),
		(7,1),
		(7,2),
		(7,3),
		(8,1),
		(8,2),
		(8,3),
		(8,4),
		(8,5)

insert into dbo.StrutturePernottamenti
values 
		(1,1),
		(1,2),
		(1,3),
		(1,4),
		(2,1),
		(2,2),
		(2,3),
		(3,1),
		(3,2),
		(3,3),
		(3,4),
		(4,1),
		(4,2),
		(4,3),
		(5,1),
		(6,1),
		(6,2),
		(6,3),
		(6,4),
		(7,1),
		(7,2),
		(7,3),
		(8,1),
		(8,2)

insert into dbo.CostiStrutturePernottamenti
values 
		(113,1),
		(125,2),
		(170,3),
		(265,4),
		(67,5),
		(89,6),
		(118,7),
		(230,8),
		(256,9),
		(320,10),
		(400,11),
		(123,12),
		(140,13),
		(187,14),
		(156,15),
		(87,16),
		(99,17),
		(156,18),
		(200,19),
		(321,20),
		(350,21),
		(400,22),
		(456,23),
		(489,24)

insert into dbo.Clienti
values
		('Mario','Rossi','1994-02-01'),
		('Marco','Verdi','1975-12-09'),
		('Rosa','Bianchi','1981-04-23'),
		('Lino','Varrano','1964-11-26'),
		('Carmine','Salvi','1998-05-19')

--Creare una stored procedure che, scelto un servizio, mostri tutte le strutture che lo offrono.

create procedure ShowStruttureWithServizi
@servizio nvarchar(50)
as
select 
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.ServiziStrutture ss
on s.Id = ss.IdStruttura
join dbo.Servizi se
on ss.IdServizio = se.Id
where se.Descrizione = @servizio

-- richiamo stored con i diversi servizi 

exec ShowStruttureWithServizi 'Piscina'
exec ShowStruttureWithServizi 'Wi-fi'
exec ShowStruttureWithServizi 'Cassaforte'
exec ShowStruttureWithServizi 'Spa & Centro benessere'
exec ShowStruttureWithServizi 'Animali ammessi'

--Creare una stored procedure che, scelto un tipo di struttura, mostri le strutture di quel tipo.

create procedure ShowStruttureDiUnaCertaTipologia
@tipologia nvarchar(50)
as
select 
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.Tipologie t
on t.Id = s.IdTipologia
where t.Descrizione = @tipologia

-- richiamo stored con diverse tipologie

exec ShowStruttureDiUnaCertaTipologia 'Agriturismo'
exec ShowStruttureDiUnaCertaTipologia 'Hotel'
exec ShowStruttureDiUnaCertaTipologia 'Casa vacanze'
exec ShowStruttureDiUnaCertaTipologia 'Residence'


--Creare una stored procedure che, scelto un tipo di pernottamento, mostri le strutture di quel tipo.

create procedure ShowStruttureConTipoPernottamento
@pernottamento nvarchar(50)
as
select distinct
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.StrutturePernottamenti sp
on s.Id = sp.IdStruttura
join dbo.TipiPernottamento tp
on sp.IdTipoPernottamento = tp.Id
where tp.Descrizione = @pernottamento


-- richiamo stored con diversi tipi pernottamento

exec ShowStruttureConTipoPernottamento 'Solo pernottamento'
exec ShowStruttureConTipoPernottamento 'Pernottamento e prima colazione'
exec ShowStruttureConTipoPernottamento 'Mezza pensione'
exec ShowStruttureConTipoPernottamento 'Pensione completa'


--Creare una stored procedure che scelta una struttura, una data di arrivo, una data di partenza 
--e il numero di persone e il tipo di pernottamento per cui si vuole prenotare, salvi le informazioni in una tabella 
--chiamata Prenotazioni.
--La stored dovrà tenere traccia anche delle informazioni del cliente che effettua la prenotazione.

create procedure InsertPrenotazioni
@nome nvarchar(50), @cognome nvarchar(50), @struttura nvarchar(50), @dataArrivo date, @dataPartenza date, @numeroPersone int, @tipoPernottamento nvarchar(50)
as
declare @cliente int 
set @cliente = (select Id from Clienti where Nome = @nome and Cognome = @cognome)
declare @strutturaId int
set @strutturaId = (select Id from Strutture where Nome = @struttura)
declare @spId int
set @spId = (select sp.Id from dbo.StrutturePernottamenti sp join dbo.TipiPernottamento tp on tp.Id = sp.IdTipoPernottamento where IdStruttura = @strutturaId and tp.Descrizione = @tipoPernottamento)
insert dbo.Prenotazioni
values (@cliente,@strutturaId,@dataArrivo,@dataPartenza,@numeroPersone,@spId)

-- fill tabella Prenotazioni con stored procedure

exec InsertPrenotazioni 'Mario','Rossi','Hotel Il Campanile','2022-02-18','2022-02-21',2,'Mezza pensione'
exec InsertPrenotazioni 'Marco','Verdi','Ca'' Nadin Agriturismo','2022-02-22','2022-02-28',4,'Pernottamento e prima colazione'
exec InsertPrenotazioni 'Rosa','Bianchi','Wenceslas Square Hotel','2022-03-06','2022-03-10',1,'Pensione completa'
exec InsertPrenotazioni 'Lino','Varrano','Residence Caffè Savona','2022-05-02','2022-05-07',6,'Solo pernottamento'
exec InsertPrenotazioni 'Carmine','Salvi','Villa El Jaguel','2022-08-10','2022-08-20',10,'Solo pernottamento'
exec InsertPrenotazioni 'Mario','Rossi','Tenuta Pian D''Attesio','2022-09-08','2022-09-15',2,'Pensione completa'
exec InsertPrenotazioni 'Marco','Verdi','Au Royal Mad','2022-10-02','2022-10-10',5,'Mezza pensione'
exec InsertPrenotazioni 'Rosa','Bianchi','Rainforest Eco Cabin','2022-12-12','2022-12-17',3,'Pernottamento e prima colazione'
exec InsertPrenotazioni 'Carmine','Salvi','Rainforest Eco Cabin','2022-12-20','2023-01-05',4,'Solo pernottamento'

--Creare una vista che mostri tutte le prenotazioni(cliente, data arrivo, data partenza, numero persone,
--nome struttura, tipo struttura, totale(prezzo * giorni * persone) --> questo dipende da tipo pernottamento

alter view PrenotazioniView
as
(
	select 
	Cliente = c.Nome + ' ' + c.Cognome,
	p.DataArrivo,
	p.DataPartenza,
	p.NumeroPersone,
	Struttura = s.Nome,
	TipologiaStruttura = t.Descrizione,
	TIpoPernottamento = tp.Descrizione,
	CostoTotale = csp.[CostoPersona/Die] * p.NumeroPersone * DATEDIFF(DAY,DataArrivo,DataPartenza)
	from Prenotazioni p
	join dbo.Strutture s
	on p.IdStruttura = s.Id
	join dbo.Tipologie t
	on t.Id = s.IdTipologia
	join dbo.Clienti c
	on c.Id = p.IdCliente
	join dbo.StrutturePernottamenti sp
	on sp.Id = p.Id
	join dbo.CostiStrutturePernottamenti csp
	on csp.IdSoluzione = sp.Id
	join dbo.TipiPernottamento tp
	on tp.Id = sp.IdTipoPernottamento
)

select * from PrenotazioniView;

--Creare una vista che mostri il guadagno di ogni struttura.

alter view MostraGuadagni
as
(
	select
	Struttura = pv.Struttura,
	GuadagnoStruttura = sum(pv.CostoTotale)
	from PrenotazioniView pv
	group by pv.Struttura
)

select *
from MostraGuadagni
order by Struttura;

--Creare una vista che mostri tutti le strutture disponibili, la tipologia della struttura,
--i servizi offerti separati da virgola, le tipologie di pernottamento con i relativi prezzi.

alter view ShowOfferteStrutture
as
(
	select
	s.Nome,
	t.Descrizione,
	TipoPernottamento = tp.Descrizione,
	PrezzoANotte = csp.[CostoPersona/Die],
	ServiziOfferti = STRING_AGG(se.Descrizione, ',')
	from dbo.Strutture s
	join dbo.Tipologie t
	on t.Id = s.IdTipologia
	join dbo.StrutturePernottamenti sp
	on sp.IdStruttura = s.Id
	join dbo.TipiPernottamento tp
	on tp.Id = sp.IdTipoPernottamento
	join dbo.CostiStrutturePernottamenti csp
	on csp.IdSoluzione = sp.Id 
	join dbo.ServiziStrutture ss
	on ss.IdStruttura = s.Id
	join dbo.Servizi se
	on se.Id = ss.IdServizio
	group by s.Nome,t.Descrizione,tp.Descrizione,csp.[CostoPersona/Die]
)

select * 
from ShowOfferteStrutture
order by Nome,PrezzoANotte;

--Quindi creare una stored procedure che ricevuti in ingresso la tipologia della struttura,
--un servizio offerto e una tipologia di pernottamento, mostri le strutture disponibili.

create procedure ShowAvailableStrutture
@tipologia nvarchar(50), @servizio nvarchar(50), @pernottamento nvarchar(50)
as
select 
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.ServiziStrutture ss
on ss.IdStruttura = s.Id
join dbo.Servizi se
on se.Id = ss.IdServizio
join dbo.StrutturePernottamenti sp
on sp.IdStruttura = s.Id
join dbo.TipiPernottamento tp
on tp.Id = sp.IdTipoPernottamento
join dbo.Tipologie t
on t.Id = s.IdTipologia
where t.Descrizione = @tipologia
and se.Descrizione = @servizio
and tp.Descrizione = @pernottamento

-- prova

exec ShowAvailableStrutture 'Hotel','Wi-fi','Solo pernottamento'
exec ShowAvailableStrutture 'Agriturismo','Animali ammessi','Solo pernottamento'
exec ShowAvailableStrutture 'Agriturismo','Animali ammessi','Pensione completa'