.class public abstract Lcom/htc/camera/CloseableHandle;
.super Lcom/htc/camera/Handle;
.source "CloseableHandle.java"


# static fields
.field public static final INVALID:Lcom/htc/camera/CloseableHandle;


# instance fields
.field private m_IsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/htc/camera/p;

    invoke-direct {v0}, Lcom/htc/camera/p;-><init>()V

    sput-object v0, Lcom/htc/camera/CloseableHandle;->INVALID:Lcom/htc/camera/CloseableHandle;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    .line 37
    return-void
.end method

.method public static close(Lcom/htc/camera/CloseableHandle;)Lcom/htc/camera/CloseableHandle;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/camera/CloseableHandle;->close(Lcom/htc/camera/CloseableHandle;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    return-object v0
.end method

.method public static close(Lcom/htc/camera/CloseableHandle;I)Lcom/htc/camera/CloseableHandle;
    .locals 1

    .prologue
    .line 85
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/htc/camera/CloseableHandle;->onClose(I)V

    .line 90
    :cond_0
    sget-object v0, Lcom/htc/camera/CloseableHandle;->INVALID:Lcom/htc/camera/CloseableHandle;

    return-object v0
.end method

.method public static isValid(Lcom/htc/camera/CloseableHandle;)Z
    .locals 1

    .prologue
    .line 111
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final close()Lcom/htc/camera/CloseableHandle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CloseableHandle;->close(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    return-object v0
.end method

.method public final close(I)Lcom/htc/camera/CloseableHandle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    .line 62
    invoke-virtual {p0, p1}, Lcom/htc/camera/CloseableHandle;->onClose(I)V

    .line 64
    :cond_0
    sget-object v0, Lcom/htc/camera/CloseableHandle;->INVALID:Lcom/htc/camera/CloseableHandle;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/camera/CloseableHandle;->m_IsValid:Z

    return v0
.end method

.method protected abstract onClose(I)V
.end method
