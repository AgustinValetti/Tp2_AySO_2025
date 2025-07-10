#!/bin/bash
mkdir -p ~/RTA_Examen_20250705/ansible/roles/2PRecuperatorio/tasks
mkdir -p ~/RTA_Examen_20250705/ansible/roles/Crea_Carpetas_Valetti/tasks
mkdir -p ~/RTA_Examen_20250705/ansible/roles/Cambia_Propiedad_Valetti/tasks
mkdir -p ~/RTA_Examen_20250705/ansible/roles/Sudoers_Valetti/tasks

cp ~/UTN-FRA_SO_Examenes/202411/ansible/roles/2PRecuperatorio/tasks/main.yml ~/RTA_Examen_20250705/ansible/roles/2PRecuperatorio/tasks/
cp ~/UTN-FRA_SO_Examenes/202411/ansible/roles/Crea_Carpetas_Valetti/tasks/main.yml ~/RTA_Examen_20250705/ansible/roles/Crea_Carpetas_Valetti/tasks/
cp ~/UTN-FRA_SO_Examenes/202411/ansible/roles/Cambia_Propiedad_Valetti/tasks/main.yml ~/RTA_Examen_20250705/ansible/roles/Cambia_Propiedad_Valetti/tasks/
cp ~/UTN-FRA_SO_Examenes/202411/ansible/roles/Sudoers_Valetti/tasks/main.yml ~/RTA_Examen_20250705/ansible/roles/Sudoers_Valetti/tasks/
cp ~/UTN-FRA_SO_Examenes/202411/ansible/playbook.yml ~/RTA_Examen_20250705/ansible/

echo "Completado"

