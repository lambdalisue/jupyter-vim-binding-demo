FROM andrewosh/binder-base

MAINTAINER Alisue <lambdalisue@hashnote.net>

USER main

# Install jupyter-vim-binding
RUN mkdir -p $HOME/.local/share/jupyter/nbextensions
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding $HOME/.local/share/jupyter/nbextensions/vim_binding

# Enable jupyter-vim-binding
RUN mkdir -p $HOME/.jupyter/nbconfig
ADD notebook.json $HOME/.jupyter/nbconfig/notebook.json
