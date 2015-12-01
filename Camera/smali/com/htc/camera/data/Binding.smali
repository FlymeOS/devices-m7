.class public abstract Lcom/htc/camera/data/Binding;
.super Ljava/lang/Object;
.source "Binding.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private m_IsActive:Z

.field public final mode:Lcom/htc/camera/data/BindingMode;

.field public final source:Ljava/lang/Object;

.field public final target:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/data/BindingMode;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No binding source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No binding target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    if-nez p3, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No binding mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/data/Binding;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/htc/camera/data/Binding;->source:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/htc/camera/data/Binding;->target:Ljava/lang/Object;

    .line 55
    iput-object p3, p0, Lcom/htc/camera/data/Binding;->mode:Lcom/htc/camera/data/BindingMode;

    .line 56
    return-void
.end method


# virtual methods
.method final activate()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/camera/data/Binding;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/data/Binding;->m_IsActive:Z

    .line 64
    invoke-virtual {p0}, Lcom/htc/camera/data/Binding;->onActivated()V

    .line 66
    :cond_0
    return-void
.end method

.method final deactivate()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/camera/data/Binding;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/data/Binding;->m_IsActive:Z

    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/data/Binding;->onDeactivated()V

    .line 76
    :cond_0
    return-void
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/camera/data/Binding;->m_IsActive:Z

    return v0
.end method

.method protected abstract onActivated()V
.end method

.method protected abstract onDeactivated()V
.end method
