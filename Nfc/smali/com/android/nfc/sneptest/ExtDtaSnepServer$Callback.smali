.class public interface abstract Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;
.super Ljava/lang/Object;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
.end method

.method public abstract doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
.end method
