FROM neohsiao/huggingface

RUN apk add --no-cache shadow \
    && groupadd sudo \
    && useradd -m huggingface -u 1044 \
    && echo 'huggingface:1000' | chpasswd \
    && usermod -aG sudo huggingface
    
RUN chown -R huggingface:huggingface / 2>/dev/null || true
USER 1044
