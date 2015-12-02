.class Lcom/htc/camera/zoe/ZoeUI$7;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoeUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 899
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-virtual {v0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->stopNotesRecording()V

    .line 902
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$800(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1000(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnter() - Request audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 906
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$7;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeUI;->access$802(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 909
    :cond_0
    return-void
.end method
