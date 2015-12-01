.class public Lcom/htc/camera/effect/EffectContext;
.super Ljava/lang/Object;
.source "EffectContext.java"


# instance fields
.field public defaultEffectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public defaultSceneClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public defaultVideoSceneClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

.field public frontCameraScene:Lcom/htc/camera/effect/EffectBase;

.field public frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

.field public frontVideoScene:Lcom/htc/camera/effect/EffectBase;

.field public isEffectLocked:Z

.field public isSceneLocked:Z

.field public mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

.field public mainCameraScene:Lcom/htc/camera/effect/EffectBase;

.field public mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

.field public mainVideoScene:Lcom/htc/camera/effect/EffectBase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/effect/EffectContext;-><init>(Lcom/htc/camera/effect/h;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/effect/h;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p1, Lcom/htc/camera/effect/h;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    .line 31
    iget-object v0, p1, Lcom/htc/camera/effect/h;->b:Ljava/lang/Class;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    .line 32
    iget-object v0, p1, Lcom/htc/camera/effect/h;->c:Ljava/lang/Class;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    .line 40
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/effect/EffectContext;->isEffectLocked:Z

    .line 41
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    .line 42
    return-void

    .line 36
    :cond_0
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    .line 37
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    .line 38
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 40
    goto :goto_1

    :cond_2
    move v1, v2

    .line 41
    goto :goto_2
.end method


# virtual methods
.method public clearEffects()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 47
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 48
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    .line 49
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    .line 50
    return-void
.end method

.method public clearEffectsAndScenes()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectContext;->clearEffects()V

    .line 55
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 56
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 57
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    .line 58
    iput-object v0, p0, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 59
    return-void
.end method

.method public getFlags()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectContext;->isEffectLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 64
    :goto_0
    iget-boolean v2, p0, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    or-int/2addr v0, v1

    .line 65
    return v0

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/effect/EffectContext;->isEffectLocked:Z

    .line 71
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectContext;->isSceneLocked:Z

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0

    :cond_1
    move v1, v2

    .line 71
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->mainCameraEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->mainCameraScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->mainVideoEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->mainVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->frontCameraEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->frontCameraScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->frontVideoEffect:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->frontVideoScene:Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->defaultEffectClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->defaultSceneClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectContext;->defaultVideoSceneClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
