-- Hiển thi thông tin của tất cả nhân viên bao gồm IDNhanVien, HoTen, TrinhDo, TenBoPhan,
-- SoDienThoai, DiaChi mới chỉ lập được tối đa 3 hợp đồng từ năm 2018 đến 2019

select nv.id_nhan_vien, nv.name_nhan_vien,bp.name_bo_phan,td.trinh_do,count(hd.id_hop_dong) as hd
from nhan_vien nv
	left join hop_dong hd on nv.id_nhan_vien=hd.id_nhan_vien
    inner join bo_phan bp on bp.id_bo_phan=nv.id_bo_phan
    inner join trinh_do td on td.id_trinh_do=nv.id_trinh_do
where year(ngay_lam_hop_dong) between 2018 and 2019
group by hd.id_hop_dong
having hd <=3;