.class public abstract Lcom/htc/camera/trigger/TriggerBase;
.super Ljava/lang/Object;
.source "TriggerBase.java"


# instance fields
.field private m_IsActive:Z

.field private m_IsDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final activate()V
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsActive:Z

    .line 19
    invoke-virtual {p0}, Lcom/htc/camera/trigger/TriggerBase;->onEnter()V

    .line 21
    :cond_0
    return-void
.end method

.method protected final deactivate()V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsActive:Z

    .line 31
    invoke-virtual {p0}, Lcom/htc/camera/trigger/TriggerBase;->onExit()V

    .line 33
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/trigger/TriggerBase;->m_IsDestroyed:Z

    .line 41
    return-void
.end method

.method protected onEnter()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
