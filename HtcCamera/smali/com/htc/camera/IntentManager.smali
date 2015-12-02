.class public Lcom/htc/camera/IntentManager;
.super Ljava/lang/Object;
.source "IntentManager.java"


# instance fields
.field private mCameralaunchedBy:I

.field private mCropValue:Ljava/lang/String;

.field private mDurationLimit:Lcom/htc/camera/Duration;

.field private mHTCCamera:Lcom/htc/camera/HTCCamera;

.field private mHasExtraVideoQuality:Z

.field private mIsCamcorder:Z

.field private mIsHighVideoQuality:Z

.field private mMMS_isVideoQVGA:Z

.field private mMMS_isWideScreen:Z

.field private mMMS_maximum_size:I

.field public mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

.field public mRequestName:Lcom/htc/camera/IntentManager$RequestName;

.field private mSaveUri:Landroid/net/Uri;

.field private mSquarePictureSize:I

.field private mVideo_maximum_size:J


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/IntentManager;->mMMS_maximum_size:I

    .line 58
    iput-boolean v2, p0, Lcom/htc/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/IntentManager;->mVideo_maximum_size:J

    .line 62
    iput v2, p0, Lcom/htc/camera/IntentManager;->mCameralaunchedBy:I

    .line 64
    iput-boolean v2, p0, Lcom/htc/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 66
    iput-boolean v2, p0, Lcom/htc/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 69
    iput-object v3, p0, Lcom/htc/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 71
    iput-object v3, p0, Lcom/htc/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lcom/htc/camera/IntentManager;->mHasExtraVideoQuality:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/camera/IntentManager;->mIsCamcorder:Z

    .line 97
    sget-object v0, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    .line 99
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 101
    iput-object v3, p0, Lcom/htc/camera/IntentManager;->mHTCCamera:Lcom/htc/camera/HTCCamera;

    .line 104
    iput-object p1, p0, Lcom/htc/camera/IntentManager;->mHTCCamera:Lcom/htc/camera/HTCCamera;

    .line 105
    return-void
.end method

.method private checkExtras(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 115
    iput-object v3, p0, Lcom/htc/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 116
    iput-object v3, p0, Lcom/htc/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mHTCCamera:Lcom/htc/camera/HTCCamera;

    const v1, 0x1d4c0

    iput v1, v0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY:I

    .line 118
    iput-boolean v2, p0, Lcom/htc/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 119
    iput-wide v6, p0, Lcom/htc/camera/IntentManager;->mVideo_maximum_size:J

    .line 120
    const-string v0, "IntentManager"

    const-string v1, "extras == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "output"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 125
    const-string v0, "crop"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 128
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 130
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/htc/camera/IntentManager;->mVideo_maximum_size:J

    .line 138
    :goto_1
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 139
    if-lez v4, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 140
    const-string v0, "IntentManager"

    const-string v5, "extraVideoQuality: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    const-string v0, "android.intent.extra.durationLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 146
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 151
    :goto_3
    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    move-object v0, v3

    :goto_4
    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mDurationLimit:Lcom/htc/camera/Duration;

    .line 153
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    sget-object v3, Lcom/htc/camera/IntentManager$RequestName;->Square:Lcom/htc/camera/IntentManager$RequestName;

    invoke-virtual {v0, v3}, Lcom/htc/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "output-length"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "output-length"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    const-string v3, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has extras \'output-length\' = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-lez v0, :cond_8

    .line 161
    iput v0, p0, Lcom/htc/camera/IntentManager;->mSquarePictureSize:I

    .line 168
    :cond_1
    :goto_5
    const-string v0, "htc_disable_timeout"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    if-ne v0, v1, :cond_9

    .line 170
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mHTCCamera:Lcom/htc/camera/HTCCamera;

    const v3, 0x7fffffff

    iput v3, v0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY:I

    .line 171
    const-string v0, "IntentManager"

    const-string v3, "disable screen timeout !!!"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_6
    const-string v0, "lockscreen_start_activity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    if-ne v1, v0, :cond_a

    .line 178
    iput v1, p0, Lcom/htc/camera/IntentManager;->mCameralaunchedBy:I

    .line 179
    const-string v0, "IntentManager"

    const-string v1, "extras: camera lauched by START_ACTIVITY_SHORTCUT"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 132
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/camera/IntentManager;->mVideo_maximum_size:J

    goto/16 :goto_1

    .line 134
    :cond_3
    iput-wide v6, p0, Lcom/htc/camera/IntentManager;->mVideo_maximum_size:J

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 139
    goto/16 :goto_2

    .line 147
    :cond_5
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 148
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_3

    :cond_6
    move-wide v4, v6

    .line 150
    goto/16 :goto_3

    .line 151
    :cond_7
    invoke-static {v4, v5}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto/16 :goto_4

    .line 163
    :cond_8
    sget v0, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    iput v0, p0, Lcom/htc/camera/IntentManager;->mSquarePictureSize:I

    goto :goto_5

    .line 173
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mHTCCamera:Lcom/htc/camera/HTCCamera;

    const v3, 0x1d4c0

    iput v3, v0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY:I

    goto :goto_6

    .line 180
    :cond_a
    if-ne v8, v0, :cond_b

    .line 181
    iput v8, p0, Lcom/htc/camera/IntentManager;->mCameralaunchedBy:I

    .line 182
    const-string v0, "IntentManager"

    const-string v1, "extras: camera lauched by START_ACTIVITY_HOTKEY"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_b
    iput v2, p0, Lcom/htc/camera/IntentManager;->mCameralaunchedBy:I

    .line 185
    const-string v0, "IntentManager"

    const-string v1, "extras: camera lauched by other type!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public IsHighVideoQuality()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/htc/camera/IntentManager;->mIsHighVideoQuality:Z

    return v0
.end method

.method public checkIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 205
    const-string v0, "IntentManager"

    const-string v1, "intent = null!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-nez v0, :cond_1

    const-string v0, ""

    .line 212
    :cond_1
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    sget-object v0, Lcom/htc/camera/IntentManager$RequestMode;->Camera:Lcom/htc/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    .line 214
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_1
    const-string v0, "RequestedFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-nez v0, :cond_a

    .line 247
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    sget-object v1, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    if-ne v0, v1, :cond_8

    .line 248
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 249
    const-string v0, "IntentManager"

    const-string v1, "request name = null - RequestName.Unknown_General"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    sget-object v0, Lcom/htc/camera/IntentManager$RequestMode;->Video:Lcom/htc/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    .line 217
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_3
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    sget-object v0, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    .line 220
    iput-boolean v4, p0, Lcom/htc/camera/IntentManager;->mIsCamcorder:Z

    .line 221
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Main, from action STILL_IMAGE_CAMERA"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_4
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    sget-object v0, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    .line 224
    iput-boolean v5, p0, Lcom/htc/camera/IntentManager;->mIsCamcorder:Z

    .line 225
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Main, from action VIDEO_CAMERA"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_5
    sget-object v0, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "IntentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "com.htc.camera.CameraEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    iput-boolean v4, p0, Lcom/htc/camera/IntentManager;->mIsCamcorder:Z

    .line 233
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    :cond_6
    const-string v1, "com.htc.camera.CamcorderEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    iput-boolean v5, p0, Lcom/htc/camera/IntentManager;->mIsCamcorder:Z

    .line 236
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :cond_7
    iput-boolean v4, p0, Lcom/htc/camera/IntentManager;->mIsCamcorder:Z

    .line 239
    const-string v0, "IntentManager"

    const-string v1, "mRequestMode = RequestMode.Main, from unknown"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :cond_8
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 253
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 254
    iput-boolean v5, p0, Lcom/htc/camera/IntentManager;->mHasExtraVideoQuality:Z

    .line 257
    :goto_2
    const-string v0, "IntentManager"

    const-string v1, "request name = null - RequestName.Unknown_Service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_9
    iput-boolean v4, p0, Lcom/htc/camera/IntentManager;->mHasExtraVideoQuality:Z

    goto :goto_2

    .line 259
    :cond_a
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 260
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    sget-object v1, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    if-ne v0, v1, :cond_b

    .line 261
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 262
    const-string v0, "IntentManager"

    const-string v1, "no request name - RequestName.Unknown_General"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_b
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 265
    const-string v0, "IntentManager"

    const-string v1, "no request name - RequestName.Unknown_Service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_c
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 268
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Mms:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 269
    const-string v0, "maxfilesize"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/IntentManager;->mMMS_maximum_size:I

    .line 270
    const-string v0, "IntentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequestName = RequestName.Mms, maximum file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/IntentManager;->mMMS_maximum_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-boolean v4, p0, Lcom/htc/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 272
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Mms, default image ratio is 4:3, 640*480"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sget-object v1, Lcom/htc/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/htc/camera/DisplayDevice$CustomMMS;

    if-ne v0, v1, :cond_d

    .line 274
    iput-boolean v5, p0, Lcom/htc/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 275
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Mms, video is QVGA for custom request"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_d
    iput-boolean v4, p0, Lcom/htc/camera/IntentManager;->mMMS_isVideoQVGA:Z

    goto/16 :goto_0

    .line 279
    :cond_e
    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 280
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Album:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 281
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Album"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_f
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 283
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Contacts:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 284
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Contacts"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_10
    const-string v1, "mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 286
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Mail:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 287
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Mail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_11
    const-string v1, "captureSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 289
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Square:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 290
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Square"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_12
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Notes:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 293
    const-string v0, "IntentManager"

    const-string v1, "mRequestName = RequestName.Notes"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestMode:Lcom/htc/camera/IntentManager$RequestMode;

    sget-object v1, Lcom/htc/camera/IntentManager$RequestMode;->Main:Lcom/htc/camera/IntentManager$RequestMode;

    if-ne v0, v1, :cond_14

    .line 296
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 297
    const-string v0, "IntentManager"

    const-string v1, "other request name - RequestName.Unknown_General"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_14
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    .line 300
    const-string v0, "IntentManager"

    const-string v1, "other request name - RequestName.Unknown_Service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationLimit()Lcom/htc/camera/Duration;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mDurationLimit:Lcom/htc/camera/Duration;

    return-object v0
.end method

.method public getMMS_MaximumSize()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/htc/camera/IntentManager;->mMMS_maximum_size:I

    return v0
.end method

.method public final getSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getSquarePictureSize()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/htc/camera/IntentManager;->mSquarePictureSize:I

    return v0
.end method

.method public getVideoMaximum_Size()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/htc/camera/IntentManager;->mVideo_maximum_size:J

    return-wide v0
.end method

.method public hasVideoQuality()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/htc/camera/IntentManager;->mHasExtraVideoQuality:Z

    return v0
.end method

.method public initManager(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/htc/camera/IntentManager;->checkIntent(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/IntentManager;->checkExtras(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public releaseIntentManager()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/IntentManager;->mHTCCamera:Lcom/htc/camera/HTCCamera;

    .line 201
    return-void
.end method

.method public resetLaunchedby()V
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/IntentManager;->mCameralaunchedBy:I

    .line 351
    const-string v0, "IntentManager"

    const-string v1, "extras: resetLaunchedby camera START_ACTIVITY_UNKNOWN"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method
