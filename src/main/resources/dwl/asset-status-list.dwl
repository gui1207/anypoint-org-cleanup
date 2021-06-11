%dw 2.0
output application/java
---
vars.assetStatusList + {
	"type": "environment-" ++ payload."type",
	id: payload.id,
	status: if (attributes.statusCode == 204) "SUCCESS" else "ERROR",
	message: payload.message
}