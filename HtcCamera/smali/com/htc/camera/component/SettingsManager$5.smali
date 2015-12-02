.class Lcom/htc/camera/component/SettingsManager$5;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsManager;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/camera/component/SettingsManager$5;->this$0:Lcom/htc/camera/component/SettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager$5;->this$0:Lcom/htc/camera/component/SettingsManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/SettingsManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager$5;->this$0:Lcom/htc/camera/component/SettingsManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/SettingsManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 285
    :cond_0
    return-void
.end method
