Rails.application.routes.draw do
  get 'welcome/index'

  constraints Clearance::Constraints::SignedIn.new do
    root to: "welcome#index", as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "clearance/sessions#new", as: :signed_out_root
  end
end
