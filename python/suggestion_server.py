import neovim
# Load model directly
from transformers import AutoTokenizer, AutoModelForCausalLM

tokenizer = AutoTokenizer.from_pretrained("bigcode/starcoder2-3b")
model = AutoModelForCausalLM.from_pretrained("bigcode/starcoder2-3b")

nvim = neovim.attach('socket', path='/tmp/nvim')

@neovim.function('getcompletions', sync=True)
def getcompletions(line: str) -> str:
    inputs = tokenizer(line, return_tensors="pt")
   # outputs = model.generate(**inputs, max_length=50, num_return_sequences=5)
    #completions = tokenizer.batch_decode(outputs, skip_special_tokens=True)
    return "Hello World"
    

