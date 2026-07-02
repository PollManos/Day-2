pipeline {
	agent any

	stages{

		stage("Checkout"){
			steps {
				checkout SCM 
			}
		}
		
		stage("Images"){
			steps{
				sh "docker build -t mon-projet-python ."
			}
		}
		
		stage("Container"){
			steps {
				sh "docker run mon-projet-python"
			}
		}

	}

}
