/*
rm -rf ./zkit && \
idx-template \
  /home/user/genkit-fin/genkit \
  --output-dir /home/user/genkit-fin/zkit -a '{}'
*/
{pkgs, ... }: {  
  packages = [
    pkgs.nodejs
  ];
  bootstrap = ''
    mkdir "$out"
    mkdir "$out"/.idx
    cp ${./dev.nix} "$out"/.idx/dev.nix
    cp ${./README.md} "$out"/README.md
    env -C "$out" npm init -y
    env -C "$out" npm i -D genkit
    env -C "$out" npx genkit init --non-interactive -p nodejs -m googleai
    chmod -R u+w "$out"
  '';
}
