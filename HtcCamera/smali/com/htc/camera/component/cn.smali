.class public abstract Lcom/htc/camera/component/cn;
.super Lcom/htc/camera/component/CameraComponentBuilder;
.source "UIComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/htc/camera/component/Component;",
        ">",
        "Lcom/htc/camera/component/CameraComponentBuilder",
        "<TTComponent;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/component/ComponentCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TTComponent;>;",
            "Lcom/htc/camera/component/ComponentCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/component/ComponentCategory;)V

    .line 21
    return-void
.end method


# virtual methods
.method public abstract b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/HTCCamera;",
            ")TTComponent;"
        }
    .end annotation
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TTComponent;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_1
    aget-object v0, p1, v1

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/cn;->b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;

    move-result-object v0

    return-object v0
.end method
