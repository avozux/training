# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user.name = 'Nguyen Kim Tho'
user.username = 'nguyenkimtho'
user.email = 'tho.nguyen@vnetwork.vn'
user.password = 'Kimtho2012'
user.password_confirmation = 'Kimtho2012'
user.save!

user = Admin.new
user.name = 'Tho Nguyen'
user.email = 'tho.nguyen@vnetwork.vn'
user.password = 'Kimtho2012'
user.password_confirmation = 'Kimtho2012'
user.save!

courses = Course.create([
	{
		title: "Sản Phẩm & Dịch Vụ",
		course_slug: "products",
		description: "Tất cả sản phẩm dịch vụ đang kinh doanh của công ty. Để các bạn có thể nắm được từng loại dịch vụ, đặc điểm và trang bị được các kiến thức cần thiết trong công việc cũng như tư vấn bán hàng."
	},
	{
		title: "Kỹ Năng",
		course_slug: "skills",
		description: "Đào tạo kỹ năng trong công việc dành cho các phòng ban của công ty."
	},
	{
		title: "Hệ Thống",
		course_slug: "systems",
		description: "Đào tạo sử dụng các phần mềm quản lí, hỗ trợ cho công việc của công ty."
	}
])

topics = Topic.create([
	{
		title: "CDN",
		topic_slug: "content-delivery-network",
		description: "Tổng quan và kiến thức chung về CDN.",
		course_id: "1"
	},
	{
		title: "Tên Miền",
		topic_slug: "domain",
		description: "Tổng quan và kiến thức chung về tên miền.",
		course_id: "1"
	},
	{
		title: "Hosting",
		topic_slug: "hosting",
		description: "Tổng quan và kiến thức chung về hosting.",
		course_id: "1"
	},
	{
		title: "Website",
		topic_slug: "website",
		description: "Tổng quan về dịch vụ làm website.",
		course_id: "1"
	},
	{
		title: "Máy Chủ",
		topic_slug: "server",
		description: "Tổng quan và kiến thức chung về các loại máy chủ.",
		course_id: "1"
	},
	{
		title: "Email",
		topic_slug: "email",
		description: "Tổng quan và kiến thức chung về các sản phẩm email.",
		course_id: "1"
	},
	{
		title: "SSL",
		topic_slug: "secure-sockets-layer",
		description: "Tổng quan và kiến thức chung về sản phẩm SSL.",
		course_id: "1"
	},
	{
		title: "Kỹ Năng Bán Hàng",
		topic_slug: "ky-nang-ban-hang",
		description: "Tổng hợp các kỹ năng bán hàng",
		course_id: "2"
	},
	{
		title: "CRM",
		topic_slug: "customer-relationship-managerment",
		description: "Giới thiệu và hướng dẫn hệ thống CRM",
		course_id: "3"
	}
])

lessons = Lesson.create([
	{
		title: "Lesson 1: CDN là gì?",
		lesson_slug: "cdn-la-gi",
		description: "",
		topic_id: "1"
	},
	{
		title: "Lesson 2: Cơ chế hoạt động của CDN",
		lesson_slug: "co-che-hoat-dong-cua-cdn",
		description: "",
		topic_id: "1"
	},
	{
		title: "Lesson 3: Đặc điểm của CDN tại VNETWORK",
		lesson_slug: "dac-diem-cua-cdn-tai-vnetwork",
		description: "",
		topic_id: "1"
	},
	{
		title: "Lesson 4: Các chuyên đề xoay quanh CDN",
		lesson_slug: "cac-chuyen-de-xoay-quanh-cdn",
		description: "",
		topic_id: "1"
	},
	{
		title: "Lesson 1: Tên Miền là gì?",
		lesson_slug: "ten-mien-la-gi",
		description: "",
		topic_id: "2"
	},
	{
		title: "Lesson 2: Quy tắc đặt tên",
		lesson_slug: "quy-tac-dat-ten",
		description: "",
		topic_id: "2"
	}
])

chapters = Chapter.create([
	{ 
		title: "1. Tổng quan về CDN.",
		description: "",
		slug: "tong-quan-ve-cdn",
		lesson_id: "1",
		body: "",
		views_count: "1"
	},
	{ 
		title: "2. Các tính năng của CDN.",
		description: "",
		slug: "cac-tinh-nang-cua-cdn",
		lesson_id: "1",
		body: "",
		views_count: "1"
	},
	{ 
		title: "3. Tại sao phải sử dụng CDN.",
		description: "",
		slug: "tai-sao-phai-su-dung-cdn",
		lesson_id: "1",
		body: "",
		views_count: "1"
	},
	{ 
		title: "1. Cơ chế chung.",
		description: "",
		slug: "co-che-chung",
		lesson_id: "2",
		body: "",
		views_count: "1"
	},
	{ 
		title: "2. Các cơ chế hoạt động của CDN.",
		description: "",
		slug: "cac-co-che-hoat-dong-cua-cdn",
		lesson_id: "2",
		body: "",
		views_count: "1"
	},
	{ 
		title: "1. Cơ sở hạ tầng.",
		description: "",
		slug: "co-so-ha-tang",
		lesson_id: "3",
		body: "",
		views_count: "1"
	},
	{ 
		title: "2. Các tính năng của hệ thống.",
		description: "",
		slug: "cac-tinh-nang-cua-he-thong",
		lesson_id: "3",
		body: "",
		views_count: "1"
	},
	{ 
		title: "3. Đặc điểm nổi bật.",
		description: "",
		slug: "dac-diem-noi-bat",
		lesson_id: "3",
		body: "",
		views_count: "1"
	},
	{ 
		title: "4. Giá.",
		description: "",
		slug: "gia",
		lesson_id: "3",
		body: "",
		views_count: "1"
	},
	{ 
		title: "5. Cách theo dõi.",
		description: "",
		slug: "cach-theo-doi",
		lesson_id: "3",
		body: "",
		views_count: "1"
	},
	{ 
		title: "6. Các dịch vụ có thể tích hợp.",
		description: "",
		slug: "cac-dich-vu-co-the-tich-hop",
		lesson_id: "3",
		body: "",
		views_count: "1"
	},
	{ 
		title: "Cache là gì?",
		description: "",
		slug: "cache-la-gi",
		lesson_id: "4",
		body: "",
		views_count: "1"
	},
	{ 
		title: "Dos, DdoS là gì?",
		description: "",
		slug: "dos-ddos-la-gi",
		lesson_id: "4",
		body: "",
		views_count: "1"
	},
	{ 
		title: "HTTP là gì",
		description: "",
		slug: "http-la-gi",
		lesson_id: "4",
		body: "",
		views_count: "1"
	},
	{ 
		title: "1. Tên miền Quốc Tế",
		description: "",
		slug: "ten-mien-quoc-te",
		lesson_id: "5",
		body: "",
		views_count: "1"
	},
	{ 
		title: "2. Tên miền Việt Nam",
		description: "",
		slug: "ten-mien-viet-nam",
		lesson_id: "5",
		body: "",
		views_count: "1"
	},
	{ 
		title: "Quy ước tên miền quốc tế",
		description: "",
		slug: "quy-uoc-ten-mien-quoc-te",
		lesson_id: "6",
		body: "",
		views_count: "1"
	}
])

exams = Exam.create([
	{
		title: "Bài thi mẫu số 1: Không lối thoát",
		description: "Điểm số x 4 theo độ khó. Yêu cầu IQ cực cao, chống chỉ định với người mẫn cảm với người dễ bị kích ứng với câu hỏi hoặc các thành phần câu trả lời.",
		slug: "bai-thi-mau-so-1-khong-loi-thoat",
		time: "00:01:00",
		exam_level: "4",
		exam_topic: "3",
		exam_type: "1"
	},
	{
		title: "Bài thi mẫu số 2",
		description: "Bài thi cấp độ dễ nhất. Điểm số x 1. Thời gian làm bài 45 phút không kể thời gian phát đề.",
		slug: "bai-thi-mau-so-2",
		time: "00:45:00",
		exam_level: "1",
		exam_topic: "3",
		exam_type: "2"
	}
])

quizzes = Quiz.create([
	{
		title: "Câu 1",
		description: "chú thích câu hỏi",
		quiz_topic: "3",
		quiz_question: "Chọn từ phù hợp trong đoạn ca dao sau: Con mèo mà trèo cây cao, hỏi thăm chú ... đi đâu vắng nhà.",
		quiz_question_a: "Chó",
		quiz_question_b: "Chim",
		quiz_question_c: "Lợn",
		quiz_question_d: "Khỉ",
		quiz_answer_a: "t",
		exam_id: "1"
	},
	{
		title: "Câu 2",
		description: "chú thích câu hỏi",
		quiz_topic: "3",
		quiz_question: "Chọn từ phù hợp trong đoạn ca dao sau: Con ... mà trèo cây cao, hỏi thăm chú chuột đi đâu vắng nhà.",
		quiz_question_a: "Bò",
		quiz_question_b: "Gà",
		quiz_question_c: "Cá",
		quiz_question_d: "Trâu",
		quiz_answer_b: "t",
		exam_id: "1"
	},
	{
		title: "Câu 3",
		description: "chú thích câu hỏi",
		quiz_topic: "3",
		quiz_question: "Con vật nào sau đây có 4 chân nhưng chỉ di chuyển bằng 2 chân.",
		quiz_question_a: "Rắn",
		quiz_question_b: "Lươn",
		quiz_question_c: "Rết",
		quiz_question_d: "Bọ Chét",
		quiz_answer_c: "t",
		exam_id: "1"
	},
	{
		title: "Câu 4",
		description: "chú thích câu hỏi",
		quiz_topic: "3",
		quiz_question: "Có một ông cụ đi trên thuyền qua sông, hỏi tại sao ổng đi tới đi lui vẫn không qua được bờ bên kia.",
		quiz_question_a: "Ông cụ bị què",
		quiz_question_b: "Ông cụ bị mù",
		quiz_question_c: "Ông cụ bị khùng",
		quiz_question_d: "Ông cụ bị bệnh",
		quiz_answer_c: "t",
		exam_id: "1"
	},
	{
		title: "Câu 5",
		description: "chú thích câu hỏi",
		quiz_topic: "3",
		quiz_question: "Có một con vịt đi trước một con vịt, một con vịt đi sau một con vịt, một con gà đi sau một con vịt. Hỏi con gà đi trước mấy con gà.",
		quiz_question_a: "Một",
		quiz_question_b: "Hai",
		quiz_question_c: "Ba",
		quiz_question_d: "Bốn",
		quiz_answer_d: "t",
		exam_id: "1"
	},
	{
		title: "Câu 1",
		description: "chú thích câu hỏi",
		quiz_topic: "3",
		quiz_question: "Một cộng với một bằng bao nhiêu",
		quiz_question_a: "Một",
		quiz_question_b: "Hai",
		quiz_question_c: "Ba",
		quiz_question_d: "Bốn",
		quiz_answer_d: "t",
		exam_id: "2"
	},
])