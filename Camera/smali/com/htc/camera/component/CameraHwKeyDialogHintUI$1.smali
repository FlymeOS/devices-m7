.class Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;
.super Ljava/lang/Object;
.source "CameraHwKeyDialogHintUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

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
    const/16 v3, 0x1b

    const/4 v2, 0x0

    .line 259
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keycode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # getter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->m_isLaunching:Z
    invoke-static {v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$000(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_CAMERA_HWKEY_HINT_SHOWN:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->dialogHintPopUp()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$1;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    # setter for: Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->m_isLaunching:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI;->access$002(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;Z)Z

    .line 270
    :cond_1
    return-void
.end method
