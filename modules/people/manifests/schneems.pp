class people::schneems {
  include sparrow # requires sparrow module in Puppetfile

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  repository { $dotfiles:
    source  => 'schneems/dotfiles',
    require => File[$my]
  }

  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  include chrome
}