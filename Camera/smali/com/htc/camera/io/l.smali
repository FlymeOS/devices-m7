.class public Lcom/htc/camera/io/l;
.super Lcom/htc/camera/io/i;
.source "TabletStorageSlot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/camera/io/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/htc/camera/io/i;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic serializeToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/htc/camera/io/i;->serializeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "Tablet Storage"

    return-object v0
.end method
