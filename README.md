### GCS Remote storage

This is the backend config i used in `backend.tf`

```hcl
terraform {
  backend "gcs" {
    bucket  = "lateral-insight-188914.appspot.com"
    #prefix  = "marunk20/dev" // This is not required here and so I commented out.. I prefer injecting as PARTIAL_CONFIGURATION as shown below
  }
}
```

I used `GOOGLE_BACKEND_CREDENTIALS` environment variable to inject GCS Service key

> `export GOOGLE_BACKEND_CREDENTIALS=PATH_TO_KEY`

I have commented out `prefix` here from the file and I have used partial-configuration type and I injected the prefix this way

> `terraform init -backend-config="prefix=marunk20/dev"` 


This way I was able to change `prefix` and locate different backends and this is really important for us to have seperate backends for each envirionment and not have one backend for all the environments

 > **Note :** Within the same prefix, i was able able to created different state-files by switching workspaces

 `terraform workspace new SOME_NAME` (create a new workspace and thus have a different state file created within the same backend)

 `terraform workspace select SOME_NAME` (select the workspace thats already existing)
