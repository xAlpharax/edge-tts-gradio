# edge-tts-gradio

Gradio Interface for Text-To-Speech using Edge TTS. It has support for many languages and voices, including Romanian, and offers pretty great accuracy.

## Setup

Python `3.10.14` is used for this project. You can use `pyenv` to manage the python versions (I really recommend `pyenv`, in fact I will make a guide for it). I used Python for the server side script and Node.js for the client side since it works best with the async nature of edge-tts apparently.

```bash
pyenv install 3.10.14

pyenv virtualenv edge-tts-gradio
pyenv activate edge-tts-gradio

pip install -r requirements.txt

python app.py
```

Now you can open the browser and go to `http://0.0.0.0:7861/` to see the Gradio Interface with Edge TTS available to use, you can also look at the API specification for it. `Ctrl + C` to stop the server. A simple API example is found under `./test_api` in JavaScript, you will need `npm` and `node`.

```bash
cd test_api

npm install

node test_tts_edge.js
```

## Docker

You can also run the server in a docker container, you can build the image and run it with the following commands:

```bash
docker build -t edge-tts-gradio .

docker run -d -p 7860:7860 --name edge-tts-gradio edge-tts-gradio

#when stopping the container
#docker stop edge-tts-gradio

#when removing the container
#docker rm edge-tts-gradio

#when removing the image
#docker rmi edge-tts-gradio

#to remove everything related to docker (sometimes needed, quick reference)
#docker system prune -a --volumes --force
```

Or use docker-compose:

```bash
#to start a container
docker-compose up

#start as a daemon
#docker-compose up -d

#when stopping the container
#docker-compose down
```

Remember you can always remove the `-d` flag for debugging purposes.

**You can modify the port the application is running on by setting the PORT environment variable in `.env`.**

## Contributing

I'm actively supporting FOSS collaboration, so, if you feel like you can help in any way, file an issue in the *Issues* tab or submit a Pull Request and I will go through it.

## License

Copyright (C) xAlpharax

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see https://www.gnu.org/licenses/.
