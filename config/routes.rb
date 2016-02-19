Rails.application.routes.draw do
  resources :cpn_ms
  resources :friends
  resources :cpn_types
  resources :dstrbtr_whl_sl_prices
  resources :prd_m_set_contents
  resources :prd_m_dstrbtr_hide_prds
  resources :prd_m_prchs_prices
  resources :dstrbtr_ms
  resources :currency_ms
  resources :currency_m_excng_rates
  resources :whl_sl_price_pttrn_ms
  resources :whl_sl_price_pttrn_ds
  resources :fbj_prd_sell_price_ms
  resources :whl_sl_price_pttrn_whl_sl_price_xrefs
  resources :tax_ms
  resources :comm_rate_ms
  resources :prd_m_whl_sl_prices
  resources :prd_m_host_apps
  resources :prd_host_app_ms
  resources :prd_m_effect_csls
  resources :prd_effect_cls_ms
  resources :prd_ctgry_ms
  resources :vndr_ms
  resources :prd_ms
  resources :cpn_m_sales_dsts
  resources :cpn_m_total_sales_dscnts
  resources :cpn_ms
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cpn_ms#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
