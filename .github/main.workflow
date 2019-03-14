workflow "Call external API" {
  on = "push"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["POST", "https://pubsub.googleapis.com/v1/projects/site-host-234516/topics/github-push:publish?key=AIzaSyCCvVg7lndJXYZdPUtyb2sXPyq9MHn0njc", "{\"messages":[{\"data\":\"test\"}]}"]
}
