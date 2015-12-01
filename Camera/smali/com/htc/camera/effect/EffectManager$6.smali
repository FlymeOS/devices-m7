.class Lcom/htc/camera/effect/EffectManager$6;
.super Lcom/htc/camera/trigger/Trigger;
.source "EffectManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 754
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->resetBackupImageSettings()V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$800(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$800(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->resetBackupImageSettings()V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$900(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$900(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->resetBackupImageSettings()V

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1400(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/s;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->clearEffectsAndScenes()V

    .line 764
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectManager;->access$1600(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    # setter for: Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectManager;->access$1502(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectBase;)Lcom/htc/camera/effect/EffectBase;

    .line 765
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # invokes: Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_scene"

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/htc/camera/effect/EffectManager;->access$1500(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # setter for: Lcom/htc/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z
    invoke-static {v0, v4}, Lcom/htc/camera/effect/EffectManager;->access$1802(Lcom/htc/camera/effect/EffectManager;Z)Z

    .line 768
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1300(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    # setter for: Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v1, v0}, Lcom/htc/camera/effect/EffectManager;->access$1902(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectBase;)Lcom/htc/camera/effect/EffectBase;

    .line 770
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    # invokes: Lcom/htc/camera/effect/EffectManager;->prepareEffectForNewMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V
    invoke-static {v0, v1, v2, v4}, Lcom/htc/camera/effect/EffectManager;->access$400(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V

    .line 771
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$6;->this$0:Lcom/htc/camera/effect/EffectManager;

    # invokes: Lcom/htc/camera/effect/EffectManager;->reset(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/effect/EffectManager;->access$500(Lcom/htc/camera/effect/EffectManager;Z)V

    .line 772
    return-void
.end method
