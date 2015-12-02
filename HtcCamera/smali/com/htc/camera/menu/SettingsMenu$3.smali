.class Lcom/htc/camera/menu/SettingsMenu$3;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/SettingsMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/SettingsMenu;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/htc/camera/menu/SettingsMenu$3;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu$3;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    # getter for: Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/menu/SettingsMenu;->access$200(Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "geotag_check_dialog"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 814
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 815
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->setIsGeoTagDialogShown(Z)V

    .line 816
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu$3;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    # getter for: Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/menu/SettingsMenu;->access$200(Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetToDefault()V

    .line 817
    return-void
.end method
