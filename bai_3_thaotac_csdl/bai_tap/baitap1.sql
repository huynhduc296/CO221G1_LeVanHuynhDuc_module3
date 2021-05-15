use QuanLySinhVien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT *
FROM Student 
WHERE Studentname LIKE "h%";

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
 SELECT *
FROM Class
WHERE month(StartDate)=12;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT * 
FROM `Subject`
WHERE Credit BETWEEN 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE Student
SET ClassID = '2'
WHERE StudentName = "Hung";
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select s.StudentName,sub.subName,m.mark
from Student s join mark m
on s.StudentID = m.StudentID
join `Subject` sub
on sub.subId = m.subId
ORDER BY m.Mark DESC;
