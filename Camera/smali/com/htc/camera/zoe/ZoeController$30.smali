.class Lcom/htc/camera/zoe/ZoeController$30;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$takenTime:J


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;J)V
    .locals 0

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$30;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$30;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iput-wide p3, p0, Lcom/htc/camera/zoe/ZoeController$30;->val$takenTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$30;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$5000(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoSnapshot() - on Jpeg data received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$30;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3164
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$30;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$5200(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoSnapshot() - Already canceled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    :goto_0
    return-void

    .line 3147
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$30;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->finishVideoSnapshot()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$000(Lcom/htc/camera/zoe/ZoeController;)V

    .line 3150
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 3152
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$30;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$5100(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoSnapshot() - Null Jpeg"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3157
    :cond_1
    new-instance v0, Lcom/htc/camera/io/SaveImageTask;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$30;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {v0, v1, p1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;[B)V

    .line 3158
    iget-wide v1, p0, Lcom/htc/camera/zoe/ZoeController$30;->val$takenTime:J

    iput-wide v1, v0, Lcom/htc/camera/io/SaveImageTask;->takenDateTime:J

    .line 3159
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$30;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto :goto_0

    .line 3142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
