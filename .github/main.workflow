workflow "share tweet button" {
  on = "pull_request"
  resolves = ["share button on merge"]
}

action "share button on merge" {
  uses = "vsoch/twitter-share-action/pull_request_share@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    MATCH_PATTERN = "*.png"
    HASHTAGS = "#rsephenotype #rseng"
    CUSTOM_MESSAGE = "What is your RSE Phenotype? Here is mine!"
    DATA_URL = "https://www.github.com/usrse/rse-phenotype"
    AT_USERNAME = "@us_rse"
  }
}
