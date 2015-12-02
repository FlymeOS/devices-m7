.class final Lcom/htc/camera/component/SharedBackgroundWorker$TaskHandle;
.super Lcom/htc/camera/Handle;
.source "SharedBackgroundWorker.java"


# instance fields
.field public final callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "Task"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/htc/camera/component/SharedBackgroundWorker$TaskHandle;->callback:Ljava/lang/Runnable;

    .line 34
    return-void
.end method
