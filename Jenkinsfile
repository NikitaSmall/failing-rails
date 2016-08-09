node('linux') {
  stage 'Installation'
  bash 'rvm use "ruby@gemset"'
  bash 'set -e'
  bash 'gem install bundler'
  bash 'bundle install'

  stage 'Checkout'
  git credentialsId: '8ccf37f5-d094-45e3-ac31-214c7c5fc224', url: 'https://github.com/NikitaSmall/failing-rails.git'

  stage 'Build and Test'
  bash 'rake db:migrate'
  bash 'rm -rf features/reports'
  bash 'mkdir features/reports'
  bash 'bundle exec cucumber -f json > features/reports/report.json'
}
