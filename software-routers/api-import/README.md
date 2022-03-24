# Import Routers to OpenNMS

    curl -s -u admin:admin \
        -X POST \
        -H "Content-Type: application/xml" \
        -H "Accept: application/xml" \
        -d @soft-routers.xml \
        http://localhost:8980/opennms/rest/requisitions

    curl -s -u admin:admin \
        -X PUT \
        http://localhost:8980/opennms/rest/requisitions/soft-routers/import