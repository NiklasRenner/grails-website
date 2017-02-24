databaseChangeLog = {
    changeSet(author: "Niklas Renner", id: "20170224-1") {
        insert(tableName: "roles") {
            column(name: "authority", value: "ROLE_ADMIN")
            column(name: "version", value: "1")
        }

        insert(tableName: "roles") {
            column(name: "authority", value: "ROLE_USER")
            column(name: "version", value: "1")
        }
    }
}