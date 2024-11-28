# edge-tts-gradio
Experimenting with Gradio

## Setup

Python `3.10.14` is used for this project. You can use `pyenv` to manage the python versions (I really recommend `pyenv`, in fact I will make a guide for it). I used Python for the server side script and Node.js for the client side since it works best with the async nature of edge-tts apparently.

```bash
pyenv install 3.10.14

pyenv virtualenv edge-tts-gradio
pyenv activate edge-tts-gradio

pip install -r requirements.txt

python app.py
```

Now you can open the browser and go to `http://0.0.0.0:7860/` to see the Gradio Interface with Edge TTS available to use, you can also look at the API specification for it. A simple example is shown below in JavaScript, you will need `npm`, `node`.

```bash
npm install .

node tts_edge_external.js
```

## Docker

You can also run the server in a docker container, you can build the image and run it with the following commands:

```bash
docker build -t edge-tts-gradio .

docker run -p 7860:7860 edge-tts-gradio
```

## Contributing

I'm actively supporting FOSS collaboration, so, if you feel like you can help in any way, file an issue in the *Issues* tab or submit a Pull Request and I will go through it.

## License

Copyright (C) xAlpharax

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see https://www.gnu.org/licenses/.
