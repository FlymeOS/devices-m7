.class public Lcom/htc/widget/AnalogConsts;
.super Ljava/lang/Object;
.source "AnalogConsts.java"


# static fields
.field public static ANALOG_TYPE:Ljava/lang/String; = null

.field public static final ANALOG_TYPE_AUTO:I = 0x2

.field public static final ANALOG_TYPE_FULL:I = 0x3

.field public static final ANALOG_TYPE_HALF:I = 0x0

.field public static final ANALOG_TYPE_SMALL:I = 0x1

.field public static ARRAY_AM_PM_OF_DAY:Ljava/lang/String;

.field public static BOOLEAN_UPPER_CASE:Ljava/lang/String;

.field public static BUNDLE_DIMENS_LAND:Ljava/lang/String;

.field public static BUNDLE_DIMENS_PORT:Ljava/lang/String;

.field public static COLOR_AM_PM_DAY:Ljava/lang/String;

.field public static COLOR_AM_PM_NIGHT:Ljava/lang/String;

.field public static COLOR_MIX_DATE_DAY:Ljava/lang/String;

.field public static COLOR_MIX_DATE_NIGHT:Ljava/lang/String;

.field public static DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

.field public static DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

.field public static DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

.field public static DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

.field public static DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

.field public static DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

.field public static DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

.field public static DIMEN_FULL_THRESHOLD:Ljava/lang/String;

.field public static DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

.field public static DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

.field public static DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

.field public static DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

.field public static DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

.field public static DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

.field public static DIMEN_MARGIN_TOP:Ljava/lang/String;

.field public static DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

.field public static DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

.field public static DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

.field public static DRAWABLE_COVER_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_COVER_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_DIAL_DAY:Ljava/lang/String;

.field public static DRAWABLE_DIAL_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_FULL_COVER_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_FULL_COVER_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_FULL_DIAL_DAY:Ljava/lang/String;

.field public static DRAWABLE_FULL_DIAL_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_FULL_HOUR_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_FULL_HOUR_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_FULL_MINUTE_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_FULL_MINUTE_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_FULL_SECOND_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_FULL_SECOND_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_HOUR_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_HOUR_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_MINUTE_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_MINUTE_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_SECOND_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_SECOND_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_SMALL_COVER_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_SMALL_COVER_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_SMALL_DIAL_DAY:Ljava/lang/String;

.field public static DRAWABLE_SMALL_DIAL_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_SMALL_HOUR_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_SMALL_HOUR_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_SMALL_MINUTE_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_SMALL_MINUTE_HAND_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_SMALL_SECOND_HAND_DAY:Ljava/lang/String;

.field public static DRAWABLE_SMALL_SECOND_HAND_NIGHT:Ljava/lang/String;

.field public static ID_AM_PM:Ljava/lang/String;

.field public static ID_CENTER_LINE:Ljava/lang/String;

.field public static ID_CENTER_LINE_SPLIT:Ljava/lang/String;

.field public static ID_DIAL_PANEL:Ljava/lang/String;

.field public static ID_WEEK_DATE:Ljava/lang/String;

.field public static INT_CELL_SIZE_HEIGHT:Ljava/lang/String;

.field public static INT_SUN_RISE:Ljava/lang/String;

.field public static INT_SUN_SET:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static PACKAGE_NAME_HOST:Ljava/lang/String;

.field public static STRING_SEPERATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "package_name"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "package_name_host"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    .line 19
    const-string v0, "analog_type"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ANALOG_TYPE:Ljava/lang/String;

    .line 41
    const-string v0, "dial_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_DIAL_DAY:Ljava/lang/String;

    .line 45
    const-string v0, "hour_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_HOUR_HAND_DAY:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "minute_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_MINUTE_HAND_DAY:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "second_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SECOND_HAND_DAY:Ljava/lang/String;

    .line 57
    const-string v0, "cover_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_COVER_HAND_DAY:Ljava/lang/String;

    .line 61
    const-string v0, "dial_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_DIAL_NIGHT:Ljava/lang/String;

    .line 65
    const-string v0, "hour_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_HOUR_HAND_NIGHT:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "minute_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_MINUTE_HAND_NIGHT:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "second_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SECOND_HAND_NIGHT:Ljava/lang/String;

    .line 77
    const-string v0, "cover_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_COVER_HAND_NIGHT:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "small_dial_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_DIAL_DAY:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "small_hour_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_HOUR_HAND_DAY:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "small_minute_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_MINUTE_HAND_DAY:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "small_second_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_SECOND_HAND_DAY:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "small_cover_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_COVER_HAND_DAY:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "small_dial_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_DIAL_NIGHT:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "small_hour_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_HOUR_HAND_NIGHT:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "small_minute_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_MINUTE_HAND_NIGHT:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "small_second_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_SECOND_HAND_NIGHT:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "small_cover_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_COVER_HAND_NIGHT:Ljava/lang/String;

    .line 123
    const-string v0, "full_dial_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_DIAL_DAY:Ljava/lang/String;

    .line 127
    const-string v0, "full_hour_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_HOUR_HAND_DAY:Ljava/lang/String;

    .line 131
    const-string v0, "full_minute_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_MINUTE_HAND_DAY:Ljava/lang/String;

    .line 135
    const-string v0, "full_second_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_SECOND_HAND_DAY:Ljava/lang/String;

    .line 139
    const-string v0, "full_cover_hand_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_COVER_HAND_DAY:Ljava/lang/String;

    .line 143
    const-string v0, "full_dial_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_DIAL_NIGHT:Ljava/lang/String;

    .line 147
    const-string v0, "full_hour_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_HOUR_HAND_NIGHT:Ljava/lang/String;

    .line 151
    const-string v0, "full_minute_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_MINUTE_HAND_NIGHT:Ljava/lang/String;

    .line 155
    const-string v0, "full_second_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_SECOND_HAND_NIGHT:Ljava/lang/String;

    .line 159
    const-string v0, "full_cover_hand_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_COVER_HAND_NIGHT:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "seperator"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->STRING_SEPERATOR:Ljava/lang/String;

    .line 169
    const-string v0, "am_pm_of_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ARRAY_AM_PM_OF_DAY:Ljava/lang/String;

    .line 175
    const-string v0, "am_pm"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ID_AM_PM:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "week_date"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ID_WEEK_DATE:Ljava/lang/String;

    .line 183
    const-string v0, "center_line"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ID_CENTER_LINE:Ljava/lang/String;

    .line 187
    const-string v0, "center_line_split"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ID_CENTER_LINE_SPLIT:Ljava/lang/String;

    .line 191
    const-string v0, "dial_panel"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->ID_DIAL_PANEL:Ljava/lang/String;

    .line 196
    const-string v0, "color_am_pm_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->COLOR_AM_PM_DAY:Ljava/lang/String;

    .line 200
    const-string v0, "color_am_pm_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->COLOR_AM_PM_NIGHT:Ljava/lang/String;

    .line 204
    const-string v0, "color_mix_date_day"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->COLOR_MIX_DATE_DAY:Ljava/lang/String;

    .line 208
    const-string v0, "color_mix_date_night"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->COLOR_MIX_DATE_NIGHT:Ljava/lang/String;

    .line 214
    const-string v0, "dimens_port"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->BUNDLE_DIMENS_PORT:Ljava/lang/String;

    .line 218
    const-string v0, "dimens_land"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->BUNDLE_DIMENS_LAND:Ljava/lang/String;

    .line 223
    const-string/jumbo v0, "small_threshold"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    .line 227
    const-string v0, "full_threshold"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "margin_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    .line 237
    const-string/jumbo v0, "small_margin_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    .line 241
    const-string v0, "full_margin_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "margin_bottom"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "small_margin_bottom"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    .line 255
    const-string v0, "full_margin_bottom"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    .line 260
    const-string v0, "half_ampm_padding_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    .line 265
    const-string v0, "full_ampm_padding_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    .line 270
    const-string v0, "half_ampm_text_size"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    .line 275
    const-string v0, "full_ampm_text_size"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    .line 280
    const-string v0, "half_center_line_padding_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    .line 285
    const-string v0, "half_center_line_padding_right"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    .line 290
    const-string v0, "full_center_line_padding_top"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    .line 295
    const-string v0, "full_center_line_padding_right"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    .line 300
    const-string v0, "half_center_line_text_size"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    .line 305
    const-string v0, "full_center_line_text_size"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    .line 310
    const-string/jumbo v0, "sun_rise"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->INT_SUN_RISE:Ljava/lang/String;

    .line 315
    const-string/jumbo v0, "sun_set"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->INT_SUN_SET:Ljava/lang/String;

    .line 320
    const-string v0, "cell_size_height"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->INT_CELL_SIZE_HEIGHT:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "upper_case"

    sput-object v0, Lcom/htc/widget/AnalogConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
