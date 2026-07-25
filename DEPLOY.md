# RIGFORGE Driver Name Builder v8.3

## GitHub Pages 배포

1. GitHub에서 새 저장소를 만듭니다.
   - 예: `rigforge-driver-name-builder`
2. 이 폴더 안의 파일을 저장소 최상위에 업로드합니다.
   - `index.html`
   - `Nulshock-Bold.otf`
   - `supabase.sql`
3. GitHub 저장소의 `Settings → Pages`로 이동합니다.
4. `Build and deployment`를 다음과 같이 설정합니다.
   - Source: `Deploy from a branch`
   - Branch: `main`
   - Folder: `/ (root)`
5. 저장하면 GitHub Pages 주소가 생성됩니다.

## Supabase 연결

1. Supabase 프로젝트에서 `SQL Editor`를 엽니다.
2. `supabase.sql` 내용을 실행합니다.
3. `Table Editor → estimates`에서 저장된 견적을 확인합니다.
4. 고객용 HTML에는 Publishable/anon key만 사용합니다.
5. `service_role` 또는 Secret key는 절대로 GitHub에 올리지 마세요.

## 현재 연결 정보

- Supabase project:
  `https://hbabjwicpilqoqbfdqlz.supabase.co`
- SmartStore:
  `https://smartstore.naver.com/shoplixmarket/products/13682188335`

## v8.3 주요 수정

- 전체 UI가 멈추던 JavaScript 문법 오류 수정
- 기본 이름 제거
- placeholder: `예) MAX VERSTAPPEN`
- 이름이 비어 있으면 `견적 추가` 비활성화
- 첫 옵션 추가 후 이름 잠금
- 동일 이름의 총 수량이 2개 이상이면 모든 품목 개당 1,000원 할인
- 할인 후 상품금액 50,000원 이상 무료배송
- 배송비 3,000원
