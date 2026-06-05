pipeline{

	agent any

	stages{
	
	stage("Clone"){
		steps{
			git branch: 'main', url: 'https://github.com/PollManos/Day-2.git'
			}
		}
	stage("Build"){
		steps{
			sh "mkdir Build"
			}
		post{
			success{
				echo "Build réussie"
				}
			failure{
					echo "Build échoué"
					}
			}
		}
	stage("Test"){
			steps{
				sh "cat README.md"
				}
		}
	}

}
