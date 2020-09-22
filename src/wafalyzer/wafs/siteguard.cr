module Wafalyzer
  class Waf::SiteGuard < Waf
    register product: "SiteGuard Lite (Wordpress WAF)"

    PATTERN =
      Regex.union(
        />Powered.by.SiteGuard.Lite</i,
        /refuse.to.browse/i,
      )

    matches_body PATTERN
  end
end
