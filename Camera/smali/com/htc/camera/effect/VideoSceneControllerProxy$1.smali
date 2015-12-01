.class Lcom/htc/camera/effect/VideoSceneControllerProxy$1;
.super Lcom/htc/camera/component/ComponentBinder;
.source "VideoSceneControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/ComponentBinder",
        "<",
        "Lcom/htc/camera/effect/IVideoSceneController;",
        "Lcom/htc/camera/effect/VideoSceneControllerProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/VideoSceneControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/VideoSceneControllerProxy;Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/effect/VideoSceneControllerProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy$1;->this$0:Lcom/htc/camera/effect/VideoSceneControllerProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/camera/component/ComponentBinder;-><init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Lcom/htc/camera/effect/IVideoSceneController;Lcom/htc/camera/effect/VideoSceneControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/effect/IVideoSceneController;",
            "Lcom/htc/camera/effect/VideoSceneControllerProxy;",
            ")[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getEventBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/htc/camera/effect/IVideoSceneController;

    check-cast p2, Lcom/htc/camera/effect/VideoSceneControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/effect/VideoSceneControllerProxy$1;->getEventBindingInfo(Lcom/htc/camera/effect/IVideoSceneController;Lcom/htc/camera/effect/VideoSceneControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Lcom/htc/camera/effect/IVideoSceneController;Lcom/htc/camera/effect/VideoSceneControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/effect/IVideoSceneController;",
            "Lcom/htc/camera/effect/VideoSceneControllerProxy;",
            ")[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/effect/IVideoSceneController;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/effect/VideoSceneControllerProxy;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/effect/IVideoSceneController;->currentVideoScene:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/effect/VideoSceneControllerProxy;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/effect/IVideoSceneController;->slowMotionSpeed:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/effect/VideoSceneControllerProxy;->slowMotionSpeed:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getPropertyBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/htc/camera/effect/IVideoSceneController;

    check-cast p2, Lcom/htc/camera/effect/VideoSceneControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/effect/VideoSceneControllerProxy$1;->getPropertyBindingInfo(Lcom/htc/camera/effect/IVideoSceneController;Lcom/htc/camera/effect/VideoSceneControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method
