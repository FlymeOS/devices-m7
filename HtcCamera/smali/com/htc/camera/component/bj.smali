.class Lcom/htc/camera/component/bj;
.super Lcom/htc/camera/component/CameraComponent;
.source "PowerSavingManager.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 151
    const-string v0, "Power Saving Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 152
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/htc/camera/component/bj;->a()V

    .line 164
    invoke-virtual {p0}, Lcom/htc/camera/component/bj;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 168
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 172
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 173
    return-void
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 185
    invoke-virtual {p0}, Lcom/htc/camera/component/bj;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    .line 242
    return-void
.end method
