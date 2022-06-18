-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 18, 2022 at 06:35 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btlcanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `createdAt`) VALUES
(8, 'sinh-vien', 'Sinh viên', '2022-06-18'),
(9, 'tuyen-sinh', 'Tuyển sinh', '2022-06-18'),
(10, 'tin-tuc', 'Tin tức', '2022-06-18'),
(11, 'nghien-cuu', 'Nghiên cứu', '2022-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `image`, `category`, `createdAt`) VALUES
(1, 'trideptrai', 'aaaaaaa', '                                                <p>aaaaaaaaaaaaa<b>afdafdas</b></p>                                        ', 'trideptrai', 6, '2022-06-18'),
(2, 'Thông báo tuyển chọn Đồ án tốt nghiệp dự thi Giải thưởng Đồ án xuất sắc của sinh viên ngành nước', 'thong-bao-tuyen-sinh', '<p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\">&nbsp; Nhằm tuyển chọn những Đồ án tốt nghiệp xuất sắc của sinh viên ngành nước (ĐATNXS) dự thi Giải thưởng “Đồ án tốt nghiệp xuất sắc của sinh viên ngành nước năm” 2022, Nhà trường thông báo như sau:</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">* Đối tượng dự thi</span>: Sinh viên thuộc các ngành: Cấp thoát nước, Kỹ thuật tài nguyên nước, Kỹ thuật môi trường đạt các điều kiện về học tập và rèn luyện như sau:</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\">- Thực hiện Học phần tốt nghiệp và đủ điều kiện tốt nghiệp tại năm học 2021-2022.</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\">- Điểm bảo vệ đồ án tốt nghiệp từ 8.0 (thang điểm 10) trở lên;</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\">- Không bị kỷ luật từ mức cảnh cáo trong toàn khóa học trở lên.<br></p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">* Quy trình tuyển chọn:</span></p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">- Trước ngày 20/7/2022:</em></span>&nbsp;Các khoa,trung tâm, phân hiệu tuyển chọn ĐATNXS của sinh viên theo các điều kiện nêu trên với tỷ lệ ĐATNXS được nộp là: 1 ĐATN/25 sinh viên tốt nghiệp của ngành trong năm học 2021-2022.</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">- Từ ngày 20/7/2022 đến ngày 25/7/2022:</em></span>&nbsp;Các khoa, trung tâm, phân hiệu nộp Danh sách sinh viên dự thi ĐATNXS (theo mẫu M1) và hồ sơ dự thi của sinh viên (theo mục III) và về phòng Chính trị và Công tác sinh viên (CV phụ trách: Nguyễn Thị Na, P.112 nhà A1).</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">- Từ ngày 01/8/2022:</em></span>&nbsp;Phòng Chính trị và Công tác sinh viên nộp ĐATNXS cho Ban tổ chức theo quy định.</p><p style=\"margin-bottom: 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: Roboto, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(7, 7, 7);\">Chi tiết thông báo:&nbsp;<a data-cke-saved-href=\"/Portals/0/2022/Thang6/Do an cap thoat nuoc (Sua).docx?ver=2022-06-18-130425-117\" href=\"https://www.tlu.edu.vn/Portals/0/2022/Thang6/Do%20an%20cap%20thoat%20nuoc%20(Sua).docx?ver=2022-06-18-130425-117\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 19, 115); outline: 0px;\">TẠI ĐÂY</a></p>', 'https://www.tlu.edu.vn/Portals/0/HTQT/2022/Thang6/ACCA0.jpg?ver=2022-06-03-110421-073', 9, '2022-06-18'),
(3, 'Trường Đại học Thủy lợi ký kết Biên bản ghi nhớ với Hiệp hội Kế toán Công chứng Anh (ACCA)', 'bien-ban-ghi-nho', ' <div class=\"news-sumary ng-binding\" ng-bind-html=\"newsitem.Description\" ng-show=\"newsitem.Viewsum\">(TLU) – Sau thời gian hợp tác làm việc đem lại nhiều kết quả nhất định, ngày 1/6/2022, Trường Đại học Thủy lợi và Hiệp hội Kế toán Công chứng Anh đã chính thức tổ chức Lễ ký kết Biên bản ghi nhớ diễn ra tại Hà Nội và TP Hồ Chí Minh.</div>\r\n        <div class=\"news-content ng-binding\" ng-bind-html=\"newsitem.Content\"><p style=\"text-align: justify;\">Tham dự buổi lễ, bên phía Hiệp hội Kế toán Công chứng Anh (ACCA) có bà Nguyễn Thụy Minh Châu – Trưởng đại diện ACCA Việt Nam (tham dự trực tuyến tại TP Hồ Chí Minh), bà Khuất Thị Liên Hương – Giám đốc Đào tạo ACCA khu vực Đông Nam Á Lục địa và bà Lê Thị Mỹ Hạnh – Trưởng ban Đối ngoại, khối Đào tạo, ACCA Việt Nam. Về phía Trường ĐHTL có GS.TS&nbsp;Nguyễn Trung Việt – Phó Hiệu trưởng cùng đại diện các phòng, đơn vị liên quan và các giảng viên, sinh viên của Khoa Kinh tế và Quản lý.</p><p style=\"text-align: center;\"><img alt=\"\" data-cke-saved-src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA0.jpg?ver=2022-06-03-110421-073\" src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA0.jpg?ver=2022-06-03-110421-073\" style=\"width: 700px; height: 467px;\" title=\"\"></p><p style=\"text-align: center;\"><em>Chụp ảnh lưu niệm</em></p><p style=\"text-align: justify;\">ACCA được thành lập năm 1904, đã mang đến cho giới chuyên môn ngành tài chính, kế toán và kiểm toán một chương trình chuyên nghiệp được công nhận rộng rãi trên toàn cầu. Hiện nay, ACCA là hiệp hội nghề nghiệp có sự phát triển nhanh và lớn nhất thế giới với văn phòng đặt tại hơn 170 quốc gia với đông đảo số lượng hội viên tham gia. GS.TS&nbsp;Nguyễn Trung Việt – Phó Hiệu trưởng Nhà trường bày tỏ sự vui mừng và cảm ơn tới Ban lãnh đạo của ACCA vì đây là Hiệp hội ngành nghề đầu tiên mà Nhà trường ký Biên bản ghi nhớ với mục đích hợp tác hai bên cùng có lợi, hướng tới sự phát triển của giảng viên và sinh viên ngành kế toán tài chính của trường. Đáp lại, bà Nguyễn Thụy Minh Châu – Trưởng đại diện ACCA Việt Nam cũng khẳng định đây là bước khởi đầu năng lượng tích cực cho quan hệ giữa hai bên. Với nhiệt huyết của Trường ĐHTL nói chung và của Khoa Kinh tế và Quản lý nói riêng, cộng đồng ACCA vững mạnh sẽ đồng hành, hỗ trợ các thầy cô trong việc hướng dẫn các môn học, sử dụng tài liệu chuyên ngành của hiệp hội, từ đó tạo nên sự thành công cho các sinh viên và học viên. &nbsp;</p><p style=\"text-align: center;\"><img alt=\"\" data-cke-saved-src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA1.jpg?ver=2022-06-03-110421-073\" src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA1.jpg?ver=2022-06-03-110421-073\" style=\"width: 700px; height: 467px;\" title=\"\"></p><p style=\"text-align: center;\"><em>Bà Nguyễn Thụy Minh Châu – Trưởng đại diện ACCA Việt Nam phát biểu tại buổi lễ tại đầu cầu TP Hồ Chí Minh</em></p><p style=\"text-align: justify;\">Trong nội dung buổi làm việc, bà Khuất Thị Liên Hương – Giám đốc Đào tạo ACCA khu vực Đông Nam Á Lục địa và PGS.TS&nbsp;Nghiêm Văn Lợi – Phó trưởng Khoa Kinh tế và Quản lý đồng thời là Trưởng BM Kế toán đã chia sẻ, thảo luận về chương trình hợp tác giữa hai bên. Với mong muốn xây dựng chương trình đào tạo có chất lượng, hội nhập quốc tế và phù hợp với thị trường lao động, ngành Kế toán của Nhà trường sẽ nhận được sự hỗ trợ của ACCA về chương trình đào tạo, tài liệu giảng dạy của Chứng chỉ Lập báo cáo tài chính quốc tế (CertIFR) cung cấp nền tảng cơ bản về cách lập báo cáo tài chính theo Chuẩn mực Báo cáo Tài chính Quốc tế IFRS (ban hành bởi Ủy Ban Chuẩn mực Kế toán Quốc tế – IASB) với những cập nhật thường xuyên và xu hướng thay đổi trong tương lai. Học viên sẽ được tham gia phân tích kỹ nội dung của từng chuẩn mực IFRS cụ thể với các bài tập tình huống thực tiễn, làm các bài thi thử trắc nghiệm ở mỗi học phần để chuẩn bị cho bài thi chứng chỉ IFR do ACCA cấp.</p><p style=\"text-align: center;\"><img alt=\"\" data-cke-saved-src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA2.jpg?ver=2022-06-03-110421-090\" src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA2.jpg?ver=2022-06-03-110421-090\" style=\"width: 700px; height: 467px;\" title=\"\"></p><p style=\"text-align: center;\"><img alt=\"\" data-cke-saved-src=\"/Portals/0/HTQT/2022/Thang6/ACCA3.jpg?ver=2022-06-03-110421-057\" src=\"/Portals/0/HTQT/2022/Thang6/ACCA3.jpg?ver=2022-06-03-110421-057\" style=\"width: 700px; height: 467px;\" title=\"\"></p><p style=\"text-align: center;\"><em>Bà Khuất Thị Liên Hương – Giám đốc Đào tạo ACCA khu vực Đông Nam Á Lục địa và PGS.TS&nbsp;Nghiêm Văn Lợi – Phó trưởng Khoa Kinh tế và Quản lý chia sẻ về chương trình hợp tác giữa hai bên</em></p><p style=\"text-align: justify;\">Có thể nói, lễ ký kết Biên bản ghi nhớ đã đánh dấu sự hợp tác chính thức giữa hai bên, khẳng định mối quan hệ được xây dựng trên cơ sở tự nguyện, bình đẳng và cùng có lợi. Đây có thể coi là bước đệm cho Trường ĐHTL phát triển hợp tác với nhiều hiệp hội ngành nghề có uy tín khác trên toàn thế giới, tạo cơ hội cho các em sinh viên tiếp cận với các kiến thức thực tiễn, đủ năng lực đạt các chứng chỉ quốc tế, từ đó mở rộng cơ hội làm việc tại các doanh nghiệp trong và ngoài nước.</p><p style=\"text-align: center;\"><img alt=\"\" data-cke-saved-src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA4.jpg?ver=2022-06-03-110421-103\" src=\"https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA4.jpg?ver=2022-06-03-110421-103\" style=\"width: 700px; height: 467px;\" title=\"\"></p><p style=\"text-align: right;\"><strong>Hà Ngân - Phòng Hợp tác quốc tế</strong></p></div>\r\n        <div ng-bind-html=\"newsitem.Tags\" style=\"margin-top: 20px;text-align: justify;\" class=\"ng-binding\"></div>', 'https://www.tlu.edu.vn//Portals/0/HTQT/2022/Thang6/ACCA2.jpg?ver=2022-06-03-110421-090', 11, '2022-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
