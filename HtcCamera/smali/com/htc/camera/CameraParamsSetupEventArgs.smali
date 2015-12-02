.class public Lcom/htc/camera/CameraParamsSetupEventArgs;
.super Lcom/htc/camera/CameraDeviceEventArgs;
.source "CameraParamsSetupEventArgs.java"


# instance fields
.field private m_IsParameterChanged:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final isParameterChanged()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/camera/CameraParamsSetupEventArgs;->m_IsParameterChanged:Z

    return v0
.end method

.method public final notifyParameterChanged()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraParamsSetupEventArgs;->m_IsParameterChanged:Z

    .line 34
    return-void
.end method
