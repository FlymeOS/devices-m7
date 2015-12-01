.class public final Lcom/htc/camera/component/cb;
.super Lcom/htc/camera/component/ComponentBinder;
.source "SimpleComponentBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSourceComponent:",
        "Ljava/lang/Object;",
        "TTargetComponent:",
        "Lcom/htc/camera/component/Component;",
        ">",
        "Lcom/htc/camera/component/ComponentBinder",
        "<TTSourceComponent;TTTargetComponent;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/component/au;",
            "Ljava/lang/Class",
            "<TTSourceComponent;>;TTTargetComponent;)V"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/camera/component/ComponentBinder;-><init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
