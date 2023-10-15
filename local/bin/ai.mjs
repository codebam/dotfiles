#!/home/codebam/.nvm/versions/node/v20.8.0/bin/node
const API_TOKEN = process.env._CLOUDFLARE_API_TOKEN;
const ACCOUNT_ID = process.env._CLOUDFLARE_ACCOUNT_ID;

const llama2 = async (prompt) => {
	const res = await fetch(
		`https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_ID}/ai/run/@cf/meta/llama-2-7b-chat-int8`,
		{
			headers: { Authorization: `Bearer ${API_TOKEN}` },
			body: JSON.stringify({
				messages: [{ role: "user", content: prompt }],
			}),
			method: "POST",
		}
	);
	const result = (await res.json()).result.response;
	return result;
};

if (process.argv[1]) {
	const line = process.argv.slice(2).join(" ");
	console.log(line);
	console.log(await llama2(line));
}
