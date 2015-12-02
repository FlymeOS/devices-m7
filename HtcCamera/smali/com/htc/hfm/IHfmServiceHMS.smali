.class public interface abstract Lcom/htc/hfm/IHfmServiceHMS;
.super Ljava/lang/Object;
.source "IHfmServiceHMS.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract abort(Ljava/lang/String;)V
.end method

.method public abstract cancelReservation(Ljava/lang/String;)I
.end method

.method public abstract connect(Ljava/lang/String;Lcom/htc/hfm/IHfmServiceCallback;)Ljava/lang/String;
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract getAudioPower()F
.end method

.method public abstract releaseService(Ljava/lang/String;)I
.end method

.method public abstract reserveService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)I
.end method

.method public abstract resetTimeout(Ljava/lang/String;)V
.end method

.method public abstract selectCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
.end method

.method public abstract selectWakeupCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;)V
.end method

.method public abstract setConfidenceLevel(Ljava/lang/String;I)V
.end method

.method public abstract setDefaultBluetoothScoEnabled(Ljava/lang/String;Z)V
.end method

.method public abstract setDefaultRetryEnabled(Ljava/lang/String;Z)V
.end method

.method public abstract setNotificationSoundEnabled(Ljava/lang/String;Z)V
.end method

.method public abstract speak(Ljava/lang/String;[Lcom/htc/hfm/Speech;Z)V
.end method

.method public abstract startWakeUpMode(Ljava/lang/String;Lcom/htc/hfm/Speech;I)V
.end method

.method public abstract stopWakeUpMode(Ljava/lang/String;)V
.end method

.method public abstract testWakeUpPhrase(Ljava/lang/String;Ljava/lang/String;)V
.end method
