create table airport
(
	airport_code	char(5)			not null,
	city			varchar(15)		not null,
	state_			varchar(15)		not null,
	name_			varchar(15)		not null,
	primary key(airport_code)

);

create table airplane_type
(
	type_name_			varchar(20)		not null,
	max_seats			int				not null,
	company				varchar(15)		not null,
	primary key(type_name_)

);

create table flight
(
	number				int				not null,
	airline				varchar(10)		not null,
	weekdays			varchar(15)		not null,
	primary key(number)
);

create table flight_leg
(
	leg_no				int				not null,
	scheduled_dep_time	time			not null,
	scheduled_arr_time	time			not null,
	FK_Flight			int				not null,
	FK_Airport			char(5)			not null,
	primary key(leg_no)

);


create table airplane
(
	airplane_id			int				not null,
	total_no_of_seats	int				not null,
	FK_Airplane_type	varchar(20)		not null,
	primary key(airplane_id)
);

create table leg_instance
(
	no_of_avail_seats	int				not null,
	date_				date			not null,
	FK_Airplane			int				not null,
	arr_time			time			not null,
	dep_time			time			not null,
	FK_Airport1			char(5)			not null,
	FK_Flight_leg		int				not null,
	primary key(date_)
);

create table fare
(
	code				char(4)			not null,
	amount				float			not null,
	restrictions		varchar(20)		not	null,
	FK_flight1			int				not null,
	primary key(code)

);

create table seat
(
	seat_no				int				not null,
	customer_name		varchar(20)		not null,
	cphone				char(9)			not null,
	FK_Leg_instance		date			not null,
	primary key(seat_no)
);

alter table flight_leg
add constraint	FK_Flight
foreign key(FK_Flight) references flight(number)

alter table flight_leg
add constraint FK_Airport
foreign key(FK_Airport) references airport(airport_code)

alter table airplane
add constraint FK_Airplane_type
foreign key(FK_Airplane_type) references airplane_type(type_name_)

alter table leg_instance
add constraint FK_Airplane
foreign key(FK_Airplane) references airplane(airplane_id)

alter table leg_instance
add constraint FK_Airport1
foreign key(FK_Airport1) references airport(airport_code)

alter table leg_instance
add constraint	FK_Flight_leg
foreign key(FK_Flight_leg) references flight_leg(leg_no)

alter table fare
add constraint FK_flight1
foreign key(FK_flight1) references flight(number)

alter table seat
add constraint FK_Leg_instance
foreign key(FK_Leg_instance) references leg_instance(date_)