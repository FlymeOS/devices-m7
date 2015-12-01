.class Lcom/htc/camera/zoe/ZoeUI$6;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoeUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$602(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 885
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$800(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$900(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnter() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 889
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$6;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$802(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 891
    :cond_0
    return-void
.end method
