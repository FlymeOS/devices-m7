.class public Lcom/htc/camera/base/BaseObjectProxy;
.super Lcom/htc/camera/base/BaseObject;
.source "BaseObjectProxy.java"


# instance fields
.field private final m_Owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/base/BaseObjectProxy;->m_Owner:Ljava/lang/Object;

    .line 24
    if-eqz p2, :cond_1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(BaseObjectProxy)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/base/BaseObjectProxy;->TAG:Ljava/lang/String;

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method protected callEventHandler(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;Lcom/htc/camera/base/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;TTEventArgs;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectProxy;->m_Owner:Ljava/lang/Object;

    invoke-super {p0, v0, p2, p3, p4}, Lcom/htc/camera/base/BaseObject;->callEventHandler(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;Lcom/htc/camera/base/b;)V

    .line 39
    return-void
.end method

.method protected callPropertyChangedCallback(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;Lcom/htc/camera/base/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectProxy;->m_Owner:Ljava/lang/Object;

    invoke-super {p0, v0, p2, p3, p4}, Lcom/htc/camera/base/BaseObject;->callPropertyChangedCallback(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;Lcom/htc/camera/base/f;)V

    .line 52
    return-void
.end method

.method public raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;TTEventArgs;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/htc/camera/base/BaseObject;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 63
    return-void
.end method

.method public resetProperty(Lcom/htc/camera/base/PropertyKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/htc/camera/base/BaseObject;->resetProperty(Lcom/htc/camera/base/PropertyKey;)Z

    move-result v0

    return v0
.end method

.method public setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/htc/camera/base/BaseObject;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
