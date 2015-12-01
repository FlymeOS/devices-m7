.class Lcom/htc/camera/CameraThread$38;
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
    .line 6146
    iput-object p1, p0, Lcom/htc/camera/CameraThread$38;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$38;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/htc/camera/CameraThread$38;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$38;->val$handle:Lcom/htc/camera/Handle;

    # invokes: Lcom/htc/camera/CameraThread;->enable3DPreview(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$4300(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)V

    .line 6151
    return-void
.end method
