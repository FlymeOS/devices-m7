.class public Lcom/htc/camera/data/Trigger;
.super Lcom/htc/camera/data/TriggerBase;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/data/TriggerBase;"
    }
.end annotation


# instance fields
.field private final m_PropertyChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertyKey:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertyOwner:Lcom/htc/camera/base/e;

.field private final m_TargetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/camera/data/TriggerBase;-><init>()V

    .line 11
    new-instance v0, Lcom/htc/camera/data/Trigger$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/Trigger$1;-><init>(Lcom/htc/camera/data/Trigger;)V

    iput-object v0, p0, Lcom/htc/camera/data/Trigger;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/data/Trigger;->m_PropertyOwner:Lcom/htc/camera/base/e;

    .line 36
    iput-object p2, p0, Lcom/htc/camera/data/Trigger;->m_PropertyKey:Lcom/htc/camera/base/PropertyKey;

    .line 37
    iput-object p3, p0, Lcom/htc/camera/data/Trigger;->m_TargetValue:Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/htc/camera/data/Trigger;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {p1, p2, v0}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 39
    invoke-interface {p1, p2}, Lcom/htc/camera/base/e;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/data/Trigger;->checkState(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/data/Trigger;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/camera/data/Trigger;->checkState(Ljava/lang/Object;)V

    return-void
.end method

.method private checkState(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/data/Trigger;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/htc/camera/data/Trigger;->m_TargetValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/data/Trigger;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/htc/camera/data/Trigger;->exit()V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/data/Trigger;->m_TargetValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/data/Trigger;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/htc/camera/data/Trigger;->enter()V

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/camera/data/Trigger;->m_PropertyOwner:Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/Trigger;->m_PropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/Trigger;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 64
    invoke-super {p0}, Lcom/htc/camera/data/TriggerBase;->release()V

    .line 65
    return-void
.end method
