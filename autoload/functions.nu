
def add-to-path [new_path: string] {
  let clean_path = ($new_path | str replace '\\' '/')
  if ($env.PATH | any {|p| $p == $clean_path }) {
    print $"Path already exists: ($clean_path)"
  } else {
    $env.PATH = ($env.PATH | append $clean_path)
    let config_line = '$env.PATH = ($env.PATH | append "' + $clean_path + '")'
    echo $config_line | save --append ($nu.config-path)
    print $"Added to PATH and saved: ($clean_path)"
  }
}
def edit-config [editor: string] {
  ^($editor) ($nu.config-path)|source ($nu.config-path)
}


