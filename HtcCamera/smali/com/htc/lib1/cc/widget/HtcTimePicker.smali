.class public Lcom/htc/lib1/cc/widget/HtcTimePicker;
.super Landroid/widget/RelativeLayout;
.source "HtcTimePicker.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/ad;


# instance fields
.field private final mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

.field private mContext:Landroid/content/Context;

.field private mCurrentAMPM:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSecond:I

.field private mCustomWidth:I

.field private mDrawFocusIndicator:Z

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndSecond:I

.field private mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field private final mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

.field private mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

.field private mIsFirstCreate:Z

.field private mIsHourInit:Z

.field private mIsMinuteInit:Z

.field private mIsMultiStop:Z

.field private mIsSecondInit:Z

.field private final mLabelAmPm:Landroid/widget/TextView;

.field private final mLabelHour:Landroid/widget/TextView;

.field private final mLabelMinute:Landroid/widget/TextView;

.field private final mLabelSecond:Landroid/widget/TextView;

.field private mLparams:[Landroid/view/ViewGroup$LayoutParams;

.field private mMaxHour:I

.field private final mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

.field private mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

.field private mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

.field private final mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

.field private mSetCustomWidth:Z

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartSecond:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

    .line 74
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    .line 75
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 76
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 77
    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMaxHour:I

    .line 78
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 80
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 81
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 82
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 83
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 84
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsFirstCreate:Z

    .line 94
    new-array v0, v6, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    .line 920
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCustomWidth:I

    .line 921
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSetCustomWidth:Z

    .line 166
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    .line 167
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 168
    sget v2, Lcom/htc/lib1/cc/i;->timer_table3:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 170
    sget v0, Lcom/htc/lib1/cc/g;->hour_table_view:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 171
    sget v0, Lcom/htc/lib1/cc/g;->minute_table_view:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 172
    sget v0, Lcom/htc/lib1/cc/g;->second_table_view:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 173
    sget v0, Lcom/htc/lib1/cc/g;->ampm_table_view:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 175
    sget v0, Lcom/htc/lib1/cc/g;->hour_label:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/htc/lib1/cc/g;->minute_label:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    .line 177
    sget v0, Lcom/htc/lib1/cc/g;->second_label:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    .line 178
    sget v0, Lcom/htc/lib1/cc/g;->ampm_label:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    .line 180
    invoke-static {p1}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    .line 181
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    const/16 v0, 0x3b

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 191
    const/16 v0, 0x3b

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 193
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 194
    const/16 v0, 0xc

    invoke-virtual {p0, v4, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setHourRange(II)V

    .line 195
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 197
    new-array v0, v5, [Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/htc/lib1/cc/j;->am:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 199
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/htc/lib1/cc/j;->pm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 201
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_4

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_5

    .line 202
    :cond_4
    const-string v2, "AM"

    aput-object v2, v0, v1

    .line 203
    const-string v2, "PM"

    aput-object v2, v0, v4

    .line 205
    :cond_5
    invoke-virtual {p0, v1, v4, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 213
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 214
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 215
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 217
    invoke-virtual {p0, p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V

    .line 218
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsFirstCreate:Z

    .line 220
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    if-nez v0, :cond_8

    const-string v0, "Hour"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setKeyOfPicker(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    if-nez v0, :cond_9

    const-string v0, "Minute"

    :goto_2
    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setKeyOfPicker(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const-string v0, "Second"

    :goto_3
    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setKeyOfPicker(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    const-string v2, "AmPm"

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setKeyOfPicker(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->initAllAboutFocus(Landroid/content/Context;)V

    .line 227
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aput-object v2, v0, v6

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    move v0, v1

    .line 229
    :goto_4
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 230
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 231
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setFocusable(Z)V

    .line 232
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4, p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->usingTwoLayerFocus(ZLandroid/view/ViewGroup;)V

    .line 229
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 207
    :cond_7
    const/16 v0, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setHourRange(II)V

    .line 208
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 220
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 222
    :cond_a
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 236
    :cond_b
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setFocusable(Z)V

    .line 237
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setDescendantFocusability(I)V

    .line 238
    return-void
.end method

.method private findChildShouldBeFocused()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    aget-object v1, v1, v0

    .line 291
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 295
    :goto_1
    if-eqz v0, :cond_0

    .line 296
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setDescendantFocusability(I)V

    .line 297
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->requestFocus()Z

    .line 300
    :cond_0
    return-void

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private giveMeThePickerInstance(I)Lcom/htc/lib1/cc/widget/HtcNumberPicker;
    .locals 2

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1040
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 1045
    :cond_0
    :goto_0
    return-object v0

    .line 1041
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0

    .line 1042
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0

    .line 1043
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0
.end method

.method private handleAccessibilityOnDataSet(Lcom/htc/lib1/cc/widget/HtcNumberPicker;I)V
    .locals 2

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 706
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    const-string v0, "PM"

    .line 703
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 704
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getKeyOfPicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 701
    :cond_1
    const-string v0, "AM"

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initAllAboutFocus(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    .line 242
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 246
    :cond_0
    return-void
.end method

.method private setAllPickerWidth(I)V
    .locals 1

    .prologue
    .line 980
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCustomWidth:I

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSetCustomWidth:Z

    .line 982
    return-void
.end method

.method private setPickerMargin(Lcom/htc/lib1/cc/widget/HtcNumberPicker;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 5

    .prologue
    .line 888
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ltz v0, :cond_0

    .line 891
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 893
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private setPickerTitle(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 881
    if-eqz p1, :cond_1

    .line 882
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 885
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 253
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 254
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 255
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 256
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 258
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mDrawFocusIndicator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    :cond_0
    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V
    .locals 1

    .prologue
    .line 481
    if-eqz p1, :cond_3

    .line 482
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V

    .line 487
    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getCurrentAmPm()I

    move-result v1

    .line 559
    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0xc

    .line 561
    :cond_1
    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getPickerChildheight()I
    .locals 2

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 755
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 759
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0

    .line 759
    :cond_3
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getMyTableChildHeight()I

    move-result v0

    goto :goto_1
.end method

.method public getTableViewSlideOffset()I
    .locals 2

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1056
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    .line 1060
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1057
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    goto :goto_0

    .line 1060
    :cond_3
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTableViewSlideOffset()I

    move-result v0

    goto :goto_1
.end method

.method public isTheMostLeftPicker(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    const/4 v1, 0x1

    .line 309
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 310
    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isTheMostRightPicker(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    const/4 v1, 0x1

    .line 326
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mPickers:[Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 327
    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getRight()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 326
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onDataSet(Lcom/htc/lib1/cc/widget/HtcNumberPicker;I)V
    .locals 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    .line 685
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 686
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/ai;->a(Lcom/htc/lib1/cc/widget/HtcTimePicker;III)V

    .line 695
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->handleAccessibilityOnDataSet(Lcom/htc/lib1/cc/widget/HtcNumberPicker;I)V

    .line 696
    return-void

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_3

    .line 688
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    .line 689
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/ai;->a(Lcom/htc/lib1/cc/widget/HtcTimePicker;III)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 692
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/lib1/cc/widget/ai;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/ai;->a(Lcom/htc/lib1/cc/widget/HtcTimePicker;III)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mDrawFocusIndicator:Z

    .line 267
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 272
    sparse-switch p1, :sswitch_data_0

    .line 278
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 275
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->findChildShouldBeFocused()V

    goto :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 934
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 936
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSetCustomWidth:Z

    if-eqz v0, :cond_2

    move v1, v2

    .line 937
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 938
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 939
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 940
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCustomWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCustomWidth:I

    :goto_1
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 941
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 940
    :cond_0
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_1

    .line 943
    :cond_1
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSetCustomWidth:Z

    .line 945
    :cond_2
    return-void
.end method

.method public setAmPmRange(II[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    sget v1, Lcom/htc/lib1/cc/k;->fixed_time_pick_primary_s:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setTextStyle(I)V

    .line 647
    return-void
.end method

.method public setCountDownMode(Z)V
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    move-result-object v0

    .line 1006
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCountDownMode(Z)V

    .line 1008
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    move-result-object v0

    .line 1009
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCountDownMode(Z)V

    .line 1010
    :cond_1
    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 3

    .prologue
    .line 537
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 538
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 539
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string v0, " PM"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getKeyOfPicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 540
    return-void

    .line 539
    :cond_0
    const-string v0, " AM"

    goto :goto_0
.end method

.method public setCurrentHour(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0xc

    .line 516
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 517
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentHour:I

    .line 518
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 519
    if-lt p1, v0, :cond_1

    .line 520
    if-ne p1, v0, :cond_0

    .line 521
    :goto_0
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 528
    :goto_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 529
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getKeyOfPicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 530
    return-void

    .line 520
    :cond_0
    add-int/lit8 v0, p1, -0xc

    goto :goto_0

    .line 523
    :cond_1
    if-nez p1, :cond_2

    .line 524
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    goto :goto_1

    :cond_2
    move v0, p1

    .line 523
    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setCurrentMinute(I)V
    .locals 3

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 495
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 496
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 497
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getKeyOfPicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 3

    .prologue
    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 506
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 507
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 508
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getKeyOfPicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 905
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 906
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 907
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 908
    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setHourPickerTitle(Ljava/lang/String;I)V

    .line 792
    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setHourPickerTitle(Ljava/lang/String;ILandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 803
    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;ILandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setPickerTitle(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 813
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-direct {p0, v0, p3}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setPickerMargin(Lcom/htc/lib1/cc/widget/HtcNumberPicker;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 814
    return-void
.end method

.method public setHourRange(II)V
    .locals 1

    .prologue
    .line 609
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMaxHour:I

    .line 610
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRange(II)V

    .line 611
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mStartHour:I

    .line 612
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mEndHour:I

    .line 613
    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setMinutePickerTitle(Ljava/lang/String;I)V

    .line 824
    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setMinutePickerTitle(Ljava/lang/String;ILandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 835
    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;ILandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setPickerTitle(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 845
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-direct {p0, v0, p3}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setPickerMargin(Lcom/htc/lib1/cc/widget/HtcNumberPicker;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 846
    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setMinuteRange(IIZ)V

    .line 601
    return-void
.end method

.method public setMinuteRange(IIZ)V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRange(II)V

    .line 588
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mStartMinute:I

    .line 589
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mEndMinute:I

    .line 590
    iput-boolean p3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 591
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz p3, :cond_0

    const/16 v0, 0xa

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    .line 592
    return-void

    .line 591
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V
    .locals 0

    .prologue
    .line 473
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

    .line 474
    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 714
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 715
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 716
    return-void
.end method

.method public setSecondPickerEnable(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 416
    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 427
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondPickerTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setSecondPickerTitle(Ljava/lang/String;I)V

    .line 856
    return-void
.end method

.method public setSecondPickerTitle(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setSecondPickerTitle(Ljava/lang/String;ILandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 867
    return-void
.end method

.method public setSecondPickerTitle(Ljava/lang/String;ILandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setPickerTitle(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 877
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-direct {p0, v0, p3}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setPickerMargin(Lcom/htc/lib1/cc/widget/HtcNumberPicker;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 878
    return-void
.end method

.method public setSecondRange(II)V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->setSecondRange(IIZ)V

    .line 622
    return-void
.end method

.method public setSecondRange(IIZ)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setRange(II)V

    .line 632
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mStartSecond:I

    .line 633
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mEndSecond:I

    .line 634
    iput-boolean p3, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 635
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    if-eqz p3, :cond_0

    const/16 v0, 0xa

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    .line 636
    return-void

    .line 635
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTableView()Lcom/htc/lib1/cc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTableView()Lcom/htc/lib1/cc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 658
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTableView()Lcom/htc/lib1/cc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 659
    return-void
.end method
