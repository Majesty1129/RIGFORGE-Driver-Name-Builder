RIGFORGE Driver Name System v12.0

구성
- index.html : 고객용 Driver Name Builder
- admin.html : 관리자용 견적/주문 관리
- Nulshock-Bold.otf : 미리보기 및 SVG 글꼴

버전 표시
- 고객 페이지: CUSTOMER · BUILD v12.0
- 관리자 페이지: ADMIN · BUILD v12.0
- Supabase 저장값 builder_version: 12.0

적용 방법
1. GitHub 저장소의 index.html과 admin.html을 둘 다 교체합니다.
2. Nulshock-Bold.otf는 같은 폴더에 유지합니다.
3. GitHub Pages 배포가 끝난 뒤 Ctrl+F5로 새로고침합니다.
4. 관리자 페이지는 /admin.html 로 접속합니다.
5. 관리자 페이지의 '고객 빌더 열기'는 /index.html?v=12.0 을 엽니다.

주의
- index.html만 교체하면 고객 페이지에만 새 버전이 적용됩니다.
- admin.html만 교체하면 관리자 화면만 새 버전이 적용됩니다.
- 이번 ZIP은 두 파일을 한 세트로 교체하도록 구성했습니다.
- Supabase SQL을 다시 실행할 필요는 없습니다.
