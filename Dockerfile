FROM rayproject/ray:nightly-py39-cpu

# Optional: Install GPU runtime (CUDA, torch)
# RUN pip install torch 

# Add your training script
COPY train.py /app/train.py

WORKDIR /app

CMD ["sleep", "infinity"]
