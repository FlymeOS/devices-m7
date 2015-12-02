.class public final Lcom/htc/camera/CloseableHandleReference;
.super Ljava/lang/Object;
.source "CloseableHandleReference.java"


# static fields
.field public static final EMPTY:Lcom/htc/camera/CloseableHandleReference;


# instance fields
.field public final handle:Lcom/htc/camera/CloseableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v1, Lcom/htc/camera/CloseableHandleReference;

    const/4 v0, 0x0

    check-cast v0, Lcom/htc/camera/CloseableHandle;

    invoke-direct {v1, v0}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    sput-object v1, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CloseableHandle;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    .line 25
    return-void
.end method


# virtual methods
.method public closeHandle()Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    return-object v0
.end method

.method public closeHandle(I)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CloseableHandle;->close(I)Lcom/htc/camera/CloseableHandle;

    .line 53
    :cond_0
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method public final isValidHandle()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[REF]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CloseableHandleReference;->handle:Lcom/htc/camera/CloseableHandle;

    invoke-virtual {v1}, Lcom/htc/camera/CloseableHandle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[REF]null"

    goto :goto_0
.end method
