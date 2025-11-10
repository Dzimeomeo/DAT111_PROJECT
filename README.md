# DAT111_PROJECT
Phân tích thói quen sử dụng mạng xã hội sinh viên


DAT111_PROJECT/
│
├── dataset/                 # Dữ liệu gốc và dữ liệu đã xử lý
│   ├── raw/                 # Dữ liệu thô (gốc, chưa chỉnh sửa)
│   ├── cleaned/             # Dữ liệu đã làm sạch (từ SQL, Power Query,...)
│   └── transformed/         # Dữ liệu đã xử lý, sẵn sàng mô hình (Power BI,...)
│
├── document/                # Tài liệu liên quan đến dự án
│   ├── proposal/            # Đề xuất ban đầu, kế hoạch, timeline
│   ├── report/              # Báo cáo cuối cùng (Word, PDF,...)
│   ├── presentation/        # File PowerPoint thuyết trình
│   └── reference/           # Tài liệu tham khảo (paper, hướng dẫn,...)
│
├── dashboard/               # File Power BI, Tableau, Looker Studio
│   ├── DAT111_MODELING.pbix
│   └── assets/              # Ảnh, icon, logo dùng trong dashboard
│
├── scripts/                 # Code ETL hoặc xử lý tự động (SQL, Python,...)
│   ├── sql/
│   ├── python/
│   └── powerquery/
│
├── results/                 # Xuất kết quả phân tích (CSV, hình ảnh, model,...)
│   ├── charts/
│   ├── tables/
│   └── exports/
│
├── .gitignore               # File loại trừ khi push lên GitHub
└── README.md                # Mô tả dự án, hướng dẫn cài đặt & phân công công việc
