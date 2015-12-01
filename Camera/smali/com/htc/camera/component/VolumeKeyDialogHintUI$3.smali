.class Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;
.super Ljava/lang/Object;
.source "VolumeKeyDialogHintUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/VolumeKeyDialogHintUI;->m_Adapter:Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;
    invoke-static {v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->access$000(Lcom/htc/camera/component/VolumeKeyDialogHintUI;)Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->setCurrentSelected(I)V

    .line 332
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/VolumeKeyType;

    .line 333
    const/4 v1, 0x0

    .line 334
    packed-switch p3, :pswitch_data_0

    .line 348
    :goto_0
    if-nez v1, :cond_0

    .line 356
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    iget-object v2, v2, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->DialogHinthide()V

    .line 358
    return-void

    .line 336
    :pswitch_0
    sget-object v1, Lcom/htc/camera/VolumeKeyType;->None:Lcom/htc/camera/VolumeKeyType;

    goto :goto_0

    .line 339
    :pswitch_1
    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Capture:Lcom/htc/camera/VolumeKeyType;

    goto :goto_0

    .line 342
    :pswitch_2
    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Zoom:Lcom/htc/camera/VolumeKeyType;

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isVolumeKeyHintShown:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$3;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    iget-object v2, v2, Lcom/htc/camera/component/VolumeKeyDialogHintUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
