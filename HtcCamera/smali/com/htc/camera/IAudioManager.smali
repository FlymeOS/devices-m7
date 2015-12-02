.class public interface abstract Lcom/htc/camera/IAudioManager;
.super Ljava/lang/Object;
.source "IAudioManager.java"


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract checkOwnAudioResourceProcess()Lcom/htc/camera/IAudioManager$ProcessType;
.end method

.method public abstract forceReleaseAudioResource()Z
.end method

.method public abstract isBluetoothA2dpOn()Z
.end method

.method public abstract isWiredHeadsetOn()Z
.end method

.method public abstract loadSoundToMemory(I)Lcom/htc/camera/Handle;
.end method

.method public abstract playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;
.end method

.method public abstract requestAudioFocus()V
.end method

.method public abstract requestAudioFocus(I)V
.end method

.method public abstract restoreAudioStreamVolume()V
.end method

.method public abstract setNotificationStreamMute(Z)V
.end method

.method public abstract setParameters(Ljava/lang/String;)V
.end method

.method public abstract stopInMemorySound(Lcom/htc/camera/Handle;)V
.end method
