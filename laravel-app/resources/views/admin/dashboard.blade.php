<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/jpeg" href="/images/ico-pollo.jpg">
    <link rel="shortcut icon" type="image/jpeg" href="/images/ico-pollo.jpg">
    <title>Pollos y Parrillas El Dorado - Dashboard</title>
    <style>
        :root {
            --orange: #ff6f1f;
            --orange-soft: #ff9f62;
            --paper: #fffdf9;
            --paper-soft: #fff3e6;
            --ink: #24160f;
            --ink-soft: #7b4a2a;
            --line: #f0cfb3;
        }

        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: "Trebuchet MS", "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: var(--ink);
            background:
                radial-gradient(circle at top left, rgba(255, 159, 98, .20), transparent 28%),
                radial-gradient(circle at bottom right, rgba(255, 111, 31, .16), transparent 26%),
                linear-gradient(180deg, #fff8f2 0%, #fff2e7 48%, #ffe8d6 100%);
        }

        .container {
            width: min(1180px, 100%);
            margin: 0 auto;
            padding: 22px 18px 38px;
        }

        .hero {
            display: grid;
            grid-template-columns: 1.05fr .95fr;
            gap: 18px;
            padding: 22px;
            border-radius: 32px;
            border: 1px solid rgba(240, 207, 179, .92);
            background: rgba(255, 252, 248, .94);
            box-shadow: 0 30px 60px rgba(52, 17, 0, .12);
            margin-bottom: 18px;
        }

        .eyebrow {
            margin: 0 0 10px;
            font-size: 11px;
            letter-spacing: .18em;
            text-transform: uppercase;
            color: #9b5a2c;
            font-weight: 900;
        }

        h1 {
            margin: 0 0 10px;
            font-size: clamp(34px, 4vw, 54px);
            line-height: .95;
            color: #2d1708;
        }

        .hero p {
            margin: 0;
            color: var(--ink-soft);
            line-height: 1.7;
            font-size: 15px;
            max-width: 520px;
        }

        .hero-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-content: start;
        }

        .hero-tags span,
        .mini-label {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 14px;
            border-radius: 999px;
            border: 1px solid rgba(234, 182, 138, .82);
            background: rgba(255, 247, 240, .9);
            color: #82471f;
            font-size: 12px;
            font-weight: 900;
        }

        .cards {
            display: grid;
            gap: 16px;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            margin-bottom: 18px;
        }

        .card,
        .table-shell {
            background: rgba(255, 255, 255, .96);
            border: 1px solid rgba(240, 207, 179, .92);
            border-radius: 24px;
            padding: 18px;
            box-shadow: 0 18px 36px rgba(52, 17, 0, .08);
        }

        .label {
            font-size: 12px;
            letter-spacing: .14em;
            text-transform: uppercase;
            color: #9b5a2c;
            font-weight: 900;
        }

        .value {
            margin-top: 10px;
            font-size: 34px;
            font-weight: 900;
            color: #8d3d00;
        }

        .table-head {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 12px;
            margin-bottom: 14px;
        }

        .table-head h2 {
            margin: 0;
            color: #2d1708;
        }

        .table-head p {
            margin: 4px 0 0;
            color: var(--ink-soft);
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 18px;
            border: 1px solid var(--line);
        }

        th, td {
            text-align: left;
            padding: 13px 14px;
            border-bottom: 1px solid var(--line);
            font-size: 14px;
        }

        th {
            background: #fff3e6;
            color: #7b410d;
            font-size: 12px;
            letter-spacing: .08em;
            text-transform: uppercase;
        }

        tr:last-child td {
            border-bottom: 0;
        }

        @media (max-width: 860px) {
            .hero {
                grid-template-columns: 1fr;
            }

            .table-shell {
                overflow-x: auto;
            }

            table {
                min-width: 720px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <section class="hero">
        <div>
            <p class="eyebrow">Resumen Ejecutivo</p>
            <h1>Dashboard de ventas y pedidos.</h1>
            <p>Consulta rapidamente el pulso comercial del local con cifras clave y los ultimos pedidos generados.</p>
        </div>
        <div class="hero-tags">
            <span>Ventas del dia</span>
            <span>Ventas del mes</span>
            <span>Pedidos activos</span>
        </div>
    </section>

    <div class="cards">
        <div class="card">
            <div class="label">Ventas de hoy</div>
            <div class="value">S/ {{ number_format($todaySales, 2) }}</div>
        </div>
        <div class="card">
            <div class="label">Ventas del mes</div>
            <div class="value">S/ {{ number_format($monthSales, 2) }}</div>
        </div>
        <div class="card">
            <div class="label">Pedidos activos</div>
            <div class="value">{{ $pendingOrders }}</div>
        </div>
    </div>

    <section class="table-shell">
        <div class="table-head">
            <div>
                <p class="eyebrow">Movimiento Reciente</p>
                <h2>Ultimos pedidos registrados</h2>
                <p>Usa esta tabla como referencia rapida del estado operativo actual.</p>
            </div>
            <span class="mini-label">{{ count($latestOrders) }} registros</span>
        </div>

        <table>
            <thead>
            <tr>
                <th>Codigo</th>
                <th>Cliente</th>
                <th>Total</th>
                <th>Estado</th>
                <th>Pago</th>
                <th>Fecha</th>
            </tr>
            </thead>
            <tbody>
            @forelse($latestOrders as $order)
                <tr>
                    <td>{{ $order->tracking_code }}</td>
                    <td>{{ $order->customer_name }}</td>
                    <td>S/ {{ number_format($order->total_amount, 2) }}</td>
                    <td>{{ $order->status }}</td>
                    <td>{{ $order->payment_method ?? 'n/a' }}</td>
                    <td>{{ $order->created_at }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="6">Sin pedidos aun.</td>
                </tr>
            @endforelse
            </tbody>
        </table>
    </section>
</div>
</body>
</html>
