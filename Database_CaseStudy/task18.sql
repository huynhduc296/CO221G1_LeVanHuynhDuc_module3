
-- Xóa những khách hàng có hợp đồng trước năm 2016 (chú ý ràngbuộc giữa các bảng).
select kh.id_khach_hang,kh.name_khach_hang,hd.ngay_lam_hop_dong
from hop_dong hd
join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang;
delete
from khach_hang 
where id_khach_hang in (
select id_khach_hang
from hop_dong 
where year(ngay_lam_hop_dong) <2016
);
