.class final Lcom/htc/camera/component/CameraDeviceManager;
.super Lcom/htc/camera/v;
.source "CameraDeviceManager.java"


# instance fields
.field private final m_CameraPreservationHandles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraToken:Ljava/lang/Object;

.field private final m_Cameras:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ReleaseCameraTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "Camera Device Manager"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/v;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Lcom/htc/camera/component/CameraDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraDeviceManager$1;-><init>(Lcom/htc/camera/component/CameraDeviceManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_ReleaseCameraTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 69
    return-void
.end method


# virtual methods
.method public beginPreserveCamera(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "beginPreserveCamera() - No camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 119
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->threadAccessCheck()V

    .line 86
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "beginPreserveCamera() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    .line 94
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 95
    iget-object v3, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginPreserveCamera("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "beginPreserveCamera() - Camera is closed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    if-eq v0, p1, :cond_3

    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "beginPreserveCamera() - Invalid camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    .line 109
    if-nez v0, :cond_4

    .line 111
    new-instance v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;-><init>(Lcom/htc/camera/CameraController;)V

    .line 112
    iget-object v1, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "beginPreserveCamera() - Handle reference count : "

    iget v3, v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_4
    iget v1, v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    goto :goto_1
.end method

.method public closeCamera(Lcom/htc/camera/CameraController;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->threadAccessCheck()V

    .line 137
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 149
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setPreviewAdapter(Lcom/htc/camera/CameraPreviewAdapter;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setZoom(I)V

    .line 159
    invoke-virtual {p1, v7}, Lcom/htc/camera/CameraController;->setErrorCallback(Lcom/htc/camera/i;)V

    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    .line 163
    if-nez v0, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    .line 168
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Close camera"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_ReleaseCameraTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    move-object v1, v0

    .line 176
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "closeCamera() - Release camera - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->close()V

    .line 178
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "closeCamera() - Release camera - end"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    if-eqz v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 188
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - Active camera : "

    iget-object v2, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", preserved camera : "

    iget-object v4, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 196
    iput-object v7, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    iget-object v1, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "closeCamera() - Fail to clear preview texture(surface)"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    move-object v1, v7

    .line 171
    goto :goto_2

    .line 182
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 183
    iget-object v2, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v2, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 182
    :cond_5
    throw v0

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - Preserve camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public endPreserveCamera(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "endPreserveCamera() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "endPreserveCamera() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->threadAccessCheck()V

    .line 220
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "endPreserveCamera() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_3
    check-cast p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    .line 228
    iget-object v0, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->cameraController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    .line 229
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endPreserveCamera("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    .line 231
    if-eq p1, v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "endPreserveCamera() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_4
    iget v0, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    .line 239
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "endPreserveCamera() - Handle reference count : "

    iget v3, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    iget v0, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    if-gtz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p1, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->cameraController:Lcom/htc/camera/CameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraDeviceManager;->closeCamera(Lcom/htc/camera/CameraController;)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/htc/camera/v;->initializeOverride()V

    .line 258
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraDeviceManager;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 259
    return-void
.end method

.method public openCamera(Lcom/htc/camera/CameraType;Lcom/htc/camera/Reference;)Lcom/htc/camera/CameraOpenFailedReason;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/Reference",
            "<",
            "Lcom/htc/camera/CameraController;",
            ">;)",
            "Lcom/htc/camera/CameraOpenFailedReason;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 270
    const-string v0, "cameraType"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 273
    :cond_0
    if-nez p2, :cond_1

    .line 275
    const-string v0, "cameraControllerRef"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->threadAccessCheck()V

    .line 281
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraDeviceManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "openCamera() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->Unknown:Lcom/htc/camera/CameraOpenFailedReason;

    .line 362
    :goto_0
    return-object v0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "openCamera() - Camera is already open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/htc/camera/CameraOpenFailedReason;

    goto :goto_0

    .line 295
    :cond_3
    iget-boolean v0, p1, Lcom/htc/camera/CameraType;->isSupported:Z

    if-nez v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "openCamera() - Camera is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    goto :goto_0

    .line 302
    :cond_4
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;

    .line 305
    if-nez v0, :cond_e

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 310
    invoke-static {}, Lcom/htc/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "openCamera() - Cannot get camera token"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->NoToken:Lcom/htc/camera/CameraOpenFailedReason;

    goto :goto_0

    .line 317
    :cond_5
    const/4 v0, 0x1

    move v2, v0

    .line 323
    :cond_6
    :try_start_0
    new-instance v0, Lcom/htc/camera/CameraController;

    iget-object v3, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-direct {v0, p1, v3}, Lcom/htc/camera/CameraController;-><init>(Lcom/htc/camera/CameraType;Lcom/htc/camera/debug/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "openCamera() - Active camera : "

    iget-object v4, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_Cameras:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", preserved camera : "

    iget-object v6, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraPreservationHandles:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    iput-object v0, p2, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    move-object v0, v1

    .line 362
    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    iget-object v3, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "openCamera() - Fail to open camera"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    if-eqz v2, :cond_7

    .line 332
    iget-object v2, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    invoke-static {v2}, Lcom/htc/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 333
    iput-object v1, p0, Lcom/htc/camera/component/CameraDeviceManager;->m_CameraToken:Ljava/lang/Object;

    .line 336
    :cond_7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA_LOW_POWER_RESTRCTION_3D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 338
    :cond_8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA_LOW_POWER_RESTRCTION_DUAL_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 339
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 340
    :cond_9
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA_RESOURCE_OCCUPY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 341
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 342
    :cond_a
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA_IN_NO_MEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 343
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 344
    :cond_b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA_HARDWARE_OPENED_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 345
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 346
    :cond_c
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA_POLICY_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 347
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 349
    :cond_d
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->Unknown:Lcom/htc/camera/CameraOpenFailedReason;

    goto/16 :goto_0

    .line 354
    :cond_e
    iget-object v2, p0, Lcom/htc/camera/component/CameraDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "openCamera() - Use preserved camera"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, v0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->cameraController:Lcom/htc/camera/CameraController;

    goto/16 :goto_1
.end method
