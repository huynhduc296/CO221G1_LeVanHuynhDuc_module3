-- 7. Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, 
-- TenLoaiDichVu của tất cả các loại dịch vụ đã từng được Khách hàng đặt 
-- phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng trong năm 2019.

select dv.id_dich_vu, dv.name_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.name_loai_dich_vu,hd.ngay_lam_hop_dong,
hd.ngay_het_hop_dong
from dich_vu dv
	 join loai_dich_vu ldv on dv.id_loai_dich_vu=ldv.id_loai_dich_vu
     join hop_dong hd on dv.id_dich_vu= hd.id_dich_vu
where year(ngay_lam_hop_dong)=2018 and dv.id_dich_vu not in(
select dv.id_dich_vu
from dich_vu dv
join hop_dong hd on dv.id_dich_vu= hd.id_dich_vu
where year(ngay_lam_hop_dong)=2019
)
