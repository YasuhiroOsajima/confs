CERT_DIR=/etc/code_certs

mkdir ${CERT_DIR}

openssl ecparam -out ${CERT_DIR}/ca.key -name prime256v1 -genkey
openssl req -new -sha256 -key ${CERT_DIR}/ca.key -out ${CERT_DIR}/ca.csr

openssl x509 -req -sha256 -days 36500 -in ${CERT_DIR}/ca.csr -signkey ${CERT_DIR}/ca.key -out ${CERT_DIR}/ca.crt

openssl ecparam -out ${CERT_DIR}/codeserver.key -name prime256v1 -genkey
openssl req -new -sha256 -key ${CERT_DIR}/codeserver.key -out ${CERT_DIR}/codeserver.csr

openssl x509 -req -in ${CERT_DIR}/codeserver.csr -CA ${CERT_DIR}/ca.crt -CAkey ${CERT_DIR}/ca.key -CAcreateserial -out ${CERT_DIR}/codeserver.crt -days 36500 -sha256 -extfile subjectnames.txt
openssl x509 -in ${CERT_DIR}/codeserver.crt -text -noout

