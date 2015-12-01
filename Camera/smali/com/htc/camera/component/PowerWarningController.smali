.class public Lcom/htc/camera/component/PowerWarningController;
.super Lcom/htc/camera/component/s;
.source "PowerWarningController.java"


# instance fields
.field private m_PowerWarningUI:Lcom/htc/camera/component/PowerWarningUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 29
    const-string v0, "PowerWarning Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 30
    return-void
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 62
    return-void
.end method

.method link(Lcom/htc/camera/component/PowerWarningUI;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/htc/camera/component/PowerWarningUI;

    .line 70
    return-void
.end method
