.class public abstract Lcom/htc/camera/data/TriggerBase;
.super Lcom/htc/camera/base/BaseObject;
.source "TriggerBase.java"


# instance fields
.field private m_IsEntered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected final enter()V
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/camera/data/TriggerBase;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/data/TriggerBase;->m_IsEntered:Z

    .line 21
    invoke-virtual {p0}, Lcom/htc/camera/data/TriggerBase;->onEnter()V

    .line 23
    :cond_0
    return-void
.end method

.method protected final exit()V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/camera/data/TriggerBase;->m_IsEntered:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/data/TriggerBase;->m_IsEntered:Z

    .line 33
    invoke-virtual {p0}, Lcom/htc/camera/data/TriggerBase;->onExit()V

    .line 35
    :cond_0
    return-void
.end method

.method protected final isEntered()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/camera/data/TriggerBase;->m_IsEntered:Z

    return v0
.end method

.method protected onEnter()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
