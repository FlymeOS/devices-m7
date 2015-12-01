.class public Lcom/htc/camera/effect/FastFullHDScene;
.super Lcom/htc/camera/effect/VideoSceneBase;
.source "FastFullHDScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ad;


# static fields
.field private static final m_SupportTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/effect/FastFullHDScene;->m_SupportTable:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 20
    const-string v0, "fullhd_60fps_video"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/VideoSceneBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/htc/camera/effect/FastFullHDScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 28
    sget-object v1, Lcom/htc/camera/effect/FastFullHDScene;->m_SupportTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/htc/camera/effect/FastFullHDScene;->m_SupportTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 39
    :goto_0
    if-eqz v1, :cond_3

    .line 40
    const/16 v1, 0x30

    .line 41
    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    const/16 v0, 0x31

    .line 47
    :goto_1
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/FastFullHDScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v3

    .line 33
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->isVideo1080p60fpsSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 34
    :goto_2
    if-nez v3, :cond_2

    .line 35
    iget-object v3, p0, Lcom/htc/camera/effect/FastFullHDScene;->TAG:Ljava/lang/String;

    const-string v4, "Camera controller is null"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 33
    goto :goto_2

    .line 37
    :cond_2
    sget-object v3, Lcom/htc/camera/effect/FastFullHDScene;->m_SupportTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/FastFullHDScene;->TAG:Ljava/lang/String;

    const-string v1, "1080P 60 fps video recording is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 47
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/camera/effect/FastFullHDScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f080209

    return v0
.end method
