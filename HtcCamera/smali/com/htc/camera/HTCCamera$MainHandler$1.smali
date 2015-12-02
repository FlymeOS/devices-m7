.class Lcom/htc/camera/HTCCamera$MainHandler$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera$MainHandler;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera$MainHandler;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$MainHandler$1;->this$0:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler$1;->this$0:Lcom/htc/camera/HTCCamera$MainHandler;

    # getter for: Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera$MainHandler;->access$1500(Lcom/htc/camera/HTCCamera$MainHandler;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler$1;->this$0:Lcom/htc/camera/HTCCamera$MainHandler;

    # getter for: Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera$MainHandler;->access$1500(Lcom/htc/camera/HTCCamera$MainHandler;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->recreate()V

    .line 816
    :goto_0
    return-void

    .line 815
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "MSG_RECREATE_ACTIVITY - no camera activity"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
