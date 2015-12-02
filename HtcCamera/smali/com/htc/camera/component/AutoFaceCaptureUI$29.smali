.class Lcom/htc/camera/component/AutoFaceCaptureUI$29;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$29;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

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
    .line 971
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$29;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$29;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$29;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$29;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->checkFaceStable(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$5700(Lcom/htc/camera/component/AutoFaceCaptureUI;Ljava/util/List;)V

    .line 974
    :cond_1
    return-void
.end method
