databaseChangeLog = {

    changeSet(author: "renner (generated)", id: "1487696804275-1") {
        createSequence(sequenceName: "hibernate_sequence")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-2") {
        createTable(tableName: "request_info") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "request_infoPK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "client_ip", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "TIMESTAMP WITHOUT TIME ZONE") {
                constraints(nullable: "false")
            }

            column(name: "request_uri", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "renner (generated)", id: "1487696804275-3") {
        createTable(tableName: "roles") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "rolePK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "authority", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "TIMESTAMP WITHOUT TIME ZONE") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "renner (generated)", id: "1487696804275-4") {
        createTable(tableName: "scribble") {
            column(name: "id", type: "UUID") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "data", type: "BYTEA") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "TIMESTAMP WITHOUT TIME ZONE") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "renner (generated)", id: "1487696804275-5") {
        createTable(tableName: "users") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "userPK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "account_expired", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "account_locked", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "enabled", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "password", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "password_expired", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "username", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "TIMESTAMP WITHOUT TIME ZONE") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "renner (generated)", id: "1487696804275-6") {
        createTable(tableName: "user_roles") {
            column(name: "user_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "role_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "TIMESTAMP WITHOUT TIME ZONE") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "renner (generated)", id: "1487696804275-7") {
        addPrimaryKey(columnNames: "id", constraintName: "scribblePK", tableName: "scribble")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-8") {
        addPrimaryKey(columnNames: "user_id, role_id", constraintName: "user_rolePK", tableName: "user_roles")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-9") {
        addUniqueConstraint(columnNames: "authority", constraintName: "UC_ROLEAUTHORITY_COL", tableName: "roles")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-10") {
        addUniqueConstraint(columnNames: "id", constraintName: "UC_SCRIBBLEID_COL", tableName: "scribble")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-11") {
        addUniqueConstraint(columnNames: "username", constraintName: "UC_USERUSERNAME_COL", tableName: "users")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-12") {
        addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "user_roles", constraintName: "FK859n2jvi8ivhui0rl0esws6o", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "users")
    }

    changeSet(author: "renner (generated)", id: "1487696804275-13") {
        addForeignKeyConstraint(baseColumnNames: "role_id", baseTableName: "user_roles", constraintName: "FKa68196081fvovjhkek5m97n3y", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "roles")
    }

}
