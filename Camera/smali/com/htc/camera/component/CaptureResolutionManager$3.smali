.class Lcom/htc/camera/component/CaptureResolutionManager$3;
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
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$3;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

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
            "Lcom/htc/camera/CameraType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$3;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolutionBack:Z
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$400(Lcom/htc/camera/component/CaptureResolutionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager$3;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->syncBackPhotoResolution(Lcom/htc/camera/CameraType;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$500(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/CameraType;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$3;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolutionBack:Z
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$600(Lcom/htc/camera/component/CaptureResolutionManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager$3;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->syncBackVideoResolution(Lcom/htc/camera/CameraType;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$700(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/CameraType;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$3;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 172
    return-void
.end method
