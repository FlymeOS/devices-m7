.class public Lcom/htc/camera/data/e;
.super Lcom/htc/camera/data/PreferenceBinding;
.source "StorageSlotPreferenceBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/PreferenceBinding",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/data/PreferenceBinding;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V

    .line 25
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/htc/camera/io/StorageSlot;
    .locals 1

    .prologue
    .line 85
    const-string v0, "main_memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/htc/camera/io/StorageSlot;
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/camera/data/e;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/e;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Lcom/htc/camera/data/e;->a(Ljava/lang/String;)Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/data/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceValue() - Storage slot \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not supported, use default value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/htc/camera/data/e;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/e;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-direct {p0, v0}, Lcom/htc/camera/data/e;->a(Ljava/lang/String;)Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/data/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceValue() - Default storage slot \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    goto :goto_0
.end method

.method protected a(Lcom/htc/camera/io/StorageSlot;)V
    .locals 3

    .prologue
    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "main_memory"

    move-object v1, v0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/data/e;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v2, p0, Lcom/htc/camera/data/e;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 80
    return-void

    .line 78
    :cond_0
    const-string v0, "sdcard"

    move-object v1, v0

    goto :goto_0
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/htc/camera/data/e;->a()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {p0, p1}, Lcom/htc/camera/data/e;->a(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method
