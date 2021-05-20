
-- 5.	Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien
--  (Với TongTien được tính theo công thức như sau: ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem)
--  cho tất cả các Khách hàng đã từng đặt phỏng. (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

select kh.id_khach_hang , kh.ngay_sinh, lkh.name_loai_khach_hang, 
		hd.id_hop_dong , dv.name_dich_vu, hd.ngay_lam_hop_dong ,
        hd.ngay_het_hop_dong, sum(dv.chi_phi_thue + (hdct.so_luong * dvdk.gia_ban)) as tong_tien
	from khach_hang kh 
	left join hop_dong hd on kh.id_khach_hang = hd.id_khach_hang
	left join loai_khach_hang lkh on lkh.id_loai_khach_hang=kh.id_loai_khach_hang
	left join dich_vu dv on dv.id_dich_vu  =hd.id_dich_vu
	left join hop_dong_chi_tiet hdct on hd.id_hop_dong=hdct.id_hop_dong
	left join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem= hdct.id_dich_vu_di_kem
group by kh.id_khach_hang,hd.id_hop_dong
