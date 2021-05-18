-- 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có TenLoaiKhachHang là 
-- “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.
select kh.id_khach_hang,kh.dia_chi,lkh.name_loai_khach_hang,dvdk.name_dich_vu_di_kem,dvdk.gia_ban
from khach_hang kh
join loai_khach_hang lkh on kh.id_loai_khach_hang=lkh.id_loai_khach_hang
left join hop_dong hd on hd.id_khach_hang =kh.id_khach_hang
left join hop_dong_chi_tiet hdct on hdct.id_hop_dong=hd.id_hop_dong
left join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem=hdct.id_dich_vu_di_kem
where lkh.name_loai_khach_hang="Diamond" and (dia_chi in ('Vinh')or dia_chi in('Quang Tri'));