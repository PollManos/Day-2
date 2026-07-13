pipeline {
	agent any



	environment {
		MON_PROJET = "projetz"
	}


	parameters {
		string {
			name: "VERSION"
			defalutvalue: "v1"
			description: "Quelle version souhaites-tu ?"
		}
	}


	stages{
		
		stage("Images") {
			steps {
				sh "docker build -t ${MON_PROJET:${params.VERSION}} ."
			}
		}
		
		stage("Container") {
			steps {
				sh "docker run -d ${MON_PROJET:${params.VERSION}}"
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
