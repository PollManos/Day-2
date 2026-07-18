pipeline {
	agent any



	environment {
		MON_PROJET = "docksaficio/projetz"
	}


	parameters {
		string (
			name: "VERSION",
			defaultValue: "v1",
			description: "Quelle version souhaites-tu ?"
		)
	}


	stages{

                stage("Images") {
                        steps {
                                sh "docker build -t ${MON_PROJET}:${params.VERSION} ."
                        }
                }


		stage("Credentials") {                        
			steps {
                                withCredentials ([usernamePassword(
                                credentialsId: 'DockerHubLog',
                                usernameVariable: 'MonUser',
                                passwordVariable: 'MonMDP'
                                        )])
                                                {
                                sh 'echo $MonMDP | docker login -u $MonUser --password-stdin'
                                }
                        }	
		}

		stage("Docker Push") {
		
			steps {
				sh "docker push ${MON_PROJET}:${params.VERSION}"
			}
		}
	}


	post {

		success {
			echo "gg gonext"
		}
		
		failure {
			echo "refais tout yaaaaaaaal"
		}
		
		always {
			echo "fin du pipeline"
		}
	}

}
