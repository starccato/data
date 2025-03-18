# Generated signal

```python

! pip install starccato
from starccato import generate_signals
import h5py

signals = generate_signals(n=10000)

with h5py.File("gan_signals.h5", "w") as f:
    f.create_dataset("signals", data=signals, compression="gzip")


with h5py.File("gan_signals.h5", "r") as f:
    data = f["signals"][:]

data.shape
```
