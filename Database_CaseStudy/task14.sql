-- 14. Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm IDHopDong, TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
select hd.id_hop_dong,dv.name_dich_vu,dvdk.name_dich_vu_di_kem,dvdk.don_vi,count(dvdk.id_dich_vu_di_kem) as tdv
from hop_dong hd
	join khach_hang kh on kh.id_khach_hang=hd.id_khach_hang
    join dich_vu dv on dv.id_dich_vu= hd.id_dich_vu
    join hop_dong_chi_tiet hdct on hdct.id_hop_dong= hd.id_hop_dong
	join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem= hdct.id_dich_vu_di_kem

group by dvdk.id_dich_vu_di_kem
having tdv=1
