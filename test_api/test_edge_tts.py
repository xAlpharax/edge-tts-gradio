from gradio_client import Client

client = Client("http://localhost:7861")

result = client.predict(
    text="Salut, ce mai faci?",
    voice="ro-RO-AlinaNeural (Female)",
    rate=0,
    volume=0,
    pitch=0,
    api_name="/predict"
)

print(result)
