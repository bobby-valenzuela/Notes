## OpenAI History

<img src="media/image1.png" style="width:6.5in;height:4.06806in"
alt="Text Description automatically generated with medium confidence" />

<img src="media/image2.png" style="width:6.5in;height:3.38472in"
alt="Diagram Description automatically generated" />

**2019 OpenAI uses “for-profit” model selling product as a licensed
product available for commercial use.**

<img src="media/image3.png" style="width:6.5in;height:3.4125in" />

## GPT in Theory: Behind the Scenes

<https://www.udemy.com/course/mastering-openai/learn/lecture/37343110#overview>

<img src="media/image4.png" style="width:6.5in;height:2.43889in"
alt="Text Description automatically generated with medium confidence" />

<img src="media/image5.png" style="width:3.94432in;height:1.89378in"
alt="Text Description automatically generated" />

<img src="media/image6.png" style="width:6.5in;height:3.07153in" />

<img src="media/image7.png" style="width:6.5in;height:3.29028in"
alt="Graphical user interface, text Description automatically generated" />

<img src="media/image8.png" style="width:6.5in;height:3.63125in"
alt="Diagram, text Description automatically generated" />

<img src="media/image9.png" style="width:6.5in;height:3.35764in"
alt="A picture containing text, toy Description automatically generated" />

<img src="media/image10.png" style="width:5.87708in;height:9in"
alt="Diagram Description automatically generated" />

<img src="media/image11.png" style="width:6.5in;height:3.1125in"
alt="Text Description automatically generated" />

<img src="media/image12.png" style="width:6.5in;height:3.49167in"
alt="Text Description automatically generated" />

<img src="media/image13.png" style="width:6.5in;height:3.05417in"
alt="Graphical user interface, application Description automatically generated" />

<img src="media/image14.png" style="width:6.5in;height:3.49722in"
alt="Diagram Description automatically generated" />

<img src="media/image15.png" style="width:6.5in;height:3.28611in"
alt="Diagram Description automatically generated" />

<img src="media/image16.png" style="width:6.5in;height:3.20486in"
alt="Text, application Description automatically generated" />

### Tokens

<img src="media/image17.png" style="width:6.5in;height:2.89583in"
alt="Chart Description automatically generated with low confidence" />

<img src="media/image18.png" style="width:6.5in;height:3.04375in"
alt="Graphical user interface, application Description automatically generated" />

**Token Calculator**: <https://platform.openai.com/tokenizer>

## Python and GPT

### OpenAI Docs

**Docs:** <https://platform.openai.com/docs/introduction/overview>

**Playground**: <https://platform.openai.com/playground>

### Install open-ai module

pip install openai

or…

python3 -m install openai

**now import into your script**

import openai

**plug in your api key**

Though you can plug it in directly,…

<img src="media/image19.png" style="width:6.5in;height:0.59097in" />

It’s generally preferred to plug it in as an environment variable and a
library to handle dotenv files…

<img src="media/image20.png" style="width:2.56204in;height:0.73603in" />

Create a **.env** file and add in your api key

OPENAI_API_KEY=\<mykey\> qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq

Then import for dotenv file using a relative or absolute path.

<img src="media/image21.png" style="width:5.95916in;height:2.91707in"
alt="Graphical user interface, application Description automatically generated" />

### Models

<img src="media/image22.png" style="width:6.5in;height:3.53611in"
alt="Text Description automatically generated" />

<img src="media/image23.png" style="width:6.5in;height:3.65208in" />

Chat 3.5-turbo is 10 times cheaper than **text-davinci-003** – but
requires the use of the chat api.

**GPT-3 Models**

<img src="media/image24.png" style="width:6.5in;height:4.58958in"
alt="Table Description automatically generated" />

<img src="media/image25.png" style="width:6.5in;height:2.34444in"
alt="Graphical user interface Description automatically generated" />

**GPT-3.5 Models**

<img src="media/image26.png" style="width:6.5in;height:4.68194in"
alt="Table Description automatically generated" />

^ Note: the “gpt” options above only work when using the chat api (text
**completion** endpoint will fail).

<img src="media/image27.png" style="width:6.5in;height:2.34236in"
alt="Graphical user interface, text, application Description automatically generated" />

**Pricing**

<img src="media/image28.png" style="width:6.5in;height:3.63542in"
alt="Text, letter Description automatically generated" />

**GPT-4 Models**
<img src="media/image29.png" style="width:6.5in;height:4.08472in"
alt="Graphical user interface, text Description automatically generated" />

**TLDR:** Although there are lots of models, in terms of **text
completion**: text-davnci-003 is the best, slowest, and most expensive
model we can use.

### Prompt Design

<img src="media/image30.png" style="width:6.5in;height:2.975in"
alt="Text Description automatically generated" />

<img src="media/image31.png" style="width:6.5in;height:0.53333in" />

Example:

“

*Complete the sentence:*

*Humans are*

“

Docs recommend using a separator

<img src="media/image32.png" style="width:6.5in;height:2.89444in"
alt="Text Description automatically generated" />

#### Output formatting

<img src="media/image33.png" style="width:6.5in;height:3.45764in"
alt="Text Description automatically generated" />

<img src="media/image34.png" style="width:6.5in;height:1.79653in" />

<img src="media/image35.png" style="width:6.5in;height:0.69514in" />

<img src="media/image36.png" style="width:6.5in;height:2.89167in"
alt="Graphical user interface, text, application, email Description automatically generated" />

#### Thinking step-by-step

<https://www.udemy.com/course/mastering-openai/learn/lecture/37103044#overview>

Sometimes AI gets things wrong when they are worded confusingly. Adding
a lil note really helps:

<img src="media/image37.png" style="width:6.5in;height:0.49306in" />

#### Zero-shot and few-shot prompting

<img src="media/image38.png" style="width:6.5in;height:2.97431in"
alt="Graphical user interface, text Description automatically generated" />

<img src="media/image39.png" style="width:6.5in;height:3.40764in"
alt="Text Description automatically generated" />

### Important API Parameters

#### Streams

<img src="media/image40.png" style="width:6.5in;height:1.38819in"
alt="Graphical user interface, text, application Description automatically generated" />

#### Frequency and presence penalty

<img src="media/image41.png" style="width:6.5in;height:2.93264in"
alt="Text Description automatically generated" />

<img src="media/image42.png" style="width:6.5in;height:3.04931in"
alt="Text Description automatically generated" />

<img src="media/image43.png" style="width:6.5in;height:2.80139in"
alt="Text Description automatically generated with medium confidence" />

<img src="media/image44.png" style="width:5.65408in;height:2.56306in"
alt="Text Description automatically generated" />

#### Top P

<https://www.udemy.com/course/mastering-openai/learn/lecture/37134576#overview>

This isn’t like temperature, where change the probabilities of which
results we get, rather we’re constricting the pool of available options
here – each item with it’s same probability as before.

<img src="media/image45.png" style="width:6.5in;height:2.98472in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="media/image46.png" style="width:6.5in;height:3.59653in"
alt="Graphical user interface, application Description automatically generated" />

#### Temperature

<img src="media/image47.png" style="width:6.5in;height:3.17847in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="media/image48.png" style="width:6.5in;height:3.36875in"
alt="Text Description automatically generated" />

<img src="media/image49.png" style="width:6.5in;height:3.19375in"
alt="Graphical user interface Description automatically generated" />

### The DALL-E API

<img src="media/image50.png" style="width:6.5in;height:2.74236in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="media/image51.png" style="width:6.5in;height:3.01389in"
alt="A screenshot of a computer Description automatically generated" />

### The Text Completion API: Creating a completion Request

<img src="media/image52.png" style="width:5.407in;height:1.54188in"
alt="Graphical user interface Description automatically generated with medium confidence" />

Model: Fill in with the model you need.

This usually results in an object being returned which contains your
response:

<img src="media/image53.png" style="width:6.5in;height:2.81597in"
alt="Text Description automatically generated" />

You could save the response into a file and get the output like so:

<img src="media/image54.png" style="width:2.96916in;height:0.52091in"
alt="Text Description automatically generated" />

#### Understanding Request output

<img src="media/image55.png" style="width:6.5in;height:2.64653in"
alt="Graphical user interface, text, application, email Description automatically generated" />

^ In this example, we don’t get all 10 cities – seems to be cut off.
That’s because the **finish_reason** shows we hit our max length. By
default, the standard output maxes out at 16 tokens worth of output.

##### Max tokens

<img src="media/image56.png" style="width:6.5in;height:1.43611in"
alt="Graphical user interface, text, application, email Description automatically generated" />

Fix this in the python openai library with the **max_tokens** option

<img src="media/image57.png" style="width:6.5in;height:1.31389in"
alt="Text Description automatically generated with low confidence" />

##### Echo and N

N -How many “completions” (results) do you want back?

<img src="media/image58.png" style="width:6.5in;height:1.56389in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="media/image59.png" style="width:6.5in;height:2.08403in"
alt="Graphical user interface, text Description automatically generated" />

This is better than specifying the number of results in your prompt OR
using some stop sequence, because your results will be returned in an
object (which you can loop through).

<img src="media/image60.png" style="width:6.5in;height:2.86042in"
alt="Graphical user interface, text, application, email Description automatically generated" />

Note: Max tokens will applies ***per result***.

**Echo**

Include you prompt in your response.

<img src="media/image61.png" style="width:6.5in;height:1.11389in"
alt="Graphical user interface, text, application Description automatically generated" />

Example:

<img src="media/image62.png" style="width:6.5in;height:2.29097in"
alt="Graphical user interface, text, application, email Description automatically generated" />

##### Stop sequence

Define a certain string (or strings) that GPT will recognize as a
stopping point and prevent getting more output (thus prevents
consumption of more tokens).

<img src="media/image63.png" style="width:6.5in;height:0.94514in"
alt="Graphical user interface, text, application Description automatically generated" />

Example: Top 5 best movies

<img src="media/image64.png" style="width:6.5in;height:1.48403in"
alt="Text Description automatically generated with medium confidence" />

^ given we’re listing in a numbered format – stop once we reach the
fifth movie.

<img src="media/image65.png" style="width:5.62422in;height:2.24892in"
alt="Text Description automatically generated" />

### The Chat Completion API

<img src="media/image66.png" style="width:6.5in;height:2.95417in"
alt="Diagram Description automatically generated with low confidence" />

Unlike the completion API that expects a prompt, the chat ai expects a
series of messages.

**Python Implementation:**

<img src="media/image67.png" style="width:6.5in;height:2.46319in"
alt="Text Description automatically generated" />

Note: Replace “**gpt-3.5-turbo**” with “**gpt-4**” is using gpt-4.

**Docs**: <https://platform.openai.com/docs/guides/chat>

#### Formatting

<img src="media/image68.png" style="width:6.5in;height:5.39236in"
alt="Graphical user interface, text, application Description automatically generated" />

**Roles**

The main input is the messages parameter. Messages must be an array of
message objects, where each object has a role (either "**system**",
"**user**", or "**assistant**") and content (the content of the
message). Conversations can be as short as 1 message or fill many pages.

Typically, a conversation is formatted with a system message first,
followed by alternating user and assistant (response) messages.

The system message helps set the behavior of the assistant. In the
example above, the assistant was instructed with "You are a helpful
assistant."

**Specifying how response should look (by adding examples)**

<img src="media/image69.png" style="width:6.5in;height:1.35208in" />

#### API Parameters

Chat completion API has most of the same parameters as the text
completion api with the exception of a few like **echo** and **prompt**.

Docs for more:
<https://platform.openai.com/docs/api-reference/chat/create>

<img src="media/image70.png" style="width:6.5in;height:1.32847in"
alt="Graphical user interface, text Description automatically generated" />

**max_tokens**

Defaults to infinite with the chat api – make sure to set a limit!
(100 - 200 is good)

<img src="media/image71.png" style="width:6.5in;height:1.32361in"
alt="Graphical user interface, text, application Description automatically generated" />
