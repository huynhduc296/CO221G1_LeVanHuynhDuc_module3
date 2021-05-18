-- Thực hiện thống kê doanh thu theo tháng,
--  nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

select month(hd.ngay_lam_hop_dong), sum(tong_tien) as tong_tien, count(*) as so_lan
from hop_dong hd
where year(hd.ngay_lam_hop_dong)=2019
group by month(hd.ngay_lam_hop_dong)