FactoryBot.define do
  factory :tag do
    dry { false }
    bitter { false }
    dark { false }
    ales { false }
    stout { false }
    larger { false }
    cider { false }
    ipa { false }
    light { false }
    product { nil }
  end
end
