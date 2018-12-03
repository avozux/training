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
		title: "Bài 1: CDN là gì?",
		lesson_slug: "cdn-la-gi",
		description: "Giới thiệu về cdn",
		topic_id: "1"
	},
	{
		title: "Bài 2: Transcoding",
		lesson_slug: "transcoding",
		description: "Giới thiệu về transcoding",
		topic_id: "1"
	},
	{
		title: "Bài 3: Transmuxing",
		lesson_slug: "transmuxing",
		description: "Giới thiệu về transmuxing",
		topic_id: "1"
	}
])

chapters = Chapter.create([
	{ 
		title: "1. Giới thiệu về CDN",
		description: "Căn bản về CDN",
		slug: "gioi-thieu-ve-cdn",
		lesson: "1",
		body: "",
		views_count: "1"
	},
	{ 
		title: "2. Mô hình mạng lưới CDN",
		description: "Tổng quan về mạng lưới phân tải nội dung (Content Delivery Network - CDN).",
		slug: "mo-hinh-mang-luoi-cdn",
		lesson: "1",
		body: "",
		views_count: "1"
	},
	{ 
		title: "3. Cơ chế hoạt động của CDN",
		description: "Tổng quan cơ chế hoạt động của CDN",
		slug: "co-che-hoat-dong-cua-cdn",
		lesson: "1",
		body: "",
		views_count: "1"
	}
])