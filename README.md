# Wedding Venue Planner

웨딩홀 후보, 체크리스트, 비용, 메모, 지도 핀을 함께 관리하는 정적 웹앱입니다.

## 실행

로컬에서 바로 열 수 있습니다.

```bash
python -m http.server 8765
```

그 다음 브라우저에서 엽니다.

```text
http://localhost:8765/
```

## Supabase 연결

1. Supabase SQL Editor에서 `outputs/supabase-wedding-planner.sql` 내용을 실행합니다.
2. 앱에서 `서버` 버튼을 누릅니다.
3. Supabase `Project URL`과 `anon public key`를 입력합니다.
4. `현재 데이터 서버에 저장`을 누릅니다.

Supabase 연결값은 코드에 저장하지 않고, 사용하는 브라우저의 localStorage에 저장됩니다.

## 배포

GitHub Pages, Netlify, Vercel 같은 정적 호스팅에 올릴 수 있습니다.

GitHub Pages를 쓸 경우 저장소 루트의 `index.html`을 기준으로 배포하면 됩니다.
