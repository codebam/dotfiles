#!/home/codebam/.nvm/versions/node/v20.8.0/bin/node
import readline from "readline";

const API_TOKEN = process.env._CLOUDFLARE_API_TOKEN;
const ACCOUNT_ID = process.env._CLOUDFLARE_ACCOUNT_ID;

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout,
});

let system = [];

const llama2 = async (prompt) => {
	const system_map = system.map((str) => ({ role: "system", content: str }));
	const res = await fetch(
		`https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_ID}/ai/run/@cf/meta/llama-2-7b-chat-int8`,
		{
			headers: { Authorization: `Bearer ${API_TOKEN}` },
			body: JSON.stringify({
				messages: [...system_map, { role: "user", content: prompt }],
			}),
			method: "POST",
		}
	);
	const result = (await res.json()).result.response;
	system.push("[INST]" + prompt + "[/INST]" + "\n" + result);
	return result;
};

if (process.argv[2]) {
	const line = process.argv.slice(2).join(" ");
	console.log(await llama2(line));
} else {
	rl.setPrompt(">>> ");
	rl.prompt();
	rl.on("line", async (line) => {
		console.log(await llama2(line));
	});
}
