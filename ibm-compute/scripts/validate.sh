#! /usr/bin/env bash

# environment variables required for each stage
envVars_Build_Stage=()
envVars_Terraform_Plan_Stage=("PUBLIC_KEY" "VI_INSTANCE_NAME" "TF_VAR_ibm_sl_api_key" "TF_VAR_ibm_sl_username" "TF_VAR_ibm_cloud_api_key")
envVars_Terraform_Apply_Stage=()
envVars_DeployInstallStart_Stage=("PRIVATE_KEY")
envVars_Health_Check_Stage=()

# validation function
validateEnvVar() {
	array=("$@")

	for var in "${array[@]}"
	do
		[ -z "${!var}" ] && echo "Error: Required environment variable ${var} not set... Please see the README for more information." && exit 1
	done
}

echo "Validating environment variables for ${IDS_STAGE_NAME}..."

case $IDS_STAGE_NAME in
	"Build Stage")
		validateEnvVar "${envVars_Build_Stage[@]}"
		;;
	"Terraform Plan Stage")
		validateEnvVar "${envVars_Terraform_Plan_Stage[@]}"
		;;
	"Terraform Apply Stage")
		validateEnvVar "${envVars_Terraform_Apply_Stage[@]}"
		;;
	"Deploy/Install/Start Stage")
		validateEnvVar "${envVars_DeployInstallStart_Stage[@]}"
		;;
	"Health Check Stage")
		validateEnvVar "${envVars_Health_Check_Stage[@]}"
		;;
	*)
		echo "Custom stage... skipping environment variable validation checks."
		;;
esac
