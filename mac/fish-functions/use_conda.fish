function use-conda --description "Simply add conda path"
  set -x PATH ~/miniconda3/bin $PATH
  source ~/miniconda3/etc/fish/conf.d/conda.fish
end
