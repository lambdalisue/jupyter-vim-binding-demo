FROM andrewosh/binder-base

MAINTAINER Alisue <lambdalisue@hashnote.net>

USER main

# Install jupyter-vim-binding
RUN mkdir -p $HOME/.local/share/jupyter/nbextensions
RUN cd $HOME/.local/share/jupyter/nbextensions
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
RUN chmod -R go-w vim_binding

# Enable jupyter-vim-binding
RUN mkdir -p $HOME/.jupyter/nbconfig
RUN cp notebook.json $HOME/.jupyter/nbconfig/
