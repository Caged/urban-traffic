workflow "Update image on Docker Hub" {
  on = "push"
  resolves = ["build"]
}

action "build" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "build -t $GITHUB_REPOSITORY ."
}

action "tag" {
  needs = ["build"]
  uses = "actions/docker/tag@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "base github/base"
}
