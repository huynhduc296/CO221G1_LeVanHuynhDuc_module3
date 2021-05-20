-- 13. Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
--  (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

select *, count(dvdk.id_dich_vu_di_kem) as kdt
from hop_dong_chi_tiet hdct
	inner join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem=hdct.id_dich_vu_di_kem
group by hdct.id_dich_vu_di_kem
having count(hdct.id_dich_vu_di_kem)>= all
(select count(id_dich_vu_di_kem)
            from hop_dong_chi_tiet
            group by id_dich_vu_di_kem);