# 🧠 Central de Skills Essenciais do Antigravity

Repositório central unificado contendo **93 skills de elite**, com foco especial em **Design (taste, awesome-design-skills), Segurança robusta, /deploy na Vercel e Qualidade de Código**.

---

## 🎯 Destaques do Ecossistema

Este repositório foi calibrado para entregar a máxima potência produtiva mantendo o consumo de tokens **abaixo de 8.000 tokens** (apenas ~36% do limite do sistema), evitando estouros de contexto e descartes de skills pelo Antigravity.

### 🌟 Pilares Principais:
1. **🎨 Designer, UI/UX & Art Direction (11 skills)**:
   - `taste` & `design-taste-frontend`: Direção de arte anti-slop, inspeção em navegador real e polimento visual estilo Awwwards.
   - `awesome-design-skills`: Catálogo de 67+ design systems (Bento, Brutalism, Claymorphism, Claude, Neo-Brutalism, etc.).
   - `ui-ux-pro-max`, `frontend-design`, `frontend-ui-engineering`, `tailwind-patterns`, `web-design-guidelines`, `web-perf`, `generative_ui`, `mobile-design`.
2. **🛡️ Segurança Completa & Hardening (9 skills)**:
   - `security-and-hardening` (OWASP Top 10, sanitização e sessões seguras).
   - `security-audit`, `vulnerability-scanner`, `deep-security-scan`, `threat-model`, `red-team-tactics`, `attack-path-analysis`, `security-diff-scan`, `propose-security-hardening`.
   *(Sem as 21 etapas redundantes do pipeline Mantis)*.
3. **🚀 /deploy na Vercel & Produção (4 skills)**:
   - Comando interativo `/deploy` (com suporte nativo a Vercel, pré-flight checks e rollback).
   - `deploy-to-vercel`, `deployments-cicd`, `vercel-functions`.
4. **💻 Qualidade de Código, Arquitetura & Testes (31 skills)**:
   - Clean Code, TDD, Playwright E2E, Systematic Debugging, APIs REST/GraphQL/tRPC, Node, Python, Rust, Postgres e Git Worktrees.

---

## 🚀 Como usar em qualquer projeto (Sem duplicar arquivos)

### Método 1: Disponibilidade Global Automática (Recomendado)
No seu arquivo global `~/.gemini/config/skills.json` (`C:\Users\<seu-usuario>\.gemini\config\skills.json`):

```json
{
  "entries": [
    {
      "path": "C:/Users/rafae/OneDrive/Área de Trabalho/PROJETOS/skills/skills"
    }
  ]
}
```

### Método 2: Declarar no Projeto via `.agents/skills.json`
Em qualquer pasta de projeto (todos os seus projetos locais já estão configurados com isso):
```json
{
  "entries": [
    {
      "path": "C:/Users/rafae/OneDrive/Área de Trabalho/PROJETOS/skills/skills"
    }
  ]
}
```

---

## ☁️ Como sincronizar na Nuvem (GitHub) para qualquer computador

### No seu computador principal:
```bash
git add .
git commit -m "feat: central unificada de 93 skills de design, seguranca e codigo"
git push origin master
```

### Em qualquer nova máquina:
```bash
git clone https://github.com/rafaelmotocplus729-coder/antigravity-skills.git ~/.agents/skills
```

---

## 📚 Catálogo Completo das 93 Skills Curadas

### 📂 Designer, UI/UX & Frontend Taste (11)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/taste/SKILL.md) | tasteskill v2, the anti-slop frontend skill. Art direction for websites, distilled from a study of 247 curated gallery sites (O... |
| [$s](./skills/design-taste-frontend/SKILL.md) | tasteskill v2, the anti-slop frontend skill. Art direction for websites, distilled from a study of 247 curated gallery sites (O... |
| [$s](./skills/awesome-design-skills/SKILL.md) | Curated registry of 67+ design system skills from bergside/awesome-design-skills and TypeUI. Use when applying design themes (B... |
| [$s](./skills/ui-ux-pro-max/SKILL.md) | AI-powered design intelligence with 50+ styles, 95+ color palettes, and automated design system generation |
| [$s](./skills/frontend-design/SKILL.md) | Design thinking and decision-making for web UI. Use when designing components, layouts, color schemes, typography, or creating ... |
| [$s](./skills/frontend-ui-engineering/SKILL.md) | Builds production-quality, accessible, responsive user-facing UIs. Use when building or modifying interfaces and pages, creatin... |
| [$s](./skills/tailwind-patterns/SKILL.md) | Tailwind CSS v4 principles. CSS-first configuration, container queries, modern patterns, design token architecture. |
| [$s](./skills/web-design-guidelines/SKILL.md) | Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility", "audit design"... |
| [$s](./skills/web-perf/SKILL.md) | Audit, diagnose, or optimize website loading and interaction performance, Core Web Vitals, and Lighthouse performance scores. |
| [$s](./skills/generative_ui/SKILL.md) | How to render rich interactive HTML widgets inline in the chat or as standalone artifacts. Use this skill when you want to show... |
| [$s](./skills/mobile-design/SKILL.md) | Mobile-first design thinking and decision-making for iOS and Android apps. Touch interaction, performance patterns, platform co... |

### 📂 Segurança & Hardening (9)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/security-and-hardening/SKILL.md) | Hardens code against vulnerabilities. Use when auditing an input handler for vulnerabilities, when handling user input, authent... |
| [$s](./skills/security-audit/SKILL.md) | Security guidance and vulnerability review for codebases, APIs, services, CLI tools, libraries, and daemons. Use for security q... |
| [$s](./skills/vulnerability-scanner/SKILL.md) | Advanced vulnerability analysis principles. OWASP 2025, Supply Chain Security, attack surface mapping, risk prioritization. |
| [$s](./skills/deep-security-scan/SKILL.md) | Use when the user asks for a deep, exhaustive, multi-pass, or variance-reducing repository-wide or scoped-path Codex Security s... |
| [$s](./skills/threat-model/SKILL.md) | Use when Codex is already in the threat-modeling phase of a security scan, the user explicitly invokes $threat-model, or the us... |
| [$s](./skills/red-team-tactics/SKILL.md) | Red team tactics principles based on MITRE ATT&CK. Attack phases, detection evasion, reporting. |
| [$s](./skills/attack-path-analysis/SKILL.md) | Use when Codex is already in the attack-path-analysis phase of a security scan or the user explicitly asks to trace a security ... |
| [$s](./skills/security-diff-scan/SKILL.md) | Review a pull request, commit, branch diff, or working-tree patch for security vulnerabilities. |
| [$s](./skills/propose-security-hardening/SKILL.md) | Develop evidence-backed structural and architectural security hardening proposals from vulnerability disclosures, supplied find... |

### 📂 /deploy na Vercel & Produção (4)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/deploy/SKILL.md) | Deployment command for production releases. Pre-flight checks and deployment execution. |
| [$s](./skills/deploy-to-vercel/SKILL.md) | Deploy applications and websites to Vercel. Use when the user requests deployment actions like "deploy my app", "deploy and giv... |
| [$s](./skills/deployments-cicd/SKILL.md) | Vercel deployment and CI/CD expert guidance. Use when deploying, promoting, rolling back, inspecting deployments, building with... |
| [$s](./skills/vercel-functions/SKILL.md) | Vercel Functions expert guidance â€” Node.js/Bun/Python runtimes, Fluid Compute, long-duration (30 min) functions, large functi... |

### 📂 Qualidade de Código, Arquitetura & Backend (19)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/clean-code/SKILL.md) | Pragmatic coding standards - concise, direct, no over-engineering, no unnecessary comments |
| [$s](./skills/code-review-and-quality/SKILL.md) | Conducts multi-axis code review. Use before merging any change. Use when reviewing code written by yourself, another agent, or ... |
| [$s](./skills/code-simplification/SKILL.md) | Simplifies code for clarity. Use when refactoring code for clarity without changing behavior. Use when code works but is harder... |
| [$s](./skills/architecture/SKILL.md) | Architectural decision-making framework. Requirements analysis, trade-off evaluation, ADR documentation. Use when making archit... |
| [$s](./skills/api-and-interface-design/SKILL.md) | Guides stable API and interface design. Use when designing APIs, module boundaries, or any public interface. Use when creating ... |
| [$s](./skills/api-patterns/SKILL.md) | API design principles and decision-making. REST vs GraphQL vs tRPC selection, response formats, versioning, pagination. |
| [$s](./skills/create-a-backend/SKILL.md) | Backend architecture guidance. Use when planning, building, or migrating an API or backend; choosing between Functions, Service... |
| [$s](./skills/database-design/SKILL.md) | Database design principles and decision-making. Schema design, indexing strategy, ORM selection, serverless databases. |
| [$s](./skills/auth/SKILL.md) | Authentication integration guidance â€” Clerk (native Vercel Marketplace), Better Auth, Descope, and Auth0 setup for Next.js ap... |
| [$s](./skills/nodejs-best-practices/SKILL.md) | Node.js development principles and decision-making. Framework selection, async patterns, security, and architecture. Teaches th... |
| [$s](./skills/python-patterns/SKILL.md) | Python development principles and decision-making. Framework selection, async patterns, type hints, project structure. Teaches ... |
| [$s](./skills/rust-pro/SKILL.md) | Master Rust 1.75+ with modern async patterns, advanced type system |
| [$s](./skills/react-best-practices/SKILL.md) | Vercel's React and Next.js performance rules (70 rules in 8 categories ordered by impact - eliminating waterfalls, bundle size,... |
| [$s](./skills/incremental-implementation/SKILL.md) | Delivers changes incrementally in thin, verifiable slices. Use when implementing any feature or change that touches more than o... |
| [$s](./skills/lint-and-validate/SKILL.md) | Automatic quality control, linting, and static analysis procedures. Use after every code modification to ensure syntax correctn... |
| [$s](./skills/context-engineering/SKILL.md) | Optimizes agent context setup. Use when starting a new session, when agent output quality degrades, when switching between task... |
| [$s](./skills/documentation-and-adrs/SKILL.md) | Records decisions and documentation. Use when you need to document an architecture decision (ADR) or the reasoning behind a des... |
| [$s](./skills/documentation-templates/SKILL.md) | Documentation templates and structure guidelines. README, API docs, code comments, and AI-friendly documentation. |
| [$s](./skills/deprecation-and-migration/SKILL.md) | Manages deprecation and migration. Use when removing old systems, APIs, or features. Use when migrating users from one implemen... |

### 📂 Testes, Debugging & Confiabilidade (12)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/test-driven-development/SKILL.md) | Use when implementing any feature or bugfix, before writing implementation code |
| [$s](./skills/testing-patterns/SKILL.md) | Testing patterns and principles. Unit, integration, mocking strategies. |
| [$s](./skills/webapp-testing/SKILL.md) | Web application testing principles. E2E, Playwright, deep audit strategies. |
| [$s](./skills/systematic-debugging/SKILL.md) | 4-phase systematic debugging methodology with root cause analysis and evidence-based verification. Use when debugging complex i... |
| [$s](./skills/debugging-and-error-recovery/SKILL.md) | Guides systematic root-cause debugging. Use when tests fail, builds break, something that worked yesterday broke, behavior does... |
| [$s](./skills/memory-leak-debugging/SKILL.md) | Diagnoses and resolves memory leaks in JavaScript/Node.js applications. Use when a user reports high memory usage, OOM errors, ... |
| [$s](./skills/browser-testing-with-devtools/SKILL.md) | Tests in real browsers via Chrome DevTools MCP. Use when building or debugging anything that runs in a browser. Use when you ne... |
| [$s](./skills/chrome-devtools/SKILL.md) | Uses Chrome DevTools via MCP for efficient debugging, troubleshooting and browser automation. Use when debugging web pages, aut... |
| [$s](./skills/a11y-debugging/SKILL.md) | Uses Chrome DevTools MCP for accessibility (a11y) debugging and auditing based on web.dev guidelines. Use when testing semantic... |
| [$s](./skills/observability-and-instrumentation/SKILL.md) | Instruments code so production behavior is visible and diagnosable. Use when adding logging, metrics, tracing, or alerting. Use... |
| [$s](./skills/performance-optimization/SKILL.md) | Optimizes application performance across frontend, backend, queries, and databases. Use when performance requirements exist, wh... |
| [$s](./skills/performance-profiling/SKILL.md) | Performance profiling principles. Measurement, analysis, and optimization techniques. |

### 📂 Git, Cloud & Infraestrutura (15)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/git-workflow-and-versioning/SKILL.md) | Structures git workflow practices. Use when making any code change. Use when committing, branching, resolving conflicts, splitt... |
| [$s](./skills/using-git-worktrees/SKILL.md) | Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures a... |
| [$s](./skills/finishing-a-development-branch/SKILL.md) | Use when implementation is complete, all tests pass, and you need to decide how to integrate the work |
| [$s](./skills/ci-cd-and-automation/SKILL.md) | Automates CI/CD pipeline setup. Use when setting up or modifying build and deployment pipelines. Use when you need to automate ... |
| [$s](./skills/deployment-procedures/SKILL.md) | Production deployment principles and decision-making. Safe deployment workflows, rollback strategies, and verification. Teaches... |
| [$s](./skills/env-vars/SKILL.md) | Vercel environment variable expert guidance. Use when working with .env files, vercel env commands, Secret or Config variable t... |
| [$s](./skills/shipping-and-launch/SKILL.md) | Prepares production launches. Use when preparing to deploy to production, or when asking what needs to be in place before shipp... |
| [$s](./skills/server-management/SKILL.md) | Server management principles and decision-making. Process management, monitoring strategy, and scaling decisions. Teaches think... |
| [$s](./skills/cloudflare/SKILL.md) | Discover and choose Cloudflare products for apps, APIs, AI agents, storage, networking, and security. Use for architecture and ... |
| [$s](./skills/workers-best-practices/SKILL.md) | Cloudflare Workers best practices for production applications. Use when writing, reviewing, or configuring Workers. |
| [$s](./skills/wrangler/SKILL.md) | Run or troubleshoot Wrangler CLI commands in projects that have a wrangler.jsonc, wrangler.json, or wrangler.toml file, includi... |
| [$s](./skills/supabase/SKILL.md) | Use when doing ANY task involving Supabase. Triggers: Supabase products (Database, Auth, Edge Functions, Realtime, Storage, Vec... |
| [$s](./skills/supabase-postgres-best-practices/SKILL.md) | Postgres performance optimization and best practices from Supabase. Use this skill when writing, reviewing, or optimizing Postg... |
| [$s](./skills/powershell-windows/SKILL.md) | PowerShell Windows patterns. Critical pitfalls, operator syntax, error handling. |
| [$s](./skills/bash-linux/SKILL.md) | Bash/Linux terminal patterns. Critical commands, piping, error handling, scripting. Use when working on macOS or Linux systems. |

### 📂 Agentes, Planejamento & Automação (23)

| Skill | Descrição |
| :--- | :--- |
| [$s](./skills/planning-and-task-breakdown/SKILL.md) | Breaks work into ordered tasks. Use when you have a spec or clear requirements and need to break work into implementable tasks.... |
| [$s](./skills/executing-plans/SKILL.md) | Use when executing an implementation plan in the current session as the implementer yourself â€” your human partner chose inlin... |
| [$s](./skills/verification/SKILL.md) | Full-story verification â€” infers what the user is building, then verifies the complete flow end-to-end: browser â†’ API â†’ d... |
| [$s](./skills/verification-before-completion/SKILL.md) | Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires running verification ... |
| [$s](./skills/brainstorming/SKILL.md) | Socratic questioning protocol + user communication. MANDATORY for complex requests, new features, or unclear requirements. Incl... |
| [$s](./skills/interview-me/SKILL.md) | Extracts what the user actually wants instead of what they think they should want. Achieves this through one-question-at-a-time... |
| [$s](./skills/behavioral-modes/SKILL.md) | AI operational modes (brainstorm, implement, debug, review, teach, ship, orchestrate). Use to adapt behavior based on task type. |
| [$s](./skills/build-agents/SKILL.md) | Default guidance for building AI agents. Use for generic requests to build, create, scaffold, design, architect, or implement a... |
| [$s](./skills/ai-sdk/SKILL.md) | Vercel AI SDK expert guidance. Use when building AI-powered features â€” chat interfaces, text generation, structured output, t... |
| [$s](./skills/app-builder/SKILL.md) | Main application building orchestrator. Creates full-stack applications from natural language requests. Determines project type... |
| [$s](./skills/automation/SKILL.md) | Interactive guide to design and create a scheduled background automation. Use this skill when the user wants to create an autom... |
| [$s](./skills/orchestrate/SKILL.md) | Coordinate multiple agents for complex tasks. Use for multi-perspective analysis, comprehensive reviews, or tasks requiring dif... |
| [$s](./skills/parallel-agents/SKILL.md) | Multi-agent orchestration patterns. Use when multiple independent tasks can run with different domain expertise or when compreh... |
| [$s](./skills/intelligent-routing/SKILL.md) | Automatic agent selection and intelligent task routing. Analyzes user requests and automatically selects the best specialist ag... |
| [$s](./skills/mcp-builder/SKILL.md) | MCP (Model Context Protocol) server building principles. Tool design, resource patterns, best practices. |
| [$s](./skills/templates/SKILL.md) | Project scaffolding templates for new applications. Use when creating new projects from scratch. Contains 12 templates for vari... |
| [$s](./skills/plugin/SKILL.md) | How to manage and create plugins â€” namespaced bundles of skills, agents, rules, MCP servers and hooks that install, enable an... |
| [$s](./skills/using-agent-skills/SKILL.md) | Discovers and invokes agent skills. Use when starting a session, or when you need to decide which skill or workflow applies to ... |
| [$s](./skills/writing-skills/SKILL.md) | Use when creating new skills, editing existing skills, or verifying skills work before deployment |
| [$s](./skills/antigravity_guide/SKILL.md) | Provides a comprehensive guide, quick reference, and sitemap for Google Antigravity (AGY), including the Antigravity CLI (agy),... |
| [$s](./skills/agy-customizations/SKILL.md) | Comprehensive guide and reference for the Antigravity Customization System. Use to explain how customizations work, their loadi... |
| [$s](./skills/i18n-localization/SKILL.md) | Internationalization and localization patterns. Detecting hardcoded strings, managing translations, locale files, RTL support. |
| [$s](./skills/seo-fundamentals/SKILL.md) | SEO fundamentals, E-E-A-T, Core Web Vitals, and Google algorithm principles. |
