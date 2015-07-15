.class public Lcom/android/server/wifi/ScoreConstants;
.super Ljava/lang/Object;
.source "ScoreConstants.java"


# static fields
.field public static final WifiChannelMap:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 13
    const/16 v0, 0xe

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/ScoreConstants;->WifiChannelMap:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x961
        0x96c
        0x977
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x964
        0x971
        0x97c
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x96b
        0x976
        0x981
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x970
        0x97b
        0x986
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x975
        0x980
        0x98b
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x97a
        0x985
        0x990
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x97f
        0x98a
        0x995
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x984
        0x98f
        0x99a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x989
        0x994
        0x99f
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x993
        0x999
        0x9a4
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x993
        0x99e
        0x9a9
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x998
        0x9a3
        0x9ae
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x99d
        0x9a8
        0x9b3
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x9a9
        0x9b4
        0x9bf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiChannelNumber(I)I
    .locals 2
    .param p0, "frequency"    # I

    .prologue
    .line 31
    const/16 v1, 0x9b4

    if-ne p0, v1, :cond_0

    const/16 v1, 0xe

    .line 34
    :goto_0
    return v1

    .line 33
    :cond_0
    add-int/lit16 v1, p0, -0x96c

    div-int/lit8 v0, v1, 0x5

    .line 34
    .local v0, "delta":I
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method
