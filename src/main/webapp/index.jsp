<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="NexusShop — a modern, responsive e-commerce storefront." />
  <title>NexusShop — Premium Picks</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    :root {
      --bg: #f7f8fc;
      --surface: #ffffff;
      --surface-2: #f0f3f8;
      --ink: #111827;
      --ink-soft: #667085;
      --line: #e7eaf0;
      --brand: #4f46e5;
      --brand-dark: #3730a3;
      --cyan: #06b6d4;
      --success: #16a34a;
      --danger: #ef4444;
      --warning: #f59e0b;
      --shadow-sm: 0 2px 10px rgba(17, 24, 39, .05);
      --shadow-md: 0 14px 35px rgba(17, 24, 39, .09);
      --shadow-lg: 0 25px 60px rgba(17, 24, 39, .14);
      --radius-sm: 10px;
      --radius: 18px;
      --radius-lg: 28px;
      --container: 1240px;
    }

    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      margin: 0;
      color: var(--ink);
      background:
        radial-gradient(circle at 10% 0%, rgba(79,70,229,.06), transparent 28%),
        var(--bg);
      font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    body.no-scroll { overflow: hidden; }

    a { color: inherit; text-decoration: none; }
    button, input { font: inherit; }
    button { border: 0; }
    img { max-width: 100%; }

    .container {
      width: min(var(--container), calc(100% - 40px));
      margin: 0 auto;
    }

    .announcement {
      min-height: 34px;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 7px 16px;
      background: #111827;
      color: #fff;
      font-size: 12px;
      font-weight: 600;
      letter-spacing: .02em;
      text-align: center;
    }
    .announcement i { color: #67e8f9; margin-right: 7px; }

    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255,255,255,.88);
      border-bottom: 1px solid rgba(231,234,240,.9);
      backdrop-filter: blur(18px);
    }

    .header-main {
      min-height: 74px;
      display: grid;
      grid-template-columns: auto 1fr auto;
      align-items: center;
      gap: 28px;
    }

    .brand {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-family: "Plus Jakarta Sans", sans-serif;
      font-weight: 800;
      font-size: 20px;
      letter-spacing: -.04em;
      white-space: nowrap;
    }
    .brand-mark {
      width: 36px;
      height: 36px;
      display: grid;
      place-items: center;
      border-radius: 12px;
      color: white;
      background: linear-gradient(135deg, var(--brand), var(--cyan));
      box-shadow: 0 8px 20px rgba(79,70,229,.25);
    }
    .brand .accent { color: var(--brand); }

    .desktop-nav {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 4px;
    }
    .desktop-nav a {
      position: relative;
      padding: 10px 13px;
      border-radius: 10px;
      color: #475467;
      font-size: 14px;
      font-weight: 600;
      transition: .2s ease;
    }
    .desktop-nav a:hover,
    .desktop-nav a.active {
      color: var(--brand);
      background: #f2f3ff;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .icon-button {
      position: relative;
      width: 40px;
      height: 40px;
      display: grid;
      place-items: center;
      border: 1px solid transparent;
      border-radius: 12px;
      color: #344054;
      background: transparent;
      cursor: pointer;
      transition: .2s ease;
    }
    .icon-button:hover {
      color: var(--brand);
      background: #f4f4ff;
      border-color: #e4e3ff;
    }
    .count {
      position: absolute;
      top: -2px;
      right: -1px;
      min-width: 18px;
      height: 18px;
      padding: 0 4px;
      display: grid;
      place-items: center;
      border-radius: 99px;
      color: white;
      background: var(--danger);
      border: 2px solid white;
      font-size: 10px;
      font-weight: 800;
    }

    .search-wrap {
      position: relative;
      max-width: 430px;
      width: 100%;
      margin: 0 auto;
    }
    .search-box {
      height: 44px;
      display: flex;
      align-items: center;
      gap: 10px;
      padding: 0 13px;
      border: 1px solid var(--line);
      border-radius: 13px;
      background: #f8f9fb;
      transition: .2s ease;
    }
    .search-box:focus-within {
      background: #fff;
      border-color: #b9b7ff;
      box-shadow: 0 0 0 4px rgba(79,70,229,.08);
    }
    .search-box i { color: #98a2b3; }
    .search-box input {
      min-width: 0;
      width: 100%;
      border: 0;
      outline: 0;
      background: transparent;
      color: var(--ink);
      font-size: 13px;
    }
    .search-box input::placeholder { color: #98a2b3; }

    .mobile-toggle { display: none; }

    .hero {
      position: relative;
      min-height: 520px;
      overflow: hidden;
      display: flex;
      align-items: center;
      background:
        linear-gradient(90deg, rgba(8,15,35,.92) 0%, rgba(8,15,35,.70) 48%, rgba(8,15,35,.15) 100%),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85") center/cover;
    }
    .hero::after {
      content: "";
      position: absolute;
      inset: auto 0 0;
      height: 90px;
      background: linear-gradient(transparent, var(--bg));
    }
    .hero-content {
      position: relative;
      z-index: 1;
      max-width: 680px;
      padding: 75px 0 100px;
      color: #fff;
    }
    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 7px;
      padding: 7px 11px;
      border: 1px solid rgba(255,255,255,.16);
      border-radius: 99px;
      background: rgba(255,255,255,.08);
      color: #dbeafe;
      font-size: 12px;
      font-weight: 700;
      letter-spacing: .04em;
      text-transform: uppercase;
      backdrop-filter: blur(8px);
    }
    .eyebrow i { color: #67e8f9; }
    .hero h1 {
      margin: 18px 0 15px;
      font-family: "Plus Jakarta Sans", sans-serif;
      font-size: clamp(42px, 5vw, 68px);
      line-height: 1.02;
      letter-spacing: -.055em;
    }
    .hero h1 span { color: #67e8f9; }
    .hero p {
      max-width: 610px;
      margin: 0 0 28px;
      color: #dbe4f2;
      font-size: 16px;
    }
    .hero-actions { display: flex; flex-wrap: wrap; gap: 11px; }

    .btn {
      min-height: 44px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 9px;
      padding: 0 17px;
      border-radius: 12px;
      font-weight: 700;
      cursor: pointer;
      transition: transform .18s ease, box-shadow .18s ease, background .18s ease;
    }
    .btn:hover { transform: translateY(-1px); }
    .btn-primary {
      color: #fff;
      background: linear-gradient(135deg, var(--brand), #6366f1);
      box-shadow: 0 12px 24px rgba(79,70,229,.24);
    }
    .btn-primary:hover { box-shadow: 0 16px 30px rgba(79,70,229,.32); }
    .btn-light {
      color: #172033;
      background: #fff;
      box-shadow: var(--shadow-sm);
    }
    .btn-outline {
      color: #fff;
      border: 1px solid rgba(255,255,255,.28);
      background: rgba(255,255,255,.08);
      backdrop-filter: blur(8px);
    }

    .trust-strip {
      position: relative;
      z-index: 5;
      margin-top: -45px;
      padding-bottom: 10px;
    }
    .trust-card {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      overflow: hidden;
      border: 1px solid var(--line);
      border-radius: 18px;
      background: rgba(255,255,255,.96);
      box-shadow: var(--shadow-md);
    }
    .trust-item {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 20px 22px;
      border-right: 1px solid var(--line);
    }
    .trust-item:last-child { border-right: 0; }
    .trust-icon {
      width: 40px;
      height: 40px;
      display: grid;
      place-items: center;
      flex: 0 0 auto;
      border-radius: 12px;
      color: var(--brand);
      background: #eef0ff;
    }
    .trust-item strong { display: block; font-size: 13px; }
    .trust-item span { color: var(--ink-soft); font-size: 11px; }

    .section { padding: 76px 0 0; }
    .section-head {
      display: flex;
      align-items: end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 24px;
    }
    .section-kicker {
      margin-bottom: 7px;
      color: var(--brand);
      font-size: 11px;
      font-weight: 800;
      letter-spacing: .12em;
      text-transform: uppercase;
    }
    .section h2 {
      margin: 0;
      font-family: "Plus Jakarta Sans", sans-serif;
      font-size: clamp(25px, 3vw, 34px);
      line-height: 1.1;
      letter-spacing: -.04em;
    }
    .section-subtitle {
      margin: 8px 0 0;
      color: var(--ink-soft);
      font-size: 14px;
    }
    .section-link {
      color: var(--brand);
      font-size: 13px;
      font-weight: 700;
      white-space: nowrap;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .category-card {
      position: relative;
      min-height: 140px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      padding: 17px;
      overflow: hidden;
      border: 1px solid var(--line);
      border-radius: 17px;
      background: linear-gradient(145deg, #fff, #f8f9fd);
      cursor: pointer;
      transition: .22s ease;
    }
    .category-card::after {
      content: "";
      position: absolute;
      width: 90px;
      height: 90px;
      right: -35px;
      bottom: -35px;
      border-radius: 50%;
      background: rgba(79,70,229,.07);
    }
    .category-card:hover {
      transform: translateY(-4px);
      border-color: #d7d5ff;
      box-shadow: var(--shadow-md);
    }
    .category-icon {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 13px;
      color: var(--brand);
      background: #eef0ff;
      font-size: 17px;
    }
    .category-card h3 {
      margin: 14px 0 2px;
      font-size: 13px;
    }
    .category-card p {
      margin: 0;
      color: var(--ink-soft);
      font-size: 11px;
    }

    .product-toolbar {
      display: flex;
      align-items: center;
      gap: 8px;
      overflow-x: auto;
      padding-bottom: 12px;
      scrollbar-width: none;
    }
    .product-toolbar::-webkit-scrollbar { display: none; }
    .filter-btn {
      flex: 0 0 auto;
      padding: 9px 13px;
      border: 1px solid var(--line);
      border-radius: 99px;
      color: #475467;
      background: #fff;
      cursor: pointer;
      font-size: 12px;
      font-weight: 700;
      transition: .18s ease;
    }
    .filter-btn:hover,
    .filter-btn.active {
      color: #fff;
      border-color: var(--brand);
      background: var(--brand);
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }
    .product-card {
      position: relative;
      overflow: hidden;
      border: 1px solid var(--line);
      border-radius: 18px;
      background: #fff;
      box-shadow: var(--shadow-sm);
      transition: transform .22s ease, box-shadow .22s ease, border-color .22s ease;
    }
    .product-card:hover {
      transform: translateY(-5px);
      border-color: #dedcff;
      box-shadow: var(--shadow-md);
    }
    .product-media {
      position: relative;
      height: 235px;
      overflow: hidden;
      background: #f2f4f7;
    }
    .product-media img {
      width: 100%;
      height: 100%;
      display: block;
      object-fit: cover;
      transition: transform .45s ease;
    }
    .product-card:hover .product-media img { transform: scale(1.05); }
    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      padding: 5px 8px;
      border-radius: 7px;
      color: #fff;
      background: var(--brand);
      font-size: 10px;
      font-weight: 800;
    }
    .product-badge.sale { background: var(--danger); }
    .wishlist {
      position: absolute;
      top: 10px;
      right: 10px;
      width: 36px;
      height: 36px;
      display: grid;
      place-items: center;
      border: 1px solid rgba(255,255,255,.8);
      border-radius: 50%;
      color: #344054;
      background: rgba(255,255,255,.92);
      cursor: pointer;
      transition: .18s ease;
    }
    .wishlist:hover, .wishlist.active {
      color: var(--danger);
      background: #fff;
      transform: scale(1.05);
    }
    .product-body { padding: 15px; }
    .product-category {
      color: var(--ink-soft);
      font-size: 10px;
      font-weight: 700;
      letter-spacing: .08em;
      text-transform: uppercase;
    }
    .product-title {
      min-height: 42px;
      margin: 5px 0 9px;
      font-size: 14px;
      line-height: 1.45;
    }
    .rating {
      display: flex;
      align-items: center;
      gap: 5px;
      color: #f59e0b;
      font-size: 11px;
    }
    .rating span { color: #98a2b3; }
    .price-row {
      display: flex;
      align-items: end;
      justify-content: space-between;
      gap: 8px;
      margin-top: 12px;
    }
    .price {
      color: #111827;
      font-size: 17px;
      font-weight: 800;
    }
    .old-price {
      margin-left: 4px;
      color: #98a2b3;
      font-size: 11px;
      text-decoration: line-through;
      font-weight: 500;
    }
    .add-btn {
      width: 100%;
      min-height: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 7px;
      margin-top: 13px;
      border-radius: 10px;
      color: #fff;
      background: #111827;
      cursor: pointer;
      font-size: 12px;
      font-weight: 700;
      transition: .18s ease;
    }
    .add-btn:hover { background: var(--brand); }
    .add-btn:disabled { cursor: default; background: var(--success); }

    .deal-card {
      display: grid;
      grid-template-columns: 1.05fr 1fr;
      overflow: hidden;
      border-radius: 24px;
      color: #fff;
      background:
        radial-gradient(circle at 90% 20%, rgba(34,211,238,.22), transparent 28%),
        linear-gradient(135deg, #111827, #1e1b4b);
      box-shadow: var(--shadow-lg);
    }
    .deal-media {
      min-height: 360px;
      overflow: hidden;
    }
    .deal-media img {
      width: 100%;
      height: 100%;
      display: block;
      object-fit: cover;
    }
    .deal-content {
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 42px;
    }
    .deal-content .section-kicker { color: #67e8f9; }
    .deal-content h2 { margin-bottom: 10px; }
    .deal-content > p { color: #cbd5e1; font-size: 13px; }
    .timer {
      display: flex;
      gap: 9px;
      margin: 20px 0;
    }
    .time-box {
      min-width: 64px;
      padding: 10px 8px;
      border: 1px solid rgba(255,255,255,.10);
      border-radius: 12px;
      background: rgba(255,255,255,.07);
      text-align: center;
    }
    .time-box strong { display: block; font-size: 21px; }
    .time-box span { color: #94a3b8; font-size: 9px; text-transform: uppercase; }
    .deal-price {
      display: flex;
      align-items: baseline;
      gap: 9px;
      margin-bottom: 18px;
    }
    .deal-price strong { font-size: 30px; }
    .deal-price del { color: #94a3b8; font-size: 14px; }

    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 16px;
    }
    .testimonial {
      padding: 21px;
      border: 1px solid var(--line);
      border-radius: 18px;
      background: #fff;
      box-shadow: var(--shadow-sm);
    }
    .quote-mark {
      color: #c7c4ff;
      font-size: 25px;
    }
    .testimonial p {
      margin: 8px 0 18px;
      color: #475467;
      font-size: 13px;
      line-height: 1.7;
    }
    .person {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .avatar {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      object-fit: cover;
    }
    .person strong { display: block; font-size: 12px; }
    .person span { color: #98a2b3; font-size: 10px; }

    .newsletter {
      position: relative;
      overflow: hidden;
      padding: 38px;
      border-radius: 24px;
      color: #fff;
      background: linear-gradient(135deg, #4338ca, #0e7490);
      box-shadow: var(--shadow-lg);
    }
    .newsletter::after {
      content: "";
      position: absolute;
      width: 260px;
      height: 260px;
      right: -90px;
      top: -120px;
      border: 45px solid rgba(255,255,255,.07);
      border-radius: 50%;
    }
    .newsletter h2 { margin: 0 0 7px; position: relative; z-index: 1; }
    .newsletter p { margin: 0 0 20px; color: #dbeafe; font-size: 13px; position: relative; z-index: 1; }
    .newsletter-form {
      max-width: 510px;
      display: flex;
      gap: 8px;
      position: relative;
      z-index: 1;
    }
    .newsletter-form input {
      min-width: 0;
      flex: 1;
      height: 44px;
      padding: 0 14px;
      border: 1px solid rgba(255,255,255,.18);
      border-radius: 11px;
      outline: none;
      background: rgba(255,255,255,.12);
      color: #fff;
    }
    .newsletter-form input::placeholder { color: #cbd5e1; }
    .form-message { margin-top: 9px; font-size: 12px; display: none; }

    footer {
      margin-top: 80px;
      padding: 48px 0 24px;
      border-top: 1px solid var(--line);
      background: #fff;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 1.5fr repeat(3, 1fr);
      gap: 35px;
    }
    .footer-brand p {
      max-width: 340px;
      color: var(--ink-soft);
      font-size: 12px;
      line-height: 1.7;
    }
    .socials { display: flex; gap: 8px; margin-top: 15px; }
    .socials a {
      width: 34px;
      height: 34px;
      display: grid;
      place-items: center;
      border: 1px solid var(--line);
      border-radius: 9px;
      color: #667085;
      transition: .18s ease;
    }
    .socials a:hover { color: var(--brand); border-color: #c9c6ff; background: #f6f5ff; }
    .footer-col h4 { margin: 0 0 12px; font-size: 12px; }
    .footer-col a {
      display: block;
      margin: 8px 0;
      color: #667085;
      font-size: 12px;
    }
    .footer-col a:hover { color: var(--brand); }
    .copyright {
      margin-top: 35px;
      padding-top: 18px;
      border-top: 1px solid var(--line);
      color: #98a2b3;
      font-size: 11px;
      text-align: center;
    }

    .toast {
      position: fixed;
      right: 22px;
      bottom: 22px;
      z-index: 300;
      max-width: 340px;
      padding: 13px 15px;
      display: flex;
      align-items: center;
      gap: 10px;
      border: 1px solid #d7f3df;
      border-radius: 12px;
      color: #166534;
      background: #f0fdf4;
      box-shadow: var(--shadow-lg);
      font-size: 12px;
      font-weight: 700;
      transform: translateY(18px);
      opacity: 0;
      pointer-events: none;
      transition: .25s ease;
    }
    .toast.show { transform: translateY(0); opacity: 1; }

    .mobile-menu {
      display: none;
      padding: 10px 20px 16px;
      border-top: 1px solid var(--line);
      background: #fff;
    }
    .mobile-menu a {
      display: block;
      padding: 11px 0;
      color: #475467;
      font-size: 13px;
      font-weight: 600;
    }

    .empty-state {
      grid-column: 1 / -1;
      padding: 45px 20px;
      border: 1px dashed #cfd4dc;
      border-radius: 18px;
      background: #fff;
      color: var(--ink-soft);
      text-align: center;
    }
    .empty-state i { margin-bottom: 10px; font-size: 24px; color: #a5b4fc; }

    @media (max-width: 1100px) {
      .header-main { grid-template-columns: auto 1fr auto; gap: 14px; }
      .desktop-nav { display: none; }
      .search-wrap { max-width: 520px; }
      .mobile-toggle { display: grid; }
      .category-grid { grid-template-columns: repeat(3, 1fr); }
      .product-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1.5fr repeat(2, 1fr); }
    }

    @media (max-width: 760px) {
      .container { width: min(var(--container), calc(100% - 28px)); }
      .header-main { min-height: 66px; }
      .header-actions .account-action,
      .header-actions .wishlist-action { display: none; }
      .search-wrap { grid-column: 1 / -1; grid-row: 2; max-width: none; }
      header { padding-bottom: 10px; }
      .hero { min-height: 540px; }
      .hero-content { padding: 70px 0 90px; }
      .hero h1 { font-size: 43px; }
      .trust-card { grid-template-columns: repeat(2, 1fr); }
      .trust-item:nth-child(2) { border-right: 0; }
      .trust-item:nth-child(-n+2) { border-bottom: 1px solid var(--line); }
      .category-grid { grid-template-columns: repeat(2, 1fr); }
      .product-grid { grid-template-columns: repeat(2, 1fr); }
      .deal-card { grid-template-columns: 1fr; }
      .deal-media { min-height: 260px; }
      .deal-content { padding: 30px 24px; }
      .testimonial-grid { grid-template-columns: 1fr; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }

    @media (max-width: 520px) {
      .announcement { font-size: 10px; }
      .brand { font-size: 17px; }
      .brand-mark { width: 32px; height: 32px; }
      .hero h1 { font-size: 37px; }
      .hero p { font-size: 14px; }
      .hero-actions .btn { width: 100%; }
      .trust-item { padding: 15px; }
      .trust-item strong { font-size: 11px; }
      .trust-item span { font-size: 9px; }
      .section { padding-top: 58px; }
      .section-head { align-items: start; }
      .section-link { display: none; }
      .product-grid { grid-template-columns: 1fr; }
      .product-media { height: 255px; }
      .newsletter { padding: 28px 22px; }
      .newsletter-form { flex-direction: column; }
      .newsletter-form .btn { width: 100%; }
      .footer-grid { grid-template-columns: 1fr; }
      .timer { gap: 6px; }
      .time-box { min-width: 56px; }
    }

    @media (prefers-reduced-motion: reduce) {
      *, *::before, *::after { scroll-behavior: auto !important; transition: none !important; animation: none !important; }
    }
  </style>
</head>

<body>
  <div class="announcement">
    <span><i class="fa-solid fa-bolt"></i> Free shipping on orders over $75&nbsp; • &nbsp;Secure checkout&nbsp; • &nbsp;30-day returns</span>
  </div>

  <header>
    <div class="container header-main">
      <button class="icon-button mobile-toggle" id="mobileToggle" aria-label="Open navigation" aria-expanded="false">
        <i class="fa-solid fa-bars"></i>
      </button>

      <a class="brand" href="#" aria-label="NexusShop home">
        <span class="brand-mark"><i class="fa-solid fa-bag-shopping"></i></span>
        <span>Nexus<span class="accent">Shop</span></span>
      </a>

      <nav class="desktop-nav" aria-label="Primary navigation">
        <a class="active" href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Trending</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>
      </nav>

      <div class="search-wrap">
        <label class="search-box" aria-label="Search products">
          <i class="fa-solid fa-magnifying-glass"></i>
          <input id="searchInput" type="search" placeholder="Search products, brands or categories..." autocomplete="off">
        </label>
      </div>

      <div class="header-actions">
        <button class="icon-button account-action" title="Account" aria-label="Account"><i class="fa-regular fa-user"></i></button>
        <button class="icon-button wishlist-action" title="Wishlist" aria-label="Wishlist">
          <i class="fa-regular fa-heart"></i><span class="count" id="wishlistCount">0</span>
        </button>
        <button class="icon-button" id="cartBtn" title="Cart" aria-label="Shopping cart">
          <i class="fa-solid fa-bag-shopping"></i><span class="count" id="cartCount">0</span>
        </button>
      </div>
    </div>

    <div class="mobile-menu" id="mobileMenu">
      <a href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deals">Deals</a>
      <a href="#about">About</a>
    </div>
  </header>

  <main>
    <section class="hero">
      <div class="container">
        <div class="hero-content">
          <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season collection</span>
          <h1>Better products.<br><span>Better everyday.</span></h1>
          <p>Discover carefully selected technology, fashion and everyday essentials — with a clean shopping experience built around you.</p>
          <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow">Explore collection <i class="fa-solid fa-arrow-right"></i></button>
            <button class="btn btn-outline" id="exploreDeals">View today's deals</button>
          </div>
        </div>
      </div>
    </section>

    <section class="trust-strip">
      <div class="container">
        <div class="trust-card">
          <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-truck-fast"></i></div><div><strong>Fast delivery</strong><span>Tracked shipping</span></div></div>
          <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-shield-halved"></i></div><div><strong>Secure checkout</strong><span>Protected payments</span></div></div>
          <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-rotate-left"></i></div><div><strong>30-day returns</strong><span>Shop with confidence</span></div></div>
          <div class="trust-item"><div class="trust-icon"><i class="fa-solid fa-headset"></i></div><div><strong>Helpful support</strong><span>We're here to help</span></div></div>
        </div>
      </div>
    </section>

    <section class="section container" id="categories" aria-labelledby="categoriesTitle">
      <div class="section-head">
        <div>
          <div class="section-kicker">Browse</div>
          <h2 id="categoriesTitle">Shop by category</h2>
          <p class="section-subtitle">Find what you need without digging through endless pages.</p>
        </div>
        <a class="section-link" href="#products">View all products <i class="fa-solid fa-arrow-right"></i></a>
      </div>
      <div class="category-grid" id="categoriesGrid"></div>
    </section>

    <section class="section container" id="products" aria-labelledby="productsTitle">
      <div class="section-head">
        <div>
          <div class="section-kicker">Curated for you</div>
          <h2 id="productsTitle">Trending products</h2>
          <p class="section-subtitle">Popular picks with strong ratings from our shoppers.</p>
        </div>
      </div>
      <div class="product-toolbar" id="productToolbar"></div>
      <div class="product-grid" id="productsGrid" aria-live="polite"></div>
    </section>

    <section class="section container" id="deals" aria-labelledby="dealsTitle">
      <div class="deal-card">
        <div class="deal-media">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85" alt="Laptop on a desk">
        </div>
        <div class="deal-content">
          <div class="section-kicker">Limited-time offer</div>
          <h2 id="dealsTitle">Power up your workspace.</h2>
          <p>Save on the MacBook Air M2 while today's inventory lasts.</p>
          <div class="timer" aria-label="Deal countdown">
            <div class="time-box"><strong id="dealDays">0</strong><span>Days</span></div>
            <div class="time-box"><strong id="dealHours">00</strong><span>Hours</span></div>
            <div class="time-box"><strong id="dealMinutes">00</strong><span>Minutes</span></div>
            <div class="time-box"><strong id="dealSeconds">00</strong><span>Seconds</span></div>
          </div>
          <div class="deal-price"><strong>$999</strong><del>$1,199</del></div>
          <button class="btn btn-primary" id="buyDeal">Add deal to cart <i class="fa-solid fa-bag-shopping"></i></button>
        </div>
      </div>
    </section>

    <section class="section container" id="about" aria-labelledby="reviewsTitle">
      <div class="section-head">
        <div>
          <div class="section-kicker">Customer love</div>
          <h2 id="reviewsTitle">What shoppers say</h2>
          <p class="section-subtitle">A few words from people who have shopped with us.</p>
        </div>
      </div>
      <div class="testimonial-grid">
        <article class="testimonial">
          <div class="quote-mark"><i class="fa-solid fa-quote-left"></i></div>
          <p>Fast shipping, simple checkout and the product arrived exactly as expected. The experience felt effortless.</p>
          <div class="person">
            <img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Customer avatar">
            <div><strong>Ava Martin</strong><span>Verified buyer</span></div>
          </div>
        </article>
        <article class="testimonial">
          <div class="quote-mark"><i class="fa-solid fa-quote-left"></i></div>
          <p>Great selection and the site is easy to navigate. I found what I wanted in less than two minutes.</p>
          <div class="person">
            <img class="avatar" src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80" alt="Customer avatar">
            <div><strong>Michael Lee</strong><span>Frequent buyer</span></div>
          </div>
        </article>
        <article class="testimonial">
          <div class="quote-mark"><i class="fa-solid fa-quote-left"></i></div>
          <p>The product cards make comparing options easy, and the wishlist is a useful touch for future purchases.</p>
          <div class="person">
            <img class="avatar" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80" alt="Customer avatar">
            <div><strong>Sophia Chen</strong><span>Verified buyer</span></div>
          </div>
        </article>
      </div>
    </section>

    <section class="section container" aria-labelledby="newsletterTitle">
      <div class="newsletter">
        <h2 id="newsletterTitle">Get the good stuff first.</h2>
        <p>New arrivals, useful picks and selected offers — no unnecessary noise.</p>
        <form class="newsletter-form" id="newsletterForm">
          <input id="newsletterEmail" type="email" placeholder="Your email address" aria-label="Email address" required>
          <button class="btn btn-light" type="submit">Subscribe</button>
        </form>
        <div class="form-message" id="newsletterMsg"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <a class="brand" href="#"><span class="brand-mark"><i class="fa-solid fa-bag-shopping"></i></span><span>Nexus<span class="accent">Shop</span></span></a>
          <p>A polished e-commerce storefront demo focused on clarity, speed and a simple customer journey.</p>
          <div class="socials">
            <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
            <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
            <a href="#" aria-label="X"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="#" aria-label="LinkedIn"><i class="fa-brands fa-linkedin-in"></i></a>
          </div>
        </div>
        <div class="footer-col"><h4>Shop</h4><a href="#products">Trending products</a><a href="#categories">Categories</a><a href="#deals">Today's deals</a><a href="#">Gift cards</a></div>
        <div class="footer-col"><h4>Support</h4><a href="#">Help center</a><a href="#">Shipping & returns</a><a href="#">Contact us</a><a href="#">Track order</a></div>
        <div class="footer-col"><h4>Company</h4><a href="#about">About NexusShop</a><a href="#">Careers</a><a href="#">Privacy</a><a href="#">Terms</a></div>
      </div>
      <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <div class="toast" id="toast"><i class="fa-solid fa-circle-check"></i><span id="toastText">Added to cart.</span></div>

  <script>
    const CATEGORIES = [
      { id: "phones", name: "Smartphones", icon: "fa-mobile-screen-button" },
      { id: "laptops", name: "Laptops", icon: "fa-laptop" },
      { id: "clothing", name: "Clothing", icon: "fa-shirt" },
      { id: "gadgets", name: "Gadgets", icon: "fa-headphones" },
      { id: "footwear", name: "Footwear", icon: "fa-shoe-prints" },
      { id: "accessories", name: "Accessories", icon: "fa-watch" }
    ];

    const PRODUCTS = [
      { id: 1, title: "iPhone 14 Pro Max", price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: "New", img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85", category: "phones" },
      { id: 2, title: "MacBook Pro 14\"", price: 1999, rating: 4, reviews: 86, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85", category: "laptops" },
      { id: 3, title: "Apple Watch Series 8", price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: "-12%", img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85", category: "accessories" },
      { id: 4, title: "Nike Air Max 270", price: 150, rating: 4, reviews: 53, img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85", category: "footwear" },
      { id: 5, title: "Sony A7 IV Camera", price: 2499, rating: 5, reviews: 42, img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85", category: "gadgets" },
      { id: 6, title: "Chanel No. 5", price: 120, rating: 5, reviews: 189, img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85", category: "accessories" },
      { id: 7, title: "Travel Backpack", price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: "Save 20%", img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85", category: "accessories" },
      { id: 8, title: "Sony WH-1000XM5", price: 399, rating: 5, reviews: 156, img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85", category: "gadgets" }
    ];

    const categoriesGrid = document.getElementById("categoriesGrid");
    const productsGrid = document.getElementById("productsGrid");
    const toolbar = document.getElementById("productToolbar");
    const searchInput = document.getElementById("searchInput");
    const cartCountEl = document.getElementById("cartCount");
    const wishlistCountEl = document.getElementById("wishlistCount");
    const toast = document.getElementById("toast");
    const toastText = document.getElementById("toastText");

    let cartCount = 0;
    const wishlist = new Set();
    let activeFilter = "all";

    function categoryLabel(id) {
      return CATEGORIES.find(c => c.id === id)?.name || id;
    }

    function renderCategories() {
      categoriesGrid.innerHTML = CATEGORIES.map(cat => `
        <button class="category-card" type="button" data-category="${cat.id}" aria-label="Browse ${cat.name}">
          <span class="category-icon"><i class="fa-solid ${cat.icon}"></i></span>
          <span>
            <h3>${cat.name}</h3>
            <p>Explore collection <i class="fa-solid fa-arrow-right"></i></p>
          </span>
        </button>
      `).join("");

      categoriesGrid.querySelectorAll(".category-card").forEach(card => {
        card.addEventListener("click", () => {
          activeFilter = card.dataset.category;
          updateToolbar();
          applyFilters();
          document.getElementById("products").scrollIntoView({ behavior: "smooth", block: "start" });
        });
      });
    }

    function renderToolbar() {
      toolbar.innerHTML = [
        { id: "all", label: "All products" },
        ...CATEGORIES.map(c => ({ id: c.id, label: c.name }))
      ].map(item => `
        <button class="filter-btn ${item.id === activeFilter ? "active" : ""}" type="button" data-filter="${item.id}">
          ${item.label}
        </button>
      `).join("");

      toolbar.querySelectorAll(".filter-btn").forEach(btn => {
        btn.addEventListener("click", () => {
          activeFilter = btn.dataset.filter;
          updateToolbar();
          applyFilters();
        });
      });
    }

    function updateToolbar() {
      toolbar.querySelectorAll(".filter-btn").forEach(btn => {
        btn.classList.toggle("active", btn.dataset.filter === activeFilter);
      });
    }

    function renderProducts(list) {
      if (!list.length) {
        productsGrid.innerHTML = `
          <div class="empty-state">
            <i class="fa-regular fa-face-frown"></i>
            <div>No products found</div>
            <small>Try another search or category.</small>
          </div>`;
        return;
      }

      productsGrid.innerHTML = list.map(p => {
        const wished = wishlist.has(p.id);
        const stars = "★".repeat(Math.round(p.rating)) + "☆".repeat(5 - Math.round(p.rating));
        return `
          <article class="product-card">
            <div class="product-media">
              ${p.badge ? `<span class="product-badge ${p.badge.includes("-") ? "sale" : ""}">${p.badge}</span>` : ""}
              <button class="wishlist ${wished ? "active" : ""}" type="button" data-wish="${p.id}" aria-label="${wished ? "Remove from wishlist" : "Add to wishlist"}">
                <i class="${wished ? "fa-solid" : "fa-regular"} fa-heart"></i>
              </button>
              <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            </div>
            <div class="product-body">
              <div class="product-category">${categoryLabel(p.category)}</div>
              <h3 class="product-title">${escapeHtml(p.title)}</h3>
              <div class="rating" aria-label="${p.rating} out of 5 stars">
                <span>${stars}</span><span>(${p.reviews})</span>
              </div>
              <div class="price-row">
                <div class="price">$${p.price.toLocaleString()}${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ""}</div>
              </div>
              <button class="add-btn" type="button" data-add="${p.id}">
                <i class="fa-solid fa-bag-shopping"></i> Add to cart
              </button>
            </div>
          </article>`;
      }).join("");

      productsGrid.querySelectorAll("[data-add]").forEach(btn => {
        btn.addEventListener("click", () => addToCart(Number(btn.dataset.add)));
      });

      productsGrid.querySelectorAll("[data-wish]").forEach(btn => {
        btn.addEventListener("click", () => toggleWishlist(Number(btn.dataset.wish)));
      });
    }

    function applyFilters() {
      const query = searchInput.value.trim().toLowerCase();
      const filtered = PRODUCTS.filter(p => {
        const matchesCategory = activeFilter === "all" || p.category === activeFilter;
        const matchesSearch = !query ||
          p.title.toLowerCase().includes(query) ||
          p.category.toLowerCase().includes(query) ||
          categoryLabel(p.category).toLowerCase().includes(query);
        return matchesCategory && matchesSearch;
      });
      renderProducts(filtered);
    }

    function addToCart(productId) {
      const product = PRODUCTS.find(p => p.id === productId);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      showToast(`${product.title} added to your cart.`);
    }

    function toggleWishlist(productId) {
      if (wishlist.has(productId)) wishlist.delete(productId);
      else wishlist.add(productId);
      wishlistCountEl.textContent = wishlist.size;
      applyFilters();
      showToast(wishlist.has(productId) ? "Added to wishlist." : "Removed from wishlist.");
    }

    function showToast(message) {
      toastText.textContent = message;
      toast.classList.add("show");
      clearTimeout(window.__toastTimer);
      window.__toastTimer = setTimeout(() => toast.classList.remove("show"), 2300);
    }

    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, char => ({
        "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;"
      }[char]));
    }

    searchInput.addEventListener("input", applyFilters);
    document.getElementById("shopNow").addEventListener("click", () => {
      document.getElementById("products").scrollIntoView({ behavior: "smooth" });
    });
    document.getElementById("exploreDeals").addEventListener("click", () => {
      document.getElementById("deals").scrollIntoView({ behavior: "smooth" });
    });
    document.getElementById("buyDeal").addEventListener("click", () => {
      cartCount++;
      cartCountEl.textContent = cartCount;
      showToast("MacBook Air M2 deal added to your cart.");
    });

    document.getElementById("newsletterForm").addEventListener("submit", e => {
      e.preventDefault();
      const email = document.getElementById("newsletterEmail");
      const msg = document.getElementById("newsletterMsg");
      if (!email.checkValidity()) {
        msg.style.display = "block";
        msg.style.color = "#fecaca";
        msg.textContent = "Please enter a valid email address.";
        return;
      }
      msg.style.display = "block";
      msg.style.color = "#d1fae5";
      msg.textContent = "You're subscribed — welcome to NexusShop.";
      email.value = "";
      setTimeout(() => msg.style.display = "none", 3500);
    });

    const mobileToggle = document.getElementById("mobileToggle");
    const mobileMenu = document.getElementById("mobileMenu");
    mobileToggle.addEventListener("click", () => {
      const open = mobileMenu.style.display === "block";
      mobileMenu.style.display = open ? "none" : "block";
      mobileToggle.setAttribute("aria-expanded", String(!open));
      mobileToggle.innerHTML = `<i class="fa-solid ${open ? "fa-bars" : "fa-xmark"}"></i>`;
    });
    mobileMenu.querySelectorAll("a").forEach(link => {
      link.addEventListener("click", () => {
        mobileMenu.style.display = "none";
        mobileToggle.setAttribute("aria-expanded", "false");
        mobileToggle.innerHTML = '<i class="fa-solid fa-bars"></i>';
      });
    });

    document.getElementById("cartBtn").addEventListener("click", () => {
      showToast(cartCount ? `${cartCount} item${cartCount === 1 ? "" : "s"} in your cart.` : "Your cart is empty.");
    });

    function setupDealTimer() {
      const target = Date.now() + (24 * 60 + 36) * 60 * 1000;
      function tick() {
        const diff = Math.max(0, target - Date.now());
        const days = Math.floor(diff / 86400000);
        const hours = Math.floor((diff % 86400000) / 3600000);
        const minutes = Math.floor((diff % 3600000) / 60000);
        const seconds = Math.floor((diff % 60000) / 1000);
        document.getElementById("dealDays").textContent = days;
        document.getElementById("dealHours").textContent = String(hours).padStart(2, "0");
        document.getElementById("dealMinutes").textContent = String(minutes).padStart(2, "0");
        document.getElementById("dealSeconds").textContent = String(seconds).padStart(2, "0");
      }
      tick();
      setInterval(tick, 1000);
    }

    renderCategories();
    renderToolbar();
    renderProducts(PRODUCTS);
    setupDealTimer();
    document.getElementById("year").textContent = new Date().getFullYear();
  </script>
</body>
</html>
