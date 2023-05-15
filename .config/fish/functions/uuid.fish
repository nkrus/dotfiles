function uuid
  uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo $argv; 
end
