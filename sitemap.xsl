<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>XML Sitemap – AppVideoDownloader</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Outfit:wght@600;700;800&amp;display=swap" rel="stylesheet"/>
        <style>
          body { font-family: 'Inter', sans-serif; background: #0a0d14; color: #f8fafc; margin: 0; padding: 40px 20px; }
          .wrap { max-width: 1000px; margin: 0 auto; background: #0f1523; border: 1px solid rgba(255,255,255,0.08); border-radius: 16px; padding: 32px; box-shadow: 0 20px 40px rgba(0,0,0,0.5); }
          h1 { font-family: 'Outfit', sans-serif; font-size: 1.8rem; margin: 0 0 8px; color: #fff; }
          p { color: #94a3b8; font-size: 0.95rem; margin-bottom: 24px; }
          table { width: 100%; border-collapse: collapse; }
          th { text-align: left; padding: 12px 14px; font-size: 0.8rem; text-transform: uppercase; color: #64748b; border-bottom: 1px solid rgba(255,255,255,0.08); }
          td { padding: 12px 14px; border-bottom: 1px solid rgba(255,255,255,0.04); font-size: 0.9rem; }
          a { color: #818cf8; text-decoration: none; }
          a:hover { text-decoration: underline; }
          .badge { padding: 3px 8px; border-radius: 9999px; font-size: 0.75rem; font-weight: 700; background: rgba(99,102,241,0.15); color: #818cf8; }
        </style>
      </head>
      <body>
        <div class="wrap">
          <h1>XML Sitemap Index</h1>
          <p>Official search engine sitemap for AppVideoDownloader tools and tutorials.</p>
          <table>
            <thead>
              <tr>
                <th>Page URL</th>
                <th>Priority</th>
                <th>Frequency</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
                  <td><span class="badge"><xsl:value-of select="sitemap:priority"/></span></td>
                  <td style="color:#94a3b8;"><xsl:value-of select="sitemap:changefreq"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
