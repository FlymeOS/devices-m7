.class Lcom/htc/camera/component/AutoFaceCaptureUI$32;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

.field final synthetic val$rotationHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iput-object p2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->val$rotationHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$6200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1680
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->RejectDownload:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1681
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$6000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$6000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$32;->val$rotationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 1683
    :cond_0
    return-void
.end method
