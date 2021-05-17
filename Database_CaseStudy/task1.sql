insert into trinh_do(trinh_do)
value
	("trung cấp"),
    ("Cao đẳng"),
    ("Đại học "),
    ("sau đại học");

insert into vi_tri(name_vi_tri)
value
	("Lễ tân"),
    ("phục vụ"),
    ("chuyên viên"),
    ("giám sát"),
	("quản lý"),
    ("giá đốc");

insert into bo_phan(name_bo_phan)
value
	("Sale"),
    ("Marketing"),
    ("Hành Chính"),
    ("Phục vụ"),
	("Quản lý");

insert into Nhan_vien(name_nhan_vien,id_vi_tri,id_trinh_do,id_bo_phan,ngay_sinh,id_cmnd,tien_luong,so_dien_thoai,email, dia_chi) 
value 
	('le huynh duc', 1, 2, 3, '1992-06-19', '208876544', 12000000.00, '0333576574', 'duc@gmail.com', '103 Hoang Dieu' ),
	('le van nam', 2, 1, 4, '1996-07-25', '208876545', 16000000.00, '0907656547', 'nam@gmail.com', 'vinh' ),
	('nguyen huu ly', 1, 1, 1, '1996-10-17', '207776513', 10000000.00, '0917676587', 'tai_bui@gmail.com', 'Ha Noi' ),
	('Nguyen Thanh Tung', 1, 2, 3, '1988-07-23', '209971245', 18000000.00, '0333765654', 'tung_nguyen@gmail.com', 'Da Nang' ),
	('le quang hoang', 2, 2, 2, '1995-08-30', '208877619', 15000000.00, '0345717654', 'kha_ho@gmail.com', 'Binh Dinh' ),
	('nguyen thanh cong', 1, 3, 2, '1999-09-30', '208845545', 10000000.00, '0907658333', 'kien_nguyen@gmail.com', 'Da Nang' );
insert into loai_khach_hang(name_loai_khach_hang)
value
	('Diamond'),
	('Platinium'),
	('Gold'),
	('Silver'),
	('Member');
    
 insert into khach_hang(id_loai_khach_hang,name_khach_hang, ngay_sinh, so_cmnd, so_dien_thoai, email ,dia_chi)
 value
	(1,'Joan', '1977-06-20', '208872125', '0333576575', 'joan@gmail.com', 'Spanish' ),
	(2,'Take Uchi Satoru', '1971-01-19', '208876546', '090765659', 'take_uchi@gmail.com', 'Japan' ),
	(2,'Ty Colin', '1975-11-28', '207776517', '091767658', 'ty_colin@gmail.com', 'Us' ),
	(3,'Nguyen Minh Phuc', '1984-08-19', '209971242', '0333765651', 'phuc_nguyen@gmail.com', 'Ha Noi' ),
	(4,'Joan', '1920-11-19', '208877611', '0345176510', 'ha_nguyen@gmail.com', 'Quang Tri' ),
	(1,'Nguyen Hong Dang', '1988-12-30', '208845540', '0906588335', 'dang_nguyen@gmail.com', 'Ha Noi' ),
	(2,'Lam Ba Dat', '1987-07-29', '212376541', '0944456056', 'ba_dat@gmail.com', 'Sai Gon' ),
	(1,'Cao Van Minh', '1992-10-17', '208856459','0333765651', 'minh_cao@gmail.com', 'Cao Bang' ),
	(3,'Nguyen Dang Khoi', '1998-08-24', '218846561', '0917063678', 'khoi_nguyen@gmail.com', 'Da Nang' );
    

insert into loai_dich_vu(name_loai_dich_vu)
value
	('Villa'),
	('House'),
	('Room');
insert into kieu_cho_thue(name_kieu_cho_thue, gia_ban)
value
	('Day',200000.00),
	('Month',6000000.00),
	('Year',1000000000.00),
	('Hour',100000.00);
insert into dich_vu(name_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_cho_thue, id_loai_dich_vu, trang_thai)
values
("Villa Lamark", 700.76, 2, 3, 2000000, 2, 1, "Available"),
("Villa A",	400.50,	3, 3,	1000000, 2, 1, "Available"),
("House Lamark", 100.70, 2, 3, 500000, 1, 2, "Not available"),
("House A", 80.70, 3, 2, 300000, 1, 2, "Available"),
("Room 312", 70.3, 2, 3, 200000, 2, 1, "Available"),
("Room 213", 50.4, 1, 2, 290000, 4, 3, "Not available");
insert into hop_dong(id_nhan_vien,id_khach_hang,id_dich_vu,ngay_lam_hop_dong, ngay_het_hop_dong, tien_dat_coc,tong_tien)
value
	(1,1,2,'2015-10-16', '2015-10-28', 150000, 1000000),
	(1,2,3,'2016-11-10', '2019-11-15', 100000, 1000000),
	(1,4,2,'2019-12-26', '2019-12-30', 200000, 2000000),
	(1,3,2,'2017-07-12', '2018-07-28', 100000, 10000000);

insert into dich_vu_di_kem( name_dich_vu_di_kem, gia_ban, don_vi, trang_thai_kha_dung)
value
	('Karaoke',100000.00,1, 'Availabale'),
	('Car',200000.00,2, 'Unavailabale'),
	('Drink',300000.00,3, 'Availabale'),
	('Food',600000.00,2, 'Availabale'),
	('Spa',200000.00,2, 'Availabale');
    
 insert into hop_dong_chi_tiet
 value
	(1,3,2),
	(3,2,2),
	(2,3,2);