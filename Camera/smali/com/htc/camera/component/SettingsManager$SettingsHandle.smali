.class final Lcom/htc/camera/component/SettingsManager$SettingsHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "SettingsManager.java"


# instance fields
.field public final settings:Lcom/htc/camera/CameraSettings;

.field final synthetic this$0:Lcom/htc/camera/component/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/CameraSettings;)V
    .locals 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->this$0:Lcom/htc/camera/component/SettingsManager;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/camera/CameraSettings;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->settings:Lcom/htc/camera/CameraSettings;

    .line 33
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager$SettingsHandle;->this$0:Lcom/htc/camera/component/SettingsManager;

    # invokes: Lcom/htc/camera/component/SettingsManager;->restoreSettings(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/component/SettingsManager;->access$000(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/Handle;I)V

    .line 39
    return-void
.end method
