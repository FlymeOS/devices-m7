.class Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "ImageAdjustmentMenuItem.java"

# interfaces
.implements Lcom/htc/camera/widget/e;
.implements Lcom/htc/camera/widget/f;


# instance fields
.field public final index:I

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_PropertyItem:Lcom/htc/camera/widget/ImagePropertyItem;

.field final synthetic this$0:Lcom/htc/camera/menu/ImageAdjustmentMenuItem;

.field public final valueProperty:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/menu/ImageAdjustmentMenuItem;Lcom/htc/camera/HTCCamera;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    iput-object p1, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/htc/camera/menu/ImageAdjustmentMenuItem;

    .line 47
    invoke-direct {p0, p2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->setSelectable(Z)V

    .line 49
    iput p3, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    .line 50
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p2, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 51
    packed-switch p3, :pswitch_data_0

    .line 71
    iput-object v1, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 76
    return-void

    .line 54
    :pswitch_0
    iput-object v1, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->contrast:Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->saturation:Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    .line 61
    invoke-virtual {p2}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 63
    iget-object v0, v0, Lcom/htc/camera/IImageSettingsController;->isSaturationSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->setVisibility(Z)V

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->sharpness:Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 85
    instance-of v0, p4, Lcom/htc/camera/widget/ImagePropertyItem;

    if-nez v0, :cond_0

    .line 86
    new-instance p4, Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-virtual {p0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {p4, v0}, Lcom/htc/camera/widget/ImagePropertyItem;-><init>(Landroid/content/Context;)V

    move-object v0, p4

    .line 87
    :goto_0
    check-cast v0, Lcom/htc/camera/widget/ImagePropertyItem;

    iput-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/htc/camera/widget/ImagePropertyItem;

    .line 90
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/htc/camera/widget/ImagePropertyItem;

    iget v1, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    iget-object v2, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/htc/camera/menu/ImageAdjustmentMenuItem;

    # getter for: Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/htc/camera/CameraThread;
    invoke-static {v2}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/htc/camera/menu/ImageAdjustmentMenuItem;)Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/widget/ImagePropertyItem;->initialize(ILcom/htc/camera/CameraThread;)V

    .line 91
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/ImagePropertyItem;->setOnButtonClickedListener(Lcom/htc/camera/widget/e;)V

    .line 92
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/htc/camera/widget/ImagePropertyItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/ImagePropertyItem;->setOnLevelChangedListener(Lcom/htc/camera/widget/f;)V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/htc/camera/widget/ImagePropertyItem;

    return-object v0

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public final isDefaultLevel()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    if-nez v0, :cond_2

    .line 113
    iget v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "ImageAdjustmentMenuItem"

    const-string v2, "isDefaultLevel() - valueProperty is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/htc/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonClicked(Lcom/htc/camera/widget/ImagePropertyItem;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/htc/camera/menu/ImageAdjustmentMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->notifyItemContentClicked()V

    .line 128
    return-void
.end method

.method public onLevelChanged(Lcom/htc/camera/widget/ImagePropertyItem;I)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/htc/camera/menu/ImageAdjustmentMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;->updateContent()V

    .line 139
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    const-class v1, Lcom/htc/camera/effect/AutoScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 145
    if-eqz v0, :cond_1

    .line 146
    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v0, "ImageAdjustmentMenuItem"

    const-string v1, "onLevelChanged() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
