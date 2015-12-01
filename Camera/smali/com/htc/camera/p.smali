.class final Lcom/htc/camera/p;
.super Lcom/htc/camera/CloseableHandle;
.source "CloseableHandle.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Invalid"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/htc/camera/p;->close(Lcom/htc/camera/CloseableHandle;)Lcom/htc/camera/CloseableHandle;

    .line 23
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
