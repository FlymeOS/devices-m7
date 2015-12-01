.class final Lcom/htc/camera/dualcamera/c;
.super Lcom/htc/camera/CameraSettings;
.source "HumanJointCaptureMode.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onResetPreferencesAfterLaunch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string v0, "pref_camera_self_timer_main"

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/CameraSettings;->onResetPreferencesAfterLaunch(Ljava/util/List;)V

    .line 118
    return-void
.end method
