.class Lcom/htc/camera/component/CameraModeScreen$3;
.super Ljava/lang/Object;
.source "CameraModeScreen.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraModeScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraModeScreen;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 108
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$200(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$200(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v4, v4}, Lcom/htc/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$300(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraModeScreen;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$400(Lcom/htc/camera/component/CameraModeScreen;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$400(Lcom/htc/camera/component/CameraModeScreen;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/HdrVideoScene;

    if-nez v0, :cond_4

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$300(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v4, v2}, Lcom/htc/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    .line 130
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # setter for: Lcom/htc/camera/component/CameraModeScreen;->m_IsChangingCaptureMode:Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/CameraModeScreen;->access$002(Lcom/htc/camera/component/CameraModeScreen;Z)Z

    .line 132
    :cond_3
    return-void

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$3;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$300(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 121
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 122
    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 123
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 124
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
