.class public Lcom/htc/lib1/cc/util/res/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final ALL_CAPS_LOCALE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib1/cc/util/res/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    return-void
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 244
    if-eqz p0, :cond_6

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_4

    .line 249
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 250
    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_2

    .line 253
    sget-object v3, Lcom/htc/lib1/cc/util/res/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 254
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 255
    const/4 v0, 0x1

    .line 274
    :cond_0
    :goto_1
    return v0

    .line 253
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_2
    const-string v1, "HtcResUtil"

    const-string v2, "Fail to get language."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    :cond_3
    const-string v1, "HtcResUtil"

    const-string v2, "Fail to get locale."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    :cond_4
    const-string v1, "HtcResUtil"

    const-string v2, "Fail to get configuration."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    :cond_5
    const-string v1, "HtcResUtil"

    const-string v2, "Fail to get res."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    :cond_6
    const-string v1, "HtcResUtil"

    const-string v2, "Context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;Z)V

    .line 157
    return-void
.end method

.method public static setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 105
    if-nez p2, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "textPaint can NOT be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    if-eqz p3, :cond_1

    .line 118
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 125
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 134
    :cond_2
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 138
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 141
    invoke-static {v1, v2, v3, p2}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->setTypefaceFromAttrs(Ljava/lang/String;IILandroid/text/TextPaint;)V

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method private static setTypeface(Landroid/graphics/Typeface;ILandroid/text/TextPaint;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    if-lez p1, :cond_4

    .line 200
    if-nez p0, :cond_0

    .line 201
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 206
    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 208
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 209
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int v3, p1, v0

    .line 210
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 211
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :goto_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 217
    :goto_4
    return-void

    .line 203
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 208
    goto :goto_1

    :cond_2
    move v0, v1

    .line 210
    goto :goto_2

    :cond_3
    move v0, v2

    .line 211
    goto :goto_3

    .line 213
    :cond_4
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 214
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 215
    invoke-virtual {p2, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_4
.end method

.method private static setTypefaceFromAttrs(Ljava/lang/String;IILandroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    if-eqz p0, :cond_0

    .line 166
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    :goto_0
    return-void

    .line 172
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_1
    invoke-static {v0, p2, p3}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->setTypeface(Landroid/graphics/Typeface;ILandroid/text/TextPaint;)V

    goto :goto_0

    .line 174
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 178
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 182
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 288
    const/4 p1, 0x0

    .line 290
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p0}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
