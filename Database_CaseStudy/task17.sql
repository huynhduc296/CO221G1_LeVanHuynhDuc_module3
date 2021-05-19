--  17.
-- Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ Platinium lên Diamond, chỉ cập nhật
-- những khách hàng đã từng đặt phòng với tổng Tiền thanh toán trong năm 2019 là lớn hơn 10.000.000 VNĐ/500$

select *
from loai_khach_hang;
update khach_hang
set id_loai_khach_hang = (
	select id_loai_khach_hang
    from loai_khach_hang
    where name_loai_khach_hang='Diamond'
);
select *
from khach_hang
where id_loai_khach_hang = (
	select id_loai_khach_hang
      from loai_khach_hang
    where name_loai_khach_hang='Platinium'
)
in (
select id_khach_hang					
from hop_dong hd 
join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
join dich_vu_di_kem dvdk on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
where year(ngay_lam_hop_dong) = 2019
group by hd.id_khach_hang
having sum(dv.chi_phi_thue + dvdk.gia_ban * hdct.so_luong) > 10000000);