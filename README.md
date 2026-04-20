Absolutely — here is a **complete, optimized, step‑by‑step guide** to installing **Ubuntu Linux** on your **MacBook Air 11" (MD711UA/A, 4 GB RAM)** with the **best performance, battery life, and usability**.  
This is tailored specifically for your hardware.

I’ll give you **exact steps**, **recommended settings**, and **post‑install optimizations** so your MacBook Air feels fast and modern again.

---

# ✅ 1. Choose the best Ubuntu flavor for your MacBook Air (4 GB RAM)

For your hardware, these are the best options:

### **Best overall: Ubuntu MATE 22.04 LTS**
- Lightweight  
- Very stable  
- Good UI  
- Low RAM usage (~700–900 MB idle)  
- Excellent for older Macs  

### **Alternative: Linux Mint XFCE**
- Even lighter  
- Very smooth  
- Extremely user‑friendly  
- Best battery life  

### **Avoid:**  
- Ubuntu GNOME (too heavy for 4 GB)  
- KDE Plasma (usable but heavier)  

**Recommendation for you:**  
👉 **Ubuntu MATE 22.04 LTS** (best balance of speed + usability)

---

# ✅ 2. Prepare the USB installer

### **Step 1 — Download Ubuntu MATE**
Download ISO:  
[https://ubuntu-mate.org/download/](https://ubuntu-mate.org/download/)

Choose:  
**Ubuntu MATE 22.04 LTS (64‑bit)**

---

### **Step 2 — Create bootable USB**
On macOS:

1. Install **balenaEtcher**  
2. Insert a 8 GB USB stick  
3. Select ISO → Select USB → Flash  

That’s it.

---

# ✅ 3. Prepare the MacBook Air

### **Step 1 — Reset NVRAM (recommended)**
Hold:  
**Option + Command + P + R**  
for 20 seconds.

### **Step 2 — Disable SIP (optional but helps booting)**
1. Boot into Recovery (Cmd+R)  
2. Open Terminal  
3. Run:  
```
csrutil disable
```
4. Restart

### **Step 3 — Enable USB boot**
Hold **Option** at startup → You will see the USB drive.

---

# ✅ 4. Boot from USB

1. Insert USB  
2. Hold **Option** while powering on  
3. Choose **EFI Boot**  
4. Select **Try Ubuntu MATE** (to test hardware)  
5. If everything works → click **Install Ubuntu**

---

# ✅ 5. Installation settings (important)

### **Partitioning (recommended)**
Choose:

### **Erase disk and install Ubuntu**
This gives:
- ext4 filesystem  
- Swap file  
- Clean, fast install  

If you want dual‑boot, I can give instructions too.

---

### **During installation**
Enable these:

✔ Install third‑party drivers  
✔ Download updates during install  

This ensures:
- Wi‑Fi works  
- Broadcom drivers install  
- Better performance out of the box  

---

# ✅ 6. Post‑install optimization (critical for performance)

This is where your MacBook Air becomes fast.

---

## 🔧 A. Install power management tools (battery life boost)

Open Terminal:

```
sudo apt install tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl start tlp
```

This gives:
- Longer battery life  
- Less heat  
- Less fan noise  

---

## 🔧 B. Fix Broadcom Wi‑Fi (if needed)

```
sudo apt install bcmwl-kernel-source
```

---

## 🔧 C. Improve trackpad behavior

Install libinput tweaks:

```
sudo apt install xserver-xorg-input-libinput
```

Then adjust settings in **Control Center → Mouse & Touchpad**.

---

## 🔧 D. Reduce RAM usage (important for 4 GB)

Disable unnecessary services:

```
sudo systemctl disable avahi-daemon
sudo systemctl disable cups
sudo systemctl disable bluetooth
```

(Only disable Bluetooth if you don’t use it.)

---

## 🔧 E. Enable zRAM (huge performance boost)

Ubuntu MATE usually enables it, but check:

```
systemctl status zramswap
```

If not enabled:

```
sudo apt install zram-config
```

This helps multitasking on 4 GB RAM.

---

## 🔧 F. Install a modern browser

### Best for low RAM:
- **Firefox ESR**
- **Brave Browser**
- **Chromium**

Brave is fastest on old hardware:

```
sudo apt install brave-browser
```

---

# ✅ 7. Optional: Make it feel more like macOS

### Install a macOS‑style dock:
```
sudo apt install plank
```

### Install macOS‑like theme:
```
sudo apt install materia-gtk-theme
```

---

# ✅ 8. Final tuning for maximum speed

### Reduce swappiness:
```
sudo nano /etc/sysctl.conf
```

Add:
```
vm.swappiness=10
```

### Enable TRIM for SSD:
```
sudo systemctl enable fstrim.timer
```

### Update everything:
```
sudo apt update && sudo apt upgrade -y
```

---

# 🎉 Final result

After following these steps, your MacBook Air 11" (4 GB RAM) will:

- Boot faster  
- Run cooler  
- Have longer battery life  
- Handle more browser tabs  
- Feel smoother than macOS High Sierra  
- Be fully secure with modern updates  

This is the **best possible OS experience** for your machine in 2026.
