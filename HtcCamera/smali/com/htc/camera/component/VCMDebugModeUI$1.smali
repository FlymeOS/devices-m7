.class Lcom/htc/camera/component/VCMDebugModeUI$1;
.super Ljava/lang/Object;
.source "VCMDebugModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/VCMDebugModeUI;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/VCMDebugModeUI;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    iput-object p2, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->updateCameraParameters()V

    .line 90
    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const-string v2, "vcm_step"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStep:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$002(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const-string v2, "focus_distance"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistance:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$102(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const-string v2, "confidence_level"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Confidence:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$202(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const-string v2, "main_luma"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLuma:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$302(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const-string v2, "sub_luma"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLuma:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$402(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$500(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "handleMessage() - vcm_step:"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStep:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/VCMDebugModeUI;->access$000(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, " focus_distance:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistance:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$100(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " confidence_level:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_Confidence:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$200(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, " main_luma:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLuma:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$300(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, " sub_luma:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # getter for: Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLuma:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/component/VCMDebugModeUI;->access$400(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    iget-object v1, p0, Lcom/htc/camera/component/VCMDebugModeUI$1;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/camera/component/VCMDebugModeUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 100
    :cond_0
    return-void
.end method
