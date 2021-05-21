--  17.
-- Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ Platinium lên Diamond, chỉ cập nhật
-- những khách hàng đã từng đặt phòng với tổng Tiền thanh toán trong năm 2019 là lớn hơn 10.000.000 VNĐ/500$

update khach_hang kh
join hop_dong hd on kh.id_khach_hang=hd.id_khach_hang
join loai_khach_hang lkh on kh.id_loai_khach_hang=lkh.id_loai_khach_hang
set kh.id_loai_khach_hang = 2
where hd.id_khach_hang in(
select id_khach_hang
from hop_dong hd
left join dich_vu dv on dv.id_dich_vu=hd.id_dich_vu
left join hop_dong_chi_tiet hdct on hd.id_hop_dong=hdct.id_hop_dong
left join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem= hdct.id_dich_vu_di_kem
where year(ngay_lam_hop_dong)=2019
group by id_khach_hang 
having sum(dv.chi_phi_thue + (hdct.so_luong * dvdk.gia_ban)) > 10000000
);