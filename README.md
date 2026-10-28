# 🧠 Central de Skills & Superpowers do Antigravity

Repositório central unificado contendo todas as **184 skills** do ecossistema de projetos Antigravity.

---

## 🎯 Por que este repositório existe?

Anteriormente, cada projeto continha uma cópia completa de dezenas de skills dentro de `.agent/skills` ou `.agents/skills`, resultando em:
- **Duplicação massiva** (mais de 890 pastas de skills redundantes ocupando espaço).
- **Inconsistência**: alterações feitas em uma skill em um projeto não refletiam nos outros.
- **Dificuldade de sincronização**: projetos pesados para subir no Git ou nuvem.

### Como funciona a solução:
1. **Ponto Único da Verdade (Single Source of Truth)**: Todas as skills ficam aqui.
2. **Acesso Global sem Duplicação**: O Antigravity lê estas skills automaticamente em **qualquer projeto** que você abrir, através da configuração global (`~/.gemini/config/skills.json` ou `~/.agents/skills`).
3. **Sincronização em Nuvem (GitHub)**: Ao colocar este repositório no GitHub, você pode cloná-lo em qualquer máquina (Windows, Mac ou Linux) e ter todas as suas skills instantaneamente ativas no Antigravity!

---

## 🚀 Como usar em qualquer projeto (Sem duplicar arquivos)

### Método 1: Disponibilidade Global Automática (Recomendado)
Para que o Antigravity carregue todas essas skills em **todos** os seus projetos sem precisar configurar nada em cada pasta de projeto:

No seu arquivo global `~/.gemini/config/skills.json` (localizado em `C:\Users\<seu-usuario>\.gemini\config\skills.json`), aponte para este diretório:

```json
{
  "entries": [
    {
      "path": "C:/Users/rafae/OneDrive/Área de Trabalho/PROJETOS/skills/skills"
    }
  ]
}
```
*Dica:* Todas as 184 skills também foram sincronizadas para a pasta global padrão `~/.agents/skills`.

### Método 2: Declarar no Projeto via `.agents/skills.json`
Se você quiser que um projeto específico herde explicitamente deste repositório sem duplicar arquivos:
Basta criar um arquivo leve `.agents/skills.json` na raiz do seu projeto com:
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

## ☁️ Como levar para a Nuvem e usar em qualquer computador

1. **Subir este repositório para o GitHub**:
   ```bash
   git init
   git add .
   git commit -m "feat: centralizacao unificada de 184 skills antigravity"
   gh repo create antigravity-skills --private --source=. --remote=origin --push
   ```
2. **Em qualquer nova máquina**:
   Basta clonar o repositório na pasta global de agentes:
   ```bash
   git clone https://github.com/<seu-usuario>/antigravity-skills.git ~/.agents/skills
   ```
   *Pronto!* Todas as suas skills estarão imediatamente disponíveis no Antigravity daquela máquina.

---

## 📚 Catálogo Completo de Skills (184 Skills)

### 📂 Arquitetura, Engenharia & Qualidade de Código (35)

| Skill | Descrição |
| :--- | :--- |
| [`architecture`](./skills/architecture/SKILL.md) | Architectural decision-making framework. Requirements analysis, trade-off evaluation, ADR documentation. Use when making architecture dec... |
| [`clean-code`](./skills/clean-code/SKILL.md) | Pragmatic coding standards - concise, direct, no over-engineering, no unnecessary comments |
| [`code-review-and-quality`](./skills/code-review-and-quality/SKILL.md) | Conducts multi-axis code review. Use before merging any change. Use when reviewing code written by yourself, another agent, or a human. U... |
| [`code-review-checklist`](./skills/code-review-checklist/SKILL.md) | Code review guidelines covering code quality, security, and best practices. |
| [`code-simplification`](./skills/code-simplification/SKILL.md) | Simplifies code for clarity. Use when refactoring code for clarity without changing behavior. Use when code works but is harder to read, ... |
| [`constraint-driven-development`](./skills/constraint-driven-development/SKILL.md) | Establishes a project's quality bar as a written contract and stops agents quietly lowering it. Interviews the user on which dimensions m... |
| [`context-engineering`](./skills/context-engineering/SKILL.md) | Optimizes agent context setup. Use when starting a new session, when agent output quality degrades, when switching between tasks, or when... |
| [`debugging-and-error-recovery`](./skills/debugging-and-error-recovery/SKILL.md) | Guides systematic root-cause debugging. Use when tests fail, builds break, something that worked yesterday broke, behavior doesn't match ... |
| [`deprecation-and-migration`](./skills/deprecation-and-migration/SKILL.md) | Manages deprecation and migration. Use when removing old systems, APIs, or features. Use when migrating users from one implementation to ... |
| [`documentation-and-adrs`](./skills/documentation-and-adrs/SKILL.md) | Records decisions and documentation. Use when you need to document an architecture decision (ADR) or the reasoning behind a design choice... |
| [`doubt-driven-development`](./skills/doubt-driven-development/SKILL.md) | Subjects every non-trivial decision to a fresh-context adversarial review before it stands. Use when you want every assumption cross-exam... |
| [`idea-refine`](./skills/idea-refine/SKILL.md) | Refines raw ideas into sharp, actionable concepts through structured divergent and convergent thinking. Use when an idea is still vague, ... |
| [`improve-codebase-architecture`](./skills/improve-codebase-architecture/SKILL.md) | Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick. |
| [`incremental-implementation`](./skills/incremental-implementation/SKILL.md) | Delivers changes incrementally in thin, verifiable slices. Use when implementing any feature or change that touches more than one file, o... |
| [`interview-me`](./skills/interview-me/SKILL.md) | Extracts what the user actually wants instead of what they think they should want. Achieves this through one-question-at-a-time interview... |
| [`lint-and-validate`](./skills/lint-and-validate/SKILL.md) | Automatic quality control, linting, and static analysis procedures. Use after every code modification to ensure syntax correctness and pr... |
| [`observability-and-instrumentation`](./skills/observability-and-instrumentation/SKILL.md) | Instruments code so production behavior is visible and diagnosable. Use when adding logging, metrics, tracing, or alerting. Use when ship... |
| [`performance-optimization`](./skills/performance-optimization/SKILL.md) | Optimizes application performance across frontend, backend, queries, and databases. Use when performance requirements exist, when you sus... |
| [`performance-profiling`](./skills/performance-profiling/SKILL.md) | Performance profiling principles. Measurement, analysis, and optimization techniques. |
| [`plan`](./skills/plan/SKILL.md) | Skill procedure and runbook. |
| [`plan-writing`](./skills/plan-writing/SKILL.md) | Structured task planning with clear breakdowns, dependencies, and verification criteria. Use when implementing features, refactoring, or ... |
| [`planning-and-task-breakdown`](./skills/planning-and-task-breakdown/SKILL.md) | Breaks work into ordered tasks. Use when you have a spec or clear requirements and need to break work into implementable tasks. Use when ... |
| [`receiving-code-review`](./skills/receiving-code-review/SKILL.md) | Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically questionabl... |
| [`requesting-code-review`](./skills/requesting-code-review/SKILL.md) | Use when completing tasks, implementing major features, or before merging to verify work meets requirements |
| [`source-driven-development`](./skills/source-driven-development/SKILL.md) | Grounds every implementation decision in official documentation. Use when you want to verify an approach against the official docs before... |
| [`spec-driven-development`](./skills/spec-driven-development/SKILL.md) | Creates specs before coding. Use when starting a new project, feature, or significant change and no specification exists yet. Use when dr... |
| [`systematic-debugging`](./skills/systematic-debugging/SKILL.md) | 4-phase systematic debugging methodology with root cause analysis and evidence-based verification. Use when debugging complex issues. |
| [`tdd`](./skills/tdd/SKILL.md) | Test-driven development. Use when the user wants to build features or fix bugs test-first, mentions "red-green-refactor", or wants integr... |
| [`tdd-workflow`](./skills/tdd-workflow/SKILL.md) | Test-Driven Development workflow principles. RED-GREEN-REFACTOR cycle. |
| [`test`](./skills/test/SKILL.md) | Skill procedure and runbook. |
| [`test-driven-development`](./skills/test-driven-development/SKILL.md) | Use when implementing any feature or bugfix, before writing implementation code |
| [`testing-patterns`](./skills/testing-patterns/SKILL.md) | Testing patterns and principles. Unit, integration, mocking strategies. |
| [`verification-before-completion`](./skills/verification-before-completion/SKILL.md) | Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires running verification commands a... |
| [`writing-plans`](./skills/writing-plans/SKILL.md) | Use when you have a spec or requirements for a multi-step task, before touching code |
| [`writing-skills`](./skills/writing-skills/SKILL.md) | Use when creating new skills, editing existing skills, or verifying skills work before deployment |

### 📂 Agentes, Superpowers & Automação (43)

| Skill | Descrição |
| :--- | :--- |
| [`agents-sdk`](./skills/agents-sdk/SKILL.md) | Build, debug, or review Cloudflare Agents SDK applications using the agents package. |
| [`agy-customizations`](./skills/agy-customizations/SKILL.md) | Comprehensive guide and reference for the Antigravity Customization System. |
| [`antigravity_guide`](./skills/antigravity_guide/SKILL.md) | Provides a comprehensive guide, quick reference, and sitemap for Google Antigravity (AGY), including the Antigravity CLI (agy), Antigravi... |
| [`automation`](./skills/automation/SKILL.md) | Interactive guide to design and create a scheduled background automation. Use this skill when the user wants to create an automated or re... |
| [`behavioral-modes`](./skills/behavioral-modes/SKILL.md) | AI operational modes (brainstorm, implement, debug, review, teach, ship, orchestrate). Use to adapt behavior based on task type. |
| [`brainstorm`](./skills/brainstorm/SKILL.md) | Skill procedure and runbook. |
| [`brainstorming`](./skills/brainstorming/SKILL.md) | Socratic questioning protocol + user communication. MANDATORY for complex requests, new features, or unclear requirements. Includes progr... |
| [`diagnosing-superpowers`](./skills/diagnosing-superpowers/SKILL.md) | Use when a superpowers session went wrong and your human partner wants to know why — repeated work, ignored plans, stumbles, poor results... |
| [`dispatching-parallel-agents`](./skills/dispatching-parallel-agents/SKILL.md) | Use when facing 2+ independent tasks that can be worked on without shared state or sequential dependencies |
| [`handoff`](./skills/handoff/SKILL.md) | Compact the current conversation into a handoff document for another agent to pick up. |
| [`intelligent-routing`](./skills/intelligent-routing/SKILL.md) | Automatic agent selection and intelligent task routing. Analyzes user requests and automatically selects the best specialist agent(s) wit... |
| [`mantis-advise`](./skills/mantis-advise/SKILL.md) | Proactive security advisor and architectural remediation assistant for secure code development. |
| [`mantis-architecture`](./skills/mantis-architecture/SKILL.md) | Synthesizes raw learnings and codebase analysis into an interlinked Markdown Knowledge Base (KB). |
| [`mantis-calibrate`](./skills/mantis-calibrate/SKILL.md) | Calculates the final risk score based on empirical evidence and architectural impact. |
| [`mantis-chain`](./skills/mantis-chain/SKILL.md) | Analyzes individual security findings to identify and construct complex exploit chains. |
| [`mantis-configure`](./skills/mantis-configure/SKILL.md) | Configures and validates Mantis pipeline environments, sandbox mechanisms, and AI models. |
| [`mantis-critic`](./skills/mantis-critic/SKILL.md) | Assesses the production viability of findings, filtering out debug-only features and assertion traps. |
| [`mantis-dedupe`](./skills/mantis-dedupe/SKILL.md) | Consolidates raw security findings to eliminate redundant reports. |
| [`mantis-history`](./skills/mantis-history/SKILL.md) | Analyzes the repository's version control system (VCS) history to extract past vulnerabilities, security fixes, and vulnerability patterns. |
| [`mantis-launch`](./skills/mantis-launch/SKILL.md) | Launches automated vulnerability review campaigns on target files or repositories. |
| [`mantis-meta-agent`](./skills/mantis-meta-agent/SKILL.md) | Acts as the persistent supervisor, launching and monitoring the automated review campaign. |
| [`mantis-patch`](./skills/mantis-patch/SKILL.md) | Generates minimal security fixes using transactional isolation (shadow directories or file backups), applies patches, and verifies them. |
| [`mantis-pipeline-adapter`](./skills/mantis-pipeline-adapter/SKILL.md) | Interactively guides the design and implementation of custom deterministic orchestrator harnesses. |
| [`mantis-plan`](./skills/mantis-plan/SKILL.md) | Formulates a targeted defensive security reviewing plan based on the active threat model and historical learnings. |
| [`mantis-reflect`](./skills/mantis-reflect/SKILL.md) | Extracts learnings from execution trajectories at the end of a Mantis loop. |
| [`mantis-report`](./skills/mantis-report/SKILL.md) | Generates a human-readable security review packet compiled from confirmed findings and exploit chains. |
| [`mantis-reproduce`](./skills/mantis-reproduce/SKILL.md) | Generates and runs crash reproducers to verify security flaws. |
| [`mantis-researcher`](./skills/mantis-researcher/SKILL.md) | Audits production source code files based on the strategy in workspace/plan.json. |
| [`mantis-review`](./skills/mantis-review/SKILL.md) | Independently reviews findings and filters out false positives. |
| [`mantis-structural-index`](./skills/mantis-structural-index/SKILL.md) | Builds a content-addressed semantic-unit index from source code for |
| [`mantis-summarize`](./skills/mantis-summarize/SKILL.md) | Pre-processes the repository by generating security-focused summaries (mantis-summary.md) for each directory to make planning and researc... |
| [`mantis-threat-model`](./skills/mantis-threat-model/SKILL.md) | Synthesizes trust boundaries, attack surfaces, and attacker profiles into a living threat model. |
| [`mcp-builder`](./skills/mcp-builder/SKILL.md) | MCP (Model Context Protocol) server building principles. Tool design, resource patterns, best practices. |
| [`migrate-workflows`](./skills/migrate-workflows/SKILL.md) | Automatically migrate legacy workflows to modern skills across global and workspace configurations. Scans for existing workflows, creates... |
| [`orchestrate`](./skills/orchestrate/SKILL.md) | Skill procedure and runbook. |
| [`parallel-agents`](./skills/parallel-agents/SKILL.md) | Multi-agent orchestration patterns. Use when multiple independent tasks can run with different domain expertise or when comprehensive ana... |
| [`permissioned-github`](./skills/permissioned-github/SKILL.md) | Guidelines for interacting with GitHub and request permissions from the user when commands fail due to restrictions in the agent environm... |
| [`plugin`](./skills/plugin/SKILL.md) | How to manage and create plugins — namespaced bundles of skills, agents, rules, MCP servers and hooks that install, enable and disable as... |
| [`run-workflow`](./skills/run-workflow/SKILL.md) | How to write and run a dynamic workflow script with the `run_workflow` tool: |
| [`subagent-driven-development`](./skills/subagent-driven-development/SKILL.md) | Use when executing implementation plans with independent tasks in the current session |
| [`teach`](./skills/teach/SKILL.md) | Teach the user a new skill or concept, within this workspace. |
| [`using-agent-skills`](./skills/using-agent-skills/SKILL.md) | Discovers and invokes agent skills. Use when starting a session, or when you need to decide which skill or workflow applies to the piece ... |
| [`using-superpowers`](./skills/using-superpowers/SKILL.md) | Use when starting any conversation - establishes how to find and use skills, requiring skill invocation before ANY response including cla... |

### 📂 Frontend, Design & UI/UX (16)

| Skill | Descrição |
| :--- | :--- |
| [`app-builder`](./skills/app-builder/SKILL.md) | Main application building orchestrator. Creates full-stack applications from natural language requests. Determines project type, selects ... |
| [`awesome-design-skills`](./skills/awesome-design-skills/SKILL.md) | Curated registry of 67+ design system skills from bergside/awesome-design-skills and TypeUI. Use when applying design themes (Bento, Brut... |
| [`browser-testing-with-devtools`](./skills/browser-testing-with-devtools/SKILL.md) | Tests in real browsers via Chrome DevTools MCP. Use when building or debugging anything that runs in a browser. Use when you need to insp... |
| [`design-taste-frontend`](./skills/design-taste-frontend/SKILL.md) | tasteskill v2, the anti-slop frontend skill. Art direction for websites, distilled from a study of |
| [`figma`](./skills/figma/SKILL.md) | Import Figma content into a HyperFrames composition — rendered assets, brand tokens, components, storyboard sections → reconstructed moti... |
| [`frontend-design`](./skills/frontend-design/SKILL.md) | Design thinking and decision-making for web UI. Use when designing components, layouts, color schemes, typography, or creating aesthetic ... |
| [`frontend-ui-engineering`](./skills/frontend-ui-engineering/SKILL.md) | Builds production-quality, accessible, responsive user-facing UIs. Use when building or modifying interfaces and pages, creating componen... |
| [`generative_ui`](./skills/generative_ui/SKILL.md) | How to render rich interactive HTML widgets inline in the chat or as standalone artifacts. Use this skill when you want to show the user ... |
| [`mobile-design`](./skills/mobile-design/SKILL.md) | Mobile-first design thinking and decision-making for iOS and Android apps. Touch interaction, performance patterns, platform conventions.... |
| [`nextjs-react-expert`](./skills/nextjs-react-expert/SKILL.md) | React and Next.js performance optimization from Vercel Engineering. Use when building React components, optimizing performance, eliminati... |
| [`tailwind-patterns`](./skills/tailwind-patterns/SKILL.md) | Tailwind CSS v4 principles. CSS-first configuration, container queries, modern patterns, design token architecture. |
| [`ui-plugin-navigation`](./skills/ui-plugin-navigation/SKILL.md) | Discover UI plugin panels relevant to the current task and surface a one-click pill in chat to open (toggle) them in the side pane. Use w... |
| [`ui-ux-pro-max`](./skills/ui-ux-pro-max/SKILL.md) | Skill procedure and runbook. |
| [`web-design-guidelines`](./skills/web-design-guidelines/SKILL.md) | Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility", "audit design", "review ... |
| [`web-perf`](./skills/web-perf/SKILL.md) | Audit, diagnose, or optimize website loading and interaction performance, Core Web Vitals, and Lighthouse performance scores. |
| [`webapp-testing`](./skills/webapp-testing/SKILL.md) | Web application testing principles. E2E, Playwright, deep audit strategies. |

### 📂 Vídeo & Animação (21)

| Skill | Descrição |
| :--- | :--- |
| [`embedded-captions`](./skills/embedded-captions/SKILL.md) | Add captions or subtitles to an existing single-subject talking-head video without editing the |
| [`faceless-explainer`](./skills/faceless-explainer/SKILL.md) | "Turn arbitrary text — an article, notes, a topic, a brief — into a faceless explainer video: there is no site or footage to capture, so ... |
| [`general-video`](./skills/general-video/SKILL.md) | Author or edit a custom HyperFrames composition when no specialized workflow fits, or when |
| [`hyperframes`](./skills/hyperframes/SKILL.md) | Mandatory entry point: read this first for any request to make, create, edit, animate, or render a |
| [`hyperframes-animation`](./skills/hyperframes-animation/SKILL.md) | "All animation knowledge for HyperFrames — atomic motion rules, multi-phase scene blueprints, scene transitions, broader motion-design te... |
| [`hyperframes-audio`](./skills/hyperframes-audio/SKILL.md) | Use when audio already placed in a HyperFrames composition needs to be mixed: |
| [`hyperframes-cli`](./skills/hyperframes-cli/SKILL.md) | Use the HyperFrames CLI development loop: init, add, catalog, capture, lint, check, snapshot, |
| [`hyperframes-core`](./skills/hyperframes-core/SKILL.md) | The HyperFrames composition contract — build one renderable project. Use for composition structure, the `data-*` timing attributes, `clas... |
| [`hyperframes-creative`](./skills/hyperframes-creative/SKILL.md) | Non-animation creative direction for HyperFrames videos. Use for design spec (frame.md / design.md) handling, palettes, typography, narra... |
| [`hyperframes-keyframes`](./skills/hyperframes-keyframes/SKILL.md) | Use when a HyperFrames composition needs a punch-in, punch-out, zoom, reframe, |
| [`hyperframes-registry`](./skills/hyperframes-registry/SKILL.md) | Search, install, and wire registry blocks and components into HyperFrames compositions. Use BEFORE hand-building any named visual — whene... |
| [`hyperframes-studio`](./skills/hyperframes-studio/SKILL.md) | Use when working with a person on a HyperFrames project in Studio: first, |
| [`media-use`](./skills/media-use/SKILL.md) | Agent Media OS for a HyperFrames project. Resolve BGM, SFX, image, icon, brand logo, voice, color grade, or LUT into a frozen local file ... |
| [`motion-graphics`](./skills/motion-graphics/SKILL.md) | A short, design-led motion graphic where motion is the message — kinetic |
| [`music-to-video`](./skills/music-to-video/SKILL.md) | "Turn a music track (an audio file, a video to pull audio from, or a track generated from a mood brief) into a beat-synced video — lyric ... |
| [`pr-to-video`](./skills/pr-to-video/SKILL.md) | "Turn a GitHub pull request (a PR URL, owner/repo#N, or 'this PR' in a checked-out repo) into a code-change explainer video — changelog, ... |
| [`preview`](./skills/preview/SKILL.md) | Skill procedure and runbook. |
| [`product-launch-video`](./skills/product-launch-video/SKILL.md) | "Turn a product or marketing URL, pasted script, or brief into a product launch / promo video — SaaS promos, feature reveals, product dem... |
| [`remotion-to-hyperframes`](./skills/remotion-to-hyperframes/SKILL.md) | 'Port an existing Remotion (React) composition''s source to HyperFrames HTML. Use ONLY on an explicit ask to port/convert/migrate/transla... |
| [`slideshow`](./skills/slideshow/SKILL.md) | Author a HyperFrames slideshow — a presentation, pitch deck, or interactive |
| [`talking-head-recut`](./skills/talking-head-recut/SKILL.md) | Package an existing talking-head / interview / podcast video with timed, designed GRAPHIC OVERLAY cards — kinetic titles, lower-thirds, d... |

### 📂 Cloud, Deploy & Infraestrutura (Vercel, Cloudflare, Supabase) (31)

| Skill | Descrição |
| :--- | :--- |
| [`basin`](./skills/basin/SKILL.md) | Build and troubleshoot Cloudflare Basin analytics workflows with Basin Pipelines, Basin Catalog, and Basin SQL. Use for streaming data in... |
| [`cf-cli`](./skills/cf-cli/SKILL.md) | Cloudflare's official cf CLI (beta) for the public Cloudflare API and Workers projects. Use for finding and running Cloudflare commands f... |
| [`ci-cd-and-automation`](./skills/ci-cd-and-automation/SKILL.md) | Automates CI/CD pipeline setup. Use when setting up or modifying build and deployment pipelines. Use when you need to automate quality ga... |
| [`cloudflare`](./skills/cloudflare/SKILL.md) | Discover and choose Cloudflare products for apps, APIs, AI agents, storage, networking, and security. Use for architecture and product se... |
| [`cloudflare-email-service`](./skills/cloudflare-email-service/SKILL.md) | Implement or troubleshoot Cloudflare Email Sending and Email Routing integrations and their delivery configuration. |
| [`cloudflare-one`](./skills/cloudflare-one/SKILL.md) | Design, configure, troubleshoot, or review Cloudflare One Zero Trust and SASE deployments. Use cloudflare-one-migrations for migration pl... |
| [`cloudflare-one-migrations`](./skills/cloudflare-one-migrations/SKILL.md) | Assess and plan migrations from existing VPN, SWG, or SASE platforms to Cloudflare One, including policy mapping, parity gaps, and rollout. |
| [`deploy`](./skills/deploy/SKILL.md) | Skill procedure and runbook. |
| [`deploy-to-vercel`](./skills/deploy-to-vercel/SKILL.md) | Deploy applications and websites to Vercel. Use when the user requests deployment actions like "deploy my app", "deploy and give me the l... |
| [`deployment-procedures`](./skills/deployment-procedures/SKILL.md) | Production deployment principles and decision-making. Safe deployment workflows, rollback strategies, and verification. Teaches thinking,... |
| [`durable-objects`](./skills/durable-objects/SKILL.md) | Build, debug, or review Cloudflare Durable Objects code for persistent state and coordination. |
| [`gateway-workers`](./skills/gateway-workers/SKILL.md) | Build, debug, or review Cloudflare Workers invoked by the Forward action in Gateway HTTP policies, including the GatewayMiddleware entryp... |
| [`k2`](./skills/k2/SKILL.md) | Build and troubleshoot Cloudflare K2 or K2 Streams durable logs. Use for stream setup, producing from Workers or HTTP, configuring retent... |
| [`nextjs-on-cloudflare`](./skills/nextjs-on-cloudflare/SKILL.md) | Build, migrate, and deploy Next.js apps on Cloudflare Workers with vinext. Use when starting a Next.js project on Cloudflare, moving an e... |
| [`sandbox-migrate-to-next`](./skills/sandbox-migrate-to-next/SKILL.md) | Migrate Cloudflare Sandbox apps from stable @cloudflare/sandbox to @cloudflare/sandbox@next (SDK 1.0 preview). Use sandbox-next for apps ... |
| [`sandbox-next`](./skills/sandbox-next/SKILL.md) | Build or maintain Cloudflare Sandbox apps on @cloudflare/sandbox@next (SDK 1.0 preview). Use sandbox-migrate-to-next when porting a stabl... |
| [`sandbox-stable`](./skills/sandbox-stable/SKILL.md) | Build or maintain Cloudflare Sandbox apps on the stable @cloudflare/sandbox package. Use sandbox-next for preview apps and sandbox-migrat... |
| [`server-management`](./skills/server-management/SKILL.md) | Server management principles and decision-making. Process management, monitoring strategy, and scaling decisions. Teaches thinking, not c... |
| [`shipping-and-launch`](./skills/shipping-and-launch/SKILL.md) | Prepares production launches. Use when preparing to deploy to production, or when asking what needs to be in place before shipping. Use w... |
| [`supabase`](./skills/supabase/SKILL.md) | "Use when doing ANY task involving Supabase. Triggers: Supabase products (Database, Auth, Edge Functions, Realtime, Storage, Vectors, Cro... |
| [`supabase-postgres-best-practices`](./skills/supabase-postgres-best-practices/SKILL.md) | Postgres performance optimization and best practices from Supabase. Use this skill when writing, reviewing, or optimizing Postgres querie... |
| [`turnstile-spin`](./skills/turnstile-spin/SKILL.md) | Set up, repair, or migrate to Cloudflare Turnstile bot verification in an existing frontend and backend, including server-side Siteverify. |
| [`vercel-cli-with-tokens`](./skills/vercel-cli-with-tokens/SKILL.md) | Deploy and manage projects on Vercel using token-based authentication. Use when working with Vercel CLI using access tokens rather than i... |
| [`vercel-composition-patterns`](./skills/vercel-composition-patterns/SKILL.md) | React composition patterns that scale. Use when refactoring components with |
| [`vercel-optimize`](./skills/vercel-optimize/SKILL.md) | "Use for Vercel cost and performance optimization on deployed projects, especially Next.js, SvelteKit, Nuxt, and limited Astro apps. Coll... |
| [`vercel-react-best-practices`](./skills/vercel-react-best-practices/SKILL.md) | React and Next.js performance optimization guidelines from Vercel Engineering. This skill should be used when writing, reviewing, or refa... |
| [`vercel-react-native-skills`](./skills/vercel-react-native-skills/SKILL.md) | React Native and Expo best practices for building performant mobile apps. Use |
| [`vercel-react-view-transitions`](./skills/vercel-react-view-transitions/SKILL.md) | Guide for implementing smooth, native-feeling animations using React's View Transition API (`<ViewTransition>` component, `addTransitionT... |
| [`workers-best-practices`](./skills/workers-best-practices/SKILL.md) | Cloudflare Workers best practices for production applications. Use when writing, reviewing, or configuring Workers. |
| [`workers-profiling`](./skills/workers-profiling/SKILL.md) | Profile or debug CPU usage and memory allocation in deployed Cloudflare Workers and Durable Objects. Then use this information to optimiz... |
| [`wrangler`](./skills/wrangler/SKILL.md) | Run or troubleshoot Wrangler CLI commands in projects that have a wrangler.jsonc, wrangler.json, or wrangler.toml file, including local d... |

### 📂 Desenvolvimento de Games (11)

| Skill | Descrição |
| :--- | :--- |
| [`2d-games`](./skills/2d-games/SKILL.md) | 2D game development principles. Sprites, tilemaps, physics, camera. |
| [`3d-games`](./skills/3d-games/SKILL.md) | 3D game development principles. Rendering, shaders, physics, cameras. |
| [`game-art`](./skills/game-art/SKILL.md) | Game art principles. Visual style selection, asset pipeline, animation workflow. |
| [`game-audio`](./skills/game-audio/SKILL.md) | Game audio principles. Sound design, music integration, adaptive audio systems. |
| [`game-design`](./skills/game-design/SKILL.md) | Game design principles. GDD structure, balancing, player psychology, progression. |
| [`game-development`](./skills/game-development/SKILL.md) | Game development orchestrator. Routes to platform-specific skills based on project needs. |
| [`mobile-games`](./skills/mobile-games/SKILL.md) | Mobile game development principles. Touch input, battery, performance, app stores. |
| [`multiplayer`](./skills/multiplayer/SKILL.md) | Multiplayer game development principles. Architecture, networking, synchronization. |
| [`pc-games`](./skills/pc-games/SKILL.md) | PC and console game development principles. Engine selection, platform features, optimization strategies. |
| [`vr-ar`](./skills/vr-ar/SKILL.md) | VR/AR development principles. Comfort, interaction, performance requirements. |
| [`web-games`](./skills/web-games/SKILL.md) | Web browser game development principles. Framework selection, WebGPU, optimization, PWA. |

### 📂 Linguagens, Segurança & Utilitários (17)

| Skill | Descrição |
| :--- | :--- |
| [`bash-linux`](./skills/bash-linux/SKILL.md) | Bash/Linux terminal patterns. Critical commands, piping, error handling, scripting. Use when working on macOS or Linux systems. |
| [`database-design`](./skills/database-design/SKILL.md) | Database design principles and decision-making. Schema design, indexing strategy, ORM selection, serverless databases. |
| [`documentation-templates`](./skills/documentation-templates/SKILL.md) | Documentation templates and structure guidelines. README, API docs, code comments, and AI-friendly documentation. |
| [`geo-fundamentals`](./skills/geo-fundamentals/SKILL.md) | Generative Engine Optimization for AI search engines (ChatGPT, Claude, Perplexity). |
| [`git-workflow-and-versioning`](./skills/git-workflow-and-versioning/SKILL.md) | Structures git workflow practices. Use when making any code change. Use when committing, branching, resolving conflicts, splitting uncomm... |
| [`i18n-localization`](./skills/i18n-localization/SKILL.md) | Internationalization and localization patterns. Detecting hardcoded strings, managing translations, locale files, RTL support. |
| [`nodejs-best-practices`](./skills/nodejs-best-practices/SKILL.md) | Node.js development principles and decision-making. Framework selection, async patterns, security, and architecture. Teaches thinking, no... |
| [`powershell-windows`](./skills/powershell-windows/SKILL.md) | PowerShell Windows patterns. Critical pitfalls, operator syntax, error handling. |
| [`python-patterns`](./skills/python-patterns/SKILL.md) | Python development principles and decision-making. Framework selection, async patterns, type hints, project structure. Teaches thinking, ... |
| [`red-team-tactics`](./skills/red-team-tactics/SKILL.md) | Red team tactics principles based on MITRE ATT&CK. Attack phases, detection evasion, reporting. |
| [`rust-pro`](./skills/rust-pro/SKILL.md) | Master Rust 1.75+ with modern async patterns, advanced type system |
| [`security-and-hardening`](./skills/security-and-hardening/SKILL.md) | Hardens code against vulnerabilities. Use when auditing an input handler for vulnerabilities, when handling user input, authentication, d... |
| [`security-audit`](./skills/security-audit/SKILL.md) | Security guidance and vulnerability review for codebases, APIs, services, CLI tools, libraries, and daemons. Use for security questions, ... |
| [`seo-fundamentals`](./skills/seo-fundamentals/SKILL.md) | SEO fundamentals, E-E-A-T, Core Web Vitals, and Google algorithm principles. |
| [`using-git-worktrees`](./skills/using-git-worktrees/SKILL.md) | Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures an isolated... |
| [`vulnerability-scanner`](./skills/vulnerability-scanner/SKILL.md) | Advanced vulnerability analysis principles. OWASP 2025, Supply Chain Security, attack surface mapping, risk prioritization. |
| [`writing-guidelines`](./skills/writing-guidelines/SKILL.md) | Review docs/prose for Writing Guidelines compliance. Use when asked to "review my docs", "check writing style", "audit prose", "review do... |

### 📂 Outras Skills & Ferramentas (10)

| Skill | Descrição |
| :--- | :--- |
| [`api-and-interface-design`](./skills/api-and-interface-design/SKILL.md) | Guides stable API and interface design. Use when designing APIs, module boundaries, or any public interface. Use when creating REST or Gr... |
| [`api-patterns`](./skills/api-patterns/SKILL.md) | API design principles and decision-making. REST vs GraphQL vs tRPC selection, response formats, versioning, pagination. |
| [`create`](./skills/create/SKILL.md) | Skill procedure and runbook. |
| [`debug`](./skills/debug/SKILL.md) | Skill procedure and runbook. |
| [`enhance`](./skills/enhance/SKILL.md) | Skill procedure and runbook. |
| [`executing-plans`](./skills/executing-plans/SKILL.md) | Use when executing an implementation plan in the current session as the implementer yourself — your human partner chose inline execution,... |
| [`finishing-a-development-branch`](./skills/finishing-a-development-branch/SKILL.md) | Use when implementation is complete, all tests pass, and you need to decide how to integrate the work |
| [`incur`](./skills/incur/SKILL.md) | incur is a TypeScript framework for building CLIs that work for both AI agents and humans. Use when creating new CLIs. |
| [`status`](./skills/status/SKILL.md) | Skill procedure and runbook. |
| [`templates`](./skills/templates/SKILL.md) | Project scaffolding templates for new applications. Use when creating new projects from scratch. Contains 12 templates for various tech s... |

