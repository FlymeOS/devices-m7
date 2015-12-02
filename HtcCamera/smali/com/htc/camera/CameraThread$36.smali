.class Lcom/htc/camera/CameraThread$36;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 5898
    iput-object p1, p0, Lcom/htc/camera/CameraThread$36;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5902
    iget-object v0, p0, Lcom/htc/camera/CameraThread$36;->this$0:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->cancelTakingPictureInternal()V
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$2300(Lcom/htc/camera/CameraThread;)V

    .line 5903
    return-void
.end method
