.class public Lcom/android/internal/telephony/gsm/OrangeEccSms;
.super Ljava/lang/Object;
.source "OrangeEccSms.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;,
        Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;
    }
.end annotation


# static fields
.field private static final BT999:Ljava/lang/String; = "999"

.field private static final DEFAULT_SCALE_VALUE:I = 0x64

.field private static final KEEP_PENDING_SMS_LIMIT:J = 0x36ee80L

.field private static final LOW_POWER_VALUE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OrangeEccSms"

.field private static final UPDATE_TIME_LIMIT:J = 0x4e20L

.field private static mNtpRetryCnt:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field private mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNtpHandler:Landroid/os/Handler;

.field private mNtpThread:Landroid/os/HandlerThread;

.field private mOriginalGpsSetting:Z

.field private mOriginalNlpSetting:Z

.field private mOriginalWifiAlwaysAvailable:I

.field private mPendingSmsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

.field private mStartLocationUpdate:Z

.field private mThread:Landroid/os/HandlerThread;

.field private final mTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;Landroid/content/Context;)V
    .locals 2
    .param p1, "dispatcher"    # Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 82
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    .line 84
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    .line 86
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 109
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {p2}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/util/TrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V

    return-void
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 76
    sget v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestLocation(Z)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->printLocationLog(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getUserData(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/OrangeEccSms;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->sendSms(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    return v0
.end method

.method private enableGpsAndUpdateLocation()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 211
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 225
    .local v6, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    .line 226
    .local v7, "originalMobileNetworkSetting":Z
    const-string v0, "OrangeEccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile Datat Enabled? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 232
    const-string v0, "OrangeEccSms"

    const-string v1, "enable GPS for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 239
    const-string v0, "OrangeEccSms"

    const-string v1, "enable NLP for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    const-string v0, "OrangeEccSms"

    const-string v1, "enable Wifi Scanning Always Available for Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v6    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v7    # "originalMobileNetworkSetting":Z
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_3

    .line 260
    const-string v0, "OrangeEccSms"

    const-string v1, "Can\'t find GPS Provider!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_4

    .line 266
    const-string v0, "OrangeEccSms"

    const-string v1, "Can\'t find Network Provider!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1
.end method

.method private formatRadius2IntegerString(F)Ljava/lang/String;
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 493
    float-to-int v0, p1

    .line 494
    .local v0, "radius":I
    const-string v1, "N"

    .line 496
    .local v1, "result":Ljava/lang/String;
    const v2, 0x1869f

    if-gt v0, v2, :cond_0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    :cond_0
    return-object v1
.end method

.method private get10CharactersDoubleString(D)Ljava/lang/String;
    .locals 11
    .param p1, "d"    # D

    .prologue
    .line 440
    const-wide/16 v8, 0x0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_0

    .line 441
    const/4 v3, 0x1

    .line 448
    .local v3, "isPlus":Z
    :goto_0
    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_1

    .line 449
    const/4 v4, 0x4

    .line 457
    .local v4, "leftNumberCount":I
    :goto_1
    rsub-int/lit8 v6, v4, 0x8

    .line 459
    .local v6, "rightNumberCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "formatString":Ljava/lang/StringBuilder;
    const-string v7, "0."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 462
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 443
    .end local v0    # "formatString":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "isPlus":Z
    .end local v4    # "leftNumberCount":I
    .end local v6    # "rightNumberCount":I
    :cond_0
    const/4 v3, 0x0

    .line 444
    .restart local v3    # "isPlus":Z
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    mul-double/2addr p1, v8

    goto :goto_0

    .line 450
    :cond_1
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_2

    .line 451
    const/4 v4, 0x3

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .line 452
    .end local v4    # "leftNumberCount":I
    :cond_2
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v7, p1, v8

    if-ltz v7, :cond_3

    .line 453
    const/4 v4, 0x2

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .line 455
    .end local v4    # "leftNumberCount":I
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "leftNumberCount":I
    goto :goto_1

    .line 469
    .restart local v0    # "formatString":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    .restart local v6    # "rightNumberCount":I
    :cond_4
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v8, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 470
    .local v1, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "result":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v3, v7, :cond_5

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 477
    :goto_3
    return-object v5

    .line 474
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private getBestLocation(Z)Landroid/location/Location;
    .locals 4
    .param p1, "gpsLocationUpdateIsAvailable"    # Z

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 280
    .local v0, "location":Landroid/location/Location;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 289
    .end local v0    # "location":Landroid/location/Location;
    .local v1, "location":Landroid/location/Location;
    :goto_0
    return-object v1

    .line 288
    .end local v1    # "location":Landroid/location/Location;
    .restart local v0    # "location":Landroid/location/Location;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    move-object v1, v0

    .line 289
    .end local v0    # "location":Landroid/location/Location;
    .restart local v1    # "location":Landroid/location/Location;
    goto :goto_0
.end method

.method private getBestTimestamp(Landroid/location/Location;)J
    .locals 6
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 306
    .local v0, "bestTime":J
    if-eqz p1, :cond_0

    .line 307
    const-string v3, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const-string v3, "OrangeEccSms"

    const-string v4, "Got GPS timestamp"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 314
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    if-nez v3, :cond_1

    .line 315
    const-string v3, "OrangeEccSms"

    const-string v4, "mTime is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    const-string v3, "OrangeEccSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Best timestamp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-wide v0

    .line 317
    :cond_1
    :try_start_1
    const-string v3, "OrangeEccSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v5}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 319
    const-string v3, "OrangeEccSms"

    const-string v4, "Use Network timestamp"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OrangeEccSms"

    const-string v4, "Get Exception while get best timestamp"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserData(Landroid/location/Location;)Ljava/lang/String;
    .locals 22
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    .line 330
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v20, "000000"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 333
    .local v4, "formatter":Ljava/text/NumberFormat;
    const-string v7, "+000.00000"

    .line 334
    .local v7, "latitude":Ljava/lang/String;
    const-string v9, "+000.00000"

    .line 335
    .local v9, "longitude":Ljava/lang/String;
    const-string v15, "N"

    .line 336
    .local v15, "radius":Ljava/lang/String;
    const-string v8, "0"

    .line 337
    .local v8, "levelOfConfidence":Ljava/lang/String;
    const-string v14, "N"

    .line 338
    .local v14, "positionMethod":Ljava/lang/String;
    const-string v6, "000000000000000"

    .line 339
    .local v6, "imsi":Ljava/lang/String;
    const-string v5, "0000000000000000"

    .line 340
    .local v5, "imei":Ljava/lang/String;
    const-string v10, "000"

    .line 341
    .local v10, "mcc":Ljava/lang/String;
    const-string v13, "00"

    .line 344
    .local v13, "mnc":Ljava/lang/String;
    new-instance v18, Landroid/text/format/Time;

    const-string v20, "UTC"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 345
    .local v18, "timestamp":Landroid/text/format/Time;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestTimestamp(Landroid/location/Location;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 346
    const-string v20, "%Y%m%d%H%M%S"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 349
    .local v17, "time":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->get10CharactersDoubleString(D)Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->get10CharactersDoubleString(D)Ljava/lang/String;

    move-result-object v9

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->formatRadius2IntegerString(F)Ljava/lang/String;

    move-result-object v15

    .line 365
    const-string v20, "gps"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 366
    const-string v14, "G"

    .line 371
    :cond_0
    :goto_0
    const-string v8, "68"

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 375
    .local v19, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 376
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 378
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 379
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 381
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, "mccmnc":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 383
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 384
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 388
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v20, "A\"ML=1;"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v20, "lt="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v20, "lg="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v20, "rd="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v20, "top="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v20, "lc="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v20, "pm="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v20, "si="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v20, "ei="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v20, "mcc="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v20, "mnc="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 401
    .local v12, "messageLength":Ljava/lang/String;
    const-string v20, "ml="

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 367
    .end local v11    # "mccmnc":Ljava/lang/String;
    .end local v12    # "messageLength":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v20, "network"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 368
    const-string v14, "W"

    goto/16 :goto_0
.end method

.method private isLowPower()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 125
    const-string v6, "OrangeEccSms"

    const-string v7, "Can\'t get Battery Information!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return v5

    .line 129
    :cond_1
    const-string v6, "level"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, "level":I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 132
    .local v4, "scale":I
    if-nez v4, :cond_2

    .line 133
    const-string v6, "OrangeEccSms"

    const-string v7, "scale is 0, set default 100"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v4, 0x64

    .line 137
    :cond_2
    mul-int/lit8 v6, v2, 0x64

    div-int v3, v6, v4

    .line 138
    .local v3, "percentage":I
    const-string v6, "OrangeEccSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", scale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", percentage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v6, 0xa

    if-gt v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private printLocationLog(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 504
    return-void
.end method

.method private refreshNtpTimeStamp()V
    .locals 4

    .prologue
    .line 188
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTP retry count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;

    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V

    .line 204
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendSms(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "userData"    # Ljava/lang/String;
    .param p2, "firstSend"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 411
    if-nez p1, :cond_0

    .line 412
    const-string v0, "OrangeEccSms"

    const-string v1, "user data is null when sending Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "UserData"

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 424
    const-string v0, "Timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v10, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v10, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 428
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v0, :cond_2

    .line 429
    const/4 v9, 0x1

    .line 430
    .local v9, "isInvisibleMoSms":Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mGsmSmsDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    const-string v1, "999"

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 432
    .end local v9    # "isInvisibleMoSms":Z
    :cond_2
    const-string v0, "OrangeEccSms"

    const-string v1, "SMSDispatcher is null, can\'t send Emergency SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "OrangeEccSms"

    const-string v1, "Unregister Emergency SMS result receiver!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 671
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    .line 672
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 676
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    .line 677
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    .line 679
    :cond_2
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    .line 518
    if-nez p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New location : provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    const-string v1, "OrangeEccSms"

    const-string v2, "GPS onLocationChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->removeMessages(I)V

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 542
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 546
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 550
    return-void
.end method

.method public sendEccSms()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->isLowPower()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "OrangeEccSms"

    const-string v2, "Is low power level, for keep emergency call, do not enable emergency sms!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;

    .line 162
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LocationHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 164
    new-instance v1, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mHandler:Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Lcom/android/internal/telephony/gsm/OrangeEccSms$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mResultReceiver:Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    const-string v1, "OrangeEccSms"

    const-string v2, "Register Emergency SMS result receiver!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->enableGpsAndUpdateLocation()V

    .line 178
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 180
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NtpHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 182
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpHandler:Landroid/os/Handler;

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V

    goto :goto_0
.end method
