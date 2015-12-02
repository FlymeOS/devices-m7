.class public final Lcom/htc/camera/imaging/HtcMakerNoteEntry;
.super Ljava/lang/Object;
.source "HtcMakerNoteEntry.java"


# instance fields
.field public final count:I

.field public final data:[B

.field public final tag:I

.field public final type:I


# direct methods
.method private constructor <init>(III[B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->tag:I

    .line 29
    iput p2, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->type:I

    .line 30
    iput p3, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->count:I

    .line 31
    iput-object p4, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->data:[B

    .line 32
    return-void
.end method

.method public static deserialize([BI)Lcom/htc/camera/imaging/HtcMakerNoteEntry;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v2, p1, 0xc

    if-ge v1, v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    add-int/lit8 v1, p1, 0x0

    invoke-static {p0, v1}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->readInteger([BI)I

    move-result v1

    .line 45
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->readInteger([BI)I

    move-result v2

    .line 46
    add-int/lit8 v3, p1, 0x8

    invoke-static {p0, v3}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->readInteger([BI)I

    move-result v3

    .line 50
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    mul-int/lit8 v4, v3, 0x4

    .line 58
    if-ltz v4, :cond_0

    array-length v5, p0

    add-int/lit8 v6, p1, 0xc

    add-int/2addr v6, v4

    if-lt v5, v6, :cond_0

    .line 62
    new-array v5, v4, [B

    .line 63
    if-lez v4, :cond_2

    .line 64
    add-int/lit8 v0, p1, 0xc

    const/4 v6, 0x0

    invoke-static {p0, v0, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_2
    new-instance v0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;-><init>(III[B)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static readInteger([BI)I
    .locals 2

    .prologue
    .line 102
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getDataInteger()[I
    .locals 4

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->type:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 76
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->count:I

    mul-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->count:I

    new-array v0, v0, [I

    .line 79
    iget v1, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->count:I

    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v1, v2, 0x4

    :goto_0
    if-ltz v2, :cond_1

    .line 80
    iget-object v3, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->data:[B

    invoke-static {v3, v1}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->readInteger([BI)I

    move-result v3

    aput v3, v0, v2

    .line 79
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x4

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getRawByteCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->data:[B

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    .line 94
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method
