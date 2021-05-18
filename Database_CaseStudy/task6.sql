-- 6.	Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, 
-- TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 
-- 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).
use database_furama_resort;

select dv.id_dich_vu, dv.name_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.name_loai_dich_vu,hd.ngay_lam_hop_dong
from dich_vu dv
	inner join loai_dich_vu ldv on dv.id_loai_dich_vu=ldv.id_loai_dich_vu
    left join hop_dong hd on dv.id_dich_vu=hd.id_dich_vu
where hd.ngay_lam_hop_dong not in (
	select hd.ngay_lam_hop_dong
    from hop_dong hd
    where (ngay_lam_hop_dong between '2019-01-01' and '2019-03-31')
)
order by id_dich_vu;