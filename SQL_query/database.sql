create database Web_Coffee_PM;
use Web_coffee_PM;
create table User (
UserID int primary key,
Name varchar(50) not null,
Phone varchar(11) not null,
Address varchar(100) not null,
Avatar varchar(200) default 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png',
Username varchar(20) not null,
Password varchar(20) not null
);
create table Type (
TypeID int primary key not null,
Name varchar(50) not null
);
create table Item (
ItemID int primary key not null,
Name varchar(50) not null,
Price float not null,
Describes varchar(100),
image varchar(200),
TypeID int not null,
Foreign key(TypeID) references Type(TypeID)
);
create table Wishlist (
WishlistID int primary key auto_increment,
ItemID int not null,
UserID int not null,
Foreign key(ItemID) references Item(ItemID),
Foreign key(UserID) references User(UserID)
);

insert into type values(1, 'Cafe phin'),
(2, 'Phindi - Cafe PHIN thế hệ mới'),
(3, 'Cà Phê Espresso'),
(4, 'Coffee Freeze'),
(5, 'Trà'),
(6, 'Bánh ngọt') ;

insert into item values
(1,	'Bạc xỉu đá',	39000	,'Là loại cà phê pha từ cà phê hòa tan và sữa đặc, được pha với đá và thêm một chút nước đường để tạo thành một thức uống ngọt và thơm ngon','Bạc xỉu đá.jpg',		1),
(2,	'Phin sữa đá',	39000	,'Là loại cà phê pha từ cà phê phin và sữa đặc, được pha với đá và thêm một chút nước đường để tạo ra một thức uống đậm đà, ngọt ngào và thơm ngon','ca-phe-phin-sua-da.png',		1),
(3,	'Phin đen đá',	35000	,'Là loại cà phê pha từ cà phê phin không có sữa hoặc đường, được pha với đá để tạo ra một thức uống đậm đà và đắng nhẹ','ca-phe-phin-den-da.jpg',		1),
(4,	'Phin đen nóng',	35000	,'Là loại cà phê pha từ cà phê phin không có sữa hoặc đường, được pha với nước nóng để tạo ra một thức uống đậm đà và đắng nhẹ, thích hợp cho những người thích uống cà phê nóng','ca-phe-phin-den-nong.webp',		1),
(5,	'Phindi Choco',	45000	,'Phindi Choco: Là loại phindi được kết hợp với sô-cô-la, tạo ra một hương vị ngọt ngào và thơm ngon. Phindi Choco thường được phục vụ với đá hoặc đá xay','phindi-choco.webp',		2),
(6,	'Phindi Hạnh nhân',	49000	,'Phindi Hạnh nhân: Là loại phindi được kết hợp với hạnh nhân rang, tạo ra một hương vị thơm ngon, đậm đà và béo ngậy. Phindi Hạnh nhân thường được phục vụ với đá hoặc đá xay.','phindi-hanh-nhan.webp',		2),
(7,   'Phindi kem sữa',    55000    ,'Phindi kem sữa: Là loại phindi được kết hợp với kem sữa, tạo ra một hương vị ngọt ngào và béo ngậy. Phindi kem sữa thường được phục vụ với đá hoặc đá xay.','phidi-kem-sua.webp',       2),
(8,   'Phindi latte đá', 52000 , 'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.','phindi-latte-da.webp',         2),
(9,	'Mocha',	69000	,'Mocha: Là một loại đồ uống cà phê có pha thêm sô-cô-la. Mocha thường được phục vụ với đá hoặc đá xay, thêm một lớp kem phía trên để tạo ra một hương vị ngọt ngào, đậm đà và thơm ngon.','mocha.webp',		3),
(10,	'Latte',	79000	,'Latte: Là loại đồ uống cà phê pha trộn với sữa nóng, thường có một lớp bọt sữa phía trên. Latte có hương vị nhẹ nhàng và độ béo tùy thuộc vào tỉ lệ cà phê và sữa.','latte.webp',		3),
(11	,'Americano',	75000	,'Americano: Là loại đồ uống cà phê đơn giản, pha từ một shot espresso và nước nóng. Americano có hương vị đậm đà và đắng nhẹ, thích hợp cho những người thích uống cà phê đơn giản.','arme-nong.webp',		3),
(12	,'Caramel Macchiato',	79000	,'Caramel Macchiato: Là loại đồ uống cà phê pha từ espresso và sữa nóng, thường được thêm caramel và một lớp foam sữa phía trên. Caramel Macchiato có hương vị ngọt ngào và đậm đà.','caramel-macchiato.webp',		3),
(13	,'Capuchino',	49000	,'Cappuccino: Là loại đồ uống cà phê pha từ một shot espresso, một phần sữa hấp và một phần foam sữa. Cappuccino có hương vị đậm đà và béo ngậy, thường được phục vụ với một lớp cacao phía trên.','cappuccino.webp',		3),
(14	,'Espresso',	55000	,'Espresso: Là loại đồ uống cà phê đơn giản nhất, pha từ cà phê rang xay nhỏ và nước nóng. Espresso có hương vị đậm đà, đắng và mạnh mẽ.','espressoda.webp',		3),
(15	,'Freeze trà xanh',	55000	,'Freeze trà xanh: Là loại đồ uống đá xay được pha từ trà xanh, đường và đá. Freeze trà xanh có hương vị ngọt nhẹ, thanh mát và thơm ngon.' , 'freeze-trà-xanh.webp',		4),
(16	,'Freeze Socola',	65000	,'Freeze Socola: Là loại đồ uống đá xay được pha từ socola, đường và đá. Freeze socola có hương vị ngọt ngào, béo ngậy và thơm ngon.','freeze-socola.webp',		4),
(17	,'Cookies&Cream',	69000	,'Cookies & Cream: Là loại đồ uống đá xay được pha từ kem vani, bánh quy socola và đá. Cookies & Cream có hương vị ngọt ngào, béo ngậy và đậm đà.','Cookies&Cream.webp',		4),
(18	,'Caramel Phin Freeze',	55000	,'Caramel Phin Freeze: Là loại đồ uống đá xay được pha từ cà phê phin, caramel, kem và đá. Caramel Phin Freeze có hương vị đậm đà của cà phê phin kết hợp với vị ngọt ngào của caramel và kem.','Caramel-Phin-Freeze.webp',		4),
(19	,'Classic Phin Freeze',	65000	,'Classic Phin Freeze: Là loại đồ uống đá xay được pha từ cà phê phin, đường, kem và đá. Classic Phin Freeze có hương vị đậm đà của cà phê phin kết hợp với vị béo ngậy của kem và đá.','Classic-Phin-Freeze.webp',		4),
(20	,'Trà Đào Cam Sả Đá',	55000	,'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn.','tra-dao-cam-sa-da.webp',	5),
(21	,'Trà Hạt Sen Đá',	49000	,'Nền trà oolong hảo hạng kết hợp cùng hạt sen tươi, bùi bùi và lớp foam cheese béo ngậy. Trà hạt sen là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.','tra-sen.webp',		5),
(22	,'Trà Đen Macchiato',	55000	,'Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato "homemade" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.','tra-den-matchiato.webp',		5),
(23	,'Hồng Trà Sữa Trân Châu',	50000	,'Thêm chút ngọt ngào cho ngày mới với hồng trà nguyên lá, sữa thơm ngậy được cân chỉnh với tỉ lệ hoàn hảo, cùng trân châu trắng dai giòn có sẵn để bạn tận hưởng từng ngụm trà sữa ngọt ngào.','hong-tra-sua-tran-chau.webp',		5),
(24	,'Trà sữa Oolong Nóng',	55000	,'Đậm đà chuẩn gu và ấm nóng - bởi lớp trà oolong nướng đậm vị hoà cùng lớp sữa thơm béo. Hương vị chân ái đúng gu đậm đà - trà oolong được "sao" (nướng) lâu hơn cho vị đậm đà.','tra-sua-oolong-nong.webp',		5),
(25	,'Trà Sữa Mắc Ca Trân Châu',	55000	,'Mỗi ngày với The Coffee House sẽ là điều tươi mới hơn với sữa hạt mắc ca thơm ngon, bổ dưỡng quyện cùng nền trà oolong cho vị cân bằng, ngọt dịu đi kèm cùng Trân châu trắng giòn dai mang lại cảm giác tuyệt vời.','tra-sua-mac-ca-tran-chau.webp',		5),
(26	,'Mousse Gấu Chocolate',	35000	,'Với vẻ ngoài đáng yêu và hương vị ngọt ngào, thơm béo nhất định bạn phải thử ít nhất 1 lần.','mouse-gau-chocolate.webp',		6),
(27	,'Mousse Tiramisu',	29000	,'Hương vị dễ ghiền được tạo nên bởi chút đắng nhẹ của cà phê, lớp kem trứng béo ngọt dịu hấp dẫn.','mouse-tiramisu.webp',		6),
(28	,'Mochi Kem Matcha',	19000	,'Bao bọc bởi lớp vỏ Mochi dẻo thơm, bên trong là lớp kem lạnh cùng nhân trà xanh đậm vị. Gọi 1 chiếc Mochi cho ngày thật tươi mát. Sản phẩm phải bảo quán mát và dùng ngon nhất trong 2h sau khi nhận hàng.','mochi-kem-matcha.webp',		6),
(29	,'Bánh Mì Que Pate Cay',	20000	,'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà và 1 chút cay cay sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần hấp dẫn.','banhmique-pateCay.webp',	6),
(30	,'Bánh Mì VN Thịt Nguội',	35000	,'Gói gọn trong ổ bánh mì Việt Nam là từng lớp chả, từng lớp jambon hòa quyện cùng bơ và pate thơm lừng, thêm dưa rau cho bữa sáng đầy năng lượng. *Phần bánh sẽ ngon và đậm đà nhất khi kèm pate.','banh-mi-vietnam-thit-nguoi.webp',		6),
(31	,'Bánh Mì Gậy Gà Kim Quất',	25000	,'Phiên bản nâng cấp với trọng lượng tăng 80% so với bánh mì que thông thường, đem đến cho bạn bữa ăn nhanh gọn mà vẫn đầy đủ dinh dưỡng. Cắn một miếng là mê mẩn bởi vỏ bánh nướng giòn rụm.','banh-mi-gay-ga-kim-quat.webp',		6),
(32	,'Bánh Tiramisu',	35000	,'Bánh Tiramisu: Là loại bánh Ý được làm từ bánh bông lan ướt, phủ lớp kem phô mai và cacao bột, thường được trang trí bằng bột cacao hoặc socola.','mouse-tiramisu.webp',		6),
(33	,'Croissant trứng muối',	27000	,'Croissant trứng muối thơm lừng, bên ngoài vỏ bánh giòn hấp dẫn bên trong trứng muối vị ngon khó cưỡng.','croissant-trung-muoi.webp',		6),
(34	,'Chà Bông Phô Mai',	35000	,'Chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.','cha-bong-pho-mai.webp',			6),
(35	,'Mousse Red Velvet',	35000	,'Bánh nhiều lớp được phủ lớp kem bên trên bằng Cream cheese.','mouse-red-velvet.webp',		6),
(36	,'Mít Sấy',	19000	,'Mít sấy khô vàng ươm, giòn rụm, giữ nguyên được vị ngọt lịm của mít tươi.','mit-say.webp',		6);

