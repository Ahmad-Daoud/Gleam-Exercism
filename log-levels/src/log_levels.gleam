import gleam/string as s

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> message -> message
    "[ERROR]:" <> message -> message
    "[WARNING]:" <> message -> message
    _ -> log_line
  }
  |> s.trim()
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> _message -> "info"
    "[ERROR]:" <> _message -> "error"
    "[WARNING]:" <> _message -> "warning"
    _ -> log_line
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
