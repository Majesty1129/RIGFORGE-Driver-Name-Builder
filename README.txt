RIGFORGE Driver Name Builder v9.0

Supabase의 estimates 한 줄은 고객 견적의 원본 데이터입니다.
Table Editor에서 직접 내용을 읽거나 수정할 필요가 없습니다.

사용 순서
1. Supabase SQL Editor에서 supabase-v9.sql을 한 번 실행
2. GitHub 저장소에 아래 파일 업로드/교체
   - index.html
   - admin.html
   - Nulshock-Bold.otf
3. GitHub Pages 배포 완료 후:
   - 고객 페이지: /RIGFORGE-Driver-Name-Builder/
   - 관리자 페이지: /RIGFORGE-Driver-Name-Builder/admin.html
4. 관리자 페이지에서 고객의 견적번호를 입력
5. 주문 내용 확인 후 각 옵션별 SVG 다운로드

보안 참고
- 관리자 페이지는 정확한 견적번호를 입력해야 한 건만 조회합니다.
- estimates 테이블 전체 SELECT 권한은 공개하지 않습니다.
- service_role/secret key는 GitHub에 넣지 않습니다.
