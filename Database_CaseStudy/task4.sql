select kh.id_khach_hang, kh.name_khach_hang, lkh.name_loai_khach_hang, COUNT(*) as noOfBooked
from khach_hang kh
	inner join loai_khach_hang lkh on kh.id_loai_khach_hang =lkh.id_loai_khach_hang
	left join hop_dong on kh.id_khach_hang = hop_dong.id_khach_hang
where
    lkh.name_loai_khach_hang = 'Diamond'
group by  id_khach_hang
ORDER BY noOfBooked;