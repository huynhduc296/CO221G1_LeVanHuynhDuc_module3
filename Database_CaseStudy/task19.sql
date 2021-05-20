-- 19.	Cập nhật giá cho các Dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2019 lên gấp đôi
 
 update dich_vu_di_kem 
 set gia_ban =gia_ban*2
 where id_dich_vu_di_kem in(
 select id_dich_vu_di_kem
 from hop_dong_chi_tiet hdct
 join hop_dong hd on hd.id_hop_dong=hdct.id_hop_dong
 group by hdct.id_dich_vu_di_kem
having count(id_dich_vu_di_kem)>10
);
 