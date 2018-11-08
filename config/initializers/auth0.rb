Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'FU--PZk-kX0nXGRCyzBG11kbwIaH12qJ',
    'YOUR_CLIENT_SECRET',
    'peerlift100.auth0.com',
    callback_path: '/auth/oauth2/callback',
    authorize_params: {
      scope: 'openid profile'
    }
  )
end
