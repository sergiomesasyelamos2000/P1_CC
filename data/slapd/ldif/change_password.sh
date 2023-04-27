#!/bin/bash


# Añadimos nuevos usuarios y cambiamos sus contresañeas
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/sergio.ldif
ldappasswd -s sergio -w admin -D "cn=admin,dc=example,dc=org" -x "uid=sergio,dc=example,dc=org"
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/carlos.ldif
ldappasswd -s carlos -w admin -D "cn=admin,dc=example,dc=org" -x "uid=carlos,dc=example,dc=org"
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/billy.ldif
ldappasswd -s billy -w admin -D "cn=admin,dc=example,dc=org" -x "uid=billy,dc=example,dc=org"

# Añadimos nuevas categorías, People y Developers, respectivamente
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/add_new_ou.ldif
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/new_ou_developers.ldif
# Añadimos nuevos usuarios a esas categorías
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/pepe.ldif
ldappasswd -s pepe -w admin -D "cn=admin,dc=example,dc=org" -x "uid=pepe,ou=People,dc=example,dc=org"
ldapadd -x -D "cn=admin,dc=example,dc=org" -w "admin" -f /container/service/slapd/assets/test/maria.ldif
ldappasswd -s maria -w admin -D "cn=admin,dc=example,dc=org" -x "uid=maria,ou=Developers,dc=example,dc=org"

