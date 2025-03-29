niguiri_sources = [
  'main.vala',
  'application.vala',
  'window.vala',
]

niguiri_deps = [
  config_dep,
  dependency('gtk4'),
  dependency('libadwaita-1', version: '>= 1.4'),
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
