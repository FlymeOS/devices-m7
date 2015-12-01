.class final Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;
.super Lcom/htc/camera/Handle;
.source "CameraThread.java"


# instance fields
.field public final callback:Lcom/htc/camera/o;


# direct methods
.method public constructor <init>(Lcom/htc/camera/o;)V
    .locals 1

    .prologue
    .line 244
    const-string v0, "OneShotPreviewCallback"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;->callback:Lcom/htc/camera/o;

    .line 246
    return-void
.end method
