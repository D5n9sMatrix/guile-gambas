#!/usr/bin/r

lines("a", "b", "c")
segments(x0, y0, x1 = x0, y1 = y0,
          col = par("fg"), lty = par("lty"), lwd = par("lwd"),
          )
rect(xleft, ybottom, xright, ytop, density = NULL, angle = 45,
      col = NA, border = NULL, lty = par("lty"), lwd = par("lwd"))

text(x = 1:10)
points(x = 1:10)
polygon(x, y = NULL, density = NULL, angle = 45,
         border = NULL, col = NA, lty = par("lty"),
         ..., fillOddEven = FALSE)
arrows(x0, y0, x1 = x0, y1 = y0, length = 0.25, angle = 30,
        code = 2, col = par("fg"), lty = par("lty"),
        lwd = par("lwd"))
default_repos()
r(
  func,
  args = list(),
  libpath = .libPaths(),
  repos = default_repos(),
  stdout = NULL,
  stderr = NULL,
  poll_connection = TRUE,
  error = getOption("callr.error", "error"),
  cmdargs = c("--slave", "--no-save", "--no-restore"),
  show = FALSE,
  callback = NULL,
  block_callback = NULL,
  spinner = show && interactive(),
  system_profile = FALSE,
  user_profile = "project",
  env = rcmd_safe_env(),
  timeout = Inf,
  package = FALSE,
  arch = "same",
  ...
)
r_safe(
  func,
  args = list(),
  libpath = .libPaths(),
  repos = default_repos(),
  stdout = NULL,
  stderr = NULL,
  poll_connection = TRUE,
  error = getOption("callr.error", "error"),
  cmdargs = c("--slave", "--no-save", "--no-restore"),
  show = FALSE,
  callback = NULL,
  block_callback = NULL,
  spinner = show && interactive(),
  system_profile = FALSE,
  user_profile = "project",
  env = rcmd_safe_env(),
  timeout = Inf,
  package = FALSE,
  arch = "same",
  ...
)
# Workspace is empty
r(function() ls())

# library path is the same by default
r(function() .libPaths())
.libPaths()

## Don't show:  # nolint: trailing_whitespace_linter.
if (FALSE) (if (getRversion() >= "3.4") withAutoprint else force)({ # examplesIf # nolint
## End(Don't show)
# Workspace is empty
r(function() ls()) # nolint

r_bg(
  func,
  args = list(),
  libpath = .libPaths(),
  repos = default_repos(),
  stdout = "|",
  stderr = "|",
  poll_connection = TRUE,
  error = getOption("callr.error", "error"),
  cmdargs = c("--slave", "--no-save", "--no-restore"),
  system_profile = FALSE,
  user_profile = "project",
  env = rcmd_safe_env(),
  supervise = FALSE,
  package = FALSE,
  arch = "same",
  ...
) # nolint
rx <- r_bg(function() 1 + 2) # nolint

# wait until it is done
rx$wait()
rx$is_alive()
rx$get_result() # nolint

## Don't show:  # nolint: trailing_whitespace_linter.
if (FALSE) (if (getRversion() >= "3.4") withAutoprint else force)({ # examplesIf
## End(Don't show)
rx <- r_bg(function() 1 + 2) # nolint
# wait until it is done
rx$wait()
rx$is_alive()
rx$get_result()
## Don't show:  # nolint
}) # examplesIf
## End(Don't show) # nolint
