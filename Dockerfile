FROM nvcr.io/nvidia/pytorch:22.11-py3

ENV SDL_VIDEODRIVER=x11
ENV LIBGL_ALWAYS_INDIRECT=1
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends swig xauth build-essential libsdl2-dev python3-tk texlive-latex-extra cm-super dvipng

WORKDIR /mnt

ENTRYPOINT ["bash"]