.class Lcom/htc/camera/component/AutoFocusController;
.super Lcom/htc/camera/IAutoFocusController;
.source "AutoFocusController.java"


# static fields
.field private static final m_CenterCameraArea:Landroid/hardware/Camera$Area;

.field private static final m_EmptyAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mZoeController:Lcom/htc/camera/zoe/IZoeController;

.field private final m_AfCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_AutoFocusMoveCB:Lcom/htc/camera/h;

.field private final m_ContiAFDisableHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

.field private m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

.field private m_IsAutoFocusLockedPropertySynced:Z

.field private m_IsFocusLocking:Z

.field private m_IsFocusModeAssigned:Z

.field private m_LastFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

.field private final m_PendingFocusHandles:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/htc/camera/component/AutoFocusController$FocusHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_TimeoutController:Lcom/htc/camera/debug/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xfa

    const/16 v2, -0xfa

    .line 79
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    sput-object v0, Lcom/htc/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/camera/component/AutoFocusController;->m_EmptyAreas:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    .line 162
    const-string v1, "Auto-Focus Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IAutoFocusController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    .line 94
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoFocusController$1;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_AutoFocusMoveCB:Lcom/htc/camera/h;

    .line 130
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoFocusController$2;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_AfCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->autoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->disableCAF(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->enableCAF(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/AutoFocusController;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsAutoFocusLockedPropertySynced:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/camera/component/AutoFocusController;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsAutoFocusLockedPropertySynced:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/component/AutoFocusController;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/component/AutoFocusController;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    return p1
.end method

.method static synthetic access$202(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)Lcom/htc/camera/component/AutoFocusController$FocusHandle;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/h;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_AutoFocusMoveCB:Lcom/htc/camera/h;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/AutoFocusMode;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/hardware/Camera$Area;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->lockAutoFocus(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/debug/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->unlockAutoFocusInternal(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/AutoFocusController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private autoFocus()V
    .locals 12

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - No pending auto-focusing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 550
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 231
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Handle : \'"

    iget-object v2, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v4

    .line 234
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - ignore for no AF sensor"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, v5}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 238
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-nez v0, :cond_3

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Auto-focus is locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, v5}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 249
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 254
    sget-object v2, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_4
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v2, :cond_9

    .line 274
    :cond_5
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    .line 275
    iput-object v5, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 276
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    move-object v1, v0

    .line 281
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 286
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 289
    iget v7, v0, Landroid/graphics/Rect;->left:I

    const/16 v8, -0x3e8

    if-ge v7, v8, :cond_b

    .line 291
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    rsub-int v8, v8, -0x3e8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 292
    const/16 v7, -0x3e8

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 299
    :cond_6
    :goto_4
    iget v7, v0, Landroid/graphics/Rect;->top:I

    const/16 v8, -0x3e8

    if-ge v7, v8, :cond_c

    .line 301
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    rsub-int v8, v8, -0x3e8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 302
    const/16 v7, -0x3e8

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 310
    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 311
    iget-object v7, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v8, "autoFocus() - got empty area, reset to center"

    invoke-static {v7, v8}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/16 v7, -0xfa

    const/16 v8, -0xfa

    const/16 v9, 0xfa

    const/16 v10, 0xfa

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    :cond_8
    new-instance v7, Landroid/hardware/Camera$Area;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v7, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoFocus() - Area = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", mode = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 259
    :pswitch_1
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v2, :cond_5

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - Cannot auto-focus, current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v5}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 269
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 279
    :cond_a
    sget-object v0, Lcom/htc/camera/component/AutoFocusController;->m_EmptyAreas:Ljava/util/ArrayList;

    move-object v1, v0

    goto/16 :goto_2

    .line 294
    :cond_b
    iget v7, v0, Landroid/graphics/Rect;->right:I

    const/16 v8, 0x3e8

    if-le v7, v8, :cond_6

    .line 296
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v8, v8, -0x3e8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 297
    const/16 v7, 0x3e8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 304
    :cond_c
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v8, 0x3e8

    if-le v7, v8, :cond_7

    .line 306
    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v8, v8, -0x3e8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 307
    const/16 v7, 0x3e8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    :cond_d
    move-object v2, v3

    .line 325
    :goto_6
    iput-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;

    .line 326
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    .line 329
    if-nez v4, :cond_f

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 333
    invoke-direct {p0, v5}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 334
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 321
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - No focus areas, use screen center as default area"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    sget-object v2, Lcom/htc/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_6

    .line 339
    :cond_f
    new-instance v7, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-direct {v7, v0, v3, v5}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;)V

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, v7}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 343
    sget-object v0, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    iget-object v3, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v3}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 387
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v3, :cond_1a

    .line 388
    const-string v0, "caf-focus-mode"

    const-string v3, "touch"

    invoke-virtual {v4, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_7
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_27

    .line 400
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v3, :cond_10

    .line 401
    const-string v0, "TOUCH_FOCUS"

    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 404
    :cond_10
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    if-nez v0, :cond_11

    .line 406
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v3, :cond_1d

    .line 407
    const-string v0, "continuous-picture"

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 410
    :goto_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    .line 414
    :cond_11
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v3, :cond_12

    invoke-direct {p0, v1}, Lcom/htc/camera/component/AutoFocusController;->isInCenter(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 416
    :cond_12
    invoke-virtual {v4, v2}, Lcom/htc/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 418
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->meteringAreas:Ljava/util/List;

    move-object v1, v0

    .line 420
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_21

    .line 425
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 428
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const/16 v9, -0x3e8

    if-ge v8, v9, :cond_1f

    .line 430
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    rsub-int v9, v9, -0x3e8

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 431
    const/16 v8, -0x3e8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 438
    :cond_13
    :goto_b
    iget v8, v0, Landroid/graphics/Rect;->top:I

    const/16 v9, -0x3e8

    if-ge v8, v9, :cond_20

    .line 440
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    rsub-int v9, v9, -0x3e8

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 441
    const/16 v8, -0x3e8

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 449
    :cond_14
    :goto_c
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 450
    iget-object v8, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v9, "autoFocus() - Metering got empty area, reset to center"

    invoke-static {v8, v9}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v8, -0xfa

    const/16 v9, -0xfa

    const/16 v10, 0xfa

    const/16 v11, 0xfa

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    :cond_15
    new-instance v8, Landroid/hardware/Camera$Area;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v8, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoFocus() - Metering area = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 346
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Auto-focus before capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 350
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Continuous auto-focus is disabled, no need to lock focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, v7}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v2, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 355
    :cond_16
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-eqz v0, :cond_18

    .line 357
    :cond_17
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Start locking auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v5}, Lcom/htc/camera/component/AutoFocusController;->startAutoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    goto/16 :goto_0

    .line 360
    :cond_18
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-nez v0, :cond_19

    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Auto-focus is already locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, v7}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 364
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$4;

    invoke-direct {v0, p0, v5}, Lcom/htc/camera/component/AutoFocusController$4;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 375
    :cond_19
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Internal state error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - IsAutoFocusLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - IsFocusLocking : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 379
    invoke-direct {p0, v5}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 380
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 389
    :cond_1a
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v3, :cond_1b

    .line 390
    const-string v0, "caf-focus-mode"

    const-string v3, "face"

    invoke-virtual {v4, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 391
    :cond_1b
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v3, :cond_1c

    .line 392
    const-string v0, "caf-focus-mode"

    const-string v3, "facetouch"

    invoke-virtual {v4, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 394
    :cond_1c
    const-string v0, "caf-focus-mode"

    const-string v3, "default"

    invoke-virtual {v4, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 409
    :cond_1d
    const-string v0, "continuous-video"

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 418
    :cond_1e
    sget-object v0, Lcom/htc/camera/component/AutoFocusController;->m_EmptyAreas:Ljava/util/ArrayList;

    move-object v1, v0

    goto/16 :goto_9

    .line 433
    :cond_1f
    iget v8, v0, Landroid/graphics/Rect;->right:I

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_13

    .line 435
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v9, v9, -0x3e8

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 436
    const/16 v8, 0x3e8

    iput v8, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_b

    .line 443
    :cond_20
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_14

    .line 445
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v9, v9, -0x3e8

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 446
    const/16 v8, 0x3e8

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    :cond_21
    move-object v0, v3

    .line 464
    :goto_d
    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 510
    :goto_e
    sget-object v0, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v6, v0, :cond_22

    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_22

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-nez v0, :cond_23

    .line 511
    :cond_22
    invoke-virtual {v4}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 514
    :cond_23
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_24

    .line 515
    const-string v0, "TOUCH_FOCUS"

    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 518
    :cond_24
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, v7}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 519
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusFinishedEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 525
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 460
    :cond_25
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - No metering areas, use screen center as default area"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 462
    sget-object v1, Lcom/htc/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 507
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 508
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_e

    .line 530
    :cond_27
    iget-object v0, v5, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_29

    .line 532
    invoke-virtual {v4}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 533
    invoke-virtual {v4, v2}, Lcom/htc/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 534
    :cond_28
    invoke-virtual {v4, v2}, Lcom/htc/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 544
    :goto_f
    const-string v0, "auto"

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v4}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 548
    const/16 v2, 0x2712

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/AutoFocusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto/16 :goto_0

    .line 540
    :cond_29
    invoke-virtual {v4}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 541
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 542
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_f

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private autoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v2, v2, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v3, v3, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 209
    iput-object v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 210
    iput-object v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 211
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->removeMessages(I)V

    .line 214
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0
.end method

.method private cancelAllAutoFocus()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus(Z)V

    .line 655
    return-void
.end method

.method private cancelAllAutoFocus(Z)V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->cancelAutoFocus(Lcom/htc/camera/Handle;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 662
    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 664
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->removeMessages(I)V

    .line 665
    return-void
.end method

.method private cancelAutoFocusDirectly()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocusDirectly()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocusDirectly - Camera.cancelAutoFocus();"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocusDirectly() - Failed to cancel auto-focus"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private disableCAF(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "disableCAF() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 704
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "disableCAF() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "disableCAF() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 716
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "disableCAF() - Locking auto-focus, change focus mode later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 724
    if-nez v0, :cond_3

    .line 726
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "disableCAF() - Camera is not open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_3
    const-string v1, "caf-focus-mode"

    const-string v2, "touch"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "disableCAF() - Change focus mode to auto"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private enableCAF(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableCAF() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 775
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableCAF() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 784
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableCAF() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableCAF() isAutoFocusLocked is true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 794
    if-nez v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableCAF() - Camera is not open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :cond_3
    sget-object v1, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 810
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCAF() - Unknown camera mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :pswitch_0
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 813
    :goto_1
    const-string v1, "caf-focus-mode"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 807
    :pswitch_1
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCAF() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isInCenter(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1008
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1018
    :cond_1
    :goto_0
    return v0

    .line 1010
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 1013
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1014
    if-nez v0, :cond_3

    move v0, v1

    .line 1015
    goto :goto_0

    .line 1017
    :cond_3
    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1018
    sget-object v1, Lcom/htc/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private lockAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1050
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1053
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1067
    iput-boolean v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 1068
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1071
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus(Z)V

    .line 1077
    :goto_1
    sget-object v0, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1074
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus()V

    goto :goto_1
.end method

.method private onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    .locals 6

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished("

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1087
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Handle : \'"

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1090
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eq v0, p1, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Current handle : \'"

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v2, v2, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1132
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Current handle : \'null\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_2

    .line 1102
    const-string v0, "TOUCH_FOCUS"

    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 1105
    :cond_2
    sget-object v0, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1125
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 1128
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusFinishedEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    .line 1131
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0

    .line 1109
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Auto-focus locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 1111
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Change focus mode to auto"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_4

    .line 1117
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_1

    .line 1121
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Camera is not open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V
    .locals 4

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1155
    return-void
.end method

.method private raiseAutoFocusFinishedEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    .locals 4

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1163
    return-void
.end method

.method private scheduleAutoFocus()V
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1171
    const/16 v0, 0x2711

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/component/AutoFocusController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1177
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "scheduleAutoFocus() - No more pending auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startAutoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V
    .locals 7

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eq p1, v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :goto_0
    return-void

    .line 1197
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_1

    .line 1202
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_5

    .line 1203
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 1206
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    .line 1208
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Set focus mode to continuous"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Auto focus"

    const-wide/16 v2, 0x3a98

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController;->m_AfCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    .line 1217
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_3

    .line 1218
    const-string v0, "TOUCH_FOCUS"

    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 1221
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1223
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Is manual mode, skip auto focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$16;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/AutoFocusController$16;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1251
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1253
    :catch_0
    move-exception v0

    .line 1255
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "startAutoFocus() - Failed to start auto-focus"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1256
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1258
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    goto/16 :goto_0

    .line 1205
    :cond_5
    :try_start_1
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1237
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Camera.autoFocus()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/AutoFocusController$17;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/component/AutoFocusController$17;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->autoFocus(Lcom/htc/camera/g;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private unlockAutoFocusInternal(Lcom/htc/camera/Handle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1292
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocusInternal() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1295
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocusInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocusInternal() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1303
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    iput-boolean v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 1307
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1310
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 1315
    sget-object v2, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1321
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockAutoFocusInternal() - Cannot unlock AF, taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1326
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1328
    sget-object v1, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1337
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockAutoFocusInternal() - Unknown camera mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1331
    :pswitch_2
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 1340
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1344
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus()V

    .line 1347
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    goto/16 :goto_0

    .line 1334
    :pswitch_3
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/htc/camera/Handle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/htc/camera/Handle;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/camera/component/AutoFocusController$FocusHandle;-><init>(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)V

    .line 173
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Create new handle : \'"

    iget-object v3, v0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->autoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 191
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v1, Lcom/htc/camera/component/AutoFocusController$3;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/component/AutoFocusController$3;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 559
    if-nez p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 564
    :cond_0
    instance-of v0, p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-nez v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/AutoFocusController$5;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->threadAccessCheck()V

    .line 586
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-ne v0, p1, :cond_7

    .line 598
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 599
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 602
    :cond_4
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->removeMessages(I)V

    .line 603
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_5

    .line 608
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_5
    :goto_1
    iput-object v4, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 618
    iput-object v4, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 622
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    .line 631
    :cond_6
    check-cast p1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 612
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Failed to cancel auto-focus"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 624
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 626
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public disableContinuousAutoFocus()Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v2, "DisableCAF"

    invoke-direct {v0, v2}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v3, "disableContinuousAutoFocus() - Create handle :"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 677
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    new-instance v2, Lcom/htc/camera/component/AutoFocusController$6;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/component/AutoFocusController$6;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "disableContinuousAutoFocus() - Fail to perform cross-thread operation"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 697
    :cond_0
    :goto_0
    return-object v0

    .line 693
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->disableCAF(Lcom/htc/camera/Handle;)V

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "disableContinuousAutoFocus() - Continuous AF is not supported on this device"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 697
    goto :goto_0
.end method

.method public enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 745
    if-nez p1, :cond_1

    .line 747
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableContinuousAutoFocus() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableContinuousAutoFocus() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 753
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$7;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/AutoFocusController$7;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "enableContinuousAutoFocus() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->enableCAF(Lcom/htc/camera/Handle;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 841
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 862
    invoke-super {p0, p1}, Lcom/htc/camera/IAutoFocusController;->handleMessage(Landroid/os/Message;)V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 844
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-nez v0, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->autoFocus()V

    goto :goto_0

    .line 849
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->startAutoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    goto :goto_0

    .line 853
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/AutoFocusEventArgs;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v2, v2, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v3, v3, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/htc/camera/AutoFocusMode;Lcom/htc/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 855
    iput-object v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_FocusMovinghandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 856
    iput-object v6, p0, Lcom/htc/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    .line 857
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 874
    invoke-super {p0}, Lcom/htc/camera/IAutoFocusController;->initializeOverride()V

    .line 877
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 878
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 881
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 882
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFocusController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFocusController$8;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 891
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFocusController$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFocusController$9;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 919
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFocusController$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFocusController$10;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 941
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->previewStoppingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFocusController$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFocusController$11;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 950
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFocusController$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFocusController$12;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/AutoFocusController$13;

    iget-object v3, v1, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/AutoFocusController$13;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoFocusController$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoFocusController$14;-><init>(Lcom/htc/camera/component/AutoFocusController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1000
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1001
    return-void
.end method

.method public lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 7

    .prologue
    .line 1029
    new-instance v6, Lcom/htc/camera/Handle;

    invoke-direct {v6, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Create handle : \'"

    iget-object v2, v6, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    invoke-direct {p0, v6}, Lcom/htc/camera/component/AutoFocusController;->lockAutoFocus(Lcom/htc/camera/Handle;)V

    .line 1046
    :goto_0
    return-object v6

    .line 1037
    :cond_0
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$15;

    invoke-direct {v0, p0, v6}, Lcom/htc/camera/component/AutoFocusController$15;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 1140
    invoke-super {p0, p1}, Lcom/htc/camera/IAutoFocusController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1142
    instance-of v0, p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "onMonitoredComponentAdded() - Set IManualCaptureController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    check-cast p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 1147
    :cond_0
    return-void
.end method

.method public unlockAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 1269
    if-nez p1, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocus() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFocusController;->unlockAutoFocusInternal(Lcom/htc/camera/Handle;)V

    goto :goto_0

    .line 1280
    :cond_1
    new-instance v0, Lcom/htc/camera/component/AutoFocusController$18;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/AutoFocusController$18;-><init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
