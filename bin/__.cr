
require "../src/surferhearts"
full_cmd = ARGV.map(&.strip).join(' ')

case

when full_cmd == "service run"
  # === {{CMD}} service run [PORT user]
  SurferHearts.service_run(4567, `whoami`.strip)

when ARGV[0..1].join(' ') == "service run" && ARGV[2]? && ARGV[3]?
  SurferHearts.service_run(ARGV[2].to_i32, ARGV[3])

else
  STDERR.puts "!!! Invalid command: #{full_cmd}"
  exit 1
end # case
