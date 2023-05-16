const webhook = require("webhook-discord");
const Hook = new webhook.Webhook("https://discord.com/api/webhooks/1097701265640792186/2SqNF6ZPi2nAfFPfpwhTJ0G1Gq2yZJfJZLroeUCU26gFJtX-01BeTDWrcOKvuK6FRh0d");
Hook.err("Cobra Client Error","A user has occoured a fatal error.");