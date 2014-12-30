class osx::software_update::disable {
  exec {
    'OSX Software Update':
      command  => 'softwareupdate --schedule off',
      timeout  => 0,
      user     => 'root'
  }

}
