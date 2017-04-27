//
//  ViewController.swift
//  TableViewTest
//
//  Created by Cntt20 on 4/26/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //
    @IBOutlet weak var myTableView: UITableView!
    //
    let weekDays = ["Monday", "Tuesday", "Wednesday", "Thusday", "Friday", "Saturday", "Sunday"]
    var mondays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    var tuesdays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    var wednesdays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    var thusdays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    var fridays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    var saturdays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    var sundays = ["Đạp xe", "Nhảy dây", "Bơi lội", "Chạy bộ", "Nghe nhạc", "Dành thời gian mơ mộng", "Nhìn vật màu xanh", "Vẽ nguệch ngoạc", "Đọc", "Giấc ngủ ngắn"]
    //
    var demondays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    var detuesdays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    var dewednesdays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    var dethusdays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    var defridays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    var desaturdays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    var desundays = ["Phương pháp tuyệt vời nhất để đốt cháy mỡ thừa và giảm cân nhanh chóng vào mùa hè này là đi xe đạp. Một giờ đi xe đạp với cường độ mạnh có thể giúp bạn giải phóng đến 850 calo. Tuy nhiên, nếu bạn đang sống ở thành phố, hãy mua một chiếc xe đạp tập tại chỗ. Bạn có thể sử dụng bao nhiêu lần tại nhà tùy ý, miễn là uống đủ nước để duy trì độ ẩm cơ thể trong khoảng thời gian này.", "Nhảy dây không còn là một trò chơi vui nhộn cho trẻ em nữa. Trên thực tế, đây là một trong những bài tập tốt nhất giúp đốt cháy lượng calo dư thừa trong khoảng thời gian ngắn. Một giờ nhảy dây có thể đốt cháy khoảng 700-800 calo. Tuy nhiên, cường độ nhảy dây đủ để đạt hiệu quả không phải vấn đề đơn giản. Nếu bạn là người mới bắt đầu, hãy khởi động kĩ trong khoảng 10 đến 20 phút trước khi nhảy.", "Bạn không cần phải đổ mồ hôi liên tục trong phòng tập gym nữa. Thay vào đó, hòa mình xuống làn nước xanh tươi của hồ bơi trong 1 giờ đồng hồ, bạn đã tiêu hao được đến đến 700 calo. Bơicũng sẽ giúp bạn giữ dáng vẻ cân đối, sẵn sàng cho một cơ thể nóng bỏng với bikini và là cách thư giãn hoàn hảo trong suốt mùa hè.", "Chạy được coi là phương pháp luyện tập đòi hỏi nhiều sự nỗ lực nhất từ trước đến nay. Hoạt động này làm giảm stress, trầm cảm và giúp bạn cảm thấy có sức sống. Chạy có thể tiêu hao khoảng 600 calo trong một giờ hoặc thậm chí nhiều hơn nếu bạn gia tăng mức độ tập luyện. Nếu bạn muốn giảm nhiều cân trong một tháng, chạy là điều bạn cần thực hiện.", "Nghiên cứu cho thấy bộ não của chúng ta hoạt động tốt hơn sau khi nghe nhạc, nhưng quan trọng phải là thể loại nhạc mà ta yêu thích. Bởi khi yêu thích thì ta mới có cảm hứng.", "Với tất cả những thông tin chúng ta xử lý mỗi ngày, não có thể cảm thấy quá tải. Não quá tải có thể làm cho nó khó khăn có được những ý tưởng sáng tạo. Tại sao không thử để cho mình mơ màng trong 10 phút để giúp não nghỉ ngơi? Ai biết được những ý tưởng sáng tạo sẽ có được khi ta đang mơ.", "Một nghiên cứu cho thấy những người liếc nhìn một cái gì đó màu xanh trước khi thực hiện một nhiệm vụ đã có thể đưa ra câu trả lời với trí tưởng tượng và sáng tạo hơn so với những người nhìn màu sắc khác.", "Chỉ với một cây bút và một tờ giấy, đó đã có thể là một trong những cách đơn giản nhất để rèn luyện bộ não của chúng ta. Không quan trọng việc ta vẽ gì, chỉ cần việc vẽ này đem lại cho ta cơ hội để tâm trí lang thang.", "Trong khi bạn có thể không có thời gian để đọc một cuốn tiểu thuyết dày thì một vài trang của một cuốn sách cũng đủ để ta rèn luyện sự sáng tạo. Đọc giúp ích cho ta từ việc mở rộng tâm hồn cho đến việc có những cách suy nghĩ mới. Đọc là một cách tuyệt vời để thúc đẩy sự sáng tạo nhanh chóng.", "Một giấc ngủ ngắn nạp năng lượng trong 10 phút có thể là điều để cho bộ não tăng cường khả năng sáng tạo. Nghiên cứu cho thấy não phải sẽ tăng khả năng sáng tạo nhờ những giấc ngủ ngắn. Não phải được gọi là trung tâm của sự sáng tạo."]
    //
    var temp = ""
    var temp1 = ""
    var temp2 = ""
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    //
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    func numberOfSections(in tableView: UITableView) -> Int {
        return weekDays.count
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return mondays.count
        }
        if section == 1
        {
            return tuesdays.count
        }
        if section == 2
        {
            return wednesdays.count
        }
        if section == 3
        {
            return thusdays.count
        }
        if section == 4
        {
            return fridays.count
        }
        if section == 5
        {
            return saturdays.count
        }
        if section == 6
        {
            return sundays.count
        }
        
        return -1
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! EventTableViewCell
        //
        if (indexPath.section==0)
        {
            cell.firstLabel.text = mondays[indexPath.row]
            cell.secondLabel.text = demondays[indexPath.row]
        }
        if (indexPath.section==1)
        {
            cell.firstLabel.text = tuesdays[indexPath.row]
            cell.secondLabel.text = detuesdays[indexPath.row]
        }
        if (indexPath.section==2)
        {
            cell.firstLabel.text = wednesdays[indexPath.row]
            cell.secondLabel.text = dewednesdays[indexPath.row]
        }
        if (indexPath.section==3)
        {
            cell.firstLabel.text = thusdays[indexPath.row]
            cell.secondLabel.text = dethusdays[indexPath.row]
        }
        if (indexPath.section==4)
        {
            cell.firstLabel.text = fridays[indexPath.row]
            cell.secondLabel.text = defridays[indexPath.row]
        }
        if (indexPath.section==5)
        {
            cell.firstLabel.text = saturdays[indexPath.row]
            cell.secondLabel.text = desaturdays[indexPath.row]
        }
        if (indexPath.section==6)
        {
            cell.firstLabel.text = sundays[indexPath.row]
            cell.secondLabel.text = desundays[indexPath.row]
        }
        return cell
    }
    
    //
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return weekDays[section]
    }
    
    //
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            if (indexPath.section==0)
            {
                mondays.remove(at: indexPath.row)
            }
            if (indexPath.section==1)
            {
                tuesdays.remove(at: indexPath.row)
            }
            if (indexPath.section==2)
            {
                wednesdays.remove(at: indexPath.row)
            }
            if (indexPath.section==3)
            {
                thusdays.remove(at: indexPath.row)
            }
            if (indexPath.section==4)
            {
                fridays.remove(at: indexPath.row)
            }
            if (indexPath.section==5)
            {
                saturdays.remove(at: indexPath.row)
            }
            if (indexPath.section==6)
            {
                sundays.remove(at: indexPath.row)
            }
            
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
   
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        temp1 = weekDays[indexPath.section]
        if let cell = tableView.cellForRow(at: indexPath) as? EventTableViewCell{
            
            temp = cell.firstLabel.text!
            temp2 = cell.secondLabel.text!
            NSLog(temp)
            performSegue(withIdentifier: "showDetail", sender: self)
        }
    }
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailViewController
        destinationVC.nameEventC = temp
        destinationVC.dayEventC = temp1
        destinationVC.detailEventC = temp2
    }
}

