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