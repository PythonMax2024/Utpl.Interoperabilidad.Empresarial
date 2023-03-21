workspace {

    model {
        contadora = person "Contadora" "Un usuario del sistema"
    
        systemProviders = softwareSystem "Sistema Proveedores" "Sistema  de gestión de proveedores" {
            webApplication = container "Web Application"
            database = container "Database"
            apiProviders = container "API Application" "Provides Internet banking functionality via a JSON/HTTPS API." "Java and Spring MVC" {
                signinController = component "Sign In Controller" "Allows users to sign in to the Internet Banking System." "Spring MVC Rest Controller"
                accountsSummaryController = component "Accounts Summary Controller" "Provides customers with a summary of their bank accounts." "Spring MVC Rest Controller"
                resetPasswordController = component "Reset Password Controller" "Allows users to reset their passwords with a single use URL." "Spring MVC Rest Controller"
                securityComponent = component "Security Component" "Provides functionality related to signing in, changing passwords, etc." "Spring Bean"
            }
        }
        systemInvoice = softwareSystem "Sistema de facturación" "Sistema de facturación electrónica." {
            tags "External"
            databaseInvoice = container "Database"
            apiInvoice = container "API Application" "Via a JSON/HTTPS API." "NetCore" {
                emailComponent = component "E-mail Component" "Sends e-mails to users." "Netcore with Mailgun"
            }
        }


        contadora -> webApplication "Uses" "https"
        
        apiProviders -> apiInvoice "Genera documento" "JSON/HTTPS"
        
        systemInvoice -> contadora "Envia factura autorizada"
        webApplication -> database "Reads from and writes to"
        
        webApplication -> signinController "Makes API calls to" "JSON/HTTPS"
    }

    views {
        systemContext systemProviders "SystemContext" {
            include *
            autoLayout
        }
        
        container systemProviders {
            include *
            autoLayout
        }

        styles {
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Person" {
                shape person
                background #08427b
                color #ffffff 
            }
            element "External" {
                background #9b9b9b
                color #ffffff
            }
        }
    }
    
}