FROM rayproject/ray:2.10.0

# Optional: Install GPU runtime (CUDA, torch)
# RUN pip install torch 

# Add your training script
COPY train.py /app/train.py

WORKDIR /app

CMD ["sleep", "infinity"]
