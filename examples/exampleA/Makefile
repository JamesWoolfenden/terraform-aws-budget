#Makefile
ifdef OS
   RM = $(powershell  –noprofile rm .\terraform\modules -force -recurse)
else
   ifeq ($(shell uname), Linux)
      RM = rm .terraform/modules/ -fr
   endif
endif

.PHONY: all

all: init plan build

init:
	$(RM)
	terraform init -reconfigure

plan: init
	terraform plan -refresh=true

build: init
	terraform apply -auto-approve

check: init
	terraform plan -detailed-exitcode

destroy: init
	terraform destroy -force

docs:
	terraform-docs md . > README.md

valid:
	tflint
	terraform fmt -check=true -diff=true
