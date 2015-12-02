.class public Lcom/htc/camera/event/SingleHandlerEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "SingleHandlerEventArgs.java"

# interfaces
.implements Lcom/htc/camera/event/b;


# instance fields
.field private m_IsHandled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHandled()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/htc/camera/event/SingleHandlerEventArgs;->m_IsHandled:Z

    return v0
.end method

.method public final setHandled()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/event/SingleHandlerEventArgs;->m_IsHandled:Z

    .line 24
    return-void
.end method
