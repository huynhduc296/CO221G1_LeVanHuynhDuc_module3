
create database if not exists database_furama_resort;
use database_furama_resort;

create table vi_tri(
	id_vi_tri int primary key auto_increment,
    name_vi_tri varchar(50)
);
    
create table trinh_do(
	id_trinh_do int primary key auto_increment,
	trinh_do varchar(15)
);

create table bo_phan(
	id_bo_phan int primary key auto_increment,
    name_bo_phan varchar(50)
);

create table kieu_cho_thue(
	id_kieu_cho_thue int primary key auto_increment,
    name_kieu_cho_thue varchar(50),
    gia_ban double
);

create table loai_dich_vu(
	id_loai_dich_vu int auto_increment primary key,
    name_loai_dich_vu varchar(50)
);
    
create table Nhan_vien(
	id_nhan_vien int auto_increment primary key,
    name_nhan_vien varchar(40) not null,
    id_vi_tri int ,
    id_trinh_do int ,
    id_bo_phan int ,
    ngay_sinh date,
    id_cmnd varchar(10) ,
    tien_luong double,
    so_dien_thoai varchar(10),
    email varchar(100),
    dia_chi varchar(200),
	foreign key(id_vi_tri) references vi_tri(id_vi_tri),
	foreign key(id_trinh_do) references trinh_do(id_trinh_do),
	foreign key(id_bo_phan) references bo_phan(id_bo_phan)
);

create table loai_khach_hang(
	id_loai_khach_hang int  primary key auto_increment,
    name_loai_khach_hang varchar(50)
);

 create table khach_hang(
	id_khach_hang int auto_increment primary key,
    id_loai_khach_hang int,
    name_khach_hang varchar(50),
    ngay_sinh date,
    so_cmnd varchar(10),
    so_dien_thoai varchar(10),
    email varchar(100),
    dia_chi varchar(200),
    foreign key (id_loai_khach_hang) references loai_khach_hang(id_loai_khach_hang)
    on delete cascade
 );
    
 create table dich_vu(
	id_dich_vu int auto_increment primary key,
    name_dich_vu varchar(50),
    dien_tich double,
    so_tang int,
    so_nguoi_toi_da int,
    chi_phi_thue double,
    id_kieu_cho_thue int,
    id_loai_dich_vu int,
    trang_thai varchar(50),
    foreign key (id_kieu_cho_thue) references kieu_cho_thue(id_kieu_cho_thue),
    foreign key (id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
);

 create table dich_vu_di_kem(
	id_dich_vu_di_kem int auto_increment primary key,
    name_dich_vu_di_kem varchar(50),
    gia_ban double,
	don_vi int,
    trang_thai_kha_dung varchar(50)
 );
    
create table hop_dong(
	id_hop_dong int auto_increment  primary key,
    id_nhan_vien int,
    id_khach_hang int,
    id_dich_vu int,
    ngay_lam_hop_dong date,
    ngay_het_hop_dong date,
    tien_dat_coc double,
    tong_tien double,
	foreign key(id_nhan_vien) references nhan_vien(id_nhan_vien),
	foreign key(id_khach_hang) references khach_hang(id_khach_hang),
	foreign key(id_dich_vu) references dich_vu(id_dich_vu)
    on delete cascade
);

 create table hop_dong_chi_tiet(
    id_hop_dong int,
    id_dich_vu_di_kem int,
    primary key (id_hop_dong,id_dich_vu_di_kem),
    so_luong int,
    foreign key (id_hop_dong) references hop_dong(id_hop_dong),
    foreign key (id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem)
    on delete cascade
    );

