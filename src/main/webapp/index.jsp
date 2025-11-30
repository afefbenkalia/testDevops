<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // Exemple : tu peux remplacer ou enrichir ce contenu par des données dynamiques.
    String serverTime = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date());
%>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title>Technologies — DevOps & Design</title>

    <style>
        /* Reset léger */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body {
            font-family: Inter, "Helvetica Neue", Arial, sans-serif;
            line-height: 1.5;
            color: #111827;
            background: linear-gradient(180deg,#f7fafc 0%, #ffffff 100%);
            padding: 24px;
        }

        .container {
            max-width: 1100px;
            margin: 0 auto;
        }

        header {
            display:flex;
            align-items:center;
            justify-content:space-between;
            gap:16px;
            margin-bottom:20px;
        }

        header h1 {
            font-size:1.6rem;
            color:#0f172a;
            letter-spacing: -0.5px;
        }

        header .meta {
            color:#475569;
            font-size:0.9rem;
        }

        .intro {
            background: #ffffff;
            border-radius: 12px;
            padding: 18px;
            box-shadow: 0 6px 18px rgba(15,23,42,0.06);
            margin-bottom:18px;
        }

        .grid {
            display:grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 16px;
        }

        @media (max-width: 800px) {
            .grid { grid-template-columns: 1fr; }
        }

        .card {
            background:#fff;
            border-radius: 12px;
            padding: 16px;
            box-shadow: 0 6px 16px rgba(2,6,23,0.06);
            border: 1px solid rgba(15,23,42,0.04);
        }

        .card h2 {
            font-size:1.1rem;
            margin-bottom:8px;
            color:#0b1220;
        }

        .card p {
            color:#334155;
            font-size:0.95rem;
            margin-bottom:12px;
        }

        .tools {
            display:flex;
            flex-wrap:wrap;
            gap:8px;
        }

        .badge {
            padding:8px 10px;
            border-radius:999px;
            background:linear-gradient(180deg,#eef2ff,#e9f5ff);
            color:#0b1220;
            font-weight:600;
            font-size:0.86rem;
            border:1px solid rgba(15,23,42,0.04);
        }

        .section-title {
            margin: 12px 0;
            font-weight:700;
            color:#0b1220;
            font-size:0.98rem;
        }

        .resources ul {
            margin-left:16px;
            color:#334155;
        }

        .cta {
            margin-top:14px;
            display:flex;
            gap:10px;
            flex-wrap:wrap;
        }

        .btn {
            padding:10px 14px;
            border-radius:10px;
            border: none;
            cursor:pointer;
            font-weight:600;
            font-size:0.95rem;
        }

        .btn-primary {
            background:linear-gradient(90deg,#0ea5a4,#0369a1);
            color:white;
            box-shadow: 0 6px 14px rgba(3,105,161,0.12);
        }

        .btn-ghost {
            background:transparent;
            border:1px solid #cbd5e1;
            color:#0b1220;
        }

        footer {
            margin-top:18px;
            color:#64748b;
            font-size:0.9rem;
            text-align:center;
        }

        /* petites icônes simples */
        .icon { width:18px; height:18px; vertical-align:middle; margin-right:8px; }
    </style>
</head>
<body>
<div class="container">
    <header>
        <div>
            <h1>Technologies — DevOps & Design</h1>
            <div class="meta">Résumé rapide des outils et bonnes pratiques</div>
        </div>
    </header>

    <section class="intro card">
        <p>
            Cette page présente une sélection de technologies et pratiques utiles pour un
            pipeline DevOps moderne (CI/CD, conteneurs, orchestration, infra as code)
            ainsi que des principes & outils pour le design (UI/UX, prototypage, accessibilité).
            Utilise cette page comme point de départ pour ton TP de déploiement.
        </p>
    </section>

    <div class="grid">
        <!-- DevOps -->
        <div class="card">
            <h2>DevOps — Concepts & Outils</h2>
            <p>
                DevOps rassemble le développement logiciel et les opérations pour livrer plus
                rapidement et fiablement. Les domaines clés : intégration continue, livraison continue,
                infrastructure as code, conteneurisation, monitoring et sécurité.
            </p>

            <div class="section-title">Outils populaires</div>
            <div class="tools">
                <span class="badge">Git</span>
                <span class="badge">Jenkins</span>
                <span class="badge">GitLab CI / GitHub Actions</span>
                <span class="badge">Maven / Gradle</span>
                <span class="badge">Docker</span>
                <span class="badge">Kubernetes</span>
                <span class="badge">Helm</span>
                <span class="badge">Ansible</span>
                <span class="badge">Terraform</span>
                <span class="badge">Prometheus</span>
                <span class="badge">Grafana</span>
            </div>

            <div class="section-title">Bonnes pratiques</div>
            <ul class="resources">
                <li>Automatiser les builds et tests (CI).</li>
                <li>Déployer en environnements isolés (staging, prod).</li>
                <li>Infrastructure as Code pour traçabilité et reproducibilité.</li>
                <li>Monitoring & alerting pour la production.</li>
                <li>Garder les images conteneurs légères et immuables.</li>
            </ul>

            <div class="cta">
                <button class="btn btn-primary" onclick="window.open('https://www.jenkins.io','_blank')">Aller à Jenkins</button>
                <button class="btn btn-ghost" onclick="window.open('https://kubernetes.io','_blank')">Kubernetes</button>
            </div>
        </div>

        <!-- Design -->
        <div class="card">
            <h2>Design — UI/UX & Outils</h2>
            <p>
                Le design concerne l'expérience utilisateur (UX) et l'interface (UI). Bien designer,
                c'est comprendre l'utilisateur, prototyper rapidement et tester souvent.
            </p>

            <div class="section-title">Outils & Méthodes</div>
            <div class="tools">
                <span class="badge">Figma</span>
                <span class="badge">Adobe XD</span>
                <span class="badge">Sketch</span>
                <span class="badge">Bootstrap / Tailwind</span>
                <span class="badge">Principles</span>
                <span class="badge">Accessibility (WCAG)</span>
                <span class="badge">Responsive Design</span>
            </div>

            <div class="section-title">Règles rapides</div>
            <ul class="resources">
                <li>Penser mobile-first et responsive.</li>
                <li>Contraste & lisibilité pour l'accessibilité.</li>
                <li>Prototyper avant d'implémenter (rapid tests).</li>
                <li>Consistance visuelle : palette, typographie, spacing.</li>
            </ul>

            <div class="cta">
                <button class="btn btn-primary" onclick="window.open('https://www.figma.com','_blank')">Figma</button>
                <button class="btn btn-ghost" onclick="window.open('https://www.w3.org/WAI/standards-guidelines/wcag/','_blank')">WCAG</button>
            </div>
        </div>

        <!-- Deployment / Build -->
        <div class="card">
            <h2>Pipeline de build & déploiement</h2>
            <p>
                Un pipeline type : <strong>commit → build → test → image → déploiement → monitoring</strong>.
                Automatisation et rollback sont essentiels.
            </p>

            <div class="section-title">Exemple simple</div>
            <ol class="resources">
                <li>Git push sur la branche feature.</li>
                <li>CI (mvn clean install, tests unitaires).</li>
                <li>Construire image Docker et la pousser dans un registry.</li>
                <li>Déployer via Helm/K8s ou via un service systemd pour VM.</li>
                <li>Activer monitoring (Prometheus + Grafana).</li>
            </ol>
        </div>

        <!-- Ressources & références -->
        <div class="card">
            <h2>Ressources & Références</h2>
            <p>Liens pratiques pour apprendre et documenter :</p>
            <ul class="resources">
                <li><strong>Documentation Maven :</strong> tutorial, configuration de pom.xml.</li>
                <li><strong>Guide Docker :</strong> bonnes pratiques pour les Dockerfiles.</li>
                <li><strong>Docs Kubernetes :</strong> pods, services, ingress et configmaps.</li>
                <li><strong>Design Systems :</strong> atomic design, tokens et composants réutilisables.</li>
            </ul>

            <div class="section-title">Astuce</div>
            <p>
                Garde une <em>README</em> pour ton projet décrivant le pipeline, commandes pour build/déploiement,
                et la façon de lancer localement (ex: `mvn package` puis copier le WAR dans Tomcat).
            </p>
        </div>
    </div>

    <footer>
        Page générée le <strong><%= serverTime %></strong>. • Si tu veux, je peux rendre cette page dynamique :
        par exemple lister automatiquement les versions d'outils depuis une base, ou afficher l'état d'un service.
    </footer>
</div>
</body>
</html>
