.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final PHONE:I = 0x4

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mPhone:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 54
    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xd

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x1b

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    .line 267
    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    .line 54
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data

    nop

    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
        0x2cs
        0x2fs
        0x3bs
        0x23s
        0x2as
        0x24s
        0x28s
        0x29s
        0x20s
        0x4es
        0x70s
        0x50s
        0x77s
        0x57s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 87
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 88
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 90
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 91
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 92
    return-void

    .end local v0    # "kind":I
    :cond_1
    move v2, v1

    .line 90
    goto :goto_0
.end method

.method public constructor <init>(ZZZ)V
    .locals 5
    .param p1, "sign"    # Z
    .param p2, "decimal"    # Z
    .param p3, "phone"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 119
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 120
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 121
    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mPhone:Z

    .line 123
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-eqz p2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v4, v2

    if-eqz p3, :cond_3

    move v2, v3

    :goto_2
    or-int v0, v4, v2

    .line 124
    .local v0, "kind":I
    if-le v0, v3, :cond_0

    move v0, v1

    .line 126
    :cond_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 127
    return-void

    .end local v0    # "kind":I
    :cond_1
    move v4, v1

    .line 123
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4
    .param p0, "accepted"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 152
    .local v0, "dim":Landroid/text/method/DigitsKeyListener;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 155
    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 107
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 109
    .local v0, "kind":I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 113
    :goto_1
    return-object v1

    .end local v0    # "kind":I
    :cond_1
    move v2, v1

    .line 107
    goto :goto_0

    .line 112
    .restart local v0    # "kind":I
    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 113
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_1
.end method

.method public static getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;
    .locals 5
    .param p0, "sign"    # Z
    .param p1, "decimal"    # Z
    .param p2, "phone"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 131
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v4, v2

    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    or-int v0, v4, v2

    .line 132
    .local v0, "kind":I
    if-le v0, v3, :cond_0

    move v0, v1

    .line 134
    :cond_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 135
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 138
    :goto_3
    return-object v1

    .end local v0    # "kind":I
    :cond_1
    move v4, v1

    .line 131
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    .line 137
    .restart local v0    # "kind":I
    :cond_4
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(ZZZ)V

    aput-object v2, v1, v0

    .line 138
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_3
.end method

.method private static isDecimalPointChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 71
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSignChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 66
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 177
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 179
    .local v4, "out":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_1

    .line 263
    .end local v4    # "out":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v4

    .line 183
    .restart local v4    # "out":Ljava/lang/CharSequence;
    :cond_1
    if-eqz v4, :cond_2

    .line 184
    move-object p1, v4

    .line 185
    const/4 p2, 0x0

    .line 186
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 189
    :cond_2
    const/4 v5, -0x1

    .line 190
    .local v5, "sign":I
    const/4 v1, -0x1

    .line 191
    .local v1, "decimal":I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 197
    .local v2, "dlen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p5, :cond_5

    .line 198
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 200
    .local v0, "c":C
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 201
    move v5, v3

    .line 197
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    :cond_4
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 203
    move v1, v3

    goto :goto_2

    .line 206
    .end local v0    # "c":C
    :cond_5
    move/from16 v3, p6

    :goto_3
    if-ge v3, v2, :cond_8

    .line 207
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 209
    .restart local v0    # "c":C
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 210
    const-string v4, ""

    goto :goto_0

    .line 211
    :cond_6
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 212
    move v1, v3

    .line 206
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 223
    .end local v0    # "c":C
    :cond_8
    const/4 v7, 0x0

    .line 225
    .local v7, "stripped":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v3, p3, -0x1

    :goto_4
    if-lt v3, p2, :cond_12

    .line 226
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 227
    .restart local v0    # "c":C
    const/4 v6, 0x0

    .line 229
    .local v6, "strip":Z
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 230
    if-ne v3, p2, :cond_9

    if-eqz p5, :cond_b

    .line 231
    :cond_9
    const/4 v6, 0x1

    .line 245
    :cond_a
    :goto_5
    if-eqz v6, :cond_11

    .line 246
    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_f

    .line 247
    const-string v4, ""

    goto :goto_0

    .line 232
    :cond_b
    if-ltz v5, :cond_c

    .line 233
    const/4 v6, 0x1

    goto :goto_5

    .line 235
    :cond_c
    move v5, v3

    goto :goto_5

    .line 237
    :cond_d
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 238
    if-ltz v1, :cond_e

    .line 239
    const/4 v6, 0x1

    goto :goto_5

    .line 241
    :cond_e
    move v1, v3

    goto :goto_5

    .line 250
    :cond_f
    if-nez v7, :cond_10

    .line 251
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 254
    .restart local v7    # "stripped":Landroid/text/SpannableStringBuilder;
    :cond_10
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 225
    :cond_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 258
    .end local v0    # "c":C
    .end local v6    # "strip":Z
    :cond_12
    if-eqz v7, :cond_13

    move-object v4, v7

    .line 259
    goto/16 :goto_0

    .line 260
    :cond_13
    if-nez v4, :cond_0

    .line 263
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x2

    .line 160
    .local v0, "contentType":I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    .line 161
    or-int/lit16 v0, v0, 0x1000

    .line 163
    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    .line 164
    or-int/lit16 v0, v0, 0x2000

    .line 168
    :cond_1
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mPhone:Z

    if-eqz v1, :cond_2

    .line 169
    const/4 v0, 0x3

    .line 171
    :cond_2
    return v0
.end method
