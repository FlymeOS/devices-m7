.class public Lcom/android/nfc/cardemulation/VzwRoutingCache;
.super Ljava/lang/Object;
.source "VzwRoutingCache.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VzwRoutingCache"


# instance fields
.field final mVzwCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method static toHexString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 72
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 73
    .local v0, "HEX_CHARS":[C
    mul-int/lit8 v3, p2, 0x2

    new-array v1, v3, [C

    .line 74
    .local v1, "chars":[C
    move v2, p1

    .local v2, "j":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 75
    sub-int v3, v2, p1

    mul-int/lit8 v3, v3, 0x2

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 76
    sub-int v3, v2, p1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method


# virtual methods
.method IsAidAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/nfc/RouteEntry;

    .line 64
    .local v0, "elem":Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->isAllowed()Z

    move-result v1

    return v1
.end method

.method IsvzwFeaturePresent()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method addAid([BIIZ)Z
    .locals 5
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "power"    # I
    .param p4, "isAllowed"    # Z

    .prologue
    .line 48
    new-instance v0, Lcom/vzw/nfc/RouteEntry;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/vzw/nfc/RouteEntry;-><init>([BIIZ)V

    .line 57
    .local v0, "elem":Lcom/vzw/nfc/RouteEntry;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v1, 0x1

    return v1
.end method

.method clear()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    return-void
.end method

.method getPowerState(Ljava/lang/String;)I
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/nfc/RouteEntry;

    .line 83
    .local v0, "elem":Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getPowerState()I

    move-result v1

    return v1
.end method

.method isAidPresent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
