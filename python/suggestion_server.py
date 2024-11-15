import neovim
# Load model directly
from transformers import AutoTokenizer, AutoModelForCausalLM

tokenizer = AutoTokenizer.from_pretrained("bigcode/starcoder2-3b")
model = AutoModelForCausalLM.from_pretrained("bigcode/starcoder2-3b")

@neovim.function('getcompletions', sync=True)
def getcompletions(line):
    inputs = tokenizer(line, return_tensors="pt")
    outputs = model.generate(**inputs, max_length=50, num_return_sequences=5)
    completions = tokenizer.batch_decode(outputs, skip_special_tokens=True)
    return completions
    

