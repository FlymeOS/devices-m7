.class Lcom/htc/camera/CameraThread$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/htc/camera/CameraThread$1;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/camera/CameraThread$1;->this$0:Lcom/htc/camera/CameraThread;

    const-string v1, "JPEG"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    .line 356
    return-void
.end method
