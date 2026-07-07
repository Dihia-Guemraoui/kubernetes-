#!/bin/bash
NAMESPACE=workshopdihia

helm upgrade --install dihia-praxis-form . --create-namespace -n $NAMESPACE