module Wafalyzer
  class Waf::DotDefender < Waf
    register product: "dotDefender (Applicure Technologies)"

    PATTERN =
      /dotdefender.blocked.your.request/i

    matches_header "X-dotDefender-Denied"
    matches_body PATTERN
  end
end
