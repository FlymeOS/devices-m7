.class Lcom/htc/camera/component/AutoFaceCaptureUI$28;
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
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 946
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$5600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "captureMode:"

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 947
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2202(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 948
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 950
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 952
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 954
    :cond_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 956
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$28;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 958
    :cond_1
    return-void
.end method
