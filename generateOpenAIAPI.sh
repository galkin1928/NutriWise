MODULE="OpenAINetwork/Sources/OpenAINetwork/"
openapi-generator generate -i "openAI.yaml" -g swift5 -o "openAI" --skip-validate-spec
#rm -r $MODULE""*
#cp -R "openAI/OpenAPIClient/Classes/OpenAPIs/". $MODULE
#rm -r "openAI"