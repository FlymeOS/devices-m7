.class Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;
.super Ljava/lang/Object;
.source "HtcInputFieldUtil.java"


# static fields
.field static final FONT_STYLE_DARK:I

.field static final FONT_STYLE_FULL:I

.field static final FONT_STYLE_LIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/htc/lib1/cc/k;->input_default_m:I

    sput v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_LIGHT:I

    .line 46
    sget v0, Lcom/htc/lib1/cc/k;->b_button_primary_l:I

    sput v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_DARK:I

    .line 47
    sget v0, Lcom/htc/lib1/cc/k;->list_body_primary_m:I

    sput v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_FULL:I

    return-void
.end method

.method static getDefaultFontStyleByMode(I)I
    .locals 1

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    sget v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_LIGHT:I

    .line 72
    :goto_0
    return v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 67
    sget v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_DARK:I

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 69
    sget v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_FULL:I

    goto :goto_0

    .line 72
    :cond_2
    sget v0, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->FONT_STYLE_LIGHT:I

    goto :goto_0
.end method

.method static mapXMLMode(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    return v0

    .line 54
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
