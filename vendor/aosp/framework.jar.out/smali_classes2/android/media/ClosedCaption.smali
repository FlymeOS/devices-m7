.class public final Landroid/media/ClosedCaption;
.super Ljava/lang/Object;
.source "ClosedCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ClosedCaption$CellBound;,
        Landroid/media/ClosedCaption$Region;,
        Landroid/media/ClosedCaption$HyperText;,
        Landroid/media/ClosedCaption$Karaoke;,
        Landroid/media/ClosedCaption$Style;,
        Landroid/media/ClosedCaption$Justification;,
        Landroid/media/ClosedCaption$CharPos;
    }
.end annotation


# static fields
.field public static final CC_KEY_BACKGROUND_COLOR:I = 0x76

.field public static final CC_KEY_BACKGROUND_OPACITY:I = 0x6e

.field public static final CC_KEY_CELL_EXTENT:I = 0x7f

.field public static final CC_KEY_CELL_ORIGIN:I = 0x7e

.field public static final CC_KEY_CELL_POS:I = 0x16

.field private static final CC_KEY_CELL_RESOLUTION:I = 0x80

.field public static final CC_KEY_DISPLAY_ALIGN:I = 0x78

.field public static final CC_KEY_END_TIME:I = 0x6f

.field public static final CC_KEY_EXTENT:I = 0x7a

.field public static final CC_KEY_FONT_FAMILY:I = 0x72

.field public static final CC_KEY_FONT_STYLE:I = 0x75

.field public static final CC_KEY_FONT_WEIGHT:I = 0x73

.field public static final CC_KEY_LANGUAGE_ID:I = 0x12

.field public static final CC_KEY_LOGO:I = 0x74

.field public static final CC_KEY_ORIGIN:I = 0x79

.field public static final CC_KEY_PADDING:I = 0x7b

.field public static final CC_KEY_PAINTON_NOTIFICATION:I = 0x14

.field public static final CC_KEY_POPON_NOTIFICATION:I = 0x13

.field public static final CC_KEY_REGION_ID:I = 0x77

.field public static final CC_KEY_STRUCT_REGION_LIST:I = 0x11

.field public static final CC_KEY_TEXT_ALIGN:I = 0x71

.field public static final CC_KEY_TEXT_COLOR:I = 0x70

.field public static final CC_KEY_TEXT_OPACITY:I = 0x6d

.field public static final CC_KEY_TEXT_PRESENTATION:I = 0x6c

.field public static final CC_LOGO_IMAGE:I = 0x7c

.field public static final CC_LOGO_LIST:I = 0x15

.field public static final CC_LOGO_REGION:I = 0x7d

.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field public static final KEY_DISPLAY_FLAGS:I = 0x1

.field public static final KEY_END_CHAR:I = 0x68

.field public static final KEY_FONT_ID:I = 0x69

.field public static final KEY_FONT_SIZE:I = 0x6a

.field public static final KEY_GLOBAL_SETTING:I = 0x65

.field public static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field public static final KEY_LOCAL_SETTING:I = 0x66

.field public static final KEY_SCROLL_DELAY:I = 0x5

.field public static final KEY_START_CHAR:I = 0x67

.field public static final KEY_START_TIME:I = 0x7

.field public static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field public static final KEY_STRUCT_FONT_LIST:I = 0x9

.field public static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field public static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field public static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field public static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field public static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field public static final KEY_STRUCT_TEXT:I = 0x10

.field public static final KEY_STRUCT_TEXT_POS:I = 0xe

.field public static final KEY_STYLE_FLAGS:I = 0x2

.field public static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field public static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x80

.field private static final LAST_PUBLIC_KEY:I = 0x16

.field private static final TAG:Ljava/lang/String; = "Closed Caption"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mCellBounds:Landroid/media/ClosedCaption$CellBound;

.field private mCellResolution:Ljava/lang/String;

.field private mEndTimeMs:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPopOn:I

.field private mJustification:Landroid/media/ClosedCaption$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoCellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$CellBound;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoRegionId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintOnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintOnTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$Region;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/ClosedCaption$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I

.field private mlogoData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    .line 120
    iput-object v1, p0, Landroid/media/ClosedCaption;->mBackgroundColor:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Landroid/media/ClosedCaption;->mlogoData:Ljava/lang/String;

    .line 122
    iput v2, p0, Landroid/media/ClosedCaption;->mScrollDelay:I

    .line 123
    iput v2, p0, Landroid/media/ClosedCaption;->mWrapText:I

    .line 124
    iput v2, p0, Landroid/media/ClosedCaption;->mEndTimeMs:I

    .line 126
    iput-object v1, p0, Landroid/media/ClosedCaption;->mBlinkingPosList:Ljava/util/List;

    .line 127
    iput-object v1, p0, Landroid/media/ClosedCaption;->mHighlightPosList:Ljava/util/List;

    .line 128
    iput-object v1, p0, Landroid/media/ClosedCaption;->mKaraokeList:Ljava/util/List;

    .line 129
    iput-object v1, p0, Landroid/media/ClosedCaption;->mStyleList:Ljava/util/List;

    .line 130
    iput-object v1, p0, Landroid/media/ClosedCaption;->mHyperTextList:Ljava/util/List;

    .line 131
    iput-object v1, p0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    .line 132
    iput-object v1, p0, Landroid/media/ClosedCaption;->mLanguageList:Ljava/util/List;

    .line 133
    iput-object v1, p0, Landroid/media/ClosedCaption;->mPaintOnList:Ljava/util/List;

    .line 134
    iput-object v1, p0, Landroid/media/ClosedCaption;->mPaintOnTimeList:Ljava/util/List;

    .line 135
    iput-object v1, p0, Landroid/media/ClosedCaption;->mLogoList:Ljava/util/List;

    .line 136
    iput-object v1, p0, Landroid/media/ClosedCaption;->mLogoRegionId:Ljava/util/List;

    .line 137
    iput-object v1, p0, Landroid/media/ClosedCaption;->mLogoPositionList:Ljava/util/List;

    .line 138
    iput-object v1, p0, Landroid/media/ClosedCaption;->mLogoCellList:Ljava/util/List;

    .line 140
    iput-object v1, p0, Landroid/media/ClosedCaption;->mTextBounds:Landroid/graphics/Rect;

    .line 141
    iput-object v1, p0, Landroid/media/ClosedCaption;->mTextChars:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Landroid/media/ClosedCaption;->mCellResolution:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Landroid/media/ClosedCaption;->mCellBounds:Landroid/media/ClosedCaption$CellBound;

    .line 146
    iput v2, p0, Landroid/media/ClosedCaption;->mIsPopOn:I

    .line 396
    invoke-direct {p0, p1}, Landroid/media/ClosedCaption;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    return-void
.end method

.method private getActionString(I)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 439
    sparse-switch p1, :sswitch_data_0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED Key("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "d":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 440
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_0
    const-string v0, "KEY_DISPLAY_FLAGS"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 441
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1
    const-string v0, "KEY_STYLE_FLAGS"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 442
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_2
    const-string v0, "KEY_BACKGROUND_COLOR_RGBA"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 443
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_3
    const-string v0, "KEY_HIGHLIGHT_COLOR_RGBA"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_4
    const-string v0, "KEY_SCROLL_DELAY"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 445
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_5
    const-string v0, "KEY_WRAP_TEXT"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 446
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_6
    const-string v0, "KEY_START_TIME"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 447
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_7
    const-string v0, "KEY_STRUCT_BLINKING_TEXT_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 448
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_8
    const-string v0, "KEY_STRUCT_FONT_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 449
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_9
    const-string v0, "KEY_STRUCT_HIGHLIGHT_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 450
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_a
    const-string v0, "KEY_STRUCT_HYPER_TEXT_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 451
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_b
    const-string v0, "KEY_STRUCT_KARAOKE_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 452
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_c
    const-string v0, "KEY_STRUCT_STYLE_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 453
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_d
    const-string v0, "KEY_STRUCT_TEXT_POS"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 454
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_e
    const-string v0, "KEY_STRUCT_JUSTIFICATION"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 455
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_f
    const-string v0, "KEY_STRUCT_TEXT"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_10
    const-string v0, "CC_KEY_STRUCT_REGION_LIST"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 457
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_11
    const-string v0, "CC_KEY_LANGUAGE_ID"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 458
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_12
    const-string v0, "CC_KEY_POPON_NOTIFICATION"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 459
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_13
    const-string v0, "CC_KEY_PAINTON_NOTIFICATION"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 461
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_14
    const-string v0, "KEY_GLOBAL_SETTING"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 462
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_15
    const-string v0, "KEY_LOCAL_SETTING"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 463
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_16
    const-string v0, "KEY_START_CHAR"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_17
    const-string v0, "KEY_END_CHAR"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 465
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_18
    const-string v0, "KEY_FONT_ID"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_19
    const-string v0, "KEY_FONT_SIZE"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1a
    const-string v0, "KEY_TEXT_COLOR_RGBA"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 468
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "CC_KEY_TEXT_PRESENTATION"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1c
    const-string v0, "CC_KEY_TEXT_OPACITY"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 470
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1d
    const-string v0, "CC_KEY_BACKGROUND_OPACITY"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 471
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1e
    const-string v0, "CC_KEY_END_TIME"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 472
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_1f
    const-string v0, "CC_KEY_TEXT_COLOR"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 473
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_20
    const-string v0, "CC_KEY_TEXT_ALIGN"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 474
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_21
    const-string v0, "CC_KEY_FONT_FAMILY"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 475
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_22
    const-string v0, "CC_KEY_FONT_WEIGHT"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 476
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_23
    const-string v0, "CC_KEY_LOGO"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 477
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_24
    const-string v0, "CC_KEY_FONT_STYLE"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_25
    const-string v0, "CC_KEY_BACKGROUND_COLOR"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 479
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_26
    const-string v0, "CC_KEY_REGION_ID"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 480
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_27
    const-string v0, "CC_KEY_DISPLAY_ALIGN"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 481
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_28
    const-string v0, "CC_KEY_ORIGIN"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 482
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_29
    const-string v0, "CC_KEY_EXTENT"

    .restart local v0    # "d":Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v0    # "d":Ljava/lang/String;
    :sswitch_2a
    const-string v0, "CC_KEY_PADDING"

    .restart local v0    # "d":Ljava/lang/String;
    goto/16 :goto_0

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x65 -> :sswitch_14
        0x66 -> :sswitch_15
        0x67 -> :sswitch_16
        0x68 -> :sswitch_17
        0x69 -> :sswitch_18
        0x6a -> :sswitch_19
        0x6b -> :sswitch_1a
        0x6c -> :sswitch_1b
        0x6d -> :sswitch_1c
        0x6e -> :sswitch_1d
        0x6f -> :sswitch_1e
        0x70 -> :sswitch_1f
        0x71 -> :sswitch_20
        0x72 -> :sswitch_21
        0x73 -> :sswitch_22
        0x74 -> :sswitch_23
        0x75 -> :sswitch_24
        0x76 -> :sswitch_25
        0x77 -> :sswitch_26
        0x78 -> :sswitch_27
        0x79 -> :sswitch_28
        0x7a -> :sswitch_29
        0x7b -> :sswitch_2a
    .end sparse-switch
.end method

.method private isValidKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 1259
    if-lt p1, v0, :cond_0

    const/16 v1, 0x16

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x80

    if-le p1, v1, :cond_2

    .line 1261
    :cond_1
    const/4 v0, 0x0

    .line 1263
    :cond_2
    return v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 26
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 498
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-nez v3, :cond_0

    .line 500
    const/4 v3, 0x0

    .line 677
    :goto_0
    return v3

    .line 503
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 504
    .local v21, "type":I
    const/16 v3, 0x66

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 506
    const/4 v3, 0x7

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    .line 507
    const/4 v3, 0x0

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 511
    .local v16, "mStartTimeMs":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 514
    const/16 v3, 0x10

    move/from16 v0, v21

    if-eq v0, v3, :cond_2

    .line 515
    const/4 v3, 0x0

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 519
    .local v19, "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 520
    .local v18, "text":[B
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v3, v0

    if-nez v3, :cond_5

    .line 521
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mTextChars:Ljava/lang/String;

    .line 532
    .end local v16    # "mStartTimeMs":I
    .end local v18    # "text":[B
    .end local v19    # "textLen":I
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-lez v3, :cond_d

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 535
    .local v13, "key":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/ClosedCaption;->isValidKey(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 536
    const-string v3, "Closed Caption"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid Closed Caption key found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v3, 0x0

    goto :goto_0

    .line 523
    .end local v13    # "key":I
    .restart local v16    # "mStartTimeMs":I
    .restart local v18    # "text":[B
    .restart local v19    # "textLen":I
    :cond_5
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mTextChars:Ljava/lang/String;

    goto :goto_1

    .line 527
    .end local v16    # "mStartTimeMs":I
    .end local v18    # "text":[B
    .end local v19    # "textLen":I
    :cond_6
    const/16 v3, 0x65

    move/from16 v0, v21

    if-eq v0, v3, :cond_4

    .line 528
    const-string v3, "Closed Caption"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid Closed Caption key found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 540
    .restart local v13    # "key":I
    :cond_7
    const/16 v17, 0x0

    .line 542
    .local v17, "object":Ljava/lang/Object;
    sparse-switch v13, :sswitch_data_0

    .line 668
    .end local v17    # "object":Ljava/lang/Object;
    :goto_2
    if-eqz v17, :cond_4

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 544
    .restart local v17    # "object":Ljava/lang/Object;
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readStyle(Landroid/os/Parcel;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mStyleList:Ljava/util/List;

    move-object/from16 v17, v0

    .line 546
    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .line 549
    .local v17, "object":Ljava/lang/Object;
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readHighlight(Landroid/os/Parcel;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mHighlightPosList:Ljava/util/List;

    move-object/from16 v17, v0

    .line 551
    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .line 554
    .local v17, "object":Ljava/lang/Object;
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readKaraoke(Landroid/os/Parcel;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mKaraokeList:Ljava/util/List;

    move-object/from16 v17, v0

    .line 556
    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .line 559
    .local v17, "object":Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readHyperText(Landroid/os/Parcel;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mHyperTextList:Ljava/util/List;

    move-object/from16 v17, v0

    .line 562
    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .line 565
    .local v17, "object":Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readBlinkingText(Landroid/os/Parcel;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mBlinkingPosList:Ljava/util/List;

    move-object/from16 v17, v0

    .line 568
    .local v17, "object":Ljava/util/List;
    goto :goto_2

    .line 571
    .local v17, "object":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/ClosedCaption;->mWrapText:I

    .line 572
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ClosedCaption;->mWrapText:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 573
    .local v17, "object":Ljava/lang/Integer;
    goto :goto_2

    .line 577
    .local v17, "object":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 578
    .local v12, "horizontal":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 579
    .local v22, "vertical":I
    new-instance v3, Landroid/media/ClosedCaption$Justification;

    move/from16 v0, v22

    invoke-direct {v3, v12, v0}, Landroid/media/ClosedCaption$Justification;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mJustification:Landroid/media/ClosedCaption$Justification;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mJustification:Landroid/media/ClosedCaption$Justification;

    move-object/from16 v17, v0

    .line 582
    .local v17, "object":Landroid/media/ClosedCaption$Justification;
    goto/16 :goto_2

    .line 585
    .end local v12    # "horizontal":I
    .end local v22    # "vertical":I
    .local v17, "object":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 586
    .local v23, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 587
    .local v14, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 588
    .local v11, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 590
    .local v20, "top":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v24, v14, v23

    add-int v25, v20, v11

    move/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v3, v14, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mTextBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 595
    .end local v11    # "height":I
    .end local v14    # "left":I
    .end local v20    # "top":I
    .end local v23    # "width":I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 596
    .local v4, "columns":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 597
    .local v5, "rows":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 598
    .local v8, "cellwidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 599
    .local v6, "cellleft":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 600
    .local v9, "cellheight":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 601
    .local v7, "celltop":F
    new-instance v3, Landroid/media/ClosedCaption$CellBound;

    invoke-direct/range {v3 .. v9}, Landroid/media/ClosedCaption$CellBound;-><init>(IIFFFF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mCellBounds:Landroid/media/ClosedCaption$CellBound;

    .line 602
    const-string v3, "Closed Caption"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "TIMED mcell rect ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 608
    .end local v4    # "columns":I
    .end local v5    # "rows":I
    .end local v6    # "cellleft":F
    .end local v7    # "celltop":F
    .end local v8    # "cellwidth":F
    .end local v9    # "cellheight":F
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/ClosedCaption;->mScrollDelay:I

    .line 609
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ClosedCaption;->mScrollDelay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 610
    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 613
    .local v17, "object":Ljava/lang/Object;
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/ClosedCaption;->mEndTimeMs:I

    .line 614
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ClosedCaption;->mEndTimeMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 615
    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 618
    .local v17, "object":Ljava/lang/Object;
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 619
    .local v10, "colorLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 620
    .restart local v18    # "text":[B
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    array-length v3, v0

    if-nez v3, :cond_a

    .line 622
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mBackgroundColor:Ljava/lang/String;

    goto/16 :goto_2

    .line 624
    :cond_a
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mBackgroundColor:Ljava/lang/String;

    goto/16 :goto_2

    .line 630
    .end local v10    # "colorLen":I
    .end local v18    # "text":[B
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 631
    .local v15, "logoLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 632
    .restart local v18    # "text":[B
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v3, v0

    if-nez v3, :cond_c

    .line 634
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mlogoData:Ljava/lang/String;

    goto/16 :goto_2

    .line 636
    :cond_c
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/ClosedCaption;->mlogoData:Ljava/lang/String;

    goto/16 :goto_2

    .line 642
    .end local v15    # "logoLen":I
    .end local v18    # "text":[B
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readRegion(Landroid/os/Parcel;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    move-object/from16 v17, v0

    .line 644
    .local v17, "object":Ljava/util/List;
    goto/16 :goto_2

    .line 647
    .local v17, "object":Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readLanguage(Landroid/os/Parcel;)V

    goto/16 :goto_2

    .line 651
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/ClosedCaption;->mIsPopOn:I

    .line 652
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ClosedCaption;->mIsPopOn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 653
    .local v17, "object":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 656
    .local v17, "object":Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readPaintOn(Landroid/os/Parcel;)V

    goto/16 :goto_2

    .line 660
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Landroid/media/ClosedCaption;->readLogo(Landroid/os/Parcel;)V

    goto/16 :goto_2

    .line 677
    .end local v13    # "key":I
    .end local v17    # "object":Ljava/lang/Object;
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_9
        0x6 -> :sswitch_5
        0x8 -> :sswitch_4
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_0
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x11 -> :sswitch_d
        0x12 -> :sswitch_e
        0x13 -> :sswitch_f
        0x14 -> :sswitch_10
        0x15 -> :sswitch_11
        0x16 -> :sswitch_8
        0x6f -> :sswitch_a
        0x74 -> :sswitch_c
        0x76 -> :sswitch_b
    .end sparse-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1004
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1005
    .local v1, "endChar":I
    new-instance v0, Landroid/media/ClosedCaption$CharPos;

    invoke-direct {v0, v2, v1}, Landroid/media/ClosedCaption$CharPos;-><init>(II)V

    .line 1007
    .local v0, "blinkingPos":Landroid/media/ClosedCaption$CharPos;
    iget-object v3, p0, Landroid/media/ClosedCaption;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1008
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/ClosedCaption;->mBlinkingPosList:Ljava/util/List;

    .line 1011
    :cond_0
    iget-object v3, p0, Landroid/media/ClosedCaption;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 942
    .local v0, "endChar":I
    new-instance v1, Landroid/media/ClosedCaption$CharPos;

    invoke-direct {v1, v2, v0}, Landroid/media/ClosedCaption$CharPos;-><init>(II)V

    .line 944
    .local v1, "pos":Landroid/media/ClosedCaption$CharPos;
    iget-object v3, p0, Landroid/media/ClosedCaption;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 945
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/ClosedCaption;->mHighlightPosList:Ljava/util/List;

    .line 948
    :cond_0
    iget-object v3, p0, Landroid/media/ClosedCaption;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 978
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .local v2, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 981
    .local v4, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 982
    .local v6, "url":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 984
    .local v7, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 986
    .local v0, "alt":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 987
    .local v1, "altString":Ljava/lang/String;
    new-instance v3, Landroid/media/ClosedCaption$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/ClosedCaption$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 990
    .local v3, "hyperText":Landroid/media/ClosedCaption$HyperText;
    iget-object v8, p0, Landroid/media/ClosedCaption;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 991
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/ClosedCaption;->mHyperTextList:Ljava/util/List;

    .line 994
    :cond_0
    iget-object v8, p0, Landroid/media/ClosedCaption;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 958
    .local v4, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 959
    .local v1, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 960
    .local v3, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 962
    .local v0, "endChar":I
    new-instance v2, Landroid/media/ClosedCaption$Karaoke;

    invoke-direct {v2, v4, v1, v3, v0}, Landroid/media/ClosedCaption$Karaoke;-><init>(IIII)V

    .line 965
    .local v2, "kara":Landroid/media/ClosedCaption$Karaoke;
    iget-object v5, p0, Landroid/media/ClosedCaption;->mKaraokeList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 966
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/ClosedCaption;->mKaraokeList:Ljava/util/List;

    .line 968
    :cond_0
    iget-object v5, p0, Landroid/media/ClosedCaption;->mKaraokeList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    return-void
.end method

.method private readLanguage(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .local v2, "languageCount":I
    const-string v5, "Closed Caption"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the language count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .local v3, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 692
    .local v4, "text":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 695
    .local v1, "language":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ClosedCaption;->mLanguageList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 696
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/ClosedCaption;->mLanguageList:Ljava/util/List;

    .line 698
    :cond_0
    iget-object v5, p0, Landroid/media/ClosedCaption;->mLanguageList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "nameLen":I
    .end local v4    # "text":[B
    :cond_1
    return-void
.end method

.method private readLogo(Landroid/os/Parcel;)V
    .locals 34
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 708
    .local v22, "logoCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 710
    .local v28, "tmp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 711
    .local v20, "length":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 712
    .local v14, "data":[B
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>([B)V

    .line 713
    .local v12, "Logo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoList:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 714
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/ClosedCaption;->mLogoList:Ljava/util/List;

    .line 716
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 717
    .local v26, "regionLogo":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 718
    .local v25, "regionLength":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 719
    .local v24, "region":[B
    if-eqz v24, :cond_6

    .line 721
    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 722
    .local v27, "regionid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoRegionId:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_1

    .line 723
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/ClosedCaption;->mLogoRegionId:Ljava/util/List;

    .line 725
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v13

    .line 727
    .local v13, "arraySize":I
    const/16 v30, 0x0

    .line 728
    .local v30, "width":I
    const/16 v19, 0x0

    .line 729
    .local v19, "left":I
    const/4 v15, 0x0

    .line 730
    .local v15, "height":I
    const/16 v29, 0x0

    .line 731
    .local v29, "top":I
    const/4 v6, 0x0

    .line 732
    .local v6, "cellcolumn":I
    const/4 v7, 0x0

    .line 733
    .local v7, "cellrow":I
    const/4 v11, 0x0

    .line 734
    .local v11, "cellheight":F
    const/4 v9, 0x0

    .line 735
    .local v9, "celltop":F
    const/4 v10, 0x0

    .line 736
    .local v10, "cellwidth":F
    const/4 v8, 0x0

    .line 737
    .local v8, "cellleft":F
    const/16 v18, 0x0

    .line 738
    .local v18, "isPos":Z
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_2

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/ClosedCaption$Region;

    .line 740
    .local v21, "local":Landroid/media/ClosedCaption$Region;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ClosedCaption$Region;->regionID:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 741
    const-string v31, "Closed Caption"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "the matched region id logo="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ClosedCaption$Region;->regionID:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/ClosedCaption$Region;->hExtent:I

    move/from16 v30, v0

    .line 743
    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/ClosedCaption$Region;->xOrigin:I

    move/from16 v19, v0

    .line 744
    move-object/from16 v0, v21

    iget v15, v0, Landroid/media/ClosedCaption$Region;->wExtent:I

    .line 745
    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/ClosedCaption$Region;->yOrigin:I

    move/from16 v29, v0

    .line 746
    move-object/from16 v0, v21

    iget v10, v0, Landroid/media/ClosedCaption$Region;->cellhExtent:F

    .line 747
    move-object/from16 v0, v21

    iget v8, v0, Landroid/media/ClosedCaption$Region;->cellxOrigin:F

    .line 748
    move-object/from16 v0, v21

    iget v11, v0, Landroid/media/ClosedCaption$Region;->cellwExtent:F

    .line 749
    move-object/from16 v0, v21

    iget v9, v0, Landroid/media/ClosedCaption$Region;->cellyOrigin:F

    .line 750
    move-object/from16 v0, v21

    iget v6, v0, Landroid/media/ClosedCaption$Region;->cellColumn:I

    .line 751
    move-object/from16 v0, v21

    iget v7, v0, Landroid/media/ClosedCaption$Region;->cellRow:I

    .line 752
    const/16 v18, 0x1

    .line 756
    .end local v21    # "local":Landroid/media/ClosedCaption$Region;
    :cond_2
    if-eqz v18, :cond_5

    .line 757
    const-string v31, "Closed Caption"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Logo  rect ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int v33, v19, v30

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int v33, v29, v15

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v23, Landroid/graphics/Rect;

    add-int v31, v19, v30

    add-int v32, v29, v15

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 759
    .local v23, "logoPos":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoPositionList:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    .line 760
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/ClosedCaption;->mLogoPositionList:Ljava/util/List;

    .line 762
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoPositionList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v5, Landroid/media/ClosedCaption$CellBound;

    invoke-direct/range {v5 .. v11}, Landroid/media/ClosedCaption$CellBound;-><init>(IIFFFF)V

    .line 764
    .local v5, "logoCell":Landroid/media/ClosedCaption$CellBound;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoCellList:Ljava/util/List;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    .line 765
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/ClosedCaption;->mLogoCellList:Ljava/util/List;

    .line 767
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoCellList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    .end local v5    # "logoCell":Landroid/media/ClosedCaption$CellBound;
    .end local v23    # "logoPos":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mLogoList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v6    # "cellcolumn":I
    .end local v7    # "cellrow":I
    .end local v8    # "cellleft":F
    .end local v9    # "celltop":F
    .end local v10    # "cellwidth":F
    .end local v11    # "cellheight":F
    .end local v13    # "arraySize":I
    .end local v15    # "height":I
    .end local v17    # "index":I
    .end local v18    # "isPos":Z
    .end local v19    # "left":I
    .end local v27    # "regionid":Ljava/lang/String;
    .end local v29    # "top":I
    .end local v30    # "width":I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 738
    .restart local v6    # "cellcolumn":I
    .restart local v7    # "cellrow":I
    .restart local v8    # "cellleft":F
    .restart local v9    # "celltop":F
    .restart local v10    # "cellwidth":F
    .restart local v11    # "cellheight":F
    .restart local v13    # "arraySize":I
    .restart local v15    # "height":I
    .restart local v17    # "index":I
    .restart local v18    # "isPos":Z
    .restart local v19    # "left":I
    .restart local v21    # "local":Landroid/media/ClosedCaption$Region;
    .restart local v27    # "regionid":Ljava/lang/String;
    .restart local v29    # "top":I
    .restart local v30    # "width":I
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 772
    .end local v6    # "cellcolumn":I
    .end local v7    # "cellrow":I
    .end local v8    # "cellleft":F
    .end local v9    # "celltop":F
    .end local v10    # "cellwidth":F
    .end local v11    # "cellheight":F
    .end local v12    # "Logo":Ljava/lang/String;
    .end local v13    # "arraySize":I
    .end local v14    # "data":[B
    .end local v15    # "height":I
    .end local v17    # "index":I
    .end local v18    # "isPos":Z
    .end local v19    # "left":I
    .end local v20    # "length":I
    .end local v21    # "local":Landroid/media/ClosedCaption$Region;
    .end local v24    # "region":[B
    .end local v25    # "regionLength":I
    .end local v26    # "regionLogo":I
    .end local v27    # "regionid":Ljava/lang/String;
    .end local v28    # "tmp":I
    .end local v29    # "top":I
    .end local v30    # "width":I
    :cond_8
    return-void
.end method

.method private readPaintOn(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 782
    .local v2, "dataCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .local v0, "beginTime":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 785
    .local v4, "length":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 787
    .local v1, "data":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 790
    .local v5, "paintOn":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ClosedCaption;->mPaintOnList:Ljava/util/List;

    if-nez v6, :cond_0

    .line 791
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/media/ClosedCaption;->mPaintOnList:Ljava/util/List;

    .line 793
    :cond_0
    iget-object v6, p0, Landroid/media/ClosedCaption;->mPaintOnTimeList:Ljava/util/List;

    if-nez v6, :cond_1

    .line 794
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/media/ClosedCaption;->mPaintOnTimeList:Ljava/util/List;

    .line 796
    :cond_1
    iget-object v6, p0, Landroid/media/ClosedCaption;->mPaintOnTimeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object v6, p0, Landroid/media/ClosedCaption;->mPaintOnList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 799
    .end local v0    # "beginTime":I
    .end local v1    # "data":[B
    .end local v4    # "length":I
    .end local v5    # "paintOn":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readRegion(Landroid/os/Parcel;)V
    .locals 30
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1020
    const/16 v23, 0x0

    .line 1021
    .local v23, "endOfRegion":Z
    const/4 v3, 0x0

    .line 1022
    .local v3, "Id":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1023
    .local v4, "backgroundColor":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1024
    .local v5, "displayAlign":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1025
    .local v6, "xOrigin":I
    const/4 v7, -0x1

    .line 1026
    .local v7, "yOrigin":I
    const/4 v8, -0x1

    .line 1027
    .local v8, "hExtent":I
    const/4 v9, -0x1

    .line 1028
    .local v9, "wExtent":I
    const/4 v10, -0x1

    .line 1029
    .local v10, "beforeEdge":I
    const/4 v11, -0x1

    .line 1030
    .local v11, "afterEdge":I
    const/4 v12, -0x1

    .line 1031
    .local v12, "startEdge":I
    const/4 v13, -0x1

    .line 1032
    .local v13, "endEdge":I
    const/high16 v14, -0x40800000    # -1.0f

    .line 1033
    .local v14, "cellxOrigin":F
    const/high16 v15, -0x40800000    # -1.0f

    .line 1034
    .local v15, "cellyOrigin":F
    const/high16 v16, -0x40800000    # -1.0f

    .line 1035
    .local v16, "cellhExtent":F
    const/high16 v17, -0x40800000    # -1.0f

    .line 1036
    .local v17, "cellwExtent":F
    const/16 v19, -0x1

    .line 1037
    .local v19, "cellRow":I
    const/16 v18, -0x1

    .line 1038
    .local v18, "cellColumn":I
    const/16 v20, 0x0

    .line 1041
    .local v20, "isCellResolution":Z
    :goto_0
    if-nez v23, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v27

    if-lez v27, :cond_6

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1043
    .local v25, "key":I
    packed-switch v25, :pswitch_data_0

    .line 1114
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v27

    add-int/lit8 v27, v27, -0x4

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1115
    const/16 v23, 0x1

    goto :goto_0

    .line 1045
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1046
    .local v24, "idLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v26

    .line 1047
    .local v26, "text":[B
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 1048
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1050
    :cond_1
    new-instance v3, Ljava/lang/String;

    .end local v3    # "Id":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1052
    .restart local v3    # "Id":Ljava/lang/String;
    goto :goto_0

    .line 1055
    .end local v24    # "idLen":I
    .end local v26    # "text":[B
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1056
    .local v21, "colorLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v26

    .line 1057
    .restart local v26    # "text":[B
    if-eqz v26, :cond_2

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 1058
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1060
    :cond_3
    new-instance v4, Ljava/lang/String;

    .end local v4    # "backgroundColor":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1062
    .restart local v4    # "backgroundColor":Ljava/lang/String;
    goto :goto_0

    .line 1065
    .end local v21    # "colorLen":I
    .end local v26    # "text":[B
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1067
    const-string v27, "Closed Caption"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "the cell column = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "cell row"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1071
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1072
    .local v22, "displayLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v26

    .line 1073
    .restart local v26    # "text":[B
    if-eqz v26, :cond_4

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_5

    .line 1074
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1076
    :cond_5
    new-instance v5, Ljava/lang/String;

    .end local v5    # "displayAlign":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 1078
    .restart local v5    # "displayAlign":Ljava/lang/String;
    goto/16 :goto_0

    .line 1081
    .end local v22    # "displayLen":I
    .end local v26    # "text":[B
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1082
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1083
    goto/16 :goto_0

    .line 1086
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1088
    goto/16 :goto_0

    .line 1091
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1095
    goto/16 :goto_0

    .line 1098
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 1100
    const/16 v20, 0x1

    .line 1101
    const-string v27, "Closed Caption"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Inside cell origin"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1105
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 1107
    const/16 v20, 0x1

    .line 1108
    const-string v27, "Closed Caption"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Inside cell origin"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1121
    .end local v25    # "key":I
    :cond_6
    new-instance v2, Landroid/media/ClosedCaption$Region;

    invoke-direct/range {v2 .. v20}, Landroid/media/ClosedCaption$Region;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIFFFFIIZ)V

    .line 1127
    .local v2, "region":Landroid/media/ClosedCaption$Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    .line 1128
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    .line 1133
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    return-void

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 27
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 806
    const/16 v17, 0x0

    .line 807
    .local v17, "endOfStyle":Z
    const/4 v3, -0x1

    .line 808
    .local v3, "startChar":I
    const/4 v4, -0x1

    .line 809
    .local v4, "endChar":I
    const/4 v5, -0x1

    .line 810
    .local v5, "fontSize":I
    const/4 v6, 0x0

    .line 811
    .local v6, "isPopOn":Z
    const/4 v7, 0x0

    .line 812
    .local v7, "isRollUp":Z
    const/4 v8, 0x0

    .line 813
    .local v8, "isPaintOn":Z
    const/high16 v9, -0x40800000    # -1.0f

    .line 814
    .local v9, "textOpacity":F
    const/high16 v10, -0x40800000    # -1.0f

    .line 815
    .local v10, "backgroundOpacity":F
    const/4 v11, 0x0

    .line 816
    .local v11, "textAlign":Ljava/lang/String;
    const/4 v12, 0x0

    .line 817
    .local v12, "textColor":Ljava/lang/String;
    const/4 v13, 0x0

    .line 818
    .local v13, "fontStyle":Ljava/lang/String;
    const/4 v14, 0x0

    .line 819
    .local v14, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x0

    .line 821
    .local v15, "fontWeight":Ljava/lang/String;
    :goto_0
    if-nez v17, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v25

    if-lez v25, :cond_d

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 824
    .local v21, "key":I
    packed-switch v21, :pswitch_data_0

    .line 916
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v25

    add-int/lit8 v25, v25, -0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 917
    const/16 v17, 0x1

    goto :goto_0

    .line 826
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 827
    goto :goto_0

    .line 830
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 831
    goto :goto_0

    .line 834
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 836
    goto :goto_0

    .line 839
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 840
    .local v24, "text_flag":I
    rem-int/lit8 v25, v24, 0x2

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    .line 841
    :goto_1
    rem-int/lit8 v25, v24, 0x4

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    const/4 v7, 0x1

    .line 842
    :goto_2
    div-int/lit8 v25, v24, 0x4

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 844
    :goto_3
    goto :goto_0

    .line 840
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 841
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 842
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 847
    .end local v24    # "text_flag":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 849
    goto :goto_0

    .line 852
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 854
    goto :goto_0

    .line 857
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 858
    .local v23, "textAlignLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 859
    .local v22, "text":[B
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 860
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 862
    :cond_4
    new-instance v11, Ljava/lang/String;

    .end local v11    # "textAlign":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    .line 865
    .restart local v11    # "textAlign":Ljava/lang/String;
    goto :goto_0

    .line 868
    .end local v22    # "text":[B
    .end local v23    # "textAlignLen":I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 869
    .local v16, "colorLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 870
    .restart local v22    # "text":[B
    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 871
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 873
    :cond_6
    new-instance v12, Ljava/lang/String;

    .end local v12    # "textColor":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 876
    .restart local v12    # "textColor":Ljava/lang/String;
    goto/16 :goto_0

    .line 880
    .end local v16    # "colorLen":I
    .end local v22    # "text":[B
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 881
    .local v19, "fontStyleLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 882
    .restart local v22    # "text":[B
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 883
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 885
    :cond_8
    new-instance v13, Ljava/lang/String;

    .end local v13    # "fontStyle":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 888
    .restart local v13    # "fontStyle":Ljava/lang/String;
    goto/16 :goto_0

    .line 892
    .end local v19    # "fontStyleLen":I
    .end local v22    # "text":[B
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 893
    .local v18, "fontFamilyLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 894
    .restart local v22    # "text":[B
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 895
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 897
    :cond_a
    new-instance v14, Ljava/lang/String;

    .end local v14    # "fontFamily":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .line 900
    .restart local v14    # "fontFamily":Ljava/lang/String;
    goto/16 :goto_0

    .line 903
    .end local v18    # "fontFamilyLen":I
    .end local v22    # "text":[B
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 904
    .local v20, "fontWeightLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 905
    .restart local v22    # "text":[B
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_c

    .line 906
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 908
    :cond_c
    new-instance v15, Ljava/lang/String;

    .end local v15    # "fontWeight":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .line 911
    .restart local v15    # "fontWeight":Ljava/lang/String;
    goto/16 :goto_0

    .line 923
    .end local v20    # "fontWeightLen":I
    .end local v21    # "key":I
    .end local v22    # "text":[B
    :cond_d
    new-instance v2, Landroid/media/ClosedCaption$Style;

    invoke-direct/range {v2 .. v15}, Landroid/media/ClosedCaption$Style;-><init>(IIIZZZFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .local v2, "style":Landroid/media/ClosedCaption$Style;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mStyleList:Ljava/util/List;

    move-object/from16 v25, v0

    if-nez v25, :cond_e

    .line 928
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/ClosedCaption;->mStyleList:Ljava/util/List;

    .line 931
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ClosedCaption;->mStyleList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    return-void

    .line 824
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1273
    invoke-direct {p0, p1}, Landroid/media/ClosedCaption;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    const/4 v0, 0x1

    .line 1276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/media/ClosedCaption;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/media/ClosedCaption;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCellBounds()Landroid/media/ClosedCaption$CellBound;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/media/ClosedCaption;->mCellBounds:Landroid/media/ClosedCaption$CellBound;

    return-object v0
.end method

.method public getLanguageList()Ljava/util/List;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/media/ClosedCaption;->mLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoList()Ljava/util/List;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/media/ClosedCaption;->mLogoList:Ljava/util/List;

    return-object v0
.end method

.method public getLogoPosList()Ljava/util/List;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/media/ClosedCaption;->mLogoPositionList:Ljava/util/List;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 1296
    invoke-virtual {p0, p1}, Landroid/media/ClosedCaption;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaintOnList()Ljava/util/List;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/media/ClosedCaption;->mPaintOnList:Ljava/util/List;

    return-object v0
.end method

.method public getRegionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/media/ClosedCaption;->mRegionList:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/media/ClosedCaption;->mTextChars:Ljava/lang/String;

    return-object v0
.end method

.method public get_BlinkingText()Ljava/util/List;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/media/ClosedCaption;->mBlinkingPosList:Ljava/util/List;

    return-object v0
.end method

.method public get_EndTime()I
    .locals 1

    .prologue
    .line 1250
    iget v0, p0, Landroid/media/ClosedCaption;->mEndTimeMs:I

    return v0
.end method

.method public get_Highlight()Ljava/util/List;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Landroid/media/ClosedCaption;->mHighlightPosList:Ljava/util/List;

    return-object v0
.end method

.method public get_HyperText()Ljava/util/List;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/media/ClosedCaption;->mHyperTextList:Ljava/util/List;

    return-object v0
.end method

.method public get_Karaoke()Ljava/util/List;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/media/ClosedCaption;->mKaraokeList:Ljava/util/List;

    return-object v0
.end method

.method public get_ScrollDelay()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Landroid/media/ClosedCaption;->mScrollDelay:I

    return v0
.end method

.method public get_Style()Ljava/util/List;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/media/ClosedCaption;->mStyleList:Ljava/util/List;

    return-object v0
.end method

.method public get_WrapText()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Landroid/media/ClosedCaption;->mWrapText:I

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/media/ClosedCaption;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
