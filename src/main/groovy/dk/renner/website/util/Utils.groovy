package dk.renner.website.util

class Utils {

    static toUuid(String id) {
        UUID uuid = null

        try {
            uuid = UUID.fromString(id)
        } catch (IllegalArgumentException ex) {
        }

        uuid
    }

}
