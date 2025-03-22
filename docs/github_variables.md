# GitHub Variables

GitHub Variables is convenient and cheap ($0) way to store CI/CD variables. Unfortunately, one must be an organisation
administrator in order to see the names of these variables, making it difficult for those without that permission to use them.

Here are the names of the GitHub Variables that are available for use here in the testy-mctestface repo.

## Organisation
### Secrets
- `AWS_ROLE_TO_ASSUME`
- `CLOUDFLARE_ACCOUNT_ID`
- `CLOUDFLARE_API_TOKEN`
- `CLOUDFLARE_TOKEN_MANAGER`
- `EVOTEUMBOT_APP_ID`
- `EVOTEUMBOT_APP_INSTALLATION_ID`
- `EVOTEUMBOT_APP_PEM_FILE`
- `EVOTEUMBOT_CLIENT_ID`
- `QUAY_ROBOT_PASSWORD`
- `QUAY_TOKEN`
- `TOFU_STATE_BUCKET_NAME`

### Variables
- `AWS_REGION`
- `FAIL_FAST`
- `QUAY_DOMAIN`
- `QUAY_OAUTH2_USERNAME`
- `QUAY_ROBOT_USERNAME`
- `QUAY_URL`
- `TERRAFORM_DOCS_IS_TOFU_COMPATIBLE`
- `TOFU_IS_JUNIT_COMPATIBLE`

## testy-mctestface repo
These take precedence over the organisation variables.

### Secrets


### Variables
- `ARTEFACT_TYPE`
- `FAIL_FAST`
- `QUAY_REPOSITORY_PATH`
- `QUAY_REPOSITORY_URL`


---

> [!WARNING]  
> This file is controlled by OpenTofu in the [estate-repos](https://github.com/evoteum/estate-repos) repository.  
>  
> Manual changes will be **overwritten** within 24 hours.
