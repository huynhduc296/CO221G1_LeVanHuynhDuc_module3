-- Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019

delete
from nhan_vien
where id_nhan_vien not in (
	select id_nhan_vien
	from hop_dong
    where year(ngay_lam_hop_dong) between 2017 and 2019
);