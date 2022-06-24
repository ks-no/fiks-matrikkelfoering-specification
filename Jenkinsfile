pipeline {
    agent any
    stages {
        stage('Trigger build job'){
            steps {
                build job: '/KS/fiks-matrikkelfoering-models-dotnet/main', parameters: [[$class: 'StringParameterValue', name:'triggerbranch', value: env.BRANCH_NAME]]
            }
        }
    }
}