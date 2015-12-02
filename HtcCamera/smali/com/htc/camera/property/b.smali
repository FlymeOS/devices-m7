.class public Lcom/htc/camera/property/b;
.super Lcom/htc/camera/property/Property;
.source "IntegerProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/property/Property",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/property/b;->a(Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/property/b;->verifyOwnerKey(Ljava/lang/Object;)V

    .line 37
    iget v0, p0, Lcom/htc/camera/property/b;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/htc/camera/property/b;->threadAccessCheck()V

    .line 40
    invoke-virtual {p0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/property/b;->setValueInternal(Ljava/lang/Object;Z)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 47
    goto :goto_0

    .line 51
    :cond_2
    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 54
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/property/b;->setValueInternal(Ljava/lang/Object;Z)Z

    .line 58
    monitor-exit p0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 60
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method
