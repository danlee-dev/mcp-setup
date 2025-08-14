# MCP Setup for Claude Code

Model Context Protocol (MCP) 서버를 Claude Code CLI와 연결하기 위한 설정 파일 및 스크립트입니다.

## 포함된 파일

- `mcp-settings.json`: MCP 서버 설정 파일
- `setup.sh`: 자동 설치 및 설정 스크립트

## 설치 방법

### 자동 설치

```bash
git clone https://github.com/danlee-dev/mcp-setup.git
cd mcp-setup
./setup.sh
```

### 수동 설치

1. MCP 서버 패키지 설치:
```bash
npm install -g @modelcontextprotocol/server-filesystem @modelcontextprotocol/server-memory @modelcontextprotocol/server-github
```

2. Claude Code에 MCP 서버 추가:
```bash
claude mcp add filesystem npx @modelcontextprotocol/server-filesystem $HOME
claude mcp add memory npx @modelcontextprotocol/server-memory
claude mcp add github npx @modelcontextprotocol/server-github
```

## 설정 확인

```bash
claude mcp list
```

## 사용 방법

Claude Code CLI 실행 시 MCP 도구들이 자동으로 활성화됩니다:
```bash
claude
```

## MCP 서버 목록

### Filesystem MCP
홈 디렉토리에 대한 파일 시스템 접근을 제공합니다.

### Memory MCP
메모리 기반 데이터 저장소를 제공합니다.

### GitHub MCP
GitHub API를 통한 저장소, 이슈, PR 관리를 제공합니다.

### Notion MCP
Notion 워크스페이스 연동을 제공합니다.

### Image Vision MCP
OpenRouter의 vision 모델을 사용한 이미지 분석을 제공합니다.

## 설정 방법

### Notion 설정
1. [Notion 통합](https://www.notion.so/profile/integrations)에서 새 통합 생성
2. 생성된 토큰을 환경 변수로 설정:
   ```bash
   export NOTION_API_KEY=your_notion_token_here
   ```
3. 접근하려는 Notion 페이지에 통합 권한 부여

### 이미지 분석 설정
1. [OpenRouter](https://openrouter.ai/)에서 API 키 생성
2. API 키를 환경 변수로 설정:
   ```bash
   export OPENROUTER_API_KEY=your_openrouter_api_key_here
   ```

## 요구 사항

- Node.js 및 npm
- Claude Code CLI
- macOS/Linux (Windows는 WSL 필요)

## 문제 해결

MCP 서버가 연결되지 않는 경우:
1. `claude mcp list`로 서버 상태 확인
2. `~/.claude.json` 파일에서 MCP 설정 확인
3. Claude Code 재시작

## 라이선스

MIT