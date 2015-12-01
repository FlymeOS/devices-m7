.class public abstract Lcom/htc/camera/component/CameraComponent;
.super Lcom/htc/camera/component/Component;
.source "CameraComponent.java"


# static fields
.field private static final ROTATION_FLAG_ENABLE_FAKE_ROTATION:I = 0x2

.field private static final ROTATION_FLAG_ENABLE_ROTATION_CHANGE:I = 0x1

.field public static final UI_FADE_IN_DURATION:I = 0x190

.field public static final UI_FADE_OUT_DURATION:I = 0x190

.field public static final UI_FAKE_ROTATION_TIMEOUT:I = 0x3e8

.field public static final UI_ROTATE_DURATION:I = 0x190


# instance fields
.field private m_BaseLayout:Landroid/view/View;

.field private m_BaseLayoutID:I

.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private final m_CameraThread:Lcom/htc/camera/CameraThread;

.field private m_ContentLayout:Landroid/view/View;

.field private m_ContentLayoutID:I

.field private final m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

.field private final m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_InflateViewAutomatically:Z

.field private m_IsContentLayoutPrepared:Z

.field private m_Resources:Landroid/content/res/Resources;

.field private final m_RotationChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotationFlags:I

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SettingsManager:Lcom/htc/camera/ISettingsManager;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-virtual {p3}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;II)V

    .line 112
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-virtual {p3}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;II)V

    .line 116
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;II)V
    .locals 7

    .prologue
    .line 119
    invoke-virtual {p3}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;II)V

    .line 120
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 123
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;II)V

    .line 124
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;I)V
    .locals 7

    .prologue
    .line 127
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;II)V

    .line 128
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;II)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraComponent;->m_InflateViewAutomatically:Z

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    .line 77
    new-instance v0, Lcom/htc/camera/component/CameraComponent$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraComponent$1;-><init>(Lcom/htc/camera/component/CameraComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    .line 96
    new-instance v0, Lcom/htc/camera/component/CameraComponent$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraComponent$2;-><init>(Lcom/htc/camera/component/CameraComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    .line 135
    if-nez p3, :cond_0

    .line 137
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cameraActivity\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    if-nez p4, :cond_1

    .line 142
    const-string v0, "cameraThread"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cameraThread\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iput-object p3, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 148
    iput-object p4, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 149
    iput p5, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayoutID:I

    .line 150
    iput p6, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayoutID:I

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 154
    invoke-virtual {p3}, Lcom/htc/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 155
    sget-object v0, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->UIThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_2
    if-ne v0, p4, :cond_3

    .line 157
    sget-object v0, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->CameraThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->Other:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CameraComponent;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CameraComponent;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    return v0
.end method

.method private linkToRotationManager(Lcom/htc/camera/IUIRotationManager;)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 577
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 579
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 584
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 587
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_3

    .line 589
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 591
    :cond_2
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 594
    :cond_3
    return-void
.end method


# virtual methods
.method protected final collapseContentLayout()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 169
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraComponent;->m_IsContentLayoutPrepared:Z

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_3

    .line 188
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 190
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 192
    :cond_1
    iput-object v2, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 198
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/htc/camera/component/CameraComponent;->m_Resources:Landroid/content/res/Resources;

    .line 199
    iput-object v2, p0, Lcom/htc/camera/component/CameraComponent;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 202
    invoke-super {p0}, Lcom/htc/camera/component/Component;->deinitializeOverride()V

    .line 203
    return-void

    .line 194
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    if-eqz v0, :cond_2

    .line 195
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected final disableAutoInflateView()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraComponent;->m_InflateViewAutomatically:Z

    .line 212
    return-void
.end method

.method protected final disableFakeUIRotation()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 221
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    goto :goto_0
.end method

.method protected final disableUIRotationChangeNotification()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 239
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    .line 246
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    goto :goto_0
.end method

.method protected final enableAutoInflateView()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraComponent;->m_InflateViewAutomatically:Z

    .line 257
    return-void
.end method

.method protected final enableFakeUIRotation()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 266
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    .line 273
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_2

    .line 279
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 280
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->TAG:Ljava/lang/String;

    const-string v1, "enableFakeUIRotation() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    goto :goto_0
.end method

.method protected final enableUIRotationChangeNotification()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 298
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    .line 305
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_2

    .line 311
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->TAG:Ljava/lang/String;

    const-string v1, "enableUIRotationChangeNotification() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    goto :goto_0
.end method

.method protected final getBaseLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 329
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayoutID:I

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayoutID:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    .line 332
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method protected final getCameraController()Lcom/htc/camera/CameraController;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyCameraThreadAccess()V

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraMode()Lcom/htc/camera/CameraMode;
    .locals 2

    .prologue
    .line 360
    sget-object v0, Lcom/htc/camera/component/CameraComponent$8;->$SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    .line 365
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getCameraThread()Lcom/htc/camera/CameraThread;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraThread:Lcom/htc/camera/CameraThread;

    return-object v0
.end method

.method protected final getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCameraType()Lcom/htc/camera/CameraType;
    .locals 2

    .prologue
    .line 393
    sget-object v0, Lcom/htc/camera/component/CameraComponent$8;->$SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 398
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final getColor(I)I
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayoutID:I

    return v0
.end method

.method public final getDependencyThreadType()Lcom/htc/camera/component/CameraComponent$DependencyThreadType;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    return-object v0
.end method

.method protected final getDimension(I)I
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final getFakeUIRotation()Lcom/htc/camera/rotate/UIRotation;
    .locals 2

    .prologue
    .line 449
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getMainThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 452
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 456
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_Resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_Resources:Landroid/content/res/Resources;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_Resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method protected final getSettings()Lcom/htc/camera/CameraSettings;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->CameraThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    if-ne v0, v1, :cond_0

    .line 477
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->TAG:Ljava/lang/String;

    const-string v1, "getSettings() - No ISettingsManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No ISettingsManager interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    return-object v0
.end method

.method protected final getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getUIRotation()Lcom/htc/camera/rotate/UIRotation;
    .locals 2

    .prologue
    .line 519
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getMainThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 522
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_2

    .line 525
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 528
    if-eqz v0, :cond_1

    .line 534
    :goto_0
    return-object v0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Lcom/htc/camera/component/Component;->initializeOverride()V

    .line 547
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->UIThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    if-ne v0, v1, :cond_1

    .line 550
    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 553
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    .line 554
    if-nez v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 564
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraComponent;->m_InflateViewAutomatically:Z

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getBaseLayout()Landroid/view/View;

    .line 567
    :cond_1
    return-void

    .line 560
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraComponent;->linkToRotationManager(Lcom/htc/camera/IUIRotationManager;)V

    goto :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 601
    if-eq p1, p2, :cond_0

    .line 602
    invoke-virtual {p0, p2, p1}, Lcom/htc/camera/component/CameraComponent;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 603
    :cond_0
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 610
    if-eq p1, p2, :cond_0

    .line 611
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/CameraComponent;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 612
    :cond_0
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0}, Lcom/htc/camera/component/Component;->onInitialized()V

    .line 624
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 627
    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CameraComponent;->onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 630
    :cond_0
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 639
    invoke-super {p0, p1}, Lcom/htc/camera/component/Component;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 642
    instance-of v0, p1, Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I

    if-eqz v0, :cond_0

    .line 645
    check-cast p1, Lcom/htc/camera/IUIRotationManager;

    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraComponent;->linkToRotationManager(Lcom/htc/camera/IUIRotationManager;)V

    .line 646
    :cond_0
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponent;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 648
    :cond_1
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method protected final prepareContentLayout()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 915
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 916
    iget-boolean v1, p0, Lcom/htc/camera/component/CameraComponent;->m_IsContentLayoutPrepared:Z

    if-eqz v1, :cond_1

    .line 917
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    .line 942
    :cond_0
    :goto_0
    return-object v0

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getContentLayoutID()I

    move-result v1

    .line 919
    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getBaseLayout()Landroid/view/View;

    .line 924
    iget-object v2, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 926
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->TAG:Ljava/lang/String;

    const-string v1, "Base layout must be a ViewGroup"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    if-nez v2, :cond_3

    .line 933
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    .line 934
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 935
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraComponent;->m_IsContentLayoutPrepared:Z

    .line 942
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayout:Landroid/view/View;

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 682
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FF)V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFLjava/lang/Runnable;)V

    .line 678
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FFI)V
    .locals 6

    .prologue
    .line 689
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FFIII)V
    .locals 3

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 830
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 831
    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p6

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 832
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 833
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 834
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 835
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 838
    :cond_0
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 780
    if-eqz p1, :cond_1

    .line 782
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 783
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 784
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 785
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 787
    if-eqz p5, :cond_0

    .line 789
    if-lez p4, :cond_2

    .line 792
    new-instance v1, Lcom/htc/camera/component/CameraComponent$3;

    invoke-direct {v1, p0, p5}, Lcom/htc/camera/component/CameraComponent$3;-><init>(Lcom/htc/camera/component/CameraComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 823
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 825
    :cond_1
    return-void

    .line 820
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;FFLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 767
    const/16 v4, 0x190

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 768
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FI)V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FILjava/lang/Runnable;)V

    .line 686
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FILjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 775
    if-eqz p1, :cond_0

    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 777
    :cond_0
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 771
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FILjava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 661
    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;II)V
    .locals 6

    .prologue
    .line 697
    const/16 v3, 0x190

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;III)V

    .line 698
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;III)V
    .locals 7

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 725
    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v3, v0

    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    .line 729
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 731
    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    .line 732
    sub-float/2addr v3, v4

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 736
    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFIII)V

    .line 738
    :cond_1
    return-void

    .line 734
    :cond_2
    sub-float/2addr v2, v4

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 709
    if-eqz p1, :cond_1

    .line 711
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v3, v0

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    .line 713
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 715
    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    .line 716
    sub-float/2addr v3, v4

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    .line 720
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 722
    :cond_1
    return-void

    .line 718
    :cond_2
    sub-float/2addr v2, v4

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 6

    .prologue
    .line 665
    const/16 v4, 0x190

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 666
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V
    .locals 6

    .prologue
    .line 673
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;II)V
    .locals 7

    .prologue
    .line 705
    const/16 v4, 0x190

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;III)V

    .line 706
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;III)V
    .locals 7

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 754
    invoke-virtual {p3}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v3, v0

    .line 755
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v2, v0

    .line 756
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 758
    cmpl-float v0, v3, v2

    if-lez v0, :cond_1

    .line 759
    sub-float/2addr v3, v4

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    .line 763
    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFIII)V

    .line 764
    return-void

    .line 761
    :cond_1
    sub-float/2addr v2, v4

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 741
    invoke-virtual {p3}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v3, v0

    .line 742
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v2, v0

    .line 743
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 745
    cmpl-float v0, v3, v2

    if-lez v0, :cond_1

    .line 746
    sub-float/2addr v3, v4

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v5, p5

    .line 750
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 751
    return-void

    .line 748
    :cond_1
    sub-float/2addr v2, v4

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 701
    const/16 v4, 0x190

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 693
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/camera/component/CameraComponent;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method protected final setBaseLayoutId(I)V
    .locals 0

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 855
    iput p1, p0, Lcom/htc/camera/component/CameraComponent;->m_BaseLayoutID:I

    .line 856
    return-void
.end method

.method protected final setContentLayoutId(I)V
    .locals 0

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->verifyUIThreadAccess()V

    .line 864
    iput p1, p0, Lcom/htc/camera/component/CameraComponent;->m_ContentLayoutID:I

    .line 865
    return-void
.end method

.method protected showAlphaRotateAnimation(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/component/n;)V
    .locals 3

    .prologue
    .line 873
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 880
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 881
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 882
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 883
    new-instance v1, Lcom/htc/camera/component/CameraComponent$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/htc/camera/component/CameraComponent$4;-><init>(Lcom/htc/camera/component/CameraComponent;Lcom/htc/camera/component/n;Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 896
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected showAlphaRotateAnimation(Lcom/htc/camera/rotate/RotateRelativeLayout;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 900
    new-instance v0, Lcom/htc/camera/component/CameraComponent$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraComponent$5;-><init>(Lcom/htc/camera/component/CameraComponent;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/component/CameraComponent;->showAlphaRotateAnimation(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/component/n;)V

    .line 907
    return-void
.end method

.method protected showUI(Landroid/view/View;ZI)V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/CameraComponent;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    .line 959
    return-void
.end method

.method protected showUI(Landroid/view/View;ZILjava/lang/Runnable;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->threadAccessCheck()V

    .line 966
    if-nez p1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    if-eqz p2, :cond_3

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    if-lez p3, :cond_2

    .line 977
    invoke-static {p1, v2, v3, v1, p3}, Lcom/htc/camera/a;->a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 978
    if-eqz p4, :cond_0

    .line 980
    new-instance v1, Lcom/htc/camera/component/CameraComponent$6;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/component/CameraComponent$6;-><init>(Lcom/htc/camera/component/CameraComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 998
    if-eqz p4, :cond_0

    .line 999
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1005
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    if-lez p3, :cond_4

    .line 1010
    invoke-static {p1, v3, v2, v1, p3}, Lcom/htc/camera/a;->a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1011
    if-eqz p4, :cond_0

    .line 1013
    new-instance v1, Lcom/htc/camera/component/CameraComponent$7;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/component/CameraComponent$7;-><init>(Lcom/htc/camera/component/CameraComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1030
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1031
    if-eqz p4, :cond_0

    .line 1032
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/CameraComponent;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 951
    return-void
.end method

.method protected showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 954
    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/htc/camera/component/CameraComponent;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    .line 955
    return-void

    .line 954
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final transferView(Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 841
    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 844
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p4

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 845
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 846
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 848
    :cond_0
    return-void
.end method

.method protected final verifyCameraThreadAccess()V
    .locals 2

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->threadAccessCheck()V

    .line 1044
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->CameraThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    if-eq v0, v1, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The method can only be accessed by camera thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    return-void
.end method

.method protected final verifyUIThreadAccess()V
    .locals 2

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraComponent;->threadAccessCheck()V

    .line 1054
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent;->m_DependencyThreadType:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->UIThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    if-eq v0, v1, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The method can only be accessed by UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_0
    return-void
.end method
