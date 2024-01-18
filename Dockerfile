FROM ubuntu:latest

RUN apt-get update -qq && \
    apt-get install -y \
      build-essential \
      vim # Just in case in a future, vim won't be included within latest ubuntu

ENV EDITOR=vim

WORKDIR /root

COPY . ./.vim

# Default to ASCII and modeful, comment out or delete next RUN section
# to use NerdFont and modless
RUN sed -i -- \
      's/runtime statusline_nerdfont.vimrc/"runtime statusline_nerdfont.vimrc"/'\
      './.vim/modeful.vimrc' && \
    sed -i -- \
      's/"runtime statusline_ascii.vimrc"/runtime statusline_ascii.vimrc/' \
      './.vim/modeful.vimrc' && \
    sed -i -- 's/runtime modeless.vimrc/runtime modeful.vimrc/' './.vim/vimrc'
