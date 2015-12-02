.class public interface abstract Lcom/htc/hfm/IHfmServiceCallback;
.super Ljava/lang/Object;
.source "IHfmServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onAbortComplete(I)V
.end method

.method public abstract onHfmShutdown()V
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onReserveServiceComplete(I)V
.end method

.method public abstract onSelectCommandComplete(ILjava/lang/String;)V
.end method

.method public abstract onSpeakComplete(I)V
.end method

.method public abstract onStartRecording()V
.end method

.method public abstract onStopRecording()V
.end method

.method public abstract onTestWakeUpPhraseComplete(I)V
.end method

.method public abstract onTimeout()V
.end method

.method public abstract onWakeUpModeComplete(I)V
.end method
