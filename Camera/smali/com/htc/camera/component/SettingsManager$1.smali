.class Lcom/htc/camera/component/SettingsManager$1;
.super Lcom/htc/camera/trigger/Trigger;
.source "SettingsManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/camera/component/SettingsManager$1;->this$0:Lcom/htc/camera/component/SettingsManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager$1;->this$0:Lcom/htc/camera/component/SettingsManager;

    # getter for: Lcom/htc/camera/component/SettingsManager;->m_DefaultSettings:Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/component/SettingsManager;->access$100(Lcom/htc/camera/component/SettingsManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraSettings;->resetToDefault()V

    .line 111
    return-void
.end method
