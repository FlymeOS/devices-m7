.class final Lcom/htc/camera/io/b;
.super Ljava/lang/Object;
.source "DCFUtility.java"

# interfaces
.implements Lcom/htc/camera/io/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 224
    aget-object v0, p2, v3

    check-cast v0, Lcom/htc/camera/io/DCFInfo;

    .line 225
    aget-object v1, p2, v2

    check-cast v1, [I

    check-cast v1, [I

    .line 226
    iget-object v4, v0, Lcom/htc/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    .line 227
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 231
    if-lt v6, v5, :cond_0

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v0, v2

    .line 262
    :goto_0
    return v0

    :cond_1
    move v4, v5

    .line 237
    :goto_1
    if-ge v4, v6, :cond_2

    .line 239
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 243
    :cond_2
    if-ne v4, v5, :cond_4

    move v0, v2

    .line 244
    goto :goto_0

    .line 241
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 247
    :cond_4
    :try_start_0
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 254
    aget v5, v1, v3

    if-le v4, v5, :cond_5

    iget v5, v0, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v4, v5, :cond_5

    .line 256
    aput v4, v1, v3

    .line 257
    iget v0, v0, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    if-ne v4, v0, :cond_5

    move v0, v3

    .line 258
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    const-string v0, "DCFUtility"

    const-string v1, "callback() - Invalid number format"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 252
    goto :goto_0

    :cond_5
    move v0, v2

    .line 262
    goto :goto_0
.end method
