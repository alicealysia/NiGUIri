

niguiri_sources = [
  'main.vala',
  'application.vala',
  'window.vala',
]

niguiri_deps = [
  config_dep,
  dependency('libadwaita-1'),
  dependency('gtk4'),
  dependency('gtk4-layer-shell-0'),
  dependency('astal-io-0.1'),
  dependency('glib-2.0'),
  dependency('astal-4-4.0'),
  dependency('astal-battery-0.1'),
  dependency('astal-wireplumber-0.1'),
  dependency('astal-network-0.1'),
  dependency('libnm'),
  dependency('astal-mpris-0.1'),
  dependency('astal-power-profiles-0.1'),
  dependency('astal-tray-0.1'),
  dependency('astal-bluetooth-0.1'),
]

niguiri_sources += gnome.compile_resources('niguiri-resources',
  'niguiri.gresource.xml',
  c_name: 'niguiri'
)

executable('niguiri', niguiri_sources,
  dependencies: niguiri_deps,
  include_directories: config_inc,
       install: true,
)
