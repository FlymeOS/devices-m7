.class final Lcom/htc/camera/zoe/a;
.super Lcom/htc/camera/burst/AutoBurstCameraBase;
.source "QctZoeCamera.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 14
    const-string v0, "QCT Zoe Camera"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/burst/AutoBurstCameraBase;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/a;->setVisibility(Z)V

    .line 16
    return-void
.end method
