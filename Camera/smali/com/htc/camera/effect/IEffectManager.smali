.class public abstract Lcom/htc/camera/effect/IEffectManager;
.super Lcom/htc/camera/component/CameraComponent;
.source "IEffectManager.java"


# instance fields
.field public final currentEffect:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentVideoScene:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final effectAppliedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectCanceledEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectList:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final sceneList:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final videosceneList:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    invoke-virtual {p3}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V

    .line 65
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectManager.CurrentEffect"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    .line 66
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectManager.CurrentScene"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    .line 67
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectManager.currentVideoScene"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    .line 68
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectManager.EffectList"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    .line 69
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectManager.SceneList"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->sceneList:Lcom/htc/camera/property/Property;

    .line 70
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectManager.VideoSceneList"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->videosceneList:Lcom/htc/camera/property/Property;

    .line 73
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IEffectManager.EffectApplied"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/htc/camera/event/Event;

    .line 74
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IEffectManager.EffectCanceled"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->effectCanceledEvent:Lcom/htc/camera/event/Event;

    .line 75
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 85
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 88
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 89
    return-void
.end method

.method public abstract findEffect(Ljava/lang/Class;)Lcom/htc/camera/effect/EffectBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public final findEffect(Ljava/util/List;Ljava/lang/String;)Lcom/htc/camera/effect/EffectBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/camera/effect/EffectBase;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v1

    .line 110
    :cond_1
    :goto_0
    return-object v0

    .line 104
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 106
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 107
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 110
    goto :goto_0
.end method

.method public abstract findEffectClass(Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public final setCurrentEffect(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/effect/IEffectManager;->setCurrentEffect(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public abstract setCurrentEffect(Ljava/lang/Class;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation
.end method

.method public final setCurrentEffect(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentEffect() - No effect name"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/IEffectManager;->threadAccessCheck()V

    .line 169
    iget-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/effect/IEffectManager;->findEffect(Ljava/util/List;Ljava/lang/String;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/IEffectManager;->setCurrentEffect(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/IEffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentEffect() - Cannot find effect \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public final setCurrentScene(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public abstract setCurrentScene(Ljava/lang/Class;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation
.end method

.method public final setCurrentVideoScene(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/effect/IEffectManager;->setCurrentVideoScene(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public abstract setCurrentVideoScene(Ljava/lang/Class;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/htc/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation
.end method

.method public abstract setEffectContext(Lcom/htc/camera/effect/EffectContext;I)Lcom/htc/camera/CloseableHandle;
.end method
