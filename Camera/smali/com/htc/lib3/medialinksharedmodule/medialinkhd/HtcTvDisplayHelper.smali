.class public Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"


# static fields
.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcTvDisplayHelper "

.field public static final MIRROR_MODE_DISABLED:I

.field public static final MIRROR_MODE_ENABLED:I

.field public static final MIRROR_MODE_PAUSE:I

.field private static final RET_DMR:I = 0x2711

.field private static mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

.field private mDMRMirrorOutputListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

.field private mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

.field private mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

.field private mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

.field private mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

.field private mWDListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    .line 191
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_DISABLED()I

    move-result v0

    sput v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->MIRROR_MODE_DISABLED:I

    .line 196
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_APP_PAUSE()I

    move-result v0

    sput v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->MIRROR_MODE_PAUSE:I

    .line 201
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_ENABLED()I

    move-result v0

    sput v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->MIRROR_MODE_ENABLED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    .line 173
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    .line 174
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    .line 175
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    .line 176
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    .line 177
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 564
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDMRMirrorOutputListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    .line 213
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[HtcTvDisplayHelper]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    .line 218
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[HtcTvDisplayHelper][registerReceivever]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    if-nez v0, :cond_0

    .line 224
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->registerDongleListReceivever()V

    .line 228
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->registerDongleConfigReceivever()V

    .line 229
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 230
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    invoke-direct {v0, p1, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    .line 233
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    invoke-direct {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    .line 234
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDMRMirrorOutputListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->registerDMRMirrorOutputCallback(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;)V

    .line 239
    :cond_1
    return-void
.end method

.method static synthetic access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getDMRMirrorRendererID(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    invoke-static {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->getDMRMirrorRendererID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isAnyDongleNearBy(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-static {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isReadyDongleNearBy(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 395
    invoke-static {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isTvOn(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 378
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[HtcTvDisplayHelper][isTvOn]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final registerDongleConfigReceivever()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    const-string v3, "com.htc.permission.APP_MEDIA"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 265
    return-void
.end method

.method private final registerDongleListReceivever()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_DONGLE_LIST_CHANGED_ACTION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    const-string v3, "com.htc.permission.APP_MEDIA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[registerDongleListReceivever] Please pass the context."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    iput-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    .line 254
    const-string v1, "HtcTvDisplayHelper "

    const-string v2, "[registerDongleListReceivever] NullPointerException caught!"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 1

    .prologue
    .line 558
    invoke-static {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->setDLNAPreloadFlag(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final shouldPlayOnTv(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 320
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[HtcTvDisplayHelper][shouldPlayOnTv]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final turnOffTv(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 365
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->stopMirror(Landroid/content/Context;)V

    .line 367
    return-void
.end method

.method public static final turnOnTv(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 351
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[HtcTvDisplayHelper][turnOnTv]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->startMirror(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final unregisterReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleListReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDongleConfigReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;

    .line 282
    :goto_1
    return-void

    .line 273
    :cond_0
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "Dont need to unregister DongleListReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "Dont need to unregister DongleConfigReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getMirrorModeState()I
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getMirrorModeState()I

    move-result v0

    .line 423
    const-string v1, "HtcTvDisplayHelper "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcTvDisplayHelper][getMirrorModeState] state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return v0

    .line 426
    :cond_0
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "[HtcTvDisplayHelper][getMirrorModeState] mWDHelper == null, return MIRROR_MODE_DISABLED"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->MIRROR_MODE_DISABLED:I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->release()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->unregisterDMRMirrorOutputCallback()V

    .line 301
    :cond_1
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mDLNAPCMTaskHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;

    .line 302
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mWDHelper:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    .line 303
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    .line 304
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->unregisterReceiver()V

    .line 305
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;

    .line 306
    return-void
.end method
