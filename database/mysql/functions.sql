
-- hàm nối các cột ứng với các str là cột của một bảng 
-- các kết quả này nối liền nhau vì vậy nên giữa 2 xâu chúng ta nên thêm một xâu là xâu cách " "
concat(str1,str2,…,strn)
            
-- hàm cắt ký tự
left(tên_cột,số_ký_tự)

-- đếm xem có bao nhiêu bản ghi trong bảng đó
select count(tên_cột) from tên_bảng 
            
-- tổng các giá trị của các bản ghi
select sum(tên_cột) from tên_bảng tính
-- <span class="color-red">không tính cho xâu ký tự được</span>

-- tính giá trị trung bình của các bản ghi
select avg(tên_cột) from tên_bảng
-- <span class="color-red">không tính cho xâu ký tự được</span>
        
-- tìm min của một cột nào đó
select min(tên_cột) from tên_bảng
-- <span class="color-red">có tính cho xâu ký tự được</span>
            
-- tương tự min
select max(tên_cột) from tên_bảng
-- <span class="color-red">có tính cho xâu ký tự được</span>

-- cái này google search vì nhiều thứ đại loại là định dạng lại kết quả khi ra màn hình
date_format
-- <span class="color-red">không có chức năng so sánh</span>

-- cái này cũng google search chuyển một xâu thành ngày tháng chuẩn của cái RMDBS
str_to_date
-- <span class="color-red">có chức năng so sánh không có chức năng định dạng khi ra màn hình</span>