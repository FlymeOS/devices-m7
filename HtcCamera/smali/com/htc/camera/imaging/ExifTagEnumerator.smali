.class public Lcom/htc/camera/imaging/ExifTagEnumerator;
.super Ljava/lang/Object;
.source "ExifTagEnumerator.java"


# instance fields
.field private final m_Buffer:[B

.field private m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

.field private m_CurrentPosition:I

.field private m_CurrentTagId:I

.field private m_CurrentTagType:I

.field private m_ExifIfdOffset:I

.field private m_GpsIfdOffset:I

.field private m_IsLittleEndian:Z

.field private final m_RefHeaderPosition:I

.field private m_RestTagCount:I


# direct methods
.method public constructor <init>([B)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagId:I

    .line 33
    iput v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_ExifIfdOffset:I

    .line 34
    iput v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_GpsIfdOffset:I

    .line 45
    iput-object p1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    .line 46
    new-instance v0, Lcom/htc/camera/Reference;

    invoke-direct {v0}, Lcom/htc/camera/Reference;-><init>()V

    .line 47
    new-instance v1, Lcom/htc/camera/Reference;

    invoke-direct {v1}, Lcom/htc/camera/Reference;-><init>()V

    .line 48
    invoke-static {p1, v0, v1}, Lcom/htc/camera/imaging/a;->a([BLcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    .line 52
    iget-object v0, v1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_IsLittleEndian:Z

    .line 55
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readInteger(I)I

    move-result v0

    .line 56
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    .line 57
    const-string v1, "ExifTagEnumerator"

    const-string v2, "TIFF header offset : "

    iget v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", IFD0 offset : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    iput v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    .line 62
    iput v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_IsLittleEndian:Z

    goto :goto_0
.end method

.method private getTagDataOffset(Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataOffset(Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    return v0
.end method

.method private getTagDataOffset(Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    if-gez v0, :cond_0

    move v0, v1

    .line 284
    :goto_0
    return v0

    .line 239
    :cond_0
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v0, v0, -0x8

    invoke-direct {p0, v0}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readInteger(I)I

    move-result v4

    .line 240
    if-gtz v4, :cond_1

    move v0, v1

    .line 241
    goto :goto_0

    .line 245
    :cond_1
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagType:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 268
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 270
    :goto_1
    mul-int v5, v0, v4

    .line 273
    if-le v5, v3, :cond_3

    .line 275
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    iget v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v3, v3, -0x4

    invoke-direct {p0, v3}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readInteger(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 276
    iget-object v0, p1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    iget-object v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    array-length v3, v3

    if-le v0, v3, :cond_4

    :cond_2
    move v0, v1

    .line 277
    goto :goto_0

    .line 255
    :pswitch_1
    const/4 v0, 0x2

    .line 256
    goto :goto_1

    :pswitch_2
    move v0, v3

    .line 261
    goto :goto_1

    .line 265
    :pswitch_3
    const/16 v0, 0x8

    .line 266
    goto :goto_1

    .line 280
    :cond_3
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 281
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 282
    if-eqz p3, :cond_5

    .line 283
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    :cond_5
    move v0, v2

    .line 284
    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readInteger(I)I
    .locals 3

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 469
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private readShort(I)I
    .locals 3

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 489
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public currentIfd()Lcom/htc/camera/imaging/Ifd;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    return-object v0
.end method

.method public currentTagId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagId:I

    return v0
.end method

.method public getTagData()[B
    .locals 5

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    if-gez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 101
    :cond_0
    new-instance v0, Lcom/htc/camera/Reference;

    invoke-direct {v0}, Lcom/htc/camera/Reference;-><init>()V

    .line 102
    new-instance v1, Lcom/htc/camera/Reference;

    invoke-direct {v1}, Lcom/htc/camera/Reference;-><init>()V

    .line 103
    new-instance v2, Lcom/htc/camera/Reference;

    invoke-direct {v2}, Lcom/htc/camera/Reference;-><init>()V

    .line 104
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataOffset(Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 106
    :cond_1
    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    iget-object v0, v2, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    new-array v0, v2, [B

    .line 111
    iget-object v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getTagDataInteger()[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 183
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    if-gez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Lcom/htc/camera/Reference;

    invoke-direct {v0}, Lcom/htc/camera/Reference;-><init>()V

    .line 188
    new-instance v3, Lcom/htc/camera/Reference;

    invoke-direct {v3}, Lcom/htc/camera/Reference;-><init>()V

    .line 189
    invoke-direct {p0, v0, v3}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataOffset(Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    const/4 v0, 0x0

    .line 222
    :cond_1
    return-object v0

    .line 191
    :cond_2
    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 192
    iget-object v0, v3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 195
    new-array v0, v3, [I

    .line 196
    iget v4, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagType:I

    packed-switch v4, :pswitch_data_0

    .line 220
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 199
    :goto_0
    :pswitch_1
    if-ge v1, v3, :cond_1

    .line 200
    iget-object v4, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    aget-byte v4, v4, v2

    aput v4, v0, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :goto_1
    :pswitch_2
    if-ge v1, v3, :cond_1

    .line 205
    invoke-direct {p0, v2}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readInteger(I)I

    move-result v4

    aput v4, v0, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 208
    :goto_2
    :pswitch_3
    if-ge v1, v3, :cond_1

    .line 209
    iget-object v4, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    aget-byte v4, v4, v2

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x18

    aput v4, v0, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    :goto_3
    :pswitch_4
    if-ge v1, v3, :cond_1

    .line 213
    invoke-direct {p0, v2}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readShort(I)I

    move-result v4

    aput v4, v0, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 216
    :goto_4
    :pswitch_5
    if-ge v1, v3, :cond_1

    .line 217
    invoke-direct {p0, v2}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readShort(I)I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v0, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public read()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 357
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    if-gez v1, :cond_0

    .line 437
    :goto_0
    return v0

    .line 372
    :pswitch_0
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_ExifIfdOffset:I

    if-ltz v1, :cond_2

    .line 374
    sget-object v1, Lcom/htc/camera/imaging/Ifd;->Exif:Lcom/htc/camera/imaging/Ifd;

    iput-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    .line 375
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    iget v2, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_ExifIfdOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    .line 392
    :goto_1
    const-string v1, "ExifTagEnumerator"

    const-string v2, "read() - Move to IFD : "

    iget-object v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    iget-object v2, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_4

    .line 397
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    invoke-direct {p0, v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readShort(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RestTagCount:I

    .line 398
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    .line 399
    const-string v1, "ExifTagEnumerator"

    const-string v2, "read() - Tag count : "

    iget v3, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RestTagCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    :cond_0
    :goto_2
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RestTagCount:I

    if-gtz v1, :cond_5

    .line 367
    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    if-eqz v1, :cond_3

    .line 369
    sget-object v1, Lcom/htc/camera/imaging/ExifTagEnumerator$1;->$SwitchMap$com$htc$camera$imaging$Ifd:[I

    iget-object v2, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    invoke-virtual {v2}, Lcom/htc/camera/imaging/Ifd;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_1
    iput v4, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 379
    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_GpsIfdOffset:I

    if-ltz v1, :cond_1

    .line 381
    sget-object v1, Lcom/htc/camera/imaging/Ifd;->Gps:Lcom/htc/camera/imaging/Ifd;

    iput-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    .line 382
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RefHeaderPosition:I

    iget v2, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_GpsIfdOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    goto :goto_1

    .line 391
    :cond_3
    sget-object v1, Lcom/htc/camera/imaging/Ifd;->Ifd0:Lcom/htc/camera/imaging/Ifd;

    iput-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    goto :goto_1

    .line 403
    :cond_4
    iput v4, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 410
    :cond_5
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    iget-object v2, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_Buffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0xc

    if-le v1, v2, :cond_7

    .line 412
    :cond_6
    iput v4, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 417
    :cond_7
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RestTagCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_RestTagCount:I

    .line 418
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    invoke-direct {p0, v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readShort(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagId:I

    .line 419
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readShort(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagType:I

    .line 422
    iget-object v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentIfd:Lcom/htc/camera/imaging/Ifd;

    sget-object v2, Lcom/htc/camera/imaging/Ifd;->Ifd0:Lcom/htc/camera/imaging/Ifd;

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagId:I

    const v2, 0x8769

    if-ne v1, v2, :cond_8

    .line 424
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_ExifIfdOffset:I

    .line 425
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    goto :goto_2

    .line 428
    :cond_8
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentTagId:I

    const v2, 0x8825

    if-ne v1, v2, :cond_9

    .line 430
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lcom/htc/camera/imaging/ExifTagEnumerator;->readInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_GpsIfdOffset:I

    .line 431
    iget v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    goto/16 :goto_2

    .line 436
    :cond_9
    iget v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/camera/imaging/ExifTagEnumerator;->m_CurrentPosition:I

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
