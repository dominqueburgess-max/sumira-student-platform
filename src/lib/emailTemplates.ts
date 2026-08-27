const PLUM = "#3E5068";
const PLUM_DARK = "#2B3A4C";
const TERRACOTTA = "#E2916E";
const TERRACOTTA_DARK = "#C97050";
const CREAM = "#FCF7EF";
const IVORY = "#FFFEFA";
const CHARCOAL = "#33303A";
const WARM_GRAY = "#6B6470";
const BORDER = "#E8DED2";

export function emailShell(bodyHtml: string, opts?: { previewText?: string }): string {
  return `<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body style="margin:0; padding:0; background:${CREAM}; font-family: Georgia, 'Times New Roman', serif;">
  ${opts?.previewText ? `<div style="display:none; max-height:0; overflow:hidden;">${opts.previewText}</div>` : ""}
  <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:${CREAM}; padding: 32px 16px;">
    <tr>
      <td align="center">
        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width: 560px; background:${IVORY}; border:1px solid ${BORDER}; border-radius: 20px; overflow:hidden;">
          <tr>
            <td style="padding: 32px 40px 20px; text-align:center; border-bottom:1px solid ${BORDER};">
              <div style="font-size:22px; font-weight:700; color:${PLUM_DARK}; letter-spacing:0.5px;">SU MIRA</div>
              <div style="font-family: Arial, Helvetica, sans-serif; font-size:11px; font-weight:700; letter-spacing:3px; color:${TERRACOTTA_DARK}; margin-top:2px;">LEARNING</div>
            </td>
          </tr>
          <tr>
            <td style="padding: 32px 40px; font-family: Arial, Helvetica, sans-serif; color:${CHARCOAL}; font-size:15px; line-height:1.6;">
              ${bodyHtml}
            </td>
          </tr>
          <tr>
            <td style="padding: 20px 40px 32px; font-family: Arial, Helvetica, sans-serif; font-size:12px; color:${WARM_GRAY}; border-top:1px solid ${BORDER}; text-align:center;">
              Su Mira Learning &middot; An educational program of Burbrella<br/>
              Questions? Reach us at <a href="mailto:connect@sumirastudio.com" style="color:${TERRACOTTA_DARK};">connect@sumirastudio.com</a>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>`;
}

export function emailButton(url: string, label: string): string {
  return `<div style="text-align:center; margin: 24px 0;">
    <a href="${url}" style="background:${TERRACOTTA}; color:#ffffff; text-decoration:none; font-family: Arial, Helvetica, sans-serif; font-weight:700; font-size:14px; padding: 12px 28px; border-radius: 999px; display:inline-block;">${label}</a>
  </div>`;
}

export function emailHeading(text: string): string {
  return `<h1 style="font-family: Georgia, 'Times New Roman', serif; font-size:20px; color:${PLUM_DARK}; margin: 0 0 12px;">${text}</h1>`;
}

export function enrollmentTypeLabel(type: string): string {
  if (type === "personalized_plan") return "a Personalized Learning Plan";
  if (type === "both") return "a Personalized Learning Plan + full Learning Studio";
  return "a full Learning Studio";
}
