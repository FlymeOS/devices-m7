.class Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;
.super Ljava/lang/Object;
.source "CameraHwKeyDialogHintUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

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
    .line 306
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->m_Adapter:Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;
    invoke-static {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$100(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->setCurrentSelected(I)V

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_CAMERA_HWKEY_CONTROLTYPE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraHwKeyType;

    .line 308
    iget-object v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$200(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin CameraHwKeyType:"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    const/4 v1, 0x0

    .line 310
    packed-switch p3, :pswitch_data_0

    .line 324
    :goto_0
    if-nez v1, :cond_0

    .line 332
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$300(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectType CameraHwKeyType:"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    iget-object v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_CAMERA_HWKEY_CONTROLTYPE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->dialogHinthide()V

    .line 335
    return-void

    .line 312
    :pswitch_0
    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->SELFIE:Lcom/htc/camera/CameraHwKeyType;

    goto :goto_0

    .line 315
    :pswitch_1
    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->MAINCAMERA:Lcom/htc/camera/CameraHwKeyType;

    goto :goto_0

    .line 318
    :pswitch_2
    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->LASTCAMERA:Lcom/htc/camera/CameraHwKeyType;

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$2;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_CAMERA_HWKEY_HINT_SHOWN:Lcom/htc/camera/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
