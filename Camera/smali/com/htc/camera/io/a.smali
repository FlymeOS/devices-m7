.class final Lcom/htc/camera/io/a;
.super Ljava/lang/Object;
.source "DCFUtility.java"

# interfaces
.implements Lcom/htc/camera/io/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 157
    aget-object v0, p2, v3

    check-cast v0, Lcom/htc/camera/io/DCFInfo;

    .line 158
    aget-object v1, p2, v2

    check-cast v1, [I

    check-cast v1, [I

    .line 159
    iget-object v5, v0, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v3

    .line 165
    :goto_0
    if-ge v4, v6, :cond_0

    .line 167
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    :cond_0
    if-nez v4, :cond_2

    move v0, v2

    .line 195
    :goto_1
    return v0

    .line 169
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_2
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 182
    aget v8, v1, v3

    if-le v7, v8, :cond_3

    iget v8, v0, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-le v7, v8, :cond_4

    :cond_3
    move v0, v2

    .line 183
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 179
    const-string v0, "DCFUtility"

    const-string v1, "callback() - Invalid number format"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 180
    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 187
    goto :goto_1

    .line 190
    :cond_5
    aput v7, v1, v3

    .line 191
    iget v0, v0, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-ne v7, v0, :cond_6

    move v0, v3

    .line 192
    goto :goto_1

    :cond_6
    move v0, v2

    .line 195
    goto :goto_1
.end method
