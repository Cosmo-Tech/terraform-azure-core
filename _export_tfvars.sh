terraform -chdir=$PWD/$1 output > $PWD/out_azure_core.txt
sed -i 's/ = /=/' $PWD/out_azure_core.txt
sed -i 's/out_/export TF_VAR_/' $PWD/out_azure_core.txt