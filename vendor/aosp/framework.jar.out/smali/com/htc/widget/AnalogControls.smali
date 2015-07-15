.class public Lcom/htc/widget/AnalogControls;
.super Ljava/lang/Object;
.source "AnalogControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AnalogControls$1;,
        Lcom/htc/widget/AnalogControls$AnalogRes;
    }
.end annotation


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.AnalogControls"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmPmColorDay:I

.field private mAmPmColorNight:I

.field private mAmPmOfDay:[Ljava/lang/CharSequence;

.field private mAnalogRes:Landroid/content/res/Resources;

.field private mAnaloglType:I

.field private mCellSizeHeight:I

.field private mCenterLine:Landroid/widget/TextView;

.field private mCenterLineSplit:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field public mCoverHandDay:Landroid/graphics/drawable/Drawable;

.field public mCoverHandNight:Landroid/graphics/drawable/Drawable;

.field private mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field public mDialDay:Landroid/graphics/drawable/Drawable;

.field public mDialNight:Landroid/graphics/drawable/Drawable;

.field private mDialPanel:Landroid/widget/ImageView;

.field private mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field private mFullThreshold:I

.field private mFullThresholdLand:I

.field private mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field private mHasUpperCaseKey:Z

.field public mHourHandDay:Landroid/graphics/drawable/Drawable;

.field public mHourHandNight:Landroid/graphics/drawable/Drawable;

.field public mMinuteHandDay:Landroid/graphics/drawable/Drawable;

.field public mMinuteHandNight:Landroid/graphics/drawable/Drawable;

.field private mMixDateColorDay:I

.field private mMixDateColorNight:I

.field private mRes:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/View;

.field public mSecondHandDay:Landroid/graphics/drawable/Drawable;

.field public mSecondHandNight:Landroid/graphics/drawable/Drawable;

.field private mSeperator:Ljava/lang/String;

.field private mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field private mSmallThreshold:I

.field private mSmallThresholdLand:I

.field private mSupportLand:Z

.field private mTimeSunRise:I

.field private mTimeSunSet:I

.field private mUpperCase:Z

.field private mWeekDate:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/AnalogControls;->mAnaloglType:I

    .line 75
    iput v1, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    .line 76
    iput v1, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    .line 78
    iput v1, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    .line 564
    return-void
.end method

.method private getAmPmString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 539
    const/4 v1, 0x0

    .line 544
    :goto_0
    return-object v1

    .line 542
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 544
    .local v0, "am_pm":I
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getAnalogRes(III)Lcom/htc/widget/AnalogControls$AnalogRes;
    .locals 3
    .param p1, "width"    # I
    .param p2, "smallThreshold"    # I
    .param p3, "fullThreshold"    # I

    .prologue
    .line 471
    sget-boolean v0, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.AnalogControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnalogRes: small ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,full="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 473
    iget v0, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    packed-switch v0, :pswitch_data_0

    .line 481
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    .line 500
    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    .line 479
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    .line 484
    :cond_1
    if-eqz p2, :cond_2

    .line 485
    if-ge p1, p2, :cond_2

    .line 486
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    .line 492
    :cond_2
    if-eqz p3, :cond_3

    .line 493
    if-le p1, p3, :cond_3

    .line 494
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDateString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "inFormat"    # Ljava/lang/String;

    .prologue
    .line 556
    if-nez p2, :cond_0

    const-string v1, "MMM d"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 558
    .local v0, "dateFormat":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .line 559
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    iget-boolean v3, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    invoke-static {v1, v2, v3}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 561
    :goto_1
    return-object v1

    .line 556
    .end local v0    # "dateFormat":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 561
    .restart local v0    # "dateFormat":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getFullRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "port"    # Landroid/os/Bundle;
    .param p3, "land"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 220
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/htc/widget/AnalogControls$AnalogRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>(Lcom/htc/widget/AnalogControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_HOUR_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 224
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_MINUTE_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 225
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_SECOND_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 226
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_COVER_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 228
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_HOUR_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 229
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_MINUTE_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 230
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_SECOND_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 231
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_COVER_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 233
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 234
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 235
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 236
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 237
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 238
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 239
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 240
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 242
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 243
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 244
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 245
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 246
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 247
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 248
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_DIAL_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 261
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_DIAL_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 262
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 251
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 252
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 253
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 254
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 255
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 256
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    goto :goto_0
.end method

.method private getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "port"    # Landroid/os/Bundle;
    .param p3, "land"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 130
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/htc/widget/AnalogControls$AnalogRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>(Lcom/htc/widget/AnalogControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_HOUR_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 135
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_MINUTE_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 136
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SECOND_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 137
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_COVER_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 139
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_HOUR_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 140
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_MINUTE_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 141
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SECOND_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 142
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_COVER_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 144
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 146
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 147
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 148
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 149
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 150
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 151
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 153
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 154
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 155
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 156
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 157
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 158
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 159
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_DIAL_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 172
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_DIAL_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 173
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 162
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 163
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 164
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 165
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 166
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 167
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    goto :goto_0
.end method

.method private getParentControls(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "view"    # Landroid/view/ViewGroup;
    .param p4, "port"    # Landroid/os/Bundle;
    .param p5, "land"    # Landroid/os/Bundle;

    .prologue
    .line 266
    sget-object v9, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 269
    :try_start_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 272
    .local v7, "hostContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v7    # "hostContext":Landroid/content/Context;
    :goto_0
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_DIAL_PANEL:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 281
    .local v5, "dial_panel":I
    if-eqz v5, :cond_0

    .line 282
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    .line 286
    :cond_0
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_WEEK_DATE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 287
    .local v8, "week_date":I
    if-eqz v8, :cond_1

    .line 288
    invoke-virtual {p3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mWeekDate:Landroid/widget/TextView;

    .line 291
    :cond_1
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_CENTER_LINE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 292
    .local v3, "centerLine":I
    if-eqz v3, :cond_2

    .line 293
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    .line 296
    :cond_2
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_CENTER_LINE_SPLIT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 297
    .local v4, "centerLineSplit":I
    if-eqz v4, :cond_3

    .line 298
    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    .line 302
    :cond_3
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_AM_PM:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, "am_pm":I
    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    .line 306
    :cond_4
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ARRAY_AM_PM_OF_DAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 307
    .local v2, "am_pm_of_day":I
    if-eqz v2, :cond_5

    .line 308
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    .line 311
    :cond_5
    sget-object v9, Lcom/htc/widget/AnalogConsts;->STRING_SEPERATOR:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mSeperator:Ljava/lang/String;

    .line 314
    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_AM_PM_DAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorDay:I

    .line 315
    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_AM_PM_NIGHT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorNight:I

    .line 317
    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_MIX_DATE_DAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorDay:I

    .line 318
    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_MIX_DATE_NIGHT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorNight:I

    .line 319
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 320
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    .line 321
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    .line 322
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mSmallThresholdLand:I

    .line 323
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mFullThresholdLand:I

    .line 330
    :goto_1
    sget-object v9, Lcom/htc/widget/AnalogConsts;->INT_SUN_RISE:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    .line 331
    sget-object v9, Lcom/htc/widget/AnalogConsts;->INT_SUN_SET:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    .line 332
    sget-object v9, Lcom/htc/widget/AnalogConsts;->INT_CELL_SIZE_HEIGHT:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    .line 334
    sget-boolean v9, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v9, :cond_6

    const-string v9, "com.htc.widget.AnalogControls"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sun rise="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,sun set="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cell size height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_6
    return-void

    .line 273
    .end local v1    # "am_pm":I
    .end local v2    # "am_pm_of_day":I
    .end local v3    # "centerLine":I
    .end local v4    # "centerLineSplit":I
    .end local v5    # "dial_panel":I
    .end local v8    # "week_date":I
    :catch_0
    move-exception v6

    .line 274
    .local v6, "e":Ljava/lang/Exception;
    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    .line 275
    const-string v9, "com.htc.widget.AnalogControls"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getParentControls: Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    .line 325
    .restart local v1    # "am_pm":I
    .restart local v2    # "am_pm_of_day":I
    .restart local v3    # "centerLine":I
    .restart local v4    # "centerLineSplit":I
    .restart local v5    # "dial_panel":I
    .restart local v8    # "week_date":I
    :cond_8
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    .line 326
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    goto/16 :goto_1
.end method

.method private getSmallRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "port"    # Landroid/os/Bundle;
    .param p3, "land"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 176
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/htc/widget/AnalogControls$AnalogRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>(Lcom/htc/widget/AnalogControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_HOUR_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 180
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_MINUTE_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 181
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_SECOND_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 182
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_COVER_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 184
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_HOUR_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 185
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_MINUTE_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 186
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_SECOND_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 187
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_COVER_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 188
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 189
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 190
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 191
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 192
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 193
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 194
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 195
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 197
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 198
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 199
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 200
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 201
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 202
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 203
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_DIAL_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 216
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_DIAL_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 217
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 206
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 207
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 208
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 209
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 210
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    .line 211
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    goto :goto_0
.end method

.method private getWeekString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 548
    const-string v1, "EE"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 549
    .local v0, "weekFormat":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    iget-boolean v3, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    invoke-static {v1, v2, v3}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 552
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPanelRes(Lcom/htc/widget/AnalogControls$AnalogRes;Z)V
    .locals 2
    .param p1, "analogRes"    # Lcom/htc/widget/AnalogControls$AnalogRes;
    .param p2, "isPort"    # Z

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$100(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mHourHandDay:Landroid/graphics/drawable/Drawable;

    .line 508
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mMinuteHandDay:Landroid/graphics/drawable/Drawable;

    .line 509
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$300(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mSecondHandDay:Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$400(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mCoverHandDay:Landroid/graphics/drawable/Drawable;

    .line 512
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$500(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mHourHandNight:Landroid/graphics/drawable/Drawable;

    .line 513
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$600(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mMinuteHandNight:Landroid/graphics/drawable/Drawable;

    .line 514
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$700(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mSecondHandNight:Landroid/graphics/drawable/Drawable;

    .line 515
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$800(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mCoverHandNight:Landroid/graphics/drawable/Drawable;

    .line 518
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2300(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2400(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    .line 520
    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0
.end method

.method private setPanelTextVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    :cond_2
    return-void
.end method


# virtual methods
.method public getIsDay(II)Z
    .locals 4
    .param p1, "hour24H"    # I
    .param p2, "timeLocal"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 455
    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    if-eq v2, v3, :cond_2

    .line 456
    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    if-lt p2, v2, :cond_1

    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    if-ge p2, v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 459
    goto :goto_0

    .line 463
    :cond_2
    const/4 v2, 0x6

    if-lt p1, v2, :cond_3

    const/16 v2, 0x12

    if-lt p1, v2, :cond_0

    :cond_3
    move v0, v1

    .line 466
    goto :goto_0
.end method

.method public setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "root"    # Landroid/view/View;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mContext:Landroid/content/Context;

    .line 85
    :try_start_0
    sget-object v0, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 88
    .local v7, "resContext":Landroid/content/Context;
    if-eqz v7, :cond_2

    .line 89
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mRes:Landroid/content/res/Resources;

    .line 90
    sget-object v0, Lcom/htc/widget/AnalogConsts;->BUNDLE_DIMENS_PORT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 91
    .local v4, "port":Landroid/os/Bundle;
    sget-object v0, Lcom/htc/widget/AnalogConsts;->BUNDLE_DIMENS_LAND:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 92
    .local v5, "land":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    .line 95
    :cond_0
    sget-object v0, Lcom/htc/widget/AnalogConsts;->ANALOG_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/AnalogControls;->mAnaloglType:I

    .line 96
    sget-object v0, Lcom/htc/widget/AnalogConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/htc/widget/AnalogConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    .line 100
    :cond_1
    iget v0, p0, Lcom/htc/widget/AnalogControls;->mAnaloglType:I

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/AnalogControls;->getParentControls(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 127
    .end local v4    # "port":Landroid/os/Bundle;
    .end local v5    # "land":Landroid/os/Bundle;
    .end local v7    # "resContext":Landroid/content/Context;
    :cond_2
    :goto_1
    return-void

    .line 102
    .restart local v4    # "port":Landroid/os/Bundle;
    .restart local v5    # "land":Landroid/os/Bundle;
    .restart local v7    # "resContext":Landroid/content/Context;
    :pswitch_0
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v4    # "port":Landroid/os/Bundle;
    .end local v5    # "land":Landroid/os/Bundle;
    .end local v7    # "resContext":Landroid/content/Context;
    :catch_0
    move-exception v6

    .line 125
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "com.htc.widget.AnalogControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set analog controls: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "port":Landroid/os/Bundle;
    .restart local v5    # "land":Landroid/os/Bundle;
    .restart local v7    # "resContext":Landroid/content/Context;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getSmallRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getFullRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    .line 112
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getSmallRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getFullRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setPanelSize(II)V
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 384
    sget-boolean v14, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v14, :cond_0

    const-string v14, "com.htc.widget.AnalogControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setPanelSize: w ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", h="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v9, 0x1

    .line 386
    .local v9, "isPort":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    if-eqz v14, :cond_5

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    .line 387
    .local v12, "smallThreshold":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    if-eqz v14, :cond_7

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    .line 388
    .local v8, "fullThreshold":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12, v8}, Lcom/htc/widget/AnalogControls;->getAnalogRes(III)Lcom/htc/widget/AnalogControls$AnalogRes;

    move-result-object v4

    .line 389
    .local v4, "analogRes":Lcom/htc/widget/AnalogControls$AnalogRes;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/htc/widget/AnalogControls;->setPanelRes(Lcom/htc/widget/AnalogControls$AnalogRes;Z)V

    .line 391
    if-eqz p1, :cond_1

    if-nez p2, :cond_8

    .line 392
    :cond_1
    sget-boolean v14, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v14, :cond_2

    const-string v14, "com.htc.widget.AnalogControls"

    const-string/jumbo v15, "no mesaure to set, return"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    :goto_3
    return-void

    .line 385
    .end local v4    # "analogRes":Lcom/htc/widget/AnalogControls$AnalogRes;
    .end local v8    # "fullThreshold":I
    .end local v9    # "isPort":Z
    .end local v12    # "smallThreshold":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 386
    .restart local v9    # "isPort":Z
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/AnalogControls;->mSmallThresholdLand:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    goto :goto_1

    .line 387
    .restart local v12    # "smallThreshold":I
    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AnalogControls;->mFullThresholdLand:I

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    goto :goto_2

    .line 395
    .restart local v4    # "analogRes":Lcom/htc/widget/AnalogControls$AnalogRes;
    .restart local v8    # "fullThreshold":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    if-eqz v14, :cond_e

    if-nez v9, :cond_e

    const/4 v13, 0x1

    .line 397
    .local v13, "useLand":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_9

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 399
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v14, v10, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v14, :cond_9

    move-object v11, v10

    .line 400
    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 401
    .local v11, "lpRoot":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1700(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    :goto_5
    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 402
    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1600(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    :goto_6
    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "lpRoot":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_a

    .line 409
    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1800(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v2

    .line 410
    .local v2, "ampmPaddingTop":I
    :goto_7
    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2100(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v3

    .line 411
    .local v3, "ampmTextSize":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    const/4 v14, -0x1

    if-eq v3, v14, :cond_a

    .line 413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    .end local v2    # "ampmPaddingTop":I
    .end local v3    # "ampmTextSize":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_b

    .line 419
    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1900(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    .line 420
    .local v6, "centerLinePaddingTop":I
    :goto_9
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    .line 421
    .local v7, "centerLineTextSize":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v6, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    const/4 v14, -0x1

    if-eq v7, v14, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    const/4 v15, 0x0

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 428
    .end local v6    # "centerLinePaddingTop":I
    .end local v7    # "centerLineTextSize":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_c

    .line 429
    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1900(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    .line 430
    .restart local v6    # "centerLinePaddingTop":I
    :goto_b
    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2000(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v5

    .line 431
    .local v5, "centerLinePaddingRight":I
    :goto_c
    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    .line 432
    .restart local v7    # "centerLineTextSize":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v6, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 433
    const/4 v14, -0x1

    if-eq v7, v14, :cond_c

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    const/4 v15, 0x0

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 438
    .end local v5    # "centerLinePaddingRight":I
    .end local v6    # "centerLinePaddingTop":I
    .end local v7    # "centerLineTextSize":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    if-eqz v14, :cond_d

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 440
    .restart local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, p1

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 441
    move/from16 v0, p2

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    if-eqz v12, :cond_2

    .line 446
    move/from16 v0, p1

    if-ge v0, v12, :cond_18

    .line 447
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/widget/AnalogControls;->setPanelTextVisibility(I)V

    goto/16 :goto_3

    .line 395
    .end local v13    # "useLand":Z
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 401
    .restart local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v11    # "lpRoot":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v13    # "useLand":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1000(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    goto/16 :goto_5

    .line 402
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$900(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    goto/16 :goto_6

    .line 409
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "lpRoot":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1100(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v2

    goto/16 :goto_7

    .line 410
    .restart local v2    # "ampmPaddingTop":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1400(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v3

    goto/16 :goto_8

    .line 419
    .end local v2    # "ampmPaddingTop":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    goto/16 :goto_9

    .line 420
    .restart local v6    # "centerLinePaddingTop":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1500(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    goto/16 :goto_a

    .line 429
    .end local v6    # "centerLinePaddingTop":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    goto/16 :goto_b

    .line 430
    .restart local v6    # "centerLinePaddingTop":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1300(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v5

    goto/16 :goto_c

    .line 431
    .restart local v5    # "centerLinePaddingRight":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1500(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    goto/16 :goto_d

    .line 449
    .end local v5    # "centerLinePaddingRight":I
    .end local v6    # "centerLinePaddingTop":I
    :cond_18
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/widget/AnalogControls;->setPanelTextVisibility(I)V

    goto/16 :goto_3
.end method

.method public updatePanel(Z)V
    .locals 4
    .param p1, "isDay"    # Z

    .prologue
    .line 359
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorDay:I

    .line 360
    .local v0, "colorAmPm":I
    :goto_0
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorDay:I

    .line 362
    .local v1, "colorDate":I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 363
    if-eqz p1, :cond_6

    .line 364
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 379
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    :cond_3
    return-void

    .line 359
    .end local v0    # "colorAmPm":I
    .end local v1    # "colorDate":I
    :cond_4
    iget v0, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorNight:I

    goto :goto_0

    .line 360
    .restart local v0    # "colorAmPm":I
    :cond_5
    iget v1, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorNight:I

    goto :goto_1

    .line 366
    .restart local v1    # "colorDate":I
    :cond_6
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public updateWeekDate(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mWeekDate:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 339
    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 340
    .local v0, "weekDate":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mWeekDate:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    iget-boolean v4, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    invoke-static {v2, v3, v4}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .end local v0    # "weekDate":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/widget/AnalogControls;->getWeekString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/AnalogControls;->mSeperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/AnalogControls;->getDateString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/AnalogControls;->getDateString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/htc/widget/AnalogControls;->getWeekString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 354
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/htc/widget/AnalogControls;->getAmPmString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_3
    return-void
.end method
