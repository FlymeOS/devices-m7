.class Lcom/htc/camera/zoe/ZoeController$10;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$10;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1210
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2200(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[StorageSlotChanged]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2300(Lcom/htc/camera/zoe/ZoeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeController;->access$302(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/io/FileCounter;)Lcom/htc/camera/io/FileCounter;

    .line 1214
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeController;->access$402(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/io/FileCounter;)Lcom/htc/camera/io/FileCounter;

    .line 1216
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2400(Lcom/htc/camera/zoe/ZoeController;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$10;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/zoe/ZoeController;->prepareMediaRecorder(Z)Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$2100(Lcom/htc/camera/zoe/ZoeController;Z)Z

    goto :goto_0
.end method
