.class Lcom/htc/camera/menu/SettingsMenu$5;
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
    .line 1761
    iput-object p1, p0, Lcom/htc/camera/menu/SettingsMenu$5;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1765
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu$5;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    # getter for: Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/menu/SettingsMenu;->access$200(Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1766
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 1767
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraApplication;->setIsGeoTagDialogShown(Z)V

    .line 1768
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu$5;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    # getter for: Lcom/htc/camera/menu/SettingsMenu;->m_IsGeotaoOff:Z
    invoke-static {v0}, Lcom/htc/camera/menu/SettingsMenu;->access$300(Lcom/htc/camera/menu/SettingsMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu$5;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    # getter for: Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;
    invoke-static {v0}, Lcom/htc/camera/menu/SettingsMenu;->access$400(Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/location/ILocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/location/ILocationManager;->startLocationSettings()V

    .line 1770
    :cond_0
    return-void
.end method
