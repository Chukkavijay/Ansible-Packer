$env:AWS_ACCESS_KEY_ID="anaccesskey"
$env:AWS_SECRET_ACCESS_KEY="asecretkey"
$env:AWS_REGION="us-west-2"

1. Configured S3 backend
2. Terraform state rm and mv
3. Terraform dependencies.
4. Terraform AWS env variables.


ssh-agent & ssh-add
https://www.cs.swarthmore.edu/newhelp/ssh-agent.html

To set up SSH agent to avoid retyping passwords, you can do:
ssh-agent bash
ssh-add ~/.ssh/id_rsa
