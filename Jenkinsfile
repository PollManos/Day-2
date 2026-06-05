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
			sh "mkdir -p Build"
			}
		post{
			success{
				echo "Builds réussies"
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
