# Public: Install updates from Apple
class osx::software_update {
  exec {
    'OSX Software Update':
      command  => 'softwareupdate -i -a',
      schedule => 'update_schedule',
      timeout  => 0,
      user     => 'root'
  }

  schedule { 'update_schedule':
    period => 'weekly'
  }
}

class osx::software_update::disable {
  exec {
    'OSX Software Update':
      command  => 'softwareupdate --schedule off',
      timeout  => 0,
      user     => 'root'
  }

}
