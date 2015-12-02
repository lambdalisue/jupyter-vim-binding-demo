FROM andrewosh/binder-base

MAINTAINER Alisue <lambdalisue@hashnote.net>

USER main

# Install jupyter-vim-binding
RUN cd $(jupyter --data-dir)
RUN mkdir -p nbextensions/usability
RUN cd nbextensions/usability
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
RUN chmod -R go-w vim_binding

# Enable jupyter-vim-binding
RUN jupyter nbextension enable usability/vim_binding/vim_binding
