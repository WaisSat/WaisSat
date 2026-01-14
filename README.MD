
# 🚀 Project WaisSat
![Build Status](https://img.shields.io/badge/Jenkins-Build_Passing-success?style=flat-square&logo=jenkins)

### 🛠️ Continuous Integration (CI)
This repository is monitored by a private Jenkins Pipeline. Every commit to the `main` branch triggers an automated:
1. **Workspace Audit**: Verifying file structure integrity.
2. **Content Validation**: Ensuring `apple_green` and other critical files meet production standards.
## 🛠️ Tech Stack & Skills
| Tool | Application |
| :--- | :--- |
| **Jenkins** | Orchestrating multi-stage Declarative Pipelines. |
| **GitHub** | Version control, branch management, and CI triggers. |
| **Bash/Shell** | Writing automated workspace audits and file validation scripts. |
| **Linux** | Managing the Jenkins server environment and file system. |


## 🚀 How to Reproduce this Pipeline

To replicate this automation in your own Jenkins environment, follow these steps:

1. **Create a New Item**: Select **Pipeline** and name it `Production-Audit-Pipeline`.
2. **Configure Pipeline**: Scroll to the **Pipeline** section and select "Pipeline script".
3. **Insert Script**: Use the following Declarative Pipeline structure:
   ```groovy
   pipeline {
       agent any
       stages {
           stage('Checkout') {
               steps { git branch: 'main', url: '[https://github.com/WaisSat/WaisSat.git](https://github.com/WaisSat/WaisSat.git)' }
           }
           stage('Validation') {
               steps { sh '[ -s apple_green ] || exit 1' }
           }
       }
   }
