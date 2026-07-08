pipeline {
	agent any

	stages{

		stage("Checkout") {
			steps {
				checkout scm 
			}
		}
		
		stage("Images") {
			steps {
				sh "docker build -t projetz ."
			}
		}
		
		stage("Container") {
			steps {
				sh "docker run -d projetz"
			}
		} 

	}

	
	post {
	
		success {
			echo "gg go next"
		}
		
		failure {
			echo "montre moi comment tu recommences"
		}
	
		always {
			echo "fin du pipeline"
		}	
	}



}
