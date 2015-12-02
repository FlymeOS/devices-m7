.class final Lcom/htc/camera/component/ObjectTrackingRenderer;
.super Lcom/htc/camera/component/cm;
.source "ObjectTrackingRenderer.java"


# instance fields
.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private final m_FaceFrameLinePool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/camera/gl/PolyStraightLine;",
            ">;"
        }
    .end annotation
.end field

.field private m_FaceFramePaint:Landroid/graphics/Paint;

.field private volatile m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;

.field private m_Is3DRenderingEnabled:Z

.field private m_IsFaceStable:Z

.field private final m_KnownFrames:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

.field private final m_UnknownFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_UnusedFrames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_Use3DRendering:Z

.field private m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v0, "Object-Tracking Renderer"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 57
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFrameLinePool:Ljava/util/Stack;

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnusedFrames:Ljava/util/Stack;

    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->disableFakeUIRotation()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->disableUIRotationChangeNotification()V

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ObjectTrackingRenderer;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ObjectTrackingInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/ObjectTrackingInfo;)Lcom/htc/camera/ObjectTrackingInfo;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/htc/camera/component/ObjectTrackingRenderer;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_IsFaceStable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Is3DRenderingEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFrameLinePool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ObjectTrackingRenderer;->drawObjects(Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->clearObjects()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ObjectTrackingRenderer;->releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ObjectTrackingRenderer;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ObjectTrackingRenderer;->mirrorRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getObjectFrameInfo()Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    move-result-object v0

    return-object v0
.end method

.method private clearObjects()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;

    .line 100
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    .line 107
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 109
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    monitor-enter v2

    .line 114
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    .line 114
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    monitor-exit v2

    .line 118
    return-void

    .line 117
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private drawObject(Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 141
    iget-object v2, p2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    .line 142
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 143
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 144
    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-interface {v5, v6, v7, v4, v0}, Lcom/htc/camera/ui/IViewfinder;->convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 147
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 148
    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-interface {v5, v6, v2, v4, v0}, Lcom/htc/camera/ui/IViewfinder;->convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget v2, v4, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 151
    iget v2, v4, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 154
    sget-object v2, Lcom/htc/camera/component/ObjectTrackingRenderer$12;->$SwitchMap$com$htc$camera$ObjectTrackingInfoType:[I

    iget-object v4, p2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->objectTrackingInfo:Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v4, v4, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    invoke-virtual {v4}, Lcom/htc/camera/ObjectTrackingInfoType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/htc/camera/ObjectTrackingInfo;

    .line 160
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v5, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    if-ne v4, v5, :cond_4

    .line 161
    iget v4, v2, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    if-eqz v4, :cond_3

    iget v2, v2, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    iget-object v4, p2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->objectTrackingInfo:Lcom/htc/camera/ObjectTrackingInfo;

    iget v4, v4, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    if-ne v2, v4, :cond_3

    .line 210
    :goto_1
    if-nez v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    :goto_2
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_IsFaceStable:Z

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const v1, -0x33940100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    :cond_2
    check-cast p1, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    iget-object v0, p1, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 161
    goto :goto_1

    :cond_4
    move v0, v1

    .line 163
    goto :goto_1

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private drawObjects(Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;)V
    .locals 24

    .prologue
    .line 268
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;->isPreviewCoverVisible:Z

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v2, v2, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    :cond_3
    const/4 v2, 0x0

    .line 283
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    if-eqz v3, :cond_f

    move-object/from16 v2, p1

    .line 285
    check-cast v2, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    iget-object v3, v2, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    .line 286
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 287
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object v3, v2

    .line 291
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    monitor-enter v9

    .line 293
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->drawObject(Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    .line 299
    const/4 v8, 0x1

    .line 300
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    .line 301
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 302
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    .line 303
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    .line 304
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 305
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 306
    iget-object v13, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 307
    iget-object v14, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    .line 308
    sub-float v15, v7, v11

    .line 309
    sub-float v16, v6, v12

    .line 310
    sub-float v17, v5, v13

    .line 311
    sub-float v18, v4, v14

    .line 312
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v19, v19, v21

    if-lez v19, :cond_9

    .line 314
    float-to-double v7, v11

    float-to-double v0, v15

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v19, v19, v21

    add-double v7, v7, v19

    double-to-float v7, v7

    .line 315
    const/4 v8, 0x0

    move/from16 v23, v7

    move v7, v8

    move/from16 v8, v23

    .line 319
    :goto_3
    if-eqz v7, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v0, v11

    move-wide/from16 v19, v0

    const-wide v21, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v11, v19, v21

    if-lez v11, :cond_a

    .line 321
    :cond_5
    float-to-double v6, v12

    move/from16 v0, v16

    float-to-double v11, v0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v15

    add-double/2addr v6, v11

    double-to-float v6, v6

    .line 322
    const/4 v7, 0x0

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    .line 326
    :goto_4
    if-eqz v6, :cond_6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v15, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v11, v11, v15

    if-lez v11, :cond_b

    .line 328
    :cond_6
    float-to-double v5, v13

    move/from16 v0, v17

    float-to-double v11, v0

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v11, v15

    add-double/2addr v5, v11

    double-to-float v5, v5

    .line 329
    const/4 v6, 0x0

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    .line 333
    :goto_5
    if-eqz v5, :cond_7

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v15, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v11, v11, v15

    if-lez v11, :cond_8

    .line 335
    :cond_7
    float-to-double v4, v14

    move/from16 v0, v18

    float-to-double v11, v0

    const-wide v13, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    double-to-float v4, v4

    .line 336
    const/4 v5, 0x0

    .line 340
    :cond_8
    if-eqz v5, :cond_c

    .line 341
    iget-object v4, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    iget-object v2, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    .line 351
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_9
    move/from16 v23, v7

    move v7, v8

    move/from16 v8, v23

    .line 318
    goto :goto_3

    :cond_a
    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    .line 325
    goto :goto_4

    :cond_b
    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    .line 332
    goto :goto_5

    .line 344
    :cond_c
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v6, v5

    sub-float v5, v8, v5

    .line 345
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    sub-float/2addr v7, v8

    .line 346
    :try_start_1
    iget-object v2, v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    add-float/2addr v6, v5

    add-float/2addr v4, v7

    invoke-virtual {v2, v5, v7, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v2, :cond_4

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v2}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    goto/16 :goto_2

    .line 351
    :cond_d
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    monitor-enter v5

    .line 356
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_6
    if-ltz v4, :cond_e

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->drawObject(Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    .line 356
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_6

    .line 358
    :cond_e
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    if-eqz v3, :cond_0

    .line 362
    check-cast p1, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto/16 :goto_0

    .line 358
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_f
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private getObjectFrameInfo()Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnusedFrames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnusedFrames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    .line 372
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer$1;)V

    goto :goto_0
.end method

.method private mirrorRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 662
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v4, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float v3, v4, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 670
    iput-object v3, p1, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->objectTrackingInfo:Lcom/htc/camera/ObjectTrackingInfo;

    .line 671
    iget-object v0, p1, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->faceFrameLine:Lcom/htc/camera/gl/PolyStraightLine;

    if-eqz v0, :cond_1

    .line 673
    iget-object v1, p1, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->faceFrameLine:Lcom/htc/camera/gl/PolyStraightLine;

    .line 674
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    instance-of v0, v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingRenderer$11;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/component/ObjectTrackingRenderer$11;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/gl/PolyStraightLine;)V

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 686
    :cond_0
    iput-object v3, p1, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->faceFrameLine:Lcom/htc/camera/gl/PolyStraightLine;

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnusedFrames:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    .line 132
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 133
    return-void
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 385
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    .line 386
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_FaceFramePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 392
    const-class v0, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    .line 393
    const-class v1, Lcom/htc/camera/IStableFace;

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/IStableFace;

    .line 394
    const-class v2, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/ui/IViewfinder;

    iput-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 395
    const-class v2, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 396
    const-class v2, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 397
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 398
    :goto_0
    if-eqz v2, :cond_0

    .line 400
    iput-boolean v3, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z

    .line 405
    :cond_0
    iget-object v4, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v4, :cond_4

    .line 407
    if-eqz v2, :cond_1

    .line 458
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v2, :cond_5

    .line 460
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    sget-object v4, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    new-instance v5, Lcom/htc/camera/component/ObjectTrackingRenderer$1;

    invoke-direct {v5, p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$1;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    invoke-interface {v2, v4, v5}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 474
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 475
    iget-object v4, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v5, Lcom/htc/camera/component/ObjectTrackingRenderer$2;

    invoke-direct {v5, p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$2;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 489
    iget-object v4, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/camera/component/ObjectTrackingRenderer$3;

    iget-object v6, v2, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/htc/camera/component/ObjectTrackingRenderer$3;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v4, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/camera/component/ObjectTrackingRenderer$4;

    iget-object v6, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v7, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-direct {v5, p0, v6, v7}, Lcom/htc/camera/component/ObjectTrackingRenderer$4;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v4, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/camera/component/ObjectTrackingRenderer$5;

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v6, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v5, p0, v2, v6}, Lcom/htc/camera/component/ObjectTrackingRenderer$5;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    if-eqz v0, :cond_6

    .line 515
    iget-object v2, v0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    new-instance v4, Lcom/htc/camera/component/ObjectTrackingRenderer$6;

    invoke-direct {v4, p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$6;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    invoke-virtual {v2, v4}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 604
    iget-object v2, v0, Lcom/htc/camera/IObjectTracker;->focusedObject:Lcom/htc/camera/property/Property;

    new-instance v4, Lcom/htc/camera/component/ObjectTrackingRenderer$7;

    invoke-direct {v4, p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$7;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    invoke-virtual {v2, v4}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 616
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/ObjectTrackingRenderer$8;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->isObjectDetectionEnabled:Lcom/htc/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, p0, v0, v3}, Lcom/htc/camera/component/ObjectTrackingRenderer$8;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :goto_3
    if-eqz v1, :cond_7

    .line 629
    iget-object v0, v1, Lcom/htc/camera/IStableFace;->isStableFace:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ObjectTrackingRenderer$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$9;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 644
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ObjectTrackingRenderer$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$10;-><init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 655
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 397
    goto/16 :goto_0

    .line 457
    :cond_4
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->TAG:Ljava/lang/String;

    const-string v4, "initializeOverride() - No IViewFinder interface"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    :cond_5
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->TAG:Ljava/lang/String;

    const-string v4, "initializeOverride() - No ICameraPreviewOverlay interface"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 626
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - No IObjectTracker interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 641
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IStableFace interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
