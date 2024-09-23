# Genkit + IDX

## Set up your Gemini API Key
Use the IDX Integration Panel to the left to get an API Key and replace it in the `.idx/dev.nix` file.

```nix
  # Sets environment variables in the workspace
  env = {
    # You can get a Gemini API key through the IDX Integrations panel to the left!
    GOOGLE_API_KEY = "<your-api-key>";
  };
```

## Start the Genkit Developer UI
Open the IDX terminal and run `genkit start` command. This will start he Genkit Develoepr UI running on http://localhost:4000 

Use Cmd-click (Ctrl+click on Windows) to open that line in your default browser
