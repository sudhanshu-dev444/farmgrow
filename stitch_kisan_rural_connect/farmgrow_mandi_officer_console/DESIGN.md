---
name: FarmGrow Mandi Officer Console
colors:
  surface: '#f8f9ff'
  surface-dim: '#ccdbf4'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e6eeff'
  surface-container-high: '#dde9ff'
  surface-container-highest: '#d5e3fd'
  on-surface: '#0d1c2f'
  on-surface-variant: '#404944'
  inverse-surface: '#233144'
  inverse-on-surface: '#ebf1ff'
  outline: '#707974'
  outline-variant: '#bfc9c3'
  surface-tint: '#2b6954'
  primary: '#003527'
  on-primary: '#ffffff'
  primary-container: '#064e3b'
  on-primary-container: '#80bea6'
  inverse-primary: '#95d3ba'
  secondary: '#006c4e'
  on-secondary: '#ffffff'
  secondary-container: '#97f5cc'
  on-secondary-container: '#007353'
  tertiary: '#442800'
  on-tertiary: '#ffffff'
  tertiary-container: '#623c00'
  on-tertiary-container: '#f69f0d'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#b0f0d6'
  primary-fixed-dim: '#95d3ba'
  on-primary-fixed: '#002117'
  on-primary-fixed-variant: '#0b513d'
  secondary-fixed: '#97f5cc'
  secondary-fixed-dim: '#7bd8b1'
  on-secondary-fixed: '#002115'
  on-secondary-fixed-variant: '#00513a'
  tertiary-fixed: '#ffddb8'
  tertiary-fixed-dim: '#ffb95f'
  on-tertiary-fixed: '#2a1700'
  on-tertiary-fixed-variant: '#653e00'
  background: '#f8f9ff'
  on-background: '#0d1c2f'
  surface-variant: '#d5e3fd'
typography:
  headline-xl:
    fontFamily: Plus Jakarta Sans
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
  headline-xl-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
  headline-lg-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 22px
    fontWeight: '700'
    lineHeight: 28px
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 22px
    fontWeight: '600'
    lineHeight: 28px
  headline-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 24px
  title-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
  title-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  body-sm:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 18px
  label-lg:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
  label-sm:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '600'
    lineHeight: 14px
    letterSpacing: 0.04em
  numeric-metric:
    fontFamily: Plus Jakarta Sans
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 38px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1rem
  gutter-md: 1.25rem
  gutter-lg: 1.5rem
  margin: 1rem
  margin-md: 1.5rem
  margin-lg: 2rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2rem
---

## Brand & Style

The design system is engineered for state and national agricultural market committees, mandi superintendents, inspection officers, and trade clearing agents. The interface balances statutory authority with rapid administrative throughput. It must convey unwavering institutional trust, absolute data clarity, procedural rigor, and high operational reliability across busy mandi yards and regional administrative bureaus.

### Visual Style: Institutional Modernism
Combining modern enterprise efficiency with crisp, functional civic software:
- **Clean Structure & High Density:** Prioritizes dense procurement tables, weighing receipts, lot traceability, and pricing tickers over decorative flourishes.
- **Calm, Legible Field Usability:** High-contrast tokens calibrated for direct sunlight in auction yards as well as back-office multi-monitor desks.
- **Deliberate Administrative Semantic Coding:** Clear status demarcation using statutory greens, warning ambers, and regulatory soft roses to reduce officer verification latency.
- **Quiet Elevation & Crisp Geometry:** Crisp white container surfaces anchored by subtle borders and fine-tuned depth rather than heavy skew or intrusive ornament.

## Colors

The palette grounds administrative actions in deep agricultural authority while keeping long-duration sessions visually relaxed and legible.

### Core Swatches
- **Primary (`#064e3b` - Deep Forest Emerald):** Designated for top-level navigation banners, authoritative actions (Final Lot Release, Audit Sign-off), critical primary buttons, and institutional signposts.
- **Secondary (`#047857` - Vibrant Emerald):** Used for interactive triggers, active tabs, confirmed audit states, and key verification toggles.
- **Tertiary (`#f59e0b` - Amber Harvest):** Reserved for triage workflows, pending quality tests, moisture clearance holds, and escrow settlement queues.
- **Neutral Primary (`#334155` - Slate Gray):** Controls standard content hierarchies, metadata labels, and structural dividers. Deep Slate (`#0f172a`) serves as default heading ink, while Muted Slate (`#64748b`) handles tertiary notes and table column labels.

### Canvas & Surface Matrix
- **Base Canvas:** `#f8fafc` (Cool Administrative Tint) provides an eye-resting foundation for large data surfaces.
- **Sub-Surface/Highlight:** `#f0fdf4` (Light Sage Mint) applied sparingly to filter strips, summary KPI metric cards, and verified lot panels.
- **Surface Pure:** `#ffffff` (Crisp White) for content cards, data table wrappers, and flyout inspector drawers.

### Regulatory Status Colors
- **Approved / Verified:** Background `#ecfdf5`, Border `#a7f3d0`, Text `#065f46`.
- **Pending / Action Required:** Background `#fffbeb`, Border `#fde68a`, Text `#92400e`.
- **Alert / Rejected / Disputed:** Background `#fef2f2`, Border `#fecaca`, Text `#991b1b` (using Soft Rose `#ef4444` for primary badges and critical alert icons).

## Typography

The type system separates authoritative structural headlines from high-density tabular execution.

- **Plus Jakarta Sans** delivers approachable authority to section headers, portal navigation, and key mandi turnover figures without appearing sterile or overly technocratic.
- **Inter** handles all tabular cells, form inputs, audit trails, and multi-column comparison tables, utilizing tabular figures (`font-variant-numeric: tabular-nums`) to align prices, metric weights, quintals, and farmer registration IDs reliably.
- Use `label-sm` with slight uppercase tracking strictly for regulatory indicators, commodity grade codes (e.g., `FAQ GRADE-A`, `DISP-RESOLVED`), and column anchors.

## Layout & Spacing

A 12-column responsive fluid grid structured for screen real-estate optimization and intense officer data scrutiny.

### Breakpoints & Fluid Columns
- **Desktop (1280px and above):** 12-column layout, 24px margins, 20px gutters. Houses collapsible sidebar navigation (260px fixed width) alongside high-density multi-pane data workspaces.
- **Tablet / Rugged Terminal (768px - 1279px):** 8-column layout, 20px margins, 16px gutters. Metric cards wrap into 2x2 grids; tables shift horizontally with locked commodity and lot identifier columns.
- **Field Mobile (320px - 767px):** 4-column layout, 16px margins, 12px gutters. Data tables convert to structured status record cards. Actions become bottom-anchored, full-width thumb-tappable buttons.

### Spacing Discipline
Maintain a strict 4px/8px rhythm. Compact views (table cells, badge padding, form fields) employ `space-xs` (4px) and `space-sm` (8px). Structural containment between card sections, chart layouts, and metric ribbons strictly relies on `space-md` (16px) through `space-xl` (32px).

## Elevation & Depth

To avoid visual noise across high-density administrative dashboards, depth is primarily communicated through subtle hairline borders, distinct structural background fills, and low-opacity ambient shadows.

### Elevation Hierarchy
- **Level 0 (Flat Ground):** The base app canvas `#f8fafc`. Table rows, inactive containers, and divider tracks sit directly at this tier.
- **Level 1 (Card & Module Layer):** Clean `#ffffff` cards and KPI widgets. Uses a crisp structural border (`1px solid #e2e8f0`) complemented by a gentle ambient drop: `box-shadow: 0 1px 3px 0 rgba(15, 23, 42, 0.05), 0 1px 2px -1px rgba(15, 23, 42, 0.03)`.
- **Level 2 (Hover & Context Panels):** Active table rows on hover, active filters, flyout search menus, and dropdowns. Uses `box-shadow: 0 4px 6px -1px rgba(15, 23, 42, 0.07), 0 2px 4px -2px rgba(15, 23, 42, 0.04)` with `#047857` border accents on focused items.
- **Level 3 (Inspection Modals & Flyout Drawers):** Weighment discrepancy modals, quality grade override drawers, and alert banners. Uses `box-shadow: 0 20px 25px -5px rgba(15, 23, 42, 0.1), 0 8px 10px -6px rgba(15, 23, 42, 0.06)` over a Slate backdrop overlay (`rgba(15, 23, 42, 0.45)`).

## Shapes

The geometric architecture utilizes modern, controlled 8px to 12px rounded elements. This balances the software's authoritative, data-first purpose with clean contemporary ergonomics.

- **Inputs, Buttons, and Chips:** Set to `rounded` (8px / 0.5rem), providing comfortable click targets without softening the professional rigor of the UI.
- **Cards, Tables, and Metric Panels:** Configured at `rounded-lg` (12px / 0.75rem to 1rem) with `overflow: hidden` to frame data blocks sharply against the muted sage canvas.
- **Status Pills & Count Dots:** Use fully rounded pill caps (`9999px`) to immediately distinguish workflow states from actionable rectangular controls.

## Components

### Buttons
- **Primary:** Background `#064e3b`, text `#ffffff`, border `1px solid #064e3b`. Hover: `#047857`. Focus ring: 2px offset with `#047857`. Padding: 10px 18px (compact: 8px 14px).
- **Secondary (Outline):** Background `#ffffff`, text `#064e3b`, border `1px solid #cbd5e1`. Hover: Background `#f0fdf4`, border `#047857`.
- **Critical / Reject:** Background `#fef2f2`, text `#ef4444`, border `1px solid #fecaca`. Hover: Background `#ef4444`, text `#ffffff`.

### Data Tables & High-Density Rows
- **Header:** Background `#f8fafc`, text `#64748b`, typography `label-sm`, uppercase tracking, bottom border `2px solid #e2e8f0`. Height: 40px.
- **Body Rows:** Background `#ffffff`, alternate zebra tint `#fcfdfd`, text `#334155`, typography `body-md` (numbers with `tabular-nums`), border-bottom `1px solid #f1f5f9`. Row height: 48px standard, 36px in compact view.
- **Active / Selected Row:** Background `#f0fdf4`, border-left `3px solid #047857`.

### Status Badges & Chips
- **Approved / Verified:** Background `#ecfdf5`, text `#065f46`, border `1px solid #a7f3d0`. Dot indicator: `#047857`.
- **Pending / Action Needed:** Background `#fffbeb`, text `#92400e`, border `1px solid #fde68a`. Dot indicator: `#f59e0b`.
- **Disputed / Quarantined:** Background `#fef2f2`, text `#991b1b`, border `1px solid #fecaca`. Dot indicator: `#ef4444`.

### Input Fields & Search Filters
- **Standard Input:** Background `#ffffff`, border `1px solid #cbd5e1`, text `#0f172a`, placeholder `#94a3b8`, border radius 8px, height 40px.
- **Focus State:** Border `#047857`, box-shadow `0 0 0 3px rgba(4, 120, 87, 0.15)`.
- **With Commodity Unit (Affix):** Fixed trailing background `#f8fafc`, text `#64748b`, border-left `1px solid #cbd5e1` (e.g., `₹ / Quintal`, `MT`).

### High-Density Metric Cards (KPI)
- **Container:** Background `#ffffff`, border `1px solid #e2e8f0`, border radius 12px, padding `16px 20px`.
- **Header:** Label `label-md` `#64748b` uppercase with an optional subtle status chip.
- **Value:** `numeric-metric` `#0f172a`, paired with trend text (e.g., `+4.2% vs yesterday` in `#047857` or `#ef4444`).
- **Footer Strip:** 4px high colored accent strip at the top or bottom of the card (`#064e3b` for volume, `#f59e0b` for pending gate passes).

### Form Controls (Checkboxes & Radios)
- **Checkbox:** 18px x 18px, border `1.5px solid #94a3b8`, radius 4px. Checked state: Background `#064e3b`, border `#064e3b` with crisp white checkmark.
- **Radio:** 18px x 18px circle, border `1.5px solid #94a3b8`. Checked state: Border `#064e3b` with a solid 8px `#064e3b` inner core.