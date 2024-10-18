import Mix.Config

config :pooler, pools:
  [
    [
      name: :riaklocal,
      group: :riak,
      max_count: 10,
      init_count: 5,
      start_mfa: { Riak.Connection, :start_link, ['192.168.240.31'] }
    ]
  ]
