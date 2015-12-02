.class public Lcom/htc/camera/menu/SceneMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "SceneMenuItem.java"


# instance fields
.field protected final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_IsExpandButtonClicked:Z

.field public final scene:Lcom/htc/camera/effect/EffectBase;


# direct methods
.method static synthetic access$002(Lcom/htc/camera/menu/SceneMenuItem;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/htc/camera/menu/SceneMenuItem;->m_IsExpandButtonClicked:Z

    return p1
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0e007b

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;

    .line 63
    iget-object v1, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setVisibility(I)V

    .line 66
    iget-object v1, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    .line 70
    :cond_0
    iget-object v1, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->getTitle()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->getSummary()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/htc/camera/menu/SceneMenuItem;->setText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 77
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setVerticalDividerEnabled(Z)V

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/htc/camera/menu/SceneMenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 89
    iget-object v1, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_2

    .line 91
    iget-object v4, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setVisibility(I)V

    .line 92
    new-instance v1, Lcom/htc/camera/menu/SceneMenuItem$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/SceneMenuItem$1;-><init>(Lcom/htc/camera/menu/SceneMenuItem;)V

    .line 101
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setAlpha(F)V

    .line 110
    :cond_2
    :goto_2
    return-object v3

    .line 81
    :cond_3
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 82
    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem;->setVerticalDividerEnabled(Z)V

    goto :goto_0

    .line 91
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    .line 106
    :cond_5
    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setAlpha(F)V

    goto :goto_2
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected onClicked()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/menu/SceneMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/camera/menu/SceneMenuItem;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 133
    iget-object v2, p0, Lcom/htc/camera/menu/SceneMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    instance-of v2, v2, Lcom/htc/camera/effect/ad;

    if-nez v2, :cond_1

    .line 135
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/menu/SceneMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    if-eq v2, v3, :cond_0

    .line 136
    iget-object v2, p0, Lcom/htc/camera/menu/SceneMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    .line 147
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/camera/menu/SceneMenuItem;->m_IsExpandButtonClicked:Z

    if-eqz v0, :cond_3

    .line 149
    iput-boolean v1, p0, Lcom/htc/camera/menu/SceneMenuItem;->m_IsExpandButtonClicked:Z

    .line 150
    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->collapse()V

    .line 154
    :goto_1
    const/4 v0, 0x1

    .line 156
    :goto_2
    return v0

    .line 140
    :cond_1
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/menu/SceneMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    if-eq v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Lcom/htc/camera/menu/SceneMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/IEffectManager;->setCurrentVideoScene(Ljava/lang/Class;)Z

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/menu/SceneMenuItem;->expand()V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 156
    goto :goto_2
.end method
