.class Lcom/htc/camera/component/CaptureResolutionManager$4;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$4;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$4;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$4;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager$4;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$4;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/htc/camera/Resolution;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$800(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V

    .line 184
    :cond_0
    return-void
.end method
