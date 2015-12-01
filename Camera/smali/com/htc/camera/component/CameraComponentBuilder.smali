.class public abstract Lcom/htc/camera/component/CameraComponentBuilder;
.super Ljava/lang/Object;
.source "CameraComponentBuilder.java"

# interfaces
.implements Lcom/htc/camera/component/at;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/htc/camera/component/Component;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/camera/component/at",
        "<TTComponent;>;"
    }
.end annotation


# instance fields
.field private final m_ComponentCategory:Lcom/htc/camera/component/ComponentCategory;

.field private final m_ComponentName:Ljava/lang/String;

.field private final m_ComponentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTComponent;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/camera/component/ComponentCategory;->Normal:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/component/ComponentCategory;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/component/ComponentCategory;)V
    .locals 3
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/htc/camera/component/ComponentCategory;->OnDemand:Lcom/htc/camera/component/ComponentCategory;

    if-ne p3, v0, :cond_0

    if-nez p2, :cond_0

    .line 30
    const-string v0, "CameraComponentBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No type for on-demand component \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iput-object p3, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentCategory:Lcom/htc/camera/component/ComponentCategory;

    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentType:Ljava/lang/Class;

    .line 34
    return-void
.end method


# virtual methods
.method public final getComponentCategory()Lcom/htc/camera/component/ComponentCategory;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentCategory:Lcom/htc/camera/component/ComponentCategory;

    return-object v0
.end method

.method public final getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentName:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs isSupported([Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_1
    aget-object v0, p1, v1

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraComponentBuilder;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method public final isSupportedComponentType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentType:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponentBuilder;->m_ComponentType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
