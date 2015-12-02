.class public Lcom/htc/camera/base/EventArgs;
.super Ljava/lang/Object;
.source "EventArgs.java"


# static fields
.field public static final EMPTY:Lcom/htc/camera/base/EventArgs;


# instance fields
.field private m_IsHandled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/htc/camera/base/EventArgs;

    invoke-direct {v0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    sput-object v0, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHandled()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/camera/base/EventArgs;->m_IsHandled:Z

    return v0
.end method

.method public setHandled()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/base/EventArgs;->m_IsHandled:Z

    .line 37
    return-void
.end method
