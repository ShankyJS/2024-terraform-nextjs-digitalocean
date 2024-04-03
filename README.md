# 2024: Terraform NextJS DigitalOcean
Repositorio utilizado para Charla denominada CNCF San Salvador con ITCA FEPADE

## Terraform version

Este proyecto fue realizado en Terraform version.

````bash
Terraform v1.7.5
````

## Instalación de Terraform

Recomiendo mucho instalar Terraform a través de "tfenv" debido que nos permite gestionar las versiones de Terraform y es usable en MacOS, Unix based systems y Windows (Git-bash)

[Click para acceder al repositorio](https://github.com/tfutils/tfenv)

## Cumple los requisitos para correr la demo

Requisitos:

- Cuenta en Digitalocean [registrate aquí.](m.do.co/c/e3c4799e0fa4)
- Crear un Personal Access Token [documentación aquí](www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/)

## Clona el repositorio

Clona el repositorio en tu local

````
git clone https://github.com/ShankyJS/2024-terraform-nextjs-digitalocean && cd terraform
````

## Preparandonos para correr el proyecto

### Crea tu archivo de variables y llenalo.

Copia la plantilla de variables en un nuevo archivo y llenalas con los valores especificos que utilizarás.

````
cp terraform.tfvars.example terraform.tfvars
````

Modifica el archivo ``terraform.tfvars`` y reemplaza los placeholders "value" por los valores de tus variables.

### Inicializa, crea y destruye

Inicializa el proyecto, esto hará que Terraform descargue los módulos y providers necesarios.

(Corre estos comandos desde el root del repositorio)

````
terraform init
````

Luego de inicializar el proyecto puedes planearlo para ver que recursos serán creados.

````
terraform plan
````

Si estás de acuerdo con los recursos que serán creados puedes aplicar estos cambios.

````
terraform apply --auto-approve
````

Una vez que termines de probar el proyecto puedes destruirlo.

````
terraform destroy --auto-approve
````