-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2024 lúc 02:46 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `newsfeednodejs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `noidung` varchar(10000) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `ngay` date NOT NULL,
  `danhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieude`, `noidung`, `hinhanh`, `ngay`, `danhmuc`) VALUES
(10, 'Trung vệ Bayern: \'Trọng tài thường đứng về phía Real\'', 'De Ligt đã sút tung lưới Real ở phút bù 13 hiệp hai, nhưng không được công nhận bàn vì trọng tài Tomasz Listkiewicz đã căng cờ báo Noussair Mazraoui việt vị và ông Szymon Marciniak cũng thổi còi trước khi De Ligt sút. VAR cũng không thể can thiệp tình huống này, do tiếng còi sớm của trọng tài. Dường như tổ trọng tài Ba Lan đã sai, khi Mazraoui không việt vị ở tình huống này.  \"Theo luật, khi tình huống việt vị không rõ ràng, trọng tài phải cho trận đấu tiếp tục vì còn có VAR sửa sai\", trung vệ người Hà Lan nói thêm. \"Bàn thắng của Joselu cũng gần như việt vị, nhưng họ không thổi còi sớm. Vậy tại sao trọng tài làm vậy với chúng tôi. Quyết định của họ có chút ô nhục\".  De Ligt xác nhận trọng tài đã xin lỗi Bayern sau trận đấu. \"Ông ấy đã nói với tôi rằng \'Tôi xin lỗi, tôi đã sai\'. Tôi không phải kiểu người thích đổ lỗi sau thất bại. Real xứng đáng vì họ đã thắng 2-1, nhưng tôi nghĩ luật là luật\", anh cho biết.  HLV Thomas Tuchel thì nói: \"Họ đã xin lỗi, nhưng để làm gì chứ. Sai lầm này sẽ không xảy ra, nếu tình huống rơi vào Real\".  Bayern vượt lên dẫn trước ở lượt về nhờ bàn của hậu vệ Alphonso Davies phút 68. Sau đó, Tuchel lần lượt rút ba cầu thủ tấn công Leroy Sane, Jamal Musiala và Harry Kane rời sân. Trong vòng ba phút cuối trận, tiền đạo Joselu ghi liền hai bàn giúp Real thắng ngược, tổng tỷ số 4-3, để vào chung kết gặp Dortmund trên sân Wembley.', '1715224490435-AnhchupManhinh20240509luc09013-5158-7457-1715220113.png', '2024-05-09', '3'),
(11, 'Enrique: \'Bóng đá đã tàn nhẫn với PSG\'', 'Theo Enrique, PSG thực sự xui xẻo trước khung thành Dortmund. Ông cho rằng đội nhà lẽ ra phải ghi ba bàn và thắng ít nhất 3-1. Tuy nhiên, nhà cầm quân người Tây Ban Nha cũng thừa nhận Dortmund xứng đáng thắng chung cuộc 2-0. \"Dortmund phải được chúc mừng ngay cả khi bóng đá tàn nhẫn với PSG. Chiến thắng rất quan trọng nhưng cũng phải biết cách thua. Mọi người đang theo dõi chúng tôi, đặc biệt là trẻ em\", ông nói.  Về bàn thua từ quả phạt góc, Enrique thừa nhận PSG không mạnh trong các tình huống cố định. Tuy nhiên, ông chỉ ra mặt tích cực về thể chất, kỹ thuật, chiến thuật, khả năng chấp nhận rủi ro và sự hiệp đồng với CĐV.  Cựu HLV Barca cũng nhận trách nhiệm về thất bại, khẳng định các cầu thủ đã làm đúng những gì mà ông yêu cầu, và hài lòng về màn trình diễn trong cả hai trận bán kết. \"Chúng tôi tuyệt vời ngay cả khi bóng đá không công bằng\", Enrique nói thêm. \"Chúng tôi phải vượt qua giai đoạn buồn này và đứng dậy. Tôi tự hào về từng cầu thủ\".', '1715224520041-de-ligt-bayern-jpeg-1715210446-9295-8748-1715210738.jpg', '2024-05-09', '3'),
(12, 'Trung vệ Bayern: \'Trọng tài thường đứng về phía Real\'', 'De Ligt đã sút tung lưới Real ở phút bù 13 hiệp hai, nhưng không được công nhận bàn vì trọng tài Tomasz Listkiewicz đã căng cờ báo Noussair Mazraoui việt vị và ông Szymon Marciniak cũng thổi còi trước khi De Ligt sút. VAR cũng không thể can thiệp tình huống này, do tiếng còi sớm của trọng tài. Dường như tổ trọng tài Ba Lan đã sai, khi Mazraoui không việt vị ở tình huống này.  \"Theo luật, khi tình huống việt vị không rõ ràng, trọng tài phải cho trận đấu tiếp tục vì còn có VAR sửa sai\", trung vệ người Hà Lan nói thêm. \"Bàn thắng của Joselu cũng gần như việt vị, nhưng họ không thổi còi sớm. Vậy tại sao trọng tài làm vậy với chúng tôi. Quyết định của họ có chút ô nhục', '1715224548868-tuchel-jpeg-1715208191-1715208-3094-3880-1715208305.jpg', '2024-05-09', '3'),
(13, 'Kane tiếp tục trắng tay', 'Kane rời Tottenham hè 2023 với tham vọng giành danh hiệu cùng Bayern - đội có ít nhất một chức vô địch mỗi mùa trong 11 năm qua. Nhưng chỉ sau 24 giờ Kane có mặt tại đội bóng Đức, Bayern thua Leipzig 0-3 ở trận tranh Siêu Cup. Đó được xem như điềm gở, báo hiệu một mùa giải sa sút thảm hại của đội bóng giàu truyền thống nhất nước Đức.  Lần gần nhất không danh hiệu, Bayern cũng không gây thất vọng lớn như mùa này. Mùa 2011-2012, họ kém Dortmund tám điểm ở Bundesliga và thua chính đối thủ này 2-5 ở chung kết Cup Quốc gia. Ở Champions League, Bayern cũng về nhì khi thua Chelsea ở loạt luân lưu, sau khi hòa 1-1 trong 120 phút.', '1715224577018-nvd-6086-jpg-1715178241-171517-9576-7548-1715178630.jpg', '2024-05-09', '3'),
(14, 'PSG - những nỗi đau nhuốm mùi tiền ở Champions League', 'Gói viện trợ gần 61 tỷ USD sau nhiều tháng mắc kẹt được cho là sẽ giúp Ukraine củng cố lực lượng, vực dậy sĩ khí và cản bước kế hoạch tấn công của Nga.  Trung úy Oleksandr đang chỉ huy đơn vị pháo binh Ukraine chống Nga ở mặt trận miền đông. Vũ khí họ có là lựu pháo M777 mà Mỹ cung cấp cùng các loại pháo khác. Khi trở về căn cứ tối 20/4, Oleksandr nhận được thông tin mà anh và hàng triệu người Ukraine mong đợi.  \"Tôi vừa bước vào căn cứ sau khi thay ca thì mọi người thông báo rằng gói viện trợ cuối cùng đã được Hạ viện Mỹ thông qua. Chúng tôi hy vọng nó sẽ đến tay càng sớm càng tốt\", anh nói.', '1715224619455-1-1715136968-4667-1715136999.jpg', '2024-05-09', '3'),
(15, 'Tác động của gói viện trợ Mỹ với chiến trường Ukraine', 'Ông Lê Thanh Hải, nguyên Ủy viên Bộ Chính trị, nguyên Bí thư Thành ủy TP HCM bị UBKT Trung ương đề nghị kỷ luật do chịu trách nhiệm trong các vi phạm liên quan Vạn Thịnh Phát.  Thông cáo phát chiều 8/5 của Ủy ban Kiểm tra Trung ương cho biết Ban cán sự đảng UBND TP HCM đã vi phạm nguyên tắc tập trung dân chủ, quy chế làm việc; thiếu trách nhiệm, buông lỏng lãnh đạo, chỉ đạo.  Hậu quả, UBND TP HCM và nhiều tổ chức, cá nhân vi phạm nghiêm trọng các quy định của Đảng, pháp luật của Nhà nước trong quản lý, sử dụng đất, tài chính, tài sản, đầu tư, quy hoạch, xây dựng ở các dự án do Công ty Cổ phần Tập đoàn Vạn Thịnh Phát và ở các gói thầu, dự án do Công ty Cổ phần Tiến bộ quốc tế (AIC) thực hiện. Nhiều tổ chức đảng, đảng viên bị kỷ luật hoặc xử lý hình sự.', '1715224634217-a1-1715178686-2316-1715178791.jpg', '2024-05-09', '3'),
(16, 'Ngoại hạng Anh ra mắt RefCam trong trận Crystal Palace - Man Utd', 'Ông Lê Thanh Hải, nguyên Ủy viên Bộ Chính trị, nguyên Bí thư Thành ủy TP HCM bị UBKT Trung ương đề nghị kỷ luật do chịu trách nhiệm trong các vi phạm liên quan Vạn Thịnh Phát.  Thông cáo phát chiều 8/5 của Ủy ban Kiểm tra Trung ương cho biết Ban cán sự đảng UBND TP HCM đã vi phạm nguyên tắc tập trung dân chủ, quy chế làm việc; thiếu trách nhiệm, buông lỏng lãnh đạo, chỉ đạo.  Hậu quả, UBND TP HCM và nhiều tổ chức, cá nhân vi phạm nghiêm trọng các quy định của Đảng, pháp luật của Nhà nước trong quản lý, sử dụng đất, tài chính, tài sản, đầu tư, quy hoạch, xây dựng ở các dự án do Công ty Cổ phần Tập đoàn Vạn Thịnh Phát và ở các gói thầu, dự án do Công ty Cổ phần Tiến bộ quốc tế (AIC) thực hiện. Nhiều tổ chức đảng, đảng viên bị kỷ luật hoặc xử lý hình sự.', '1715224713711-a1-1715178686-2316-1715178791.jpg', '2024-05-09', '3'),
(17, 'Tác động của gói viện trợ Mỹ với chiến trường Ukraine', 'Gói viện trợ gần 61 tỷ USD sau nhiều tháng mắc kẹt được cho là sẽ giúp Ukraine củng cố lực lượng, vực dậy sĩ khí và cản bước kế hoạch tấn công của Nga.  Trung úy Oleksandr đang chỉ huy đơn vị pháo binh Ukraine chống Nga ở mặt trận miền đông. Vũ khí họ có là lựu pháo M777 mà Mỹ cung cấp cùng các loại pháo khác. Khi trở về căn cứ tối 20/4, Oleksandr nhận được thông tin mà anh và hàng triệu người Ukraine mong đợi.  \"Tôi vừa bước vào căn cứ sau khi thay ca thì mọi người thông báo rằng gói viện trợ cuối cùng đã được Hạ viện Mỹ thông qua. Chúng tôi hy vọng nó sẽ đến tay càng sớm càng tốt\", anh nói.', '1715224727158-AnhchupManhinh20240509luc09013-5158-7457-1715220113.png', '2024-05-10', '3'),
(18, 'Trung vệ Bayern: \'Trọng tài thường đứng về phía Real\'', 'Gói viện trợ gần 61 tỷ USD sau nhiều tháng mắc kẹt được cho là sẽ giúp Ukraine củng cố lực lượng, vực dậy sĩ khí và cản bước kế hoạch tấn công của Nga.  Trung úy Oleksandr đang chỉ huy đơn vị pháo binh Ukraine chống Nga ở mặt trận miền đông. Vũ khí họ có là lựu pháo M777 mà Mỹ cung cấp cùng các loại pháo khác. Khi trở về căn cứ tối 20/4, Oleksandr nhận được thông tin mà anh và hàng triệu người Ukraine mong đợi.  \"Tôi vừa bước vào căn cứ sau khi thay ca thì mọi người thông báo rằng gói viện trợ cuối cùng đã được Hạ viện Mỹ thông qua. Chúng tôi hy vọng nó sẽ đến tay càng sớm càng tốt\", anh nói.', '1715224738999-z5414265955271447d752ae19f39f6-6543-1936-1714994953.jpg', '2024-05-09', '3'),
(19, 'Tác động của gói viện trợ Mỹ với chiến trường Ukraine', 'De Ligt đã sút tung lưới Real ở phút bù 13 hiệp hai, nhưng không được công nhận bàn vì trọng tài Tomasz Listkiewicz đã căng cờ báo Noussair Mazraoui việt vị và ông Szymon Marciniak cũng thổi còi trước khi De Ligt sút. VAR cũng không thể can thiệp tình huống này, do tiếng còi sớm của trọng tài. Dường như tổ trọng tài Ba Lan đã sai, khi Mazraoui không việt vị ở tình huống này.  \"Theo luật, khi tình huống việt vị không rõ ràng, trọng tài phải cho trận đấu tiếp tục vì còn có VAR sửa sai\", trung vệ người Hà Lan nói thêm. \"Bàn thắng của Joselu cũng gần như việt vị, nhưng họ không thổi còi sớm. Vậy tại sao trọng tài làm vậy với chúng tôi. Quyết định của họ có chút ô nhục\".  De Ligt xác nhận trọng tài đã xin lỗi Bayern sau trận đấu. \"Ông ấy đã nói với tôi rằng \'Tôi xin lỗi, tôi đã sai\'. Tôi không phải kiểu người thích đổ lỗi sau thất bại. Real xứng đáng vì họ đã thắng 2-1, nhưng tôi nghĩ luật là luật\", anh cho biết.  HLV Thomas Tuchel thì nói: \"Họ đã xin lỗi, nhưng để làm gì chứ. Sai lầm này sẽ không xảy ra, nếu tình', '1715224773151-de-ligt-bayern-jpeg-1715210446-9295-8748-1715210738.jpg', '2024-05-09', '3'),
(20, 'Liverpool đè bẹp Tottenham', 'Gói viện trợ gần 61 tỷ USD sau nhiều tháng mắc kẹt được cho là sẽ giúp Ukraine củng cố lực lượng, vực dậy sĩ khí và cản bước kế hoạch tấn công của Nga.  Trung úy Oleksandr đang chỉ huy đơn vị pháo binh Ukraine chống Nga ở mặt trận miền đông. Vũ khí họ có là lựu pháo M777 mà Mỹ cung cấp cùng các loại pháo khác. Khi trở về căn cứ tối 20/4, Oleksandr nhận được thông tin mà anh và hàng triệu người Ukraine mong đợi.  \"Tôi vừa bước vào căn cứ sau khi thay ca thì mọi người thông báo rằng gói viện trợ cuối cùng đã được Hạ viện Mỹ thông qua. Chúng tôi hy vọng nó sẽ đến tay càng sớm càng tốt\", anh nói.', '1715224791466-realmadridvfcbayernmunchen-171-7689-3767-1715214483.jpg', '2024-05-09', '3'),
(21, 'Tour chuyên nói dối hút khách ở Tokyo', 'NHẬT BẢNLies Tour là chuyến tham quan mới ra mắt ở Tokyo, nơi du khách biết rõ thông tin hướng dẫn viên cung cấp đều dối trá nhưng vẫn hào hứng tham gia.  Vào một buổi chiều ở quận đông khách du lịch Asakusa của Tokyo, nhóm 16 du khách đứng trên vỉa hè bên ngoài cửa hàng Uniqlo, hướng dẫn viên tay cầm chiếc máy ghi âm rồi chỉ vào cửa hàng nói: \"Công ty Minato Shokuhin, nổi tiếng với nước sốt ponzu gừng, từng có trụ sở ở đây\". Sau đó người này ấn nút trên chiếc máy ghi âm để phát ra tiếng \"leng keng\" - âm thanh được cho là gắn liền với công ty bán nước sốt hiện đã ngừng sản xuất.  Một du khách khoảng 20 tuổi nói trước đây bà của anh cũng từng ngâm nga bài hát về loại nước tương của công ty này. \"Sản phẩm từng được thế hệ bà của bạn rất yêu thích\", hướng dẫn viên đồng tình và chuyến tham quan tiếp tục.', '1715225822523-anh-5-1715157369-1715159889.jpg', '2024-05-09', '1'),
(22, 'Quán cà phê Hải Phòng với kỷ lục \'vũ trụ siêu anh hùng\'', 'Alien Coffee nằm ở phường Thượng Lý, quận Hồng Bàng do anh Hoàng Anh Tuấn, 43 tuổi, mở cách đây một năm.  Anh Tuấn không chỉ nổi tiếng với biệt danh AlienDVD trong giới chơi mô hình ở Việt Nam mà còn là người sở hữu bộ sưu tập mô hình chính hãng, giá trị và phong phú nhất.  Ngày 15/4, Tổ chức Kỷ lục Việt Nam xác nhận Alien Coffee là quán cà phê trưng bày bộ sưu tập chính hãng các mô hình nhân vật siêu anh hùng, game, nhân vật truyện tranh và phim điện ảnh có số lượng nhiều nhất. Tầng một 200 m2 của quán chỉ bố trí 4 bàn uống nước, còn lại là dãy tủ kính bày kín mô hình.  Theo anh Tuấn, khách đến quán thường không ngồi một chỗ mà luôn di chuyển ngắm, chụp ảnh với mô hình nên không cần quá nhiều chỗ ngồi.', '1715225948309-vj2-1711339265-7793-1711339335.jpg', '2024-05-10', '1'),
(23, 'Phòng nghỉ nhà dân ở Điện Biên giá cao như khách sạn', 'Cận dịp đại lễ 70 năm Chiến thắng Điện Biên Phủ, các phòng nghỉ nhà dân quanh trung tâm tăng giá lên 600.000 đến 800.000 đồng, ngang giá khách sạn 3 sao.  Sáng 5/5, Minh Hoàng, sống tại Hà Nội, tìm phòng tại Điện Biên cho đêm 7/5 nhưng không thấy khách sạn nào còn trống. Khi hỏi một số người dân đăng cho thuê phòng trên mạng, anh được báo giá từ 600.000 đồng mỗi đêm, một số không có điều hòa.  \"Phòng hầu như chỉ có đồ cơ bản nhưng giá ngang khách sạn\", anh Hoàng nhận xét và cho biết vẫn tiếp tục tìm phòng giá hợp lý hơn.  Ông Phạm Anh Vũ - Giám đốc Truyền thông công ty Du lịch Việt - nói giá đặt trước các khách sạn 2-3 sao ở Điện Biên khoảng 550.000-750.000 đồng mỗi đêm. Đại diện công ty này cho biết có 19 đoàn và 4 xe chở khách lẻ đi Điện Biên dịp lễ, nhu cầu cao nhưng từ tháng 4 đã chốt sổ vì không đặt được thêm phòng. Nơi nghỉ dạng nhà dân lại thường nâng giá cao.', '1715225976605-executive-suite-1715049392.jpg', '2024-05-09', '1'),
(24, 'Vườn quốc gia Cúc Phương mở tour đêm', 'NINH BÌNHTối 4/5, gần 100 du khách tham gia tour đầu tiên bằng xe điện xem đom đóm và động vật hoang dã ban đêm tại Vườn quốc gia Cúc Phương.  Hầu hết du khách trong chuyến trải nghiệm đầu tiên đều rất háo hức, theo đại diện Vườn quốc gia Cúc Phương.  \"Tôi từng đi các vườn thú đêm và các safari ở nhiều nơi, nhưng trải nghiệm ở đây khác biệt vì hoàn toàn tự nhiên. Hơi tiếc một chút vì hôm qua chưa có nhiều đom đóm\", anh Thanh Tùng, đến từ TP Ninh Bình, cho biết.  \"Chỉ có thể ngắm đom đóm và động vật trong rừng bằng mắt thường, không chụp được ảnh vì tối, nhưng rất thú vị\", một du khách khác cho hay.', '1715226003058-dom-dom-jpeg-3567-1714878639.jpg', '2024-05-09', '1'),
(25, '48 giờ ở Vũng Tàu', 'TP Vũng Tàu là điểm đến quanh năm, phù hợp cho kỳ nghỉ ngắn dịp cuối tuần, nơi du khách có thể leo núi, tắm biển và trải nghiệm food tour.  TP Vũng Tàu cách TP HCM khoảng 120 km, là nơi du khách đến TP HCM công tác thường kết hợp tham quan, nghỉ ngơi ngắn ngày. Hành trình 48 giờ ở TP Vũng Tàu do chị Hà My, một người dân sống hơn 20 năm ở Vũng Tàu, gợi ý và theo trải nghiệm của phóng viên VnExpress.  Ngày 1  Buổi sáng và trưa  Xuất phát sớm từ TP HCM, thời gian di chuyển khoảng hơn 2 tiếng. Nếu du khách không sử dụng phương tiện cá nhân thì xe limousine và tàu cánh ngầm là cách đi lại hợp lý và thuận tiện nhất. Giá vé dao động từ 200.000 đồng đến 300.000 đồng một chiều.  Đến TP Vũng Tàu, ăn sáng và uống cà phê tại khu ven biển. Một số món và quán ăn được gợi ý: bún riêu tôm Thuận Phúc, hủ tiếu mực (đường Hoàng Hoang Thám). Giá món dao động từ 30.000 đồng đến 50.000 đồng một suất. Bánh mì chả cá trên các xe bánh mì di động cũng là một lựa chọn.  Uống cà phê tại tuyến đường biển Hạ Long và Trần Phú, từ Bãi Trước tới Bãi Dâu. Nơi đây có nhiều quán đẹp, du khách có thể chọn một quán theo nhu cầu.', '1715226074217-Vung-Tau-6034-1714726487.jpg', '2024-05-09', '1'),
(26, 'Hầm chỉ huy của tướng De Castries ở Điện Biên Phủ được mệnh danh là gì?', 'Hầm chỉ huy của tướng De Castries là căn hầm kiên cố, quan trọng của thực dân Pháp, ngày nay trở thành điểm tham quan thu hút khách du lịch tại Điện Biên.  Du lịch Điện Biên Câu 1/5:  Nơi nào ở Điện Biên Phủ có căn hầm cố thủ, vốn là hầm rượu của toà công sứ Pháp trước năm 1945?  A. Đồi A1B. Hầm chỉ huy của tướng Đờ CátC. Cánh đồng Mường ThanhD. Đồi C1', '1715226105658-executive-suite-1715049392.jpg', '2024-05-09', '1'),
(27, 'Địa điểm thưởng lãm pháo hoa tối 30/4 ở TP HCM', 'TP HCM bắn pháo hoa tại 5 điểm, từ 21h đến 21h15 ngày 30/4, du khách có nhiều lựa chọn ngắm pháo hoa tại nơi công cộng hay các khách sạn, nhà hàng tầng cao.  Thành phố sẽ bắn pháo hoa tầm cao tại khu vực đầu Đường hầm sông Sài Gòn thuộc phường Thủ Thiêm, TP Thủ Đức. 4 điểm tầm thấp, gồm hai điểm tại Khu biệt thự Thảo Điền (bắn trên sà lan), Công viên văn hóa Đầm Sen (quận 11), khu đô thị Vạn Phúc (TP Thủ Đức) và Lô N4-D6 Khu Công nghiệp Tây Bắc, xã Tân An Hội, huyện Củ Chi.  Du khách vui chơi tại trung tâm thành phố trong dịp lễ có thể lưu lại các địa điểm dưới đây để lựa chọn chỗ ngắm pháo hoa phù hợp.  Địa điểm ngắm pháo hoa công cộng  Bến Bạch Đằng là địa điểm ngắm pháo hoa quen thuộc của người dân TP HCM, nằm ngay trung tâm quận 1. Công viên nằm đối diện, cách điểm bắn pháo hoa đầu đường hầm sông Sài Gòn (TP Thủ Đức) khoảng 4 km. Khu vực này rộng rãi, thoáng đãng và có tầm nhìn hướng thẳng về phía khu vực bắn.', '1715226163627-423582399-375459461849587-4632-2328-1666-1714264587.jpg', '2024-05-09', '1'),
(28, 'Cây phượng đỏ trên đồi A1 Điện Biên Phủ thu hút khách chụp hình', 'Những ngày cuối tháng 4 đầu tháng 5, hàng chục nghìn du khách tìm về Điện Biên Phủ, nơi in dấu son lịch sử về chiến thắng \"Lừng lẫy năm châu, chấn động địa cầu\". Đồi A1 ở phường Mường Thanh, TP Điện Biên Phủ, từng là cứ điểm quan trọng bậc nhất trong tập đoàn cứ điểm của thực dân Pháp ở Điện Biên Phủ, luôn đông đúc từ sáng tới chiều muộn. Bên cạnh những hầm hào, rào thép gai, xe tăng thì đồi A1 nổi bật hơn với hai cây phượng nở rộ trên đỉnh, bên cạnh hố bộc phá 960 kg.ĐIỆN BIÊNHai cây phượng nở đỏ rực trên đỉnh đồi A1 dịp 70 năm Chiến thắng Điện Biên Phủ thu hút đông đảo du khách đến thăm quan, chụp ảnh.', '1715226216687-DSC-2466-1714786437.jpg', '2024-05-10', '1'),
(29, 'Khách Việt \'săn\' hoa mơ ở ngôi làng Ấn Độ', 'Bùi Xuân Việt, sống tại Đồng Nai, lần thứ ba trở lại làng Turtuk trong chuyến đi Ladakh hồi tháng 4 để chụp ảnh mùa hoa mơ.  \"Dù đến bao lần, tôi vẫn thấy rõ cảm giác yên bình ở đây. Làng Turtuk bên con sông xanh biếc, được bao bọc bởi dãy Himalaya đẹp như bức tranh\", anh nói.  Turtuk là điểm cực bắc của vùng Ladakh, Ấn Độ, giáp Pakistan. Cho tới năm 2010, du lịch đến làng vẫn còn hạn chế.Cư dân ở đây chủ yếu theo đạo Hồi, khác biệt với hầu hết khu vực khác thuộc Ladakh - nơi chịu ảnh hưởng nhiều từ Phật giáo. Hiện tại, không có khách sạn ở khu vực này nên khách thường chỉ đến trong ngày, cắm trại hoặc ở nhờ nhà dân.  Trong ảnh là một trong những bức hình Việt ưng ý nhất. Anh đã chạy theo bà lão một quãng khá xa để canh đúng lúc bà vác cỏ dưới những tán hoa mơ đua nở. Anh nói \"mừng vì bà đồng ý chụp ảnh\", vì phụ nữ đạo Hồi \"hơi khó chuyện chụp ảnh\".', '1715226271947-dsc4660-copy-1714233170-1714233189-1714233984.jpg', '2024-05-09', '1'),
(30, 'Thế giới đồ ăn vặt đường phố ở Seoul', 'Hongdae nằm trên con phố cùng tên là khu chợ đêm nổi tiếng ở Seoul, Hàn Quốc. Nơi đây được biết đến là trung tâm thời trang, nghệ thuật, văn hóa và là khu ẩm thực đường phố sôi động, thu hút đông đảo du khách ghé thăm.  Trên ảnh là một xe bán khoai lang nướng ở ngay đầu phố Hongdae, giá 4.000 won (gần 80.000 đồng) một củ.Một quầy bán đồ ăn nhanh gồm bánh bột mì, bạch tuộc và hotteok - bánh rán Hàn Quốc.  Các món ăn tại chợ hầu hết là đồ ăn nhẹ, có giá từ 1.000 đến 10.000 won (19.000 -190.000 đồng).', '1715226312465-banh3-1714213268-1714964158-1714964452.jpg', '2024-05-09', '1'),
(31, 'Vì sao Thanh Hóa đứng đầu du lịch cả nước dịp lễ 30/4?', 'Ngày 4/5, bà Nguyễn Thị Nguyệt, Trưởng phòng Quản lý Du lịch, Sở Văn hóa, Thể thao và Du lịch Thanh Hóa, cho hay lượng khách du lịch dịp nghỉ lễ vừa qua tại địa phương được thống kê dựa trên dữ liệu từ các điểm du lịch. Khách đến tăng do nhiều nguyên nhân chủ quan và khách quan.  Đại diện Sở phân tích kỳ nghỉ kéo dài, thời tiết nắng nóng, là một trong những nguyên nhân chính khiến người dân đi du lịch nhiều hơn. Thanh Hóa lại là địa phương có đa dạng các sản phẩm như du lịch biển, các bãi tắm nổi tiếng gồm Sầm Sơn, Hải Tiến, Hải Hòa; du lịch sinh thái nghỉ dưỡng có Pù Luông, Bến En; du lịch văn hóa tâm linh địa phương có nhiều di tích lịch sử văn hóa nổi tiếng như di sản văn hóa thế giới Thành nhà Hồ, di tích quốc gia đặc biệt Lam Kinh, đền Bà Triệu, Lê Hoàn.  Theo bà Nguyệt, những năm gần đây, các khu du lịch của Thanh Hóa đã đầu tư đồng bộ, hiện đại. Thanh Hóa cách Hà Nội khoảng 160 km, có đường cao tốc Bắc Nam, đường Hồ Chí Minh, quốc lộ 1A, quốc lộ 10 đi qua giúp kết nối với các tỉnh Đông Bắc Bộ, Đồng bằng sông Hồng, Tây Bắc bộ thuận tiện hơn so với trước.', '1715226366559-z5396916443434-008ea540e19ea6e-5243-2192-1714802773.jpg', '2024-05-09', '1'),
(33, 'Thường trực Chính phủ: Điện mặt trời tự sản, tự tiêu khuyến khích bán có điều kiện', 'Để xây dựng các Nghị định này, từ năm 2022 đến nay, Thường trực Chính phủ, Thủ tướng Chính phủ đã có nhiều văn bản chỉ đạo. Tuy nhiên, tiến độ triển khai xây dựng, trình ban hành các văn bản này còn chậm, chưa đáp ứng kịp thời yêu cầu phát triển kinh tế, xã hội và nhu cầu của người dân doanh nghiệp.</p><p>Để đẩy nhanh tiến độ xây dựng, bảo đảm chất lượng, tính khả thi của các Nghị định nêu trên, Thường trực Chính phủ đề nghị Bộ Công Thương, các bộ liên quan phải nghiêm túc thực hiện đầy đủ, đúng yêu cầu của Thường trực Chính phủ.</p><p>Trong đó, đối với Nghị định quy định cơ chế mua bán điện trực tiếp giữa đơn vị phát điện năng lượng tái tạo với khách hàng sử dụng điện lớn, Thường trực Chính phủ lưu ý: Trong quá trình xây dựng nghị định cần nghiên cứu các quy định về cơ chế giá, phí truyền tải và các chi phí phát sinh khác; đánh giá tác động đến các chủ thể, nhất là EVN. Trên cơ sở đó, Bộ Công Thương khẩn trương hoàn thiện hồ sơ trình Chính phủ trước ngày 15/5/2024.</p><p>Thường trực Chính phủ cũng đưa ra ý kiến đối với tiến độ xây dựng hai Nghị định: Cơ chế, chính sách khuyến khích phát triển điện mặt trời mái nhà tự sản, tự tiêu và cơ chế phát triển các dự án điện sử dụng khí thiên nhiên và khí LNG.</p><p>Đây là hai cơ chế, chính sách quan trọng, tạo điều kiện cho các doanh nghiệp, người dân chủ động một phần nguồn điện, sản xuất, phát triển xanh, góp phần giảm áp lực về nhu cầu cung ứng điện lên hệ thống điện quốc gia, góp phần bảo đảm cung ứng điện trong năm 2024 và các năm tiếp theo.</p><p>Tuy nhiên, để 2 Nghị định nêu trên đi vào cuộc sống, khuyến khích được người dân sử dụng nguồn năng lượng tái tạo sẵn có, Thường trực Chính phủ đề nghị Bộ Công Thương bổ sung, làm rõ các nội dung chính sách, bảo đảm thực hiện đúng mục tiêu khuyến khích một cách thực chất, khả thi trên cơ sở lợi ích hài hòa, rủi ro chia sẻ. Đồng thời, rà soát kỹ lưỡng để đảm bảo việc đề xuất chính sách không được sơ hở dẫn đến việc lợi dụng chính sách.</p>', '1715230789380-z5396916443434-008ea540e19ea6e-5243-2192-1714802773.jpg', '2024-05-09', '2'),
(34, 'Bộ Giáo dục: 56.200 chứng chỉ IELTS \'trái phép\' được dùng bình thường', '<p>Hơn 56.200 chứng chỉ IELTS của IDP bị kết luận sai phép, vẫn được dùng trong thi, tuyển sinh và đào tạo, theo Bộ Giáo dục.</p><p>Cục Quản lý chất lượng, Bộ Giáo dục và Đào tạo, chiều 9/5 cho biết các chứng chỉ năng lực ngoại ngữ của nước ngoài khi đáp ứng điều kiện bảo đảm chất lượng, sẽ được sử dụng bình thường, theo các quy định của Bộ.</p><p>Dù không đề cập 56.200 chứng chỉ IELTS của IDP cấp năm 2022, nhưng Bộ nêu hai văn bản hướng dẫn xác minh chứng chỉ nước ngoài và xét miễn bài thi ngoại ngữ tốt nghiệp THPT vào tháng 6/2023. Trong đó, Bộ chấp nhận mọi chứng chỉ được cấp trước và sau ngày 10/9/2022 (thời điểm thông tư 11, hướng dẫn các bên tổ chức thi và cấp chứng chỉ ngoại ngữ quốc tế ở Việt Nam, có hiệu lực).</p><p>Như vậy, những thí sinh đã dùng chứng chỉ IELTS để được miễn thi môn tiếng Anh trong xét tốt nghiệp THPT và đăng ký xét tuyển đại học không bị ảnh hưởng</p>', '1715256107722-2oszi3tbk1f2yts1svpsfav1iag6n8-5696-4458-1715225701.jpg', '2024-05-09', '2'),
(35, 'IDP: 56.200 chứng chỉ IELTS năm 2022 \'được thế giới công nhận\'', '<p>Trước đó, Thanh tra Bộ cho rằng ngày 17/11/2022, Bộ mới cho phép IDP cùng các bên Việt Nam liên kết tổ chức thi và cấp chứng chỉ, nhưng từ đầu năm, IDP đã làm việc này. Hơn 100 đợt thi ở 30 tỉnh, thành cùng 56.200 chứng chỉ IELTS được cấp trước 17/11 là trái quy định.</p><p>Kết luận này liên quan đến sự kiện <a href=\"https://vnexpress.net/topic/hoan-thi-ielts-26525\">hoãn thi IELTS</a> ở Việt Nam, tháng 11/2022. Theo Nghị định 86 năm 2018 của Chính phủ (có hiệu lực từ 1/8/2018), việc liên kết đào tạo và tổ chức cấp chứng chỉ ngoại ngữ của nước ngoài do Bộ Giáo dục và Đào tạo phê duyệt. Tuy nhiên, đến tháng 7 năm 2022, Bộ mới ra thông tư hướng dẫn, yêu cầu các đơn vị tổ chức thi và cấp chứng chỉ làm đề án, trình Bộ cấp phép. Nhiều bên không đáp ứng nên bị Bộ tuýt còi, phải đồng loạt dừng các kỳ thi IELTS, TOEFL, HSK (tiếng Trung), TOPIK (tiếng Hàn), NAT- TEST (tiếng Nhật)...</p><p>Khi đó, hàng nghìn học sinh, sinh viên bị ảnh hưởng vì chứng chỉ không được các đại học chấp nhận. Trong khi nhiều nhóm thí sinh phải ra nước ngoài thi chứng chỉ để làm hồ sơ du học.</p><p>IELTS là bài thi Anh ngữ quốc tế, gồm bốn kỹ năng: Nghe, Nói, Đọc và Viết, phục vụ mục đích học tập, làm việc và định cư, được công nhận rộng rãi trên thế giới.</p><p>Tại Việt Nam, hiện gần 100 đại học <a href=\"https://vnexpress.net/topic/xet-tuyen-dai-hoc-bang-ielts-25886\">tuyển sinh bằng điểm IELTS</a> kết hợp với học bạ hoặc điểm thi tốt nghiệp THPT. Nếu có chứng chỉ này, sinh viên cũng được miễn một số học phần tiếng Anh và xét công nhận chuẩn đầu ra ngoại ngữ để được cấp bằng đại học.</p><p>IDP và Hội đồng Anh (BC) là hai đơn vị tổ chức thi IELTS tại Việt Nam. Hiện, mỗi đơn vị này có hơn 100 đối tác liên kết trên cả nước.</p>', '1715256174549-IELTS-png-9333-1715247173.jpg', '2024-05-09', '2'),
(36, 'Học phí ĐH Bách khoa TP HCM cao nhất 80 triệu đồng', '<p>Năm 2024, học phí trường Đại học Bách khoa TP HCM khoảng 40-80 triệu đồng một năm, cao nhất với các chương trình dạy bằng tiếng Anh.</p><p>Thông tin học phí năm học 2024-2025 được trường Đại học Bách khoa, Đại học Quốc gia TP HCM, công bố cùng đề án tuyển sinh, chiều 9/5.</p><p>So với năm ngoái, mức học phí không tăng nhưng trường công bố cụ thể cho từng chương trình đào tạo. Trong đó, chương trình tiêu chuẩn, tài năng, kỹ sư chất lượng cao Việt-Pháp có mức học phí thấp nhất, trung bình 30 triệu đồng một năm.</p><p>Cao nhất là chương trình dạy hoàn toàn bằng tiếng Anh và chuyển tiếp quốc tế, khoảng 80 triệu đồng mỗi năm.</p>', '1715256218188-WhytakeIELTSwithIDPT1370x242IM-9895-3343-1715164160.jpg', '2024-05-09', '2'),
(37, 'Dự kiến 23.000 học sinh Hà Nội không thi lớp 10', '<p>HÀ NỘIKhoảng 23.000 học sinh tốt nghiệp THCS không dự kỳ thi lớp 10 công lập năm nay, theo ước tính của Sở Giáo dục và Đào tạo.</p><p>Theo báo cáo của Sở về công tác tuyển sinh đầu cấp, năm nay khoảng 133.000 học sinh tốt nghiệp lớp 9. Trong đó, hơn 110.000 em đăng ký thi vào lớp 10 công lập.</p><p>Số thí sinh dự kiến không tham gia kỳ thi tương tự năm ngoái, trong khi số học sinh tốt nghiệp và đăng ký thi tăng khoảng 4.000-6.000.</p><p>Sở cho hay 127 trường THPT công lập (gồm cả trường chuyên, trường tự chủ) sẽ tuyển 81.000 em, tương đương 61% tổng số học sinh tốt nghiệp. Tỷ lệ này như mọi năm, song chỉ tiêu ở hầu hết quận nội thành <a href=\"https://vnexpress.net/ly-do-nhieu-truong-noi-thanh-ha-noi-giam-chi-tieu-lop-10-4736109.html\">giảm</a>, có thể khiến sự cạnh tranh ở khu vực này tăng lên.</p><p>Các trường tư thục đáp ứng khoảng 30.000 chỗ. Ngoài ra, học sinh có thể theo học tại các trung tâm giáo dục thường xuyên và trường nghề.</p><p>Sở khẳng định thi vào lớp 10 công lập là quyền lợi của thí sinh, yêu cầu các trường không vận động học sinh bỏ thi. Nếu phát hiện, Sở sẽ xử lý nghiêm.</p>', '1715256274629-anh-1-khach-hang-co-the-dem-ba-1999-3398-1715255367.jpg', '2024-05-09', '2'),
(38, '4 dấu hiệu trên da cảnh báo phổi không khỏe', '<p>Vàng da, ít tiết mồ hôi trên mặt, sưng tím có thể là dấu hiệu thuyên tắc phổi, dẫn đến chặn lưu lượng máu, gây tổn thương cơ quan này.</p><p>Phổi cung cấp oxy và đào thải khí cacbonic, bảo vệ cơ thể khỏi các tác nhân có hại tồn tại trong không khí, duy trì các hoạt động sống. Do phải tiếp xúc trực tiếp với môi trường bên ngoài nên phổi dễ nhiễm virus, vi khuẩn, nấm... Dưới đây là một số biểu hiện trên da cảnh báo tình trạng sức khỏe của cơ quan này.</p><p><strong>Da đổi màu</strong></p><p>Nguyên nhân thường do bệnh sarcoidosis (u hạt) gây ra các u nhỏ tạo thành tế bào viêm trong phổi, ảnh hưởng đến bất kỳ cơ quan nào trên cơ thể. Bệnh thường có biểu hiện như ho khan dai dẳng, khó thở, đau ngực, khiến da thay đổi màu sắc. Vùng da có thể đậm hoặc nhạt màu hơn và xuất hiện các nốt dưới da, nhất là xung quanh vết sẹo hoặc hình xăm.</p><p><strong>Sưng tím, đau ở chân</strong></p><p>Đây có thể là dấu hiệu huyết khối tĩnh mạch sâu, cục máu đông ở chân. Cục máu đông có thể vỡ ra và đi vào phổi (thuyên tắc phổi), khiến máu bị chặn lại, gây ra tổn thương phổi.</p><p><strong>Vàng da, ngứa</strong></p><p>Ung thư phổi lan đến tuyến tụy, gan hoặc ống mật khiến nồng độ bilirubin cao hơn bình thường. Tích tụ bilirubin trong cơ thể gây vàng da, mắt. Bilirubin là chất màu vàng được tạo ra trong quá trình phân hủy hồng cầu bình thường. Ngứa da cũng cảnh báo ung thư phổi đã lan đến gan.</p>', '1715256301380-anh-5-1715157369-1715159889.jpg', '2024-05-09', '2'),
(39, 'Cán bộ tư vấn tuyển sinh FUNiX yêu nghề nhờ học viên truyền động lực', '<p>Chị Nguyễn Thị Phương Hoa, Hà Nội tìm thấy niềm vui trong công việc mới nhờ môi trường làm việc linh hoạt, cởi mở, học viên giàu nghị lực.</p><p>Hơn 10 năm làm việc trong lĩnh vực Kế toán Thương Mại, Sản xuất và dịch vụ, chị Phương Hoa thuận lợi đi theo đúng ngành nghề mình học tập. Tuy nhiên đến cuối năm 2021, chị mong muốn tìm một công việc mới để thay đổi môi trường.</p><p>\"Công ty tôi gắn bó suốt 10 năm rất tốt, song tôi muốn khám phá bản thân đồng thời tự bứt phá, vượt lên chính mình\", chị Hoa nói. Khi biết đến nghề hannix - tư vấn tuyển sinh trực tuyến ở FUNiX, chị Hoa đã rất hứng thú và tin rằng đây là công việc mà bản thân muốn thử sức.</p>', '1715256349310-WhytakeIELTSwithIDPT1370x242IM-9895-3343-1715164160 (1).jpg', '2024-05-09', '2'),
(40, '\'Người trẻ sẽ đối mặt thị trường lao động cạnh tranh toàn cầu\'', '<p>Theo Tiến sĩ Nguyễn Thành Nam, trong bối cảnh công nghệ phát triển không ngừng, các bạn trẻ ngày nay sẽ phải đối mặt với thị trường lao động có tính cạnh tranh toàn cầu.</p><p>Chia sẻ của nhà sáng lập <a href=\"https://funix.edu.vn/\">FUNiX </a>trong chương trình Tư vấn hướng nghiệp trực tuyến do FUNiX cùng Trường THCS - THPT Ban Mai đồng hành tổ chức tối 19/4. Chương trình còn có sự tham gia của khách mời Thạc sĩ Đặng Thị Thanh Tùng - chuyên gia tâm lý học lâm sàng trẻ em và vị thành niên và Thạc sĩ Trần Thị Luyến - Phó Hiệu trưởng Trường THCS - THPT Ban Mai. Sự kiện thu hút sự quan tâm của hơn 150 phụ huynh, học sinh cấp hai, ba đến từ trường THCS - THPT Ban Mai</p><p>Với gần 20 năm kinh nghiệm trong đánh giá sàng lọc kiểm tra tâm lý, tư vấn, trị liệu tâm lý cho trẻ em và vị thành niên, Thạc sĩ Đặng Thị Thanh Tùng cho rằng hành trình hướng nghiệp nên bắt đầu ngay từ khi trẻ học cấp hai. Trong giai đoạn này, phụ huynh nên định hướng cho con tham gia vào các hoạt động trải nghiệm nhiều lĩnh vực khác nhau, nhằm bước đầu khám phá thiên hướng, thế mạnh, yêu thích của bản thân.</p><p>Khi trẻ lên lớp 10, gia đình nên bắt đầu khuyến khích con có những hình dung, suy nghĩ rõ ràng hơn về mong muốn, dự định tương lai; cùng thảo luận với con để lên kế hoạch thực hiện. \"Quá trình này phải được dựa trên sự thấu hiểu về bản thân của chính các bạn trẻ, phụ huynh chỉ đóng vai trò là người gợi mở, đồng hành, chứ tuyệt đối không nên áp đặt những kỳ vọng của mình cho con\", Thạc sĩ Thanh Tùng nhấn mạnh.</p>', '1715256397416-Image-ExtractWord-2-Out-5282-1713947173.png', '2024-05-09', '2'),
(41, 'Học sinh Việt cuống cuồng ôn thi vào đại học Trung Quốc', '<p>Nhàn, Hà và Hương lùng sục tìm đề thi thử, chật vật với môn Toán, Lý bằng tiếng Trung, khi các đại học nước này bất ngờ yêu cầu thi tuyển, thay vì chỉ xét học bạ.</p><p>Cách đây vài ngày, Hoàng Thanh Nhàn, lớp 12 trường THPT Đồng Hỷ, Thái Nguyên, nhận tin Đại học Giao thông Tây Nam yêu cầu phải thi đầu vào, với môn Toán và tiếng Trung thương mại. Nữ sinh trước đó nộp hồ sơ ứng tuyển học bổng vào ngành Giao thông vận tải.</p><p>\"Từ giờ đến lúc thi chỉ còn hơn 20 ngày trong khi em chưa biết dạng đề và ôn gì\", Nhàn cho hay.</p><p>Phạm Hà cũng đang rối bời khi phải thi hai môn tương tự. Hà ứng tuyển ngành Kinh tế của Đại học Khoa học Kỹ thuật Hoa Trung. Hôm 4/5, trường gửi mail báo lịch thi vào 25/5.</p><p>\"Em hơi sợ vì chưa biết nội dung đề thi ra sao. Học sinh còn không được dùng máy tính khi thi Toán\", Hà nói.</p><p>Hà tốt nghiệp THPT năm ngoái, học Đại học Ngoại thương một kỳ nhưng bảo lưu để theo đuổi ước mơ du học Trung Quốc. Hồi tháng 3, nữ sinh sang học tiếng một kỳ tại Đại học Ngôn ngữ Bắc Kinh để chuẩn bị hồ sơ. Suốt một năm chỉ tập trung học tiếng, giờ phải thi Toán, nữ sinh Hải Phòng hoang mang.</p>', '1715256434005-436209875-749908770616619-5839-3882-8839-1714968647.jpg', '2024-05-09', '2'),
(42, 'Tuyển giáo viên sang Mỹ dạy tiếng Việt', '<p>Chương trình Fulbright Trợ giảng tiếng Việt (FLTA) tại các đại học, cao đẳng ở Mỹ đang tìm kiếm 5 ứng viên người Việt sang làm trợ giảng trong 9 tháng.</p><p>Phái đoàn Ngoại giao Mỹ tại Việt Nam hôm 8/5 cho biết ngoài 5 ứng viên chính thức sẽ chọn thêm hai người dự bị.</p><p>Học bổng gồm vé máy bay khứ hồi đến Mỹ, sinh hoạt phí hàng tháng, bảo hiểm y tế, và miễn học phí các môn học bắt buộc. Để nộp hồ sơ, ứng viên cần có quốc tịch và cư trú tại Việt Nam, đã tốt nghiệp đại học; hiện làm giáo viên môn tiếng Anh hoặc trong lĩnh vực có liên quan với không quá 7 năm kinh nghiệm giảng dạy.</p>', '1715256480442-hoc-bong-1385-1715155745.jpg', '2024-05-09', '2'),
(43, 'Tạm ứng cho trường Quốc tế Mỹ 1,35 tỷ để đóng phí thi Tú tài', '<p>TP HCMSắp tới kỳ thi lấy bằng Tú tài của học sinh lớp 12 nhưng trường Quốc tế Mỹ Việt Nam (AISVN) chưa đóng lệ phí gần 1,35 tỷ đồng, được Tổ liên ngành tạm ứng để giải quyết.</p><p>Thông tin được một thành viên Tổ công tác liên ngành về trường Quốc tế Mỹ Việt Nam xác nhận tối 6/5.</p><p>Theo kế hoạch, 75 học sinh lớp 12 trường AISVN sẽ tham gia kỳ thi lấy bằng Tú tài quốc tế (tốt nghiệp THPT) vào ngày 17/5. Nếu không đóng lệ phí trước 15/5, tổ chức Tú tài quốc tế (IBO) - đơn vị giữ bản quyền chương trình IB sẽ không công nhận kết quả của học sinh. Không có bằng, các em mất cơ hội xét tuyển vào đại học.</p><p>Chiều 6/5, tổ công tác liên ngành đã họp đại diện phụ huynh lớp 12, lãnh đạo trường AISVN để giải quyết. Ba bên thống nhất sẽ chi tạm ứng gần 1,35 tỷ đồng, với điều kiện AISVN phải cam kết trả lại phụ huynh số đã thu hồi đầu năm.</p><p>\"Ngày mai, tổ công tác sẽ duyệt chi để trường đóng lệ phí gấp cho IBO\", vị này cho hay.</p><p>Trước đó, tài khoản đồng sở hữu ba bên là Sở Giáo dục - trường Quốc tế Mỹ - đại diện phụ huynh được lập, nhằm duy trì hoạt động của trường từ tháng 4 tới hết năm học. Hiện tài khoản này còn dư hơn 2,1 tỷ đồng, không đủ trả lương tháng 4 cho giáo viên và các khoản vận hành. Trong khi đó, lệ phí thi IB của học sinh lớp 12 đã được AISVN thu đủ từ phụ huynh hồi đầu năm.</p>', '1715256518118-423584372-812992507520342-3696-2126-6733-1715003330.jpg', '2024-05-09', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `idbaiviet` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `email`, `noidung`, `idbaiviet`) VALUES
(3, 'caothang@gmail.com', 'good', 22),
(4, 'caotahngt@gmail.com', 'ok', 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sodienthoai` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `ten`, `diachi`, `sodienthoai`, `email`, `facebook`, `youtube`) VALUES
(1, 'Cao Đăng 22WEBB', 'cao thắng', '0334280017', 'caothang@gmail.com', 'https://www.youtube.com/', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(100) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Giải Trí'),
(2, 'Giáo Dục'),
(3, 'Thể Thao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(100) NOT NULL,
  `ten` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `sodienthoai` varchar(1000) NOT NULL,
  `tieude` varchar(1000) NOT NULL,
  `noidung` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `ten`, `email`, `sodienthoai`, `tieude`, `noidung`) VALUES
(9, 'khanh tran quoc', 'morning123blue@gmail.com', '0334280017', 'Hỗ Trợ Web PHP', 'Hỗ Trợ Web PHP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sodienthoai` varchar(100) NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `sodienthoai`, `trangthai`) VALUES
(1, 'khanh@gmail.com', '1234', 'Trần Quốc Khánh', '0334280017', 1),
(2, 'huudung@gmail.com', '1234', 'Tran Thien Huu Dung', '098787222', 1),
(3, 'lehoangkhang@gmail.com', '1234', 'Khang le', '022222222', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1698;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
