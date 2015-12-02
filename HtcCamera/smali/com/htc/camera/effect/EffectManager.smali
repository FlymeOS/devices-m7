.class final Lcom/htc/camera/effect/EffectManager;
.super Lcom/htc/camera/effect/IEffectManager;
.source "EffectManager.java"


# static fields
.field private static final m_EffectFactories:[Lcom/htc/camera/effect/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/effect/o",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final m_AllEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AllScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AllVideoScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

.field private m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

.field private m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

.field private final m_EffectContextHandles:Lcom/htc/camera/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/s",
            "<",
            "Lcom/htc/camera/effect/EffectManager$EffectContextHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_HasZoeScene:Z

.field private m_IsSelfTimerDisabled:Z

.field private m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;

.field private m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;

.field private m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_NeedToApplyEffectAgain:Z

.field private m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

.field private m_NormalVideoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_ZoeScene:Lcom/htc/camera/effect/EffectBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/htc/camera/effect/o;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/effect/j;

    invoke-direct {v2}, Lcom/htc/camera/effect/j;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/effect/bh;

    invoke-direct {v2}, Lcom/htc/camera/effect/bh;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/effect/i;

    invoke-direct {v2}, Lcom/htc/camera/effect/i;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/effect/k;

    invoke-direct {v2}, Lcom/htc/camera/effect/k;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/camera/effect/bb;

    invoke-direct {v2}, Lcom/htc/camera/effect/bb;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/htc/camera/effect/aj;

    invoke-direct {v2}, Lcom/htc/camera/effect/aj;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/htc/camera/effect/bl;

    invoke-direct {v2}, Lcom/htc/camera/effect/bl;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/camera/effect/bn;

    invoke-direct {v2}, Lcom/htc/camera/effect/bn;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/htc/camera/effect/bj;

    invoke-direct {v2}, Lcom/htc/camera/effect/bj;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/htc/camera/effect/w;

    invoke-direct {v2}, Lcom/htc/camera/effect/w;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/htc/camera/effect/ax;

    invoke-direct {v2}, Lcom/htc/camera/effect/ax;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/htc/camera/effect/al;

    invoke-direct {v2}, Lcom/htc/camera/effect/al;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/htc/camera/effect/ba;

    invoke-direct {v2}, Lcom/htc/camera/effect/ba;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/htc/camera/effect/as;

    invoke-direct {v2}, Lcom/htc/camera/effect/as;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/htc/camera/effect/b;

    invoke-direct {v2}, Lcom/htc/camera/effect/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/htc/camera/effect/ah;

    invoke-direct {v2}, Lcom/htc/camera/effect/ah;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/htc/camera/effect/x;

    invoke-direct {v2}, Lcom/htc/camera/effect/x;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/htc/camera/effect/ao;

    invoke-direct {v2}, Lcom/htc/camera/effect/ao;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/htc/camera/sina/b;

    invoke-direct {v2}, Lcom/htc/camera/sina/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/htc/camera/effect/r;

    invoke-direct {v2}, Lcom/htc/camera/effect/r;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/htc/camera/manualcapture/b;

    invoke-direct {v2}, Lcom/htc/camera/manualcapture/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/htc/camera/effect/aq;

    invoke-direct {v2}, Lcom/htc/camera/effect/aq;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/htc/camera/effect/af;

    invoke-direct {v2}, Lcom/htc/camera/effect/af;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/htc/camera/effect/d;

    invoke-direct {v2}, Lcom/htc/camera/effect/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/htc/camera/effect/bd;

    invoke-direct {v2}, Lcom/htc/camera/effect/bd;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/htc/camera/effect/f;

    invoke-direct {v2}, Lcom/htc/camera/effect/f;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/htc/camera/effect/ay;

    invoke-direct {v2}, Lcom/htc/camera/effect/ay;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/htc/camera/effect/t;

    invoke-direct {v2}, Lcom/htc/camera/effect/t;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/htc/camera/effect/s;

    invoke-direct {v2}, Lcom/htc/camera/effect/s;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/htc/camera/effect/y;

    invoke-direct {v2}, Lcom/htc/camera/effect/y;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/effect/EffectManager;->m_EffectFactories:[Lcom/htc/camera/effect/o;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 163
    const-string v0, "Effect Manager"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/htc/camera/effect/IEffectManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 114
    new-instance v0, Lcom/htc/camera/s;

    invoke-direct {v0}, Lcom/htc/camera/s;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    .line 166
    if-nez p1, :cond_0

    .line 168
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraActivity is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectManager;->m_HasZoeScene:Z

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v0, Lcom/htc/camera/effect/am;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/am;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/SmartSceneDetectorScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectManager;->m_HasZoeScene:Z

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lcom/htc/camera/effect/ZoeScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/ZoeScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_ZoeScene:Lcom/htc/camera/effect/EffectBase;

    .line 183
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_ZoeScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    new-instance v0, Lcom/htc/camera/effect/AutoScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/AutoScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    .line 186
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/htc/camera/effect/an;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/an;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 189
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 190
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 193
    :goto_1
    sget-object v2, Lcom/htc/camera/effect/EffectManager;->m_EffectFactories:[Lcom/htc/camera/effect/o;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 195
    sget-object v2, Lcom/htc/camera/effect/EffectManager;->m_EffectFactories:[Lcom/htc/camera/effect/o;

    aget-object v6, v2, v0

    .line 198
    :try_start_0
    invoke-virtual {v6, p1}, Lcom/htc/camera/effect/o;->c(Lcom/htc/camera/HTCCamera;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v6, p1}, Lcom/htc/camera/effect/o;->b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v2

    .line 204
    instance-of v7, v2, Lcom/htc/camera/effect/z;

    if-eqz v7, :cond_4

    .line 205
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_4
    instance-of v7, v2, Lcom/htc/camera/effect/ab;

    if-eqz v7, :cond_5

    .line 207
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v2

    .line 216
    iget-object v7, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create effect by factory \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 208
    :cond_5
    :try_start_1
    instance-of v7, v2, Lcom/htc/camera/effect/ad;

    if-eqz v7, :cond_6

    .line 209
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    :cond_6
    iget-object v7, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot categorize \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 219
    :cond_7
    iput-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    .line 220
    iput-object v4, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    .line 221
    iput-object v5, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    .line 225
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 226
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 227
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NormalVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 228
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_video_scene"

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v3}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lcom/htc/camera/effect/EffectContext;

    invoke-direct {v0, v10, v1}, Lcom/htc/camera/effect/EffectContext;-><init>(Lcom/htc/camera/effect/h;I)V

    .line 232
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 233
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 234
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 235
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 236
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 237
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 238
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 239
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 240
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    new-instance v3, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    invoke-direct {v3, p0, v0}, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;-><init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectContext;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-direct {p0, v1}, Lcom/htc/camera/effect/EffectManager;->reset(Z)V

    .line 243
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default scene : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default effect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    const-string v1, "scene-mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/ZoeScene;

    if-eqz v0, :cond_8

    .line 250
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "Apply Zoe scene first"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v10}, Lcom/htc/camera/effect/EffectBase;->apply(Lcom/htc/camera/effect/EffectBase;)V

    .line 255
    :cond_8
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->initialize()V

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectManager$EffectContextHandle;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/effect/EffectManager;->deleteEffectContext(Lcom/htc/camera/effect/EffectManager$EffectContextHandle;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/effect/EffectManager;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectManager;->updateDefaultEffectAndScene()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/effect/EffectManager;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectManager;->setupCurrentEffectAndScene(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/s;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectBase;)Lcom/htc/camera/effect/EffectBase;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/camera/effect/EffectManager;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectBase;)Lcom/htc/camera/effect/EffectBase;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/effect/EffectManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/effect/EffectManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/effect/EffectManager;->prepareEffectForNewMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/effect/EffectManager;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectManager;->reset(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/effect/EffectManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method

.method private applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 8

    .prologue
    .line 264
    instance-of v7, p1, Lcom/htc/camera/effect/z;

    .line 265
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;

    move-object v6, v0

    .line 268
    :goto_0
    if-ne v6, p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z

    if-nez v0, :cond_1

    .line 300
    :goto_1
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;

    move-object v6, v0

    goto :goto_0

    .line 272
    :cond_1
    if-eqz v6, :cond_2

    .line 274
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - Cancel "

    if-eqz v7, :cond_5

    const-string v2, "effect"

    :goto_2
    const-string v3, " \'"

    invoke-virtual {v6}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->willRestartPreviewAfterApplying()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 276
    :goto_3
    invoke-virtual {v6, p1, v0}, Lcom/htc/camera/effect/EffectBase;->prepareCancel(Lcom/htc/camera/effect/EffectBase;I)V

    .line 277
    invoke-virtual {v6, p1}, Lcom/htc/camera/effect/EffectBase;->cancel(Lcom/htc/camera/effect/EffectBase;)V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->effectCanceledEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->effectCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v1, v6}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 283
    :cond_2
    if-eqz p1, :cond_4

    .line 285
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - Apply "

    if-eqz v7, :cond_7

    const-string v2, "effect"

    :goto_4
    const-string v3, " \'"

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    instance-of v0, p1, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectManager;->resetImageSettings()V

    .line 292
    :cond_3
    invoke-virtual {p1, v6}, Lcom/htc/camera/effect/EffectBase;->apply(Lcom/htc/camera/effect/EffectBase;)V

    .line 293
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->effectAppliedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->effectAppliedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 296
    :cond_4
    if-eqz v7, :cond_8

    .line 297
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1

    .line 274
    :cond_5
    const-string v2, "scene"

    goto :goto_2

    .line 275
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 285
    :cond_7
    const-string v2, "scene"

    goto :goto_4

    .line 299
    :cond_8
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1
.end method

.method private applyVideoScene(Lcom/htc/camera/effect/EffectBase;)V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 312
    if-ne v0, p1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 317
    :cond_0
    if-eqz v0, :cond_1

    .line 319
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyVideoScene() - Cancel video scene, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/EffectBase;->cancel(Lcom/htc/camera/effect/EffectBase;)V

    .line 321
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->effectCanceledEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->effectCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v2, v0}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 325
    :cond_1
    invoke-virtual {p1, v0}, Lcom/htc/camera/effect/EffectBase;->apply(Lcom/htc/camera/effect/EffectBase;)V

    .line 328
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_0
.end method

.method private canEnableFlash(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/effect/EffectBase;)Z
    .locals 1

    .prologue
    .line 1759
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/htc/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/htc/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteEffectContext(Lcom/htc/camera/effect/EffectManager$EffectContextHandle;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0, p1}, Lcom/htc/camera/s;->a(Lcom/htc/camera/Handle;)Z

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v1, p1}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteEffectContext() - Handle : "

    const-string v4, ", flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, p1, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 428
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 429
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_6

    iget-object v1, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 431
    :goto_1
    if-eqz v1, :cond_3

    .line 432
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 435
    :cond_3
    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 436
    iget-object v4, p1, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 437
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_4

    .line 439
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 440
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 441
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 442
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 444
    :cond_4
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_5

    .line 446
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 447
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 448
    iget-object v5, v4, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v5, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 449
    iget-object v4, v4, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v4, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 453
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectManager;->updateDefaultEffectAndScene()V

    .line 454
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->setupCurrentEffectAndScene(I)V

    .line 457
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v3, v2}, Lcom/htc/camera/HTCCamera;->startPreview(Z)Z

    goto :goto_0

    :cond_6
    move v1, v2

    .line 429
    goto :goto_1
.end method

.method private findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/camera/effect/EffectBase;"
        }
    .end annotation

    .prologue
    .line 467
    if-eqz p2, :cond_1

    .line 469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findEffectClass(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 520
    if-eqz p1, :cond_1

    .line 522
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 524
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 525
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 529
    :goto_1
    return-object v0

    .line 522
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getEffectList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    const/16 v0, 0x10

    const/4 v2, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v3

    .line 540
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 541
    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v3, v4, :cond_1

    :goto_0
    move v1, v0

    .line 553
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    .line 555
    sget-object v3, Lcom/htc/camera/effect/EffectManager$10;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 567
    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEffectList() - Unknown camera type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 573
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 574
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 576
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 577
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v5

    .line 578
    and-int v6, v5, v1

    if-ne v6, v1, :cond_0

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_0

    .line 579
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v0, v1

    .line 541
    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v3

    .line 545
    iget-boolean v4, v3, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v4, :cond_5

    .line 547
    :goto_4
    iget-boolean v3, v3, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v3, :cond_4

    .line 549
    :goto_5
    or-int/lit8 v0, v0, 0x40

    move v1, v0

    goto :goto_1

    .line 558
    :pswitch_0
    const/4 v0, 0x1

    move v3, v0

    .line 559
    goto :goto_2

    .line 561
    :pswitch_1
    const/4 v0, 0x2

    move v3, v0

    .line 562
    goto :goto_2

    .line 564
    :pswitch_2
    const/4 v0, 0x4

    move v3, v0

    .line 565
    goto :goto_2

    .line 581
    :cond_3
    return-object v4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v1, v2

    goto :goto_4

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z
    .locals 2

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    return v0
.end method

.method private isEffectSupported(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 815
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 816
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/htc/camera/effect/EffectBase;->isCameraTypeSupported(Lcom/htc/camera/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p3}, Lcom/htc/camera/effect/EffectBase;->isCameraModeSupported(Lcom/htc/camera/CameraMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->isServiceModeSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 820
    :goto_0
    if-eqz v2, :cond_2

    .line 826
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 816
    goto :goto_0

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEffectSupported() - Effect/scene \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' is not supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEffectSupported() - Camera type : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEffectSupported() - Camera mode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEffectSupported() - Service mode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 826
    goto :goto_1
.end method

.method private prepareEffectForNewMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V
    .locals 12

    .prologue
    .line 958
    if-eqz p3, :cond_0

    .line 959
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "prepareEffectForNewMode() - Reset effect and scene"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/htc/camera/effect/EffectBase;

    .line 963
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/htc/camera/effect/EffectBase;

    .line 964
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/htc/camera/effect/EffectBase;

    .line 966
    if-eqz p3, :cond_c

    .line 968
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 969
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    .line 970
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    move-object v3, v0

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v4, "prepareEffectForNewMode() - Next effect : "

    invoke-static {v0, v4, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v4, "prepareEffectForNewMode() - Next scene : "

    invoke-static {v0, v4, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 985
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v4, "prepareEffectForNewMode() - Next video scene : "

    invoke-static {v0, v4, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 988
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    if-eq v0, p1, :cond_d

    const/4 v0, 0x1

    move v4, v0

    .line 989
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    if-eq v0, p2, :cond_e

    const/4 v0, 0x1

    move v5, v0

    .line 992
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v9

    .line 993
    iget-object v0, v9, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_1
    const/4 v0, 0x1

    move v9, v0

    .line 994
    :goto_3
    if-eqz v9, :cond_10

    const/4 v0, 0x0

    .line 995
    :goto_4
    if-eqz v4, :cond_2

    .line 996
    or-int/lit8 v0, v0, 0x2

    .line 997
    :cond_2
    if-eqz v5, :cond_3

    .line 998
    or-int/lit8 v0, v0, 0x4

    .line 999
    :cond_3
    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_4

    .line 1001
    iget-object v10, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v11, "prepareEffectForNewMode() - Cancel effect : "

    invoke-static {v10, v11, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1002
    invoke-virtual {v6, v3, v0}, Lcom/htc/camera/effect/EffectBase;->prepareCancel(Lcom/htc/camera/effect/EffectBase;I)V

    .line 1003
    invoke-virtual {v6, v3}, Lcom/htc/camera/effect/EffectBase;->cancel(Lcom/htc/camera/effect/EffectBase;)V

    .line 1005
    :cond_4
    if-eqz v7, :cond_5

    if-eq v7, v1, :cond_5

    .line 1007
    iget-object v10, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v11, "prepareEffectForNewMode() - Cancel scene : "

    invoke-static {v10, v11, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {v7, v1, v0}, Lcom/htc/camera/effect/EffectBase;->prepareCancel(Lcom/htc/camera/effect/EffectBase;I)V

    .line 1009
    invoke-virtual {v7, v1}, Lcom/htc/camera/effect/EffectBase;->cancel(Lcom/htc/camera/effect/EffectBase;)V

    .line 1011
    :cond_5
    if-eqz v8, :cond_6

    if-eq v8, v2, :cond_6

    .line 1013
    iget-object v10, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v11, "prepareEffectForNewMode() - Cancel video scene : "

    invoke-static {v10, v11, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {v8, v2, v0}, Lcom/htc/camera/effect/EffectBase;->prepareCancel(Lcom/htc/camera/effect/EffectBase;I)V

    .line 1015
    invoke-virtual {v8, v2}, Lcom/htc/camera/effect/EffectBase;->cancel(Lcom/htc/camera/effect/EffectBase;)V

    .line 1019
    :cond_6
    if-eqz v9, :cond_11

    const/4 v0, 0x0

    .line 1020
    :goto_5
    if-eqz v4, :cond_7

    .line 1021
    or-int/lit8 v0, v0, 0x2

    .line 1022
    :cond_7
    if-eqz v5, :cond_8

    .line 1023
    or-int/lit8 v0, v0, 0x4

    .line 1024
    :cond_8
    if-eqz v3, :cond_9

    if-eq v6, v3, :cond_9

    .line 1026
    iget-object v4, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v5, "prepareEffectForNewMode() - Prepare applying effect : "

    invoke-static {v4, v5, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    invoke-virtual {v3, v6, v0}, Lcom/htc/camera/effect/EffectBase;->prepareApply(Lcom/htc/camera/effect/EffectBase;I)V

    .line 1029
    :cond_9
    if-eq v7, v1, :cond_a

    .line 1031
    if-eqz v1, :cond_12

    .line 1032
    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v4, "prepareEffectForNewMode() - Prepare applying scene : "

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    invoke-virtual {v1, v7, v0}, Lcom/htc/camera/effect/EffectBase;->prepareApply(Lcom/htc/camera/effect/EffectBase;I)V

    .line 1038
    :cond_a
    :goto_6
    if-eq v8, v2, :cond_b

    .line 1040
    if-eqz v2, :cond_13

    .line 1041
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "prepareEffectForNewMode() - Prepare applying video scene : "

    invoke-static {v1, v3, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1042
    invoke-virtual {v2, v7, v0}, Lcom/htc/camera/effect/EffectBase;->prepareApply(Lcom/htc/camera/effect/EffectBase;I)V

    .line 1047
    :cond_b
    :goto_7
    return-void

    .line 974
    :cond_c
    new-instance v3, Lcom/htc/camera/Reference;

    invoke-direct {v3}, Lcom/htc/camera/Reference;-><init>()V

    .line 975
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 976
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 977
    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/effect/EffectManager;->selectEffectAndScene(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)V

    .line 978
    iget-object v0, v3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 979
    iget-object v1, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 980
    iget-object v2, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v2, Lcom/htc/camera/effect/EffectBase;

    move-object v3, v0

    goto/16 :goto_0

    .line 988
    :cond_d
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    .line 989
    :cond_e
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_2

    .line 993
    :cond_f
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_3

    .line 994
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1019
    :cond_11
    const/4 v0, 0x1

    goto :goto_5

    .line 1036
    :cond_12
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "prepareEffectForNewMode() - nextScene is null"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1045
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "prepareEffectForNewMode() - nextVideoScene is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private reset(Z)V
    .locals 4

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1056
    iget-object v1, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1057
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1058
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1059
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1060
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1066
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectManager;->updateDefaultEffectAndScene()V

    .line 1068
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 1069
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1070
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isFrontCameraSceneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    :goto_0
    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1072
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 1074
    :goto_1
    if-eqz p1, :cond_1

    .line 1075
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1077
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1078
    return-void

    .line 1070
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v0, v1, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1
.end method

.method private resetImageSettings()V
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 341
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    const-string v0, "pref_camera_brightness"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 342
    iget-object v2, v1, Lcom/htc/camera/CameraSettings;->contrast:Lcom/htc/camera/property/Property;

    const-string v0, "pref_camera_contrast"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, v1, Lcom/htc/camera/CameraSettings;->saturation:Lcom/htc/camera/property/Property;

    const-string v0, "pref_camera_saturation"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, v1, Lcom/htc/camera/CameraSettings;->sharpness:Lcom/htc/camera/property/Property;

    const-string v0, "pref_camera_shaprness"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    const-string v0, "pref_camera_iso"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    const-string v0, "pref_camera_white_balance"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 361
    :goto_1
    new-instance v2, Lcom/htc/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 364
    const-string v0, "pref_camera_brightness"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 365
    const-string v0, "pref_camera_contrast"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 366
    const-string v0, "pref_camera_saturation"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 367
    const-string v0, "pref_camera_shaprness"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 370
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    const-string v0, "pref_camera_iso"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    .line 376
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    const-string v0, "pref_camera_white_balance"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 382
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 383
    if-eqz v0, :cond_0

    .line 384
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 385
    :cond_0
    return-void

    .line 350
    :cond_1
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    const-string v0, "pref_camera_iso_2nd"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 356
    :cond_2
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    const-string v0, "pref_camera_white_balance_2nd"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 373
    :cond_3
    const-string v0, "pref_camera_iso_2nd"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    goto :goto_2

    .line 379
    :cond_4
    const-string v0, "pref_camera_white_balance_2nd"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_3
.end method

.method private selectEffectAndScene(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/CameraMode;",
            "Lcom/htc/camera/Reference",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1086
    iget-object v3, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1088
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne p2, v0, :cond_7

    const/4 v0, 0x1

    .line 1089
    :goto_0
    iget-boolean v1, v3, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    .line 1090
    iget-boolean v4, v3, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    .line 1091
    iget-boolean v5, v3, Lcom/htc/camera/effect/EffectContext;->isEffectLocked:Z

    .line 1092
    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1095
    if-nez v1, :cond_9

    .line 1096
    if-eqz v0, :cond_8

    iget-object v1, v3, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    :goto_1
    move-object v2, v1

    .line 1101
    :goto_2
    if-nez v4, :cond_a

    .line 1102
    iget-object v1, v3, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1107
    :goto_3
    if-nez v5, :cond_c

    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/camera/effect/AutoScene;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v4, :cond_c

    .line 1108
    :cond_0
    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    :goto_4
    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    .line 1132
    :goto_5
    if-nez v2, :cond_1

    .line 1133
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1134
    :cond_1
    if-nez v1, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    .line 1136
    :cond_2
    if-nez v0, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1138
    :cond_3
    if-eqz p3, :cond_4

    .line 1139
    iput-object v2, p3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 1140
    :cond_4
    if-eqz p4, :cond_5

    .line 1141
    iput-object v1, p4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 1142
    :cond_5
    if-eqz p5, :cond_6

    .line 1143
    iput-object v0, p5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 1144
    :cond_6
    return-void

    .line 1088
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 1096
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1

    .line 1098
    :cond_9
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_2

    .line 1104
    :cond_a
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_3

    .line 1108
    :cond_b
    iget-object v0, v3, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_4

    .line 1110
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    .line 1115
    :cond_d
    if-nez v1, :cond_10

    .line 1116
    if-eqz v0, :cond_f

    iget-object v1, v3, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    :goto_6
    move-object v2, v1

    .line 1121
    :goto_7
    if-nez v4, :cond_11

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isFrontCameraVideoSceneEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1122
    iget-object v1, v3, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1127
    :goto_8
    if-nez v5, :cond_13

    if-eqz v2, :cond_e

    instance-of v4, v2, Lcom/htc/camera/effect/AutoScene;

    if-nez v4, :cond_e

    instance-of v4, v2, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v4, :cond_13

    .line 1128
    :cond_e
    if-eqz v0, :cond_12

    iget-object v0, v3, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    :goto_9
    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    .line 1116
    :cond_f
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_6

    .line 1118
    :cond_10
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_7

    .line 1124
    :cond_11
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_8

    .line 1128
    :cond_12
    iget-object v0, v3, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_9

    .line 1130
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5
.end method

.method private setupCurrentEffectAndScene(I)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1518
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setupCurrentEffectAndScene() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1522
    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1523
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v1, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1526
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v1, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1536
    :goto_0
    new-instance v3, Lcom/htc/camera/Reference;

    invoke-direct {v3}, Lcom/htc/camera/Reference;-><init>()V

    .line 1537
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 1538
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 1539
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/effect/EffectManager;->selectEffectAndScene(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)V

    .line 1540
    iget-object v0, v3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1541
    iget-object v1, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 1542
    iget-object v2, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v2, Lcom/htc/camera/effect/EffectBase;

    .line 1546
    sget-object v3, Lcom/htc/camera/effect/EffectManager$10;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1555
    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v4, "setupCurrentEffectAndScene() - Unknown camera mode"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :cond_0
    :goto_1
    if-eqz v6, :cond_4

    .line 1564
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1565
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->updateEffectList(Lcom/htc/camera/effect/EffectBase;)V

    .line 1568
    invoke-direct {p0, v1}, Lcom/htc/camera/effect/EffectManager;->updateSceneList(Lcom/htc/camera/effect/EffectBase;)V

    .line 1571
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateVideoSceneList(Lcom/htc/camera/effect/EffectBase;)V

    .line 1586
    :goto_2
    if-eqz v2, :cond_5

    instance-of v3, v2, Lcom/htc/camera/effect/an;

    if-nez v3, :cond_5

    .line 1590
    :goto_3
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateFlashState(Lcom/htc/camera/effect/EffectBase;)V

    .line 1591
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateSelfTimerState(Lcom/htc/camera/effect/EffectBase;)V

    .line 1592
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateFastShotToShotMode(Lcom/htc/camera/effect/EffectBase;)V

    .line 1595
    iput-boolean v7, p0, Lcom/htc/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z

    .line 1597
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setupCurrentEffectAndScene() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    return-void

    .line 1530
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v1, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1531
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v1, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_0

    .line 1549
    :pswitch_0
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/htc/camera/effect/AutoScene;

    if-nez v3, :cond_2

    instance-of v3, v1, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-nez v3, :cond_2

    move v3, v6

    :goto_4
    move v6, v3

    .line 1550
    goto :goto_1

    :cond_2
    move v3, v7

    .line 1549
    goto :goto_4

    .line 1552
    :pswitch_1
    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/htc/camera/effect/an;

    if-eqz v3, :cond_0

    :cond_3
    move v6, v7

    goto :goto_1

    .line 1576
    :cond_4
    invoke-direct {p0, v1}, Lcom/htc/camera/effect/EffectManager;->updateSceneList(Lcom/htc/camera/effect/EffectBase;)V

    .line 1579
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateVideoSceneList(Lcom/htc/camera/effect/EffectBase;)V

    .line 1582
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->updateEffectList(Lcom/htc/camera/effect/EffectBase;)V

    goto :goto_2

    .line 1588
    :cond_5
    if-eqz v1, :cond_6

    instance-of v2, v1, Lcom/htc/camera/effect/AutoScene;

    if-nez v2, :cond_6

    instance-of v2, v1, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-nez v2, :cond_6

    move-object v2, v1

    .line 1589
    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_3

    .line 1546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDefaultEffectAndScene()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1606
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1607
    iget-object v1, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1608
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1609
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    if-nez v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultEffectAndScene() - Default effect \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not supported in current state, use none effect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1618
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "updateDefaultEffectAndScene() - Default effect : "

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1621
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    .line 1622
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    if-nez v0, :cond_2

    .line 1624
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_camera_scene"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    iget-boolean v2, p0, Lcom/htc/camera/effect/EffectManager;->m_HasZoeScene:Z

    if-eqz v2, :cond_6

    const-string v2, "Zoe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1626
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_ZoeScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    .line 1634
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1636
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultEffectAndScene() - Default scene \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not supported in current state, use auto scene"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    .line 1639
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "updateDefaultEffectAndScene() - Default scene : "

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1642
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1643
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    if-nez v0, :cond_4

    .line 1644
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1647
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1649
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultEffectAndScene() - Default video scene \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported in current state, use normal scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1652
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "updateDefaultEffectAndScene() - Default video scene : "

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1653
    return-void

    .line 1627
    :cond_6
    const-string v2, "Smart Scene"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1628
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    goto/16 :goto_0

    .line 1630
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    goto/16 :goto_0
.end method

.method private updateEffectList(Lcom/htc/camera/effect/EffectBase;)V
    .locals 5

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->getEffectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1662
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "updateEffectList() - Size of effect list is "

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", new effect is "

    invoke-static {v0, v2, v3, v4, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1665
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1669
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->effectList:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1672
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1673
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1674
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private updateFastShotToShotMode(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1682
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->isFastShotToShotMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1684
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->restoreFastShotToShot(Lcom/htc/camera/Handle;)V

    .line 1687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_2

    .line 1693
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->restoreFastShotToShot(Lcom/htc/camera/Handle;)V

    .line 1694
    :cond_2
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->disableFastShotToShot(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private updateFlashState(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 1725
    instance-of v0, p1, Lcom/htc/camera/effect/z;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/effect/EffectManager;->updateFlashState(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/effect/EffectBase;)V

    .line 1732
    :goto_0
    return-void

    .line 1727
    :cond_0
    instance-of v0, p1, Lcom/htc/camera/effect/ab;

    if-eqz v0, :cond_1

    .line 1728
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/EffectManager;->updateFlashState(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/effect/EffectBase;)V

    goto :goto_0

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/effect/EffectManager;->updateFlashState(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/effect/EffectBase;)V

    goto :goto_0
.end method

.method private updateFlashState(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/effect/EffectBase;)V
    .locals 3

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "updateFlashState() - No IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFlashState - effect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , scene is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/effect/EffectManager;->canEnableFlash(Lcom/htc/camera/effect/EffectBase;Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1745
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 1748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1753
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private updateSceneList(Lcom/htc/camera/effect/EffectBase;)V
    .locals 5

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->getEffectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1774
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "updateSceneList() - Size of scene list is "

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", new scene is "

    invoke-static {v0, v2, v3, v4, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1777
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1781
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->sceneList:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1784
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1785
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1786
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private updateSelfTimerState(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1816
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->isSelfTimerSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1818
    :cond_0
    iget-boolean v1, p0, Lcom/htc/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-eqz v1, :cond_1

    .line 1820
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    .line 1821
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 1832
    :cond_1
    :goto_0
    return-void

    .line 1826
    :cond_2
    iget-boolean v1, p0, Lcom/htc/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-nez v1, :cond_1

    .line 1828
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    .line 1829
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    goto :goto_0
.end method

.method private updateVideoSceneList(Lcom/htc/camera/effect/EffectBase;)V
    .locals 5

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->getEffectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1795
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "updateVideoSceneList() - Size of video scene list is "

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", new video scene is "

    invoke-static {v0, v2, v3, v4, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1798
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1799
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1802
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->videosceneList:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1806
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyVideoScene(Lcom/htc/camera/effect/EffectBase;)V

    .line 1807
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1808
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 395
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->release()V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 399
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->release()V

    goto :goto_1

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 403
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->release()V

    goto :goto_2

    .line 406
    :cond_2
    invoke-super {p0}, Lcom/htc/camera/effect/IEffectManager;->deinitializeOverride()V

    .line 407
    return-void
.end method

.method public findEffect(Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 485
    if-nez p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 489
    goto :goto_0

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 492
    goto :goto_0

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 495
    goto :goto_0
.end method

.method public findEffectClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 504
    if-nez p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-object v0

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/effect/EffectManager;->findEffectClass(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 508
    goto :goto_0

    .line 509
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/effect/EffectManager;->findEffectClass(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 511
    goto :goto_0

    .line 512
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/htc/camera/effect/EffectManager;->findEffectClass(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 514
    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 591
    invoke-super {p0}, Lcom/htc/camera/effect/IEffectManager;->initializeOverride()V

    .line 594
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 595
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 596
    const-string v1, "scene-mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeOverride() - Initial scene name is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    if-eqz v4, :cond_0

    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->updateSceneList(Lcom/htc/camera/effect/EffectBase;)V

    .line 604
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->sceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 607
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 608
    invoke-virtual {v1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 610
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeOverride() - Initial scene is \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 612
    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 613
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v2, v4, :cond_2

    .line 614
    iput-object v1, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 622
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->setupCurrentEffectAndScene(I)V

    .line 629
    :cond_0
    :goto_2
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 630
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_1

    .line 631
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectManager;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 632
    :cond_1
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectManager;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 645
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectManager$1;-><init>(Lcom/htc/camera/effect/EffectManager;)V

    invoke-virtual {v3, v0, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 682
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectManager$2;-><init>(Lcom/htc/camera/effect/EffectManager;)V

    invoke-virtual {v3, v0, v1}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 700
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectManager$3;-><init>(Lcom/htc/camera/effect/EffectManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 709
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$4;

    iget-object v2, v3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/htc/camera/effect/EffectManager$4;-><init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$5;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/htc/camera/effect/EffectManager$5;-><init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 748
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$6;

    iget-object v2, v3, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/effect/EffectManager$6;-><init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance v0, Lcom/htc/camera/effect/EffectManager$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/effect/EffectManager$7;-><init>(Lcom/htc/camera/effect/EffectManager;)V

    .line 795
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/effect/EffectManager$8;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/effect/EffectManager$8;-><init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/event/a;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 804
    return-void

    .line 615
    :cond_2
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isVideoSceneSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 616
    iput-object v1, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto/16 :goto_1

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Video scene is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 605
    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto/16 :goto_0
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 930
    instance-of v0, p1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 932
    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 933
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectManager$9;-><init>(Lcom/htc/camera/effect/EffectManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 942
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectManager;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 949
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/effect/IEffectManager;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 950
    return-void

    .line 944
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 946
    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 947
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectManager;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setCurrentEffect(Ljava/lang/Class;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1154
    if-nez p1, :cond_0

    .line 1155
    const-class p1, Lcom/htc/camera/effect/am;

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "setCurrentEffect() - Class : "

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1160
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->threadAccessCheck()V

    .line 1161
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentEffect() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :goto_0
    return v2

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1169
    if-nez v0, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentEffect() - No effect list"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1174
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v3

    .line 1175
    if-nez v3, :cond_3

    .line 1177
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentEffect() - No effect found"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1182
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentEffect() - Current camera or mode is not supported by effect "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_4
    instance-of v0, v3, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_5

    .line 1190
    sget-object v0, Lcom/htc/camera/effect/EffectManager$10;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 1216
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1217
    iget-object v4, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1218
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    if-eq v3, v0, :cond_6

    iget-boolean v0, v4, Lcom/htc/camera/effect/EffectContext;->isEffectLocked:Z

    if-eqz v0, :cond_6

    .line 1220
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentEffect() - Effect is locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1194
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1195
    if-eqz v0, :cond_5

    instance-of v4, v0, Lcom/htc/camera/effect/AutoScene;

    if-nez v4, :cond_5

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-nez v0, :cond_5

    .line 1197
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentEffect() - Cannot change effect because current scene is not auto"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1204
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1205
    if-eqz v0, :cond_5

    instance-of v0, v0, Lcom/htc/camera/effect/an;

    if-nez v0, :cond_5

    .line 1207
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentEffect() - Cannot change effect because current video scene is not normal"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :cond_6
    sget-object v0, Lcom/htc/camera/effect/EffectManager$10;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    .line 1260
    :goto_1
    invoke-direct {p0, v3}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1261
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1264
    invoke-direct {p0, v3}, Lcom/htc/camera/effect/EffectManager;->updateFlashState(Lcom/htc/camera/effect/EffectBase;)V

    .line 1265
    invoke-direct {p0, v3}, Lcom/htc/camera/effect/EffectManager;->updateSelfTimerState(Lcom/htc/camera/effect/EffectBase;)V

    move v2, v1

    .line 1266
    goto/16 :goto_0

    .line 1229
    :pswitch_2
    invoke-virtual {v3}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    .line 1230
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1232
    iput-object v3, v4, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1233
    if-eqz v0, :cond_8

    move-object v0, v3

    :goto_3
    iput-object v0, v4, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1

    :cond_7
    move v0, v2

    .line 1229
    goto :goto_2

    .line 1233
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_3

    .line 1237
    :cond_9
    iput-object v3, v4, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1238
    if-eqz v0, :cond_a

    move-object v0, v3

    :goto_4
    iput-object v0, v4, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_4

    .line 1244
    :pswitch_3
    invoke-virtual {v3}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    move v2, v1

    .line 1245
    :cond_b
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1247
    iput-object v3, v4, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1248
    if-eqz v2, :cond_c

    move-object v0, v3

    :goto_5
    iput-object v0, v4, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_5

    .line 1252
    :cond_d
    iput-object v3, v4, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1253
    if-eqz v2, :cond_e

    move-object v0, v3

    :goto_6
    iput-object v0, v4, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_6

    .line 1190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1225
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentScene(Ljava/lang/Class;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x1000000

    const/4 v1, 0x0

    .line 1277
    if-nez p1, :cond_0

    .line 1278
    const-class p1, Lcom/htc/camera/effect/AutoScene;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentScene() - Class : "

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1283
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->threadAccessCheck()V

    .line 1284
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentScene() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1399
    :goto_0
    return v0

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->sceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1292
    if-nez v0, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentScene() - No scene list"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1295
    goto :goto_0

    .line 1297
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v2

    .line 1298
    if-nez v2, :cond_3

    .line 1300
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentScene() - No scene found"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1301
    goto :goto_0

    .line 1303
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentScene() - Current camera or mode is not supported by scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1306
    goto :goto_0

    .line 1321
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1322
    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1323
    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    if-eq v2, v3, :cond_5

    iget-boolean v3, v0, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    if-eqz v3, :cond_5

    .line 1325
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentScene() - Scene is locked"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1326
    goto :goto_0

    .line 1330
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1331
    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 1336
    :goto_1
    and-int v1, p2, v4

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/camera/effect/an;

    if-nez v1, :cond_6

    .line 1338
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "setCurrentScene() - Reset video scene"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_NormalVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    or-int v3, p2, v4

    invoke-virtual {p0, v1, v3}, Lcom/htc/camera/effect/EffectManager;->setCurrentVideoScene(Ljava/lang/Class;I)Z

    .line 1343
    :cond_6
    instance-of v1, v2, Lcom/htc/camera/effect/AutoScene;

    if-nez v1, :cond_7

    instance-of v1, v2, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v1, :cond_d

    .line 1346
    :cond_7
    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v3

    if-ne v1, v3, :cond_8

    .line 1347
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v3, "pref_camera_scene"

    invoke-virtual {v2}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1350
    :cond_8
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1351
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1354
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v3, :cond_a

    .line 1357
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1358
    :goto_2
    if-nez v0, :cond_9

    .line 1359
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1362
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentScene() - Restore effect to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1364
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1396
    :cond_a
    :goto_3
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateFlashState(Lcom/htc/camera/effect/EffectBase;)V

    .line 1397
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateSelfTimerState(Lcom/htc/camera/effect/EffectBase;)V

    .line 1398
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->updateFastShotToShotMode(Lcom/htc/camera/effect/EffectBase;)V

    .line 1399
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1333
    :cond_b
    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    goto/16 :goto_1

    .line 1357
    :cond_c
    iget-object v0, v0, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_2

    .line 1370
    :cond_d
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 1372
    instance-of v0, v2, Lcom/htc/camera/effect/ZoeScene;

    if-eqz v0, :cond_10

    .line 1373
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_scene"

    invoke-virtual {v2}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1379
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_f

    .line 1381
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1382
    if-eqz v0, :cond_f

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_f

    .line 1384
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentScene() - Change effect to \'none\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1386
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1391
    :cond_f
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1392
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1375
    :cond_10
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_scene"

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v3}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public setCurrentVideoScene(Ljava/lang/Class;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x1000000

    const/4 v1, 0x0

    .line 1410
    if-nez p1, :cond_0

    .line 1411
    const-class p1, Lcom/htc/camera/effect/an;

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentVideoScene() - Class : "

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1416
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->threadAccessCheck()V

    .line 1417
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentVideoScene() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1510
    :goto_0
    return v0

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->videosceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1425
    if-nez v0, :cond_2

    .line 1427
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentVideoScene() - No scene list"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1428
    goto :goto_0

    .line 1430
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/EffectManager;->findEffect(Ljava/util/List;Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v2

    .line 1431
    if-nez v2, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentVideoScene() - No scene found"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1434
    goto :goto_0

    .line 1436
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->isEffectSupported(Lcom/htc/camera/effect/EffectBase;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1438
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentVideoScene() - Current camera or mode is not supported by scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1439
    goto :goto_0

    .line 1443
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 1444
    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 1445
    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    if-eq v2, v3, :cond_5

    iget-boolean v3, v0, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    if-eqz v3, :cond_5

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentVideoScene() - Scene is locked"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1448
    goto :goto_0

    .line 1452
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1453
    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 1458
    :goto_1
    and-int v1, p2, v4

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/camera/effect/AutoScene;

    if-nez v1, :cond_6

    .line 1460
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "setCurrentVideoScene() - Reset photo scene"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_AutoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    or-int v3, p2, v4

    invoke-virtual {p0, v1, v3}, Lcom/htc/camera/effect/EffectManager;->setCurrentScene(Ljava/lang/Class;I)Z

    .line 1465
    :cond_6
    instance-of v1, v2, Lcom/htc/camera/effect/an;

    if-eqz v1, :cond_b

    .line 1468
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->applyVideoScene(Lcom/htc/camera/effect/EffectBase;)V

    .line 1469
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1472
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_8

    .line 1475
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1476
    :goto_2
    if-nez v0, :cond_7

    .line 1477
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    .line 1480
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentVideoScene() - Restore effect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1482
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1505
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after setcurrentVideoScene, currentVideoScene is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1455
    :cond_9
    iput-object v2, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto/16 :goto_1

    .line 1475
    :cond_a
    iget-object v0, v0, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_2

    .line 1488
    :cond_b
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_c

    .line 1490
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1491
    if-eqz v0, :cond_c

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_c

    .line 1493
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentVideoScene() - Change effect to \'none\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectManager;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 1495
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_NoneEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1500
    :cond_c
    invoke-direct {p0, v2}, Lcom/htc/camera/effect/EffectManager;->applyVideoScene(Lcom/htc/camera/effect/EffectBase;)V

    .line 1501
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public setEffectContext(Lcom/htc/camera/effect/EffectContext;I)Lcom/htc/camera/CloseableHandle;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->threadAccessCheck()V

    .line 836
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setEffectContext() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_0
    return-object v0

    .line 843
    :cond_0
    if-nez p1, :cond_1

    .line 844
    new-instance p1, Lcom/htc/camera/effect/EffectContext;

    invoke-direct {p1, v0, p2}, Lcom/htc/camera/effect/EffectContext;-><init>(Lcom/htc/camera/effect/h;I)V

    .line 847
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_c

    .line 848
    and-int/lit8 v0, p2, -0x2

    .line 849
    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    .line 850
    and-int/lit8 v0, v0, -0x5

    move v1, v0

    .line 851
    :goto_2
    invoke-virtual {p1, v1}, Lcom/htc/camera/effect/EffectContext;->setFlags(I)V

    .line 854
    new-instance v2, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;-><init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectContext;)V

    .line 855
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;

    const-string v3, "setEffectContext() - Create handle : "

    const-string v5, ", flags : "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v3, v2, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    .line 859
    iget-object v3, p0, Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;

    invoke-virtual {v3, v2}, Lcom/htc/camera/s;->addLast(Ljava/lang/Object;)V

    .line 860
    iget-object v5, v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 863
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectManager;->updateDefaultEffectAndScene()V

    .line 866
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v6

    .line 867
    and-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    move v3, v0

    .line 869
    :goto_3
    if-eqz v3, :cond_3

    .line 870
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 873
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_8

    .line 874
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/htc/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/Class;I)Z

    .line 884
    :goto_4
    and-int/lit8 v0, v1, 0x4

    if-nez v0, :cond_a

    .line 889
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 891
    iget-object v1, p1, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 892
    iget-object v0, p1, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 899
    :goto_5
    if-nez v1, :cond_4

    .line 900
    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultScene:Lcom/htc/camera/effect/EffectBase;

    .line 901
    :cond_4
    if-nez v0, :cond_5

    .line 902
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager;->m_DefaultVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 905
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/htc/camera/effect/EffectManager;->setCurrentScene(Ljava/lang/Class;I)Z

    .line 906
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const v1, 0x1000002

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/effect/EffectManager;->setCurrentVideoScene(Ljava/lang/Class;I)Z

    .line 917
    :goto_6
    if-eqz v3, :cond_6

    .line 918
    invoke-virtual {v6, v4}, Lcom/htc/camera/HTCCamera;->startPreview(Z)Z

    :cond_6
    move-object v0, v2

    .line 921
    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 867
    goto :goto_3

    .line 877
    :cond_8
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 878
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 879
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 880
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    goto :goto_4

    .line 896
    :cond_9
    iget-object v1, p1, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 897
    iget-object v0, p1, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_5

    .line 910
    :cond_a
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 911
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 912
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 913
    iget-object v0, v5, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    iput-object v0, p1, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    goto :goto_6

    :cond_b
    move v1, v0

    goto/16 :goto_2

    :cond_c
    move v0, p2

    goto/16 :goto_1
.end method
