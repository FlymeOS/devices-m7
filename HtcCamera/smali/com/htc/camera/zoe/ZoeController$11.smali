.class Lcom/htc/camera/zoe/ZoeController$11;
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
        "Lcom/htc/camera/io/StorageState;",
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
    .line 1224
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$11;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$11;->val$cameraThread:Lcom/htc/camera/CameraThread;

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
            "Lcom/htc/camera/io/StorageState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$11;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$11;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2300(Lcom/htc/camera/zoe/ZoeController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$11;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$11;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2500(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StorageStateChanged] Storage state is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-ne v0, v1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$11;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/zoe/ZoeController;->prepareMediaRecorder(Z)Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$2100(Lcom/htc/camera/zoe/ZoeController;Z)Z

    .line 1234
    :cond_0
    return-void
.end method
