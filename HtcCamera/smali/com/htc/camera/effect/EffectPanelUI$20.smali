.class Lcom/htc/camera/effect/EffectPanelUI$20;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v2, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$3000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    .line 647
    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_3

    .line 649
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$400(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$400(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/htc/camera/effect/EffectPanelUI;->access$3100(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 660
    if-eqz v0, :cond_0

    .line 661
    iget-object v2, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1400(Lcom/htc/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$3200(Lcom/htc/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V

    goto :goto_0

    .line 652
    :cond_3
    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_2

    .line 654
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$20;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 661
    goto :goto_1
.end method
