.class Lcom/htc/camera/component/SmileCaptureUI$7;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/htc/camera/ObjectTrackingInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SmileCaptureUI;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/camera/component/SmileCaptureUI$7;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$7;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->isSmileFromFaceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$7;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    # invokes: Lcom/htc/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z
    invoke-static {v0}, Lcom/htc/camera/component/SmileCaptureUI;->access$200(Lcom/htc/camera/component/SmileCaptureUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureUI$7;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # invokes: Lcom/htc/camera/component/SmileCaptureUI;->checkSmileFace(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/SmileCaptureUI;->access$400(Lcom/htc/camera/component/SmileCaptureUI;Ljava/util/List;)V

    .line 214
    :cond_0
    return-void
.end method
