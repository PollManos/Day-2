#!/bin/bash

echo "=== Vérification système ==="

echo "Date : $(date)"

echo "Utilisateurs connectés :"
who

echo "Espace disque :"
df -h
