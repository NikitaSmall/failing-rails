node {
  docker.image('rvm-image').inside {
    stage 'Installation'
    sh 'rvm use "ruby@gemset"'
    sh 'set -e'
    sh 'gem install bundler'
    sh 'bundle install'

    stage 'Checkout'
    git credentialsId: '8ccf37f5-d094-45e3-ac31-214c7c5fc224', url: 'https://github.com/NikitaSmall/failing-rails.git'

    stage 'Build and Test'
    sh 'rake db:migrate'
    sh 'rm -rf features/reports'
    sh 'mkdir features/reports'
    sh 'bundle exec cucumber -f json > features/reports/report.json'
  }
}
