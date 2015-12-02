.class Lcom/htc/camera/CameraThread$39;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 6188
    iput-object p1, p0, Lcom/htc/camera/CameraThread$39;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$39;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6192
    iget-object v0, p0, Lcom/htc/camera/CameraThread$39;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$39;->val$handle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->disable3DPreview(Lcom/htc/camera/Handle;)V

    .line 6193
    return-void
.end method
