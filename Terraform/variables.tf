variable "rg_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-childrens-social-care-cpd-rg"
    Test      = "s185d02-childrens-social-care-cpd-rg"
    Load-Test = "s185d03-childrens-social-care-cpd-rg"
    Pre-Prod  = "s185t01-childrens-social-care-cpd-rg"
    Prod      = "s185p01-childrens-social-care-cpd-rg"
  }
  description = "Name of Resource Group"
}

variable "nsg_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-sn01-nsg"
    Test      = "s185d02-chidrens-social-care-cpd-sn01-nsg"
    Load-Test = "s185d03-chidrens-social-care-cpd-sn01-nsg"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-sn01-nsg"
    Prod      = "s185p01-chidrens-social-care-cpd-sn01-nsg"
  }
  description = "Name of Network Security Group"
}

variable "service_plan_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-csc-cpd-app-service-plan"
    Test      = "s185d02-csc-cpd-app-service-plan"
    Load-Test = "s185d03-csc-cpd-app-service-plan"
    Pre-Prod  = "s185t01-csc-cpd-app-service-plan"
    Prod      = "s185p01-csc-cpd-app-service-plan"
  }
  description = "Name of Service Plan"
}

variable "service_plan_sku" {
  type = map(string)
  default = {
    Dev       = "B1"
    Test      = "B1"
    Load-Test = "P1v2"
    Pre-Prod  = "B1"
    Prod      = "P1v2"
  }
  description = "SKU for Service Plan"
}

variable "web_app_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-app-service"
    Test      = "s185d02-chidrens-social-care-cpd-app-service"
    Load-Test = "s185d03-chidrens-social-care-cpd-app-service"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-app-service"
    Prod      = "s185p01-chidrens-social-care-cpd-app-service"
  }
  description = "Name of Web Application"
}

variable "network_nic_ip_conf_name" {
  type = map(string)
  default = {
    Dev       = "s185d01nic-ipconfig-1"
    Test      = "s185d02nic-ipconfig-1"
    Load-Test = "s185d03nic-ipconfig-1"
    Pre-Prod  = "s185t01nic-ipconfig-1"
    Prod      = "s185p01nic-ipconfig-1"
  }
  description = "Name of NIC IP Configuration"
}

variable "vnet_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-vn01"
    Test      = "s185d02-chidrens-social-care-cpd-vn01"
    Load-Test = "s185d03-chidrens-social-care-cpd-vn01"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-vn01"
    Prod      = "s185p01-chidrens-social-care-cpd-vn01"
  }
  description = "Name of Address Space"
}

variable "vnet_frontend_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-sn01"
    Test      = "s185d02-chidrens-social-care-cpd-sn01"
    Load-Test = "s185d03-chidrens-social-care-cpd-sn01"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-sn01"
    Prod      = "s185p01-chidrens-social-care-cpd-sn01"
  }
  description = "Name of Frontend VNET"
}

variable "vnet_frontend_prefixes" {
  type = map(string)
  default = {
    Dev       = "10.0.0.0/26"
    Test      = "10.1.0.0/26"
    Load-Test = "10.2.0.0/26"
    Pre-Prod  = "10.0.0.0/26"
    Prod      = "10.0.0.0/26"
  }
  description = "Subnets used for Frontend VENT"
}

variable "vnet_backend_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-sn02"
    Test      = "s185d02-chidrens-social-care-cpd-sn02"
    Load-Test = "s185d03-chidrens-social-care-cpd-sn02"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-sn02"
    Prod      = "s185p01-chidrens-social-care-cpd-sn02"
  }
  description = "Name of Backend VNET"
}

variable "vnet_backend_prefixes" {
  type = map(string)
  default = {
    Dev       = "10.0.0.64/26"
    Test      = "10.1.0.64/26"
    Load-Test = "10.2.0.64/26"
    Pre-Prod  = "10.0.0.64/26"
    Prod      = "10.0.0.64/26"
  }
  description = "Subnets used for Backend VNET"
}

variable "pip_name" {
  type = map(string)
  default = {
    Dev       = "s185d01AGPublicIPAddress"
    Test      = "s185d02AGPublicIPAddress"
    Load-Test = "s185d03AGPublicIPAddress"
    Pre-Prod  = "s185t01AGPublicIPAddress"
    Prod      = "s185p01AGPublicIPAddress"
  }
  description = "Name of Public IP address"
}

variable "nic_name" {
  type = map(string)
  default = {
    Dev       = "s185d01nic-1"
    Test      = "s185d02nic-1"
    Load-Test = "s185d03nic-1"
    Pre-Prod  = "s185t01nic-1"
    Prod      = "s185p01nic-1"
  }
  description = "Name of Network Interface"
}

variable "appgw_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-csc-cpd-app-gateway"
    Test      = "s185d02-csc-cpd-app-gateway"
    Load-Test = "s185d03-csc-cpd-app-gateway"
    Pre-Prod  = "s185t01-csc-cpd-app-gateway"
    Prod      = "s185p01-csc-cpd-app-gateway"
  }
  description = "Name of the Application Gateway"
}

variable "appgw_rewrite_rule_set" {
  type = map(string)
  default = {
    Dev       = "s185d01-csc-cpd-app-gw-rewrite-rule-set"
    Test      = "s185d02-csc-cpd-app-gw-rewrite-rule-set"
    Load-Test = "s185d03-csc-cpd-app-gw-rewrite-rule-set"
    Pre-Prod  = "s185t01-csc-cpd-app-gw-rewrite-rule-set"
    Prod      = "s185p01-csc-cpd-app-gw-rewrite-rule-set"
  }
  description = "Name of the Application Gateway Rewrite Rule Set"
}

variable "appgw_rewrite_rule" {
  type = map(string)
  default = {
    Dev       = "s185d01-csc-cpd-app-gw-rewrite-rule"
    Test      = "s185d02-csc-cpd-app-gw-rewrite-rule"
    Load-Test = "s185d03-csc-cpd-app-gw-rewrite-rule"
    Pre-Prod  = "s185t01-csc-cpd-app-gw-rewrite-rule"
    Prod      = "s185p01-csc-cpd-app-gw-rewrite-rule"
  }
  description = "Name of the Application Gateway Rewrite Rule"
}

variable "appgw_tier" {
  type = map(string)
  default = {
    Dev       = "Standard_v2"
    Test      = "Standard_v2"
    Load-Test = "WAF_v2"
    Pre-Prod  = "Standard_v2"
    Prod      = "WAF_v2"
  }
  description = "SKU for Application Gateway Tier"
}

variable "appgw_probe" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-hp"
    Test      = "s185d02-chidrens-social-care-cpd-hp"
    Load-Test = "s185d03-chidrens-social-care-cpd-hp"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-hp"
    Prod      = "s185p01-chidrens-social-care-cpd-hp"
  }
  description = "Name of App Gateway Health Probe"
}

variable "gateway_ip_configuration" {
  type = map(string)
  default = {
    Dev       = "s185d01-gateway-ip-configuration"
    Test      = "s185d02-gateway-ip-configuration"
    Load-Test = "s185d03-gateway-ip-configuration"
    Pre-Prod  = "s185t01-gateway-ip-configuration"
    Prod      = "s185p01-gateway-ip-configuration"
  }
  description = "Name of Gateway IP Configuration"
}

variable "backend_address_pool_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-bep"
    Test      = "s185d02-chidrens-social-care-cpd-bep"
    Load-Test = "s185d03-chidrens-social-care-cpd-bep"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-bep"
    Prod      = "s185p01-chidrens-social-care-cpd-bep"
  }
  description = "Name of Backend Address Pool"
}

variable "frontend_port_name" {
  type = map(string)
  default = {
    Dev       = "s185d01FrontendPort"
    Test      = "s185d02FrontendPort"
    Load-Test = "s185d03FrontendPort"
    Pre-Prod  = "s185t01FrontendPort"
    Prod      = "s185p01FrontendPort"
  }
  description = "Name of Frontend Port"
}

variable "frontend_ssl_port_name" {
  type = map(string)
  default = {
    Dev       = "s185d01FrontendSSLPort"
    Test      = "s185d02FrontendSSLPort"
    Load-Test = "s185d03FrontendSSLPort"
    Pre-Prod  = "s185t01FrontendSSLPort"
    Prod      = "s185p01FrontendSSLPort"
  }
  description = "Name of Frontend SSL Port"
}

variable "frontend_ip_configuration_name" {
  type = map(string)
  default = {
    Dev       = "s185d01AGIPConfig"
    Test      = "s185d02AGIPConfig"
    Load-Test = "s185d03AGIPConfig"
    Pre-Prod  = "s185t01AGIPConfig"
    Prod      = "s185p01AGIPConfig"
  }
  description = "Name of Frontend IP Configuration"
}

variable "http_setting_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-bes-http"
    Test      = "s185d02-chidrens-social-care-cpd-bes-http"
    Load-Test = "s185d03-chidrens-social-care-cpd-bes-http"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-bes-http"
    Prod      = "s185p01-chidrens-social-care-cpd-bes-http"
  }
  description = "Name of HTTP Setting"
}

variable "listener_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-listener-http"
    Test      = "s185d02-chidrens-social-care-cpd-listener-http"
    Load-Test = "s185d03-chidrens-social-care-cpd-listener-http"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-listener-http"
    Prod      = "s185p01-chidrens-social-care-cpd-listener-http"
  }
  description = "Name of HTTP Listener"
}

variable "redirect_config_name" {
  type = map(string)
  default = {
    Dev       = "s185d01Redirect"
    Test      = "s185d02Redirect"
    Load-Test = "s185d03Redirect"
    Pre-Prod  = "s185t01Redirect"
    Prod      = "s185p01Redirect"
  }
  description = "Name of the redirect configuration"
}

variable "ssl_listener_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-listener-https"
    Test      = "s185d02-chidrens-social-care-cpd-listener-https"
    Load-Test = "s185d03-chidrens-social-care-cpd-listener-https"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-listener-https"
    Prod      = "s185p01-chidrens-social-care-cpd-listener-https"
  }
  description = "Name of SSL HTTPS Listener"
}

variable "request_routing_rule_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-rule-http"
    Test      = "s185d02-chidrens-social-care-cpd-rule-http"
    Load-Test = "s185d03-chidrens-social-care-cpd-rule-http"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-rule-http"
    Prod      = "s185p01-chidrens-social-care-cpd-rule-http"
  }
  description = "Name of Request Routing Rule"
}

variable "request_ssl_routing_rule_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-rule-https"
    Test      = "s185d02-chidrens-social-care-cpd-rule-https"
    Load-Test = "s185d03-chidrens-social-care-cpd-rule-https"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-rule-https"
    Prod      = "s185p01-chidrens-social-care-cpd-rule-https"
  }
  description = "Name of Request SSL Routing Rule"
}

variable "appinsights_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-ai"
    Test      = "s185d02-chidrens-social-care-cpd-ai"
    Load-Test = "s185d03-chidrens-social-care-cpd-ai"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-ai"
    Prod      = "s185p01-chidrens-social-care-cpd-ai"
  }
  description = "Name of Application Insights"
}

variable "log_analytics_ws_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-chidrens-social-care-cpd-la"
    Test      = "s185d02-chidrens-social-care-cpd-la"
    Load-Test = "s185d03-chidrens-social-care-cpd-la"
    Pre-Prod  = "s185t01-chidrens-social-care-cpd-la"
    Prod      = "s185p01-chidrens-social-care-cpd-la"
  }
  description = "Name of Log Analytics Workspace"
}

variable "key_vault_rg" {
  type = map(string)
  default = {
    Dev       = "s185d01-childrens-social-care-shared-rg"
    Test      = "s185d01-childrens-social-care-shared-rg"
    Load-Test = "s185d01-childrens-social-care-shared-rg"
    Pre-Prod  = "s185t01-childrens-social-care-shared-rg"
    Prod      = "s185p01-childrens-social-care-shared-rg"
  }
  description = "Name of Key Vault Resource Group"
}

variable "key_vault_name" {
  type = map(string)
  default = {
    Dev       = "s185d-CPD-Key-Vault"
    Test      = "s185d-CPD-Key-Vault"
    Load-Test = "s185d-CPD-Key-Vault"
    Pre-Prod  = "s185t-CPD-Key-Vault"
    Prod      = "s185p-CPD-Key-Vault"
  }
  description = "Name of Key Vault"
}

variable "key_vault_url" {
  type = map(string)
  default = {
    Dev       = "https://s185d-cpd-key-vault.vault.azure.net/"
    Test      = "https://s185d-cpd-key-vault.vault.azure.net/"
    Load-Test = "https://s185d-cpd-key-vault.vault.azure.net/"
    Pre-Prod  = "https://s185t-cpd-key-vault.vault.azure.net/"
    Prod      = "https://s185p-cpd-key-vault.vault.azure.net/"
  }
  description = "URL of Key Vault"
}

variable "cpd_contentful_env" {
  type = map(string)
  default = {
    Dev       = "dev"
    Test      = "test"
    Load-Test = "dev"
    Pre-Prod  = "prod"
    Prod      = "prod"
  }
  description = "Contentful Environment Name"
}

variable "autoscale_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-app-autoscale"
    Test      = "s185d02-app-autoscale"
    Load-Test = "s185d03-app-autoscale"
    Pre-Prod  = "s185t01-app-autoscale"
    Prod      = "s185p01-app-autoscale"
  }
  description = "Name of autoscale settings"
}

variable "autoscale_min" {
  type = map(string)
  default = {
    Dev       = 1
    Test      = 1
    Load-Test = 3
    Pre-Prod  = 1
    Prod      = 3
  }
  description = "Minimum Autoscale Value"
}

variable "autoscale_max" {
  type = map(string)
  default = {
    Dev       = 2
    Test      = 2
    Load-Test = 10
    Pre-Prod  = 2
    Prod      = 10
  }
  description = "Maximum Autoscale Value"
}

variable "private_dns_zone_vn_link_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-dnszonelink"
    Test      = "s185d02-dnszonelink"
    Load-Test = "s185d03-dnszonelink"
    Pre-Prod  = "s185t01-dnszonelink"
    Prod      = "s185p01-dnszonelink"
  }
  description = "Name of Private DNS Zone Virtual Network Link"
}

variable "private_endpoint_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-backwebappprivateendpoint"
    Test      = "s185d02-backwebappprivateendpoint"
    Load-Test = "s185d03-backwebappprivateendpoint"
    Pre-Prod  = "s185t01-backwebappprivateendpoint"
    Prod      = "s185p01-backwebappprivateendpoint"
  }
  description = "Name of Private Endpoint"
}

variable "private_dns_zone_group_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-privatednszonegroup"
    Test      = "s185d02-privatednszonegroup"
    Load-Test = "s185d03-privatednszonegroup"
    Pre-Prod  = "s185t01-privatednszonegroup"
    Prod      = "s185p01-privatednszonegroup"
  }
  description = "Name of Private DNS Zone Group"
}

variable "private_endpoint_conn_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-privateendpointconnection"
    Test      = "s185d02-privateendpointconnection"
    Load-Test = "s185d03-privateendpointconnection"
    Pre-Prod  = "s185t01-privateendpointconnection"
    Prod      = "s185p01-privateendpointconnection"
  }
  description = "Name of Private Endpoint Connection"
}

variable "alert_container_avg_resp_time" {
  type = map(string)
  default = {
    Dev       = "s185d01-container-avg-resp-time"
    Test      = "s185d02-container-avg-resp-time"
    Load-Test = "s185d03-container-avg-resp-time"
    Pre-Prod  = "s185t01-container-avg-resp-time"
    Prod      = "s185p01-container-avg-resp-time"
  }
  description = "Name of container average response time alert"
}

variable "alert_appgw_health" {
  type = map(string)
  default = {
    Dev       = "s185d01-appgw-heatlh"
    Test      = "s185d02-appgw-heatlh"
    Load-Test = "s185d03-appgw-heatlh"
    Pre-Prod  = "s185t01-appgw-heatlh"
    Prod      = "s185p01-appgw-heatlh"
  }
  description = "Name of application gateway health alert"
}

variable "alert_appgw_backend_connect_time" {
  type = map(string)
  default = {
    Dev       = "s185d01-backend-connect-times"
    Test      = "s185d02-backend-connect-times"
    Load-Test = "s185d03-backend-connect-times"
    Pre-Prod  = "s185t01-backend-connect-times"
    Prod      = "s185p01-backend-connect-times"
  }
  description = "Name of application gateway backend connection time alert"
}

variable "alert_container_cpu" {
  type = map(string)
  default = {
    Dev       = "s185d01-container-cpu-average"
    Test      = "s185d02-container-cpu-average"
    Load-Test = "s185d03-container-cpu-average"
    Pre-Prod  = "s185t01-container-cpu-average"
    Prod      = "s185p01-container-cpu-average"
  }
  description = "Name of container cpu average alert"
}

variable "alert_failed_requests" {
  type = map(string)
  default = {
    Dev       = "s185d01-failed-requests"
    Test      = "s185d02-failed-requests"
    Load-Test = "s185d03-failed-requests"
    Pre-Prod  = "s185t01-failed-requests"
    Prod      = "s185p01-failed-requests"
  }
  description = "Name of failed requests count alert"
}

variable "monitor_action_group_name" {
  type = map(string)
  default = {
    Dev       = "s185d01-actiongroup"
    Test      = "s185d02-actiongroup"
    Load-Test = "s185d03-actiongroup"
    Pre-Prod  = "s185t01-actiongroup"
    Prod      = "s185p01-actiongroup"
  }
  description = "Name of monitor action group name alert"
}

variable "monitor_action_group_shortname" {
  type = map(string)
  default = {
    Dev       = "s185d01actgp"
    Test      = "s185d02actgp"
    Load-Test = "s185d03actgp"
    Pre-Prod  = "s185t01actgp"
    Prod      = "s185p01actgp"
  }
  description = "Name of monitor action group short name"
}

variable "tenant_id" {
  type        = string
  sensitive   = true
  description = "The Tenant ID of the subscription being used"
}

variable "cpd_client_id" {
  type        = string
  sensitive   = true
  description = "Client ID used by the application to access Key Vault in Azure"
}

variable "cpd_client_secret" {
  type        = string
  sensitive   = true
  description = "Secret used by the application to access Key Vault in Azure"
}

variable "cpd_keyvaultendpoint" {
  type        = string
  sensitive   = true
  description = "URL Endpoint for Key Vault in Azure"
}

variable "cpd_googleanalyticstag" {
  type        = string
  sensitive   = true
  description = "Google Analytics Tag "
}
