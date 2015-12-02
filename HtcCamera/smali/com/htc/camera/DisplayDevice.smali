.class public Lcom/htc/camera/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# static fields
.field public static final CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

.field public static final DEFAULT_SQUARE_PICTURE_SIZE:I

.field public static final FRONT_CAMERA_PREVIEW_HEIGHT_4x3:I

.field public static final FRONT_CAMERA_PREVIEW_HEIGHT_5x4:I

.field public static final FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

.field public static final FRONT_CAMERA_PREVIEW_SIZE_1x1:I

.field public static final FRONT_CAMERA_PREVIEW_WIDTH_4x3:I

.field public static final FRONT_CAMERA_PREVIEW_WIDTH_5x4:I

.field public static final FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

.field public static final MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

.field public static final MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

.field public static final MAIN_CAMERA_PREVIEW_SIZE_1x1:I

.field public static final MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

.field public static final MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

.field public static final NOT_SENSE_2_0:Z

.field public static final SCREEN_CENTER_X:I

.field public static final SCREEN_CENTER_Y:I

.field public static final SCREEN_HEIGHT:I

.field public static final SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

.field public static final SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

.field public static final SCREEN_WIDTH:I

.field private static mBundleSIE:Landroid/os/Bundle;

.field private static mHasSubCamera:Ljava/lang/Boolean;

.field private static mIsChinaRegion:Ljava/lang/Boolean;

.field private static mIsHtcDevice:Ljava/lang/Boolean;

.field private static mIsKDDI:Ljava/lang/Boolean;

.field private static mIsLowEndDevice:Ljava/lang/Boolean;

.field private static mIsSprint:Ljava/lang/Boolean;

.field private static mIsTablet:Ljava/lang/Boolean;

.field private static mIsVGA2ndCamera:Ljava/lang/Boolean;

.field private static mIsVerizon:Ljava/lang/Boolean;

.field private static mSupportStereoRecord:Ljava/lang/Boolean;

.field private static volatile mTotalMemory:Ljava/lang/Long;

.field private static mfrontCameraPosition:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v1, 0x2d0

    const/16 v2, 0x280

    const/16 v6, 0xf0

    const/16 v5, 0x110

    const/16 v3, 0x1e0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mBundleSIE:Landroid/os/Bundle;

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    .line 96
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    .line 97
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->width:I

    sput v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 98
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->height:I

    sput v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 99
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/camera/DisplayDevice;->SCREEN_CENTER_X:I

    .line 100
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    .line 101
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget-object v0, v0, Lcom/htc/camera/ScreenResolution;->aspectRatio:Lcom/htc/camera/AspectRatio;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RATIO:Lcom/htc/camera/AspectRatio;

    .line 104
    sget-object v0, Lcom/htc/camera/DisplayDevice$1;->$SwitchMap$com$htc$camera$ScreenResolution:[I

    sget-object v4, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v4}, Lcom/htc/camera/ScreenResolution;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 181
    const/16 v0, 0x500

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 182
    sput v1, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 183
    const/16 v0, 0x3c0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 184
    sput v1, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 185
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3c0

    :goto_0
    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 186
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    .line 191
    :goto_1
    sget-object v0, Lcom/htc/camera/DisplayDevice$1;->$SwitchMap$com$htc$camera$ScreenResolution:[I

    sget-object v4, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v4}, Lcom/htc/camera/ScreenResolution;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 226
    :pswitch_0
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 227
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 230
    :goto_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    sput v2, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 231
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_4
    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 232
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_5
    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_SIZE_1x1:I

    .line 233
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->FWVGA:Lcom/htc/camera/ScreenResolution;

    if-ne v0, v1, :cond_a

    const/16 v0, 0x260

    :goto_6
    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_5x4:I

    .line 234
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->FWVGA:Lcom/htc/camera/ScreenResolution;

    if-ne v0, v1, :cond_b

    :goto_7
    sput v3, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_5x4:I

    .line 245
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 246
    const-string v1, "sku_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 247
    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 248
    sget-object v0, Lcom/htc/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    .line 257
    :goto_8
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSIEBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mBundleSIE:Landroid/os/Bundle;

    .line 261
    return-void

    .line 107
    :pswitch_1
    const/16 v0, 0x780

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 108
    const/16 v0, 0x440

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 109
    const/16 v0, 0x5a0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 110
    const/16 v0, 0x440

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 111
    const/16 v0, 0x440

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 112
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto :goto_1

    .line 115
    :pswitch_2
    const/16 v0, 0x3c0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 116
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isBroadcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21c

    :goto_9
    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 117
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isBroadcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_a
    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 118
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isBroadcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x21c

    :goto_b
    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 119
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isBroadcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x21c

    :goto_c
    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 120
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 116
    :cond_0
    const/16 v0, 0x220

    goto :goto_9

    :cond_1
    move v0, v2

    .line 117
    goto :goto_a

    :cond_2
    move v0, v3

    .line 118
    goto :goto_b

    .line 119
    :cond_3
    const/16 v0, 0x220

    goto :goto_c

    .line 124
    :pswitch_3
    const/16 v0, 0x320

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 125
    sput v3, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 127
    sput v2, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 128
    sput v3, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 129
    sput v3, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 130
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 133
    :pswitch_4
    const/16 v0, 0x360

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 134
    sput v3, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 135
    sput v2, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 136
    sput v3, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 137
    sput v3, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 138
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 141
    :pswitch_5
    const/16 v0, 0x500

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 142
    const/16 v0, 0x2f0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 143
    const/16 v0, 0x3c0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 144
    sput v1, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 145
    const/16 v0, 0x2f0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 146
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 149
    :pswitch_6
    const/16 v0, 0x400

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 150
    const/16 v0, 0x260

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 151
    const/16 v0, 0x3c0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 152
    sput v1, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 153
    const/16 v0, 0x2f0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 154
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 157
    :pswitch_7
    const/16 v0, 0x190

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 158
    sput v6, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 159
    const/16 v0, 0x140

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 160
    sput v6, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 161
    sput v6, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 162
    sput v6, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 165
    :pswitch_8
    const/16 v0, 0x190

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 166
    const/16 v0, 0x140

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 167
    const/16 v0, 0x180

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 168
    const/16 v0, 0x120

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 169
    const/16 v0, 0x140

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 170
    sput v5, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    .line 173
    :pswitch_9
    const/16 v0, 0x120

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 174
    const/16 v0, 0xc0

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    .line 175
    const/16 v0, 0x140

    sput v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    .line 176
    sput v6, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    .line 177
    sput v6, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    .line 178
    sput v6, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 194
    :pswitch_a
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-nez v0, :cond_5

    .line 196
    const/16 v0, 0x3c0

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 197
    const/16 v0, 0x220

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    goto/16 :goto_2

    .line 201
    :cond_5
    sput v2, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 202
    const/16 v0, 0x170

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    goto/16 :goto_2

    .line 206
    :pswitch_b
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-nez v0, :cond_6

    .line 208
    const/16 v0, 0x320

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 209
    sput v3, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    goto/16 :goto_2

    .line 213
    :cond_6
    sput v2, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 214
    const/16 v0, 0x180

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    goto/16 :goto_2

    .line 218
    :pswitch_c
    const/16 v0, 0x4d0

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 219
    sput v1, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    goto/16 :goto_2

    .line 222
    :pswitch_d
    sput v2, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_WIDTH_WIDE:I

    .line 223
    const/16 v0, 0x1a0

    sput v0, Lcom/htc/camera/DisplayDevice;->FRONT_CAMERA_PREVIEW_HEIGHT_WIDE:I

    goto/16 :goto_2

    .line 230
    :cond_7
    sget v2, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_4x3:I

    goto/16 :goto_3

    .line 231
    :cond_8
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_4x3:I

    goto/16 :goto_4

    .line 232
    :cond_9
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_SIZE_1x1:I

    goto/16 :goto_5

    .line 233
    :cond_a
    const/16 v0, 0x2b0

    goto/16 :goto_6

    .line 234
    :cond_b
    const/16 v3, 0x220

    goto/16 :goto_7

    .line 249
    :cond_c
    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 250
    sget-object v0, Lcom/htc/camera/DisplayDevice$CustomMMS;->ATT:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_8

    .line 251
    :cond_d
    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 252
    sget-object v0, Lcom/htc/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_8

    .line 254
    :cond_e
    sget-object v0, Lcom/htc/camera/DisplayDevice$CustomMMS;->Default:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_8

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static canCancelFocus()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public static captrueFullSize()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public static getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 831
    new-instance v0, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;

    invoke-direct {v0}, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;-><init>()V

    .line 832
    invoke-virtual {v0, p0, v1, v1}, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 833
    return-object v0
.end method

.method public static getFrontCameraPosition()Lcom/htc/camera/DisplayDevice$FrontCameraPosition;
    .locals 3

    .prologue
    .line 619
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mfrontCameraPosition:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    if-nez v0, :cond_0

    .line 621
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 622
    const-string v1, "frontcamera_position"

    const-string v2, "Right"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    const-string v1, "Left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    sget-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mfrontCameraPosition:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    .line 633
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mfrontCameraPosition:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    return-object v0

    .line 626
    :cond_1
    const-string v1, "Right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    sget-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Right:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mfrontCameraPosition:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    goto :goto_0

    .line 629
    :cond_2
    sget-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Center:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mfrontCameraPosition:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 3

    .prologue
    .line 889
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mTotalMemory:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 891
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 892
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 893
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 894
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mTotalMemory:Ljava/lang/Long;

    .line 895
    const-string v0, "DisplayDevice"

    const-string v1, "getTotalMemory() - Total memory is "

    sget-object v2, Lcom/htc/camera/DisplayDevice;->mTotalMemory:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 897
    :cond_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mTotalMemory:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasSubCamera()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 840
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mHasSubCamera:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 842
    const-string v0, "DisplayDevice"

    const-string v2, "hasSubCamera() - Checking sub camera"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "/sys/android_camera2/sensor"

    aput-object v0, v6, v1

    const-string v0, "/sys/android_camera3/sensor"

    aput-object v0, v6, v4

    .line 848
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v1

    :goto_0
    if-ltz v5, :cond_4

    .line 852
    :try_start_0
    new-instance v1, Ljava/io/File;

    aget-object v2, v6, v5

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    const/4 v3, 0x0

    .line 858
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v1, 0x40

    invoke-direct {v2, v7, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 860
    if-eqz v1, :cond_3

    const-string v3, "subcam"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    .line 868
    :try_start_3
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 877
    :goto_1
    if-eqz v4, :cond_2

    .line 878
    const-string v0, "DisplayDevice"

    const-string v1, "hasSubCamera() - Has sub camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mHasSubCamera:Ljava/lang/Boolean;

    .line 883
    :cond_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mHasSubCamera:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 868
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_3
    :try_start_4
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 872
    :catch_0
    move-exception v1

    .line 874
    :goto_4
    const-string v2, "DisplayDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasSubCamera() - Fail to check sensor file \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v7, v6, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 848
    :cond_1
    :goto_5
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    goto :goto_0

    .line 880
    :cond_2
    const-string v0, "DisplayDevice"

    const-string v1, "hasSubCamera() - No sub camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 868
    :cond_3
    :try_start_5
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 872
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto :goto_4

    .line 868
    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_4
    move v4, v0

    goto :goto_1
.end method

.method public static isBroadcomPlatform()Z
    .locals 2

    .prologue
    .line 607
    sget-object v0, Lcom/htc/camera/HardwarePlatform;->CURRENT:Lcom/htc/camera/HardwarePlatform;

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Broadcom:Lcom/htc/camera/HardwarePlatform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHalfPCB()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public static isHtcDevice()Z
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsHtcDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->isHDKLib3SupportedInDevice()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsHtcDevice:Ljava/lang/Boolean;

    .line 268
    :cond_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsHtcDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKDDI()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 813
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsKDDI:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 815
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 816
    const-string v1, "sku_id"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 817
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 818
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsKDDI:Ljava/lang/Boolean;

    .line 823
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsKDDI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 820
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsKDDI:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isLowEndDevice()Z
    .locals 3

    .prologue
    .line 578
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsLowEndDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 580
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 581
    const-string v1, "is_low_end_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsLowEndDevice:Ljava/lang/Boolean;

    .line 584
    :cond_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsLowEndDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNvidiaPlatform()Z
    .locals 2

    .prologue
    .line 602
    sget-object v0, Lcom/htc/camera/HardwarePlatform;->CURRENT:Lcom/htc/camera/HardwarePlatform;

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Nvidia:Lcom/htc/camera/HardwarePlatform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmallRamDevice()Z
    .locals 4

    .prologue
    .line 902
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprint()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 782
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsSprint:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 784
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 785
    const-string v1, "sku_id"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 786
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 787
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsSprint:Ljava/lang/Boolean;

    .line 791
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsSprint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 789
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsSprint:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 526
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 528
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 529
    const-string v1, "device_type"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 531
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 532
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsTablet:Ljava/lang/Boolean;

    .line 537
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 534
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsTablet:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isVGA2ndCamera()Z
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsVGA2ndCamera:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 275
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 276
    const-string v1, "is_vga_front_cam"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsVGA2ndCamera:Ljava/lang/Boolean;

    .line 278
    :cond_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsVGA2ndCamera:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isVerizon()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsVerizon:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 799
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 800
    const-string v1, "sku_id"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 801
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 802
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsVerizon:Ljava/lang/Boolean;

    .line 807
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsVerizon:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 804
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsVerizon:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static ishtcChina()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsChinaRegion:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 510
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 511
    const-string v1, "region"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 513
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 514
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsChinaRegion:Ljava/lang/Boolean;

    .line 519
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mIsChinaRegion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 516
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mIsChinaRegion:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static keepPreviewRatio()Z
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public static needForce48KAudioSamplingRate()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public static notSupportH264()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public static supportBlinkDetect()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public static supportCamcorderRotate()Z
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportIconRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportFaceDetection()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public static supportGpuEffect()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public static supportIconRotate()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public static supportOnlyMP4VideoFormat()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSaveMirrorImage()Z
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x1

    return v0
.end method

.method public static final supportScene()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensor()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensorFocus()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSpecific2ndCamera()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public static supportStereoRecord()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 473
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mSupportStereoRecord:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 475
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 476
    const-string v1, "MIC_NUM"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mSupportStereoRecord:Ljava/lang/Boolean;

    .line 488
    :cond_1
    :goto_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->mSupportStereoRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 480
    :cond_2
    const-string v1, "not single mic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 481
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mSupportStereoRecord:Ljava/lang/Boolean;

    goto :goto_0

    .line 482
    :cond_3
    const-string v1, "single mic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mSupportStereoRecord:Ljava/lang/Boolean;

    goto :goto_0

    .line 485
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/DisplayDevice;->mSupportStereoRecord:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static supportTrackBallFocus()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public static supportVideoSnapshot()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    return v0
.end method

.method public static supportWideScreen2ndCamera()Z
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
