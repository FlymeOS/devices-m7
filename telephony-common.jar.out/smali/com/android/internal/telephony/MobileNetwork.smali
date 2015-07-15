.class public Lcom/android/internal/telephony/MobileNetwork;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MobileNetwork$CachedSetting;,
        Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;,
        Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;,
        Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;,
        Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;,
        Lcom/android/internal/telephony/MobileNetwork$Menu;,
        Lcom/android/internal/telephony/MobileNetwork$Setting;,
        Lcom/android/internal/telephony/MobileNetwork$Selection;
    }
.end annotation


# static fields
.field private static final HTC_DEBUG_DEVELOPMENT:Z = false

.field private static final HTC_FRAMEWORK_PKG:Ljava/lang/String; = "com.android.internal.telephony"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SIM1:Ljava/lang/String; = "data_roaming_slot1"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SIM2:Ljava/lang/String; = "data_roaming_slot2"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SOUND:Ljava/lang/String; = "roaming_sound_on"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING:Ljava/lang/String; = "national_roaming_on"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING_SIM1:Ljava/lang/String; = "national_roaming_slot1"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING_SIM2:Ljava/lang/String; = "national_roaming_slot2"

.field private static final HTC_NOTIFY_ACTION_PREFER:Ljava/lang/String; = "actionPrefer"

.field private static final HTC_NOTIFY_ACTION_TYPE:Ljava/lang/String; = "actionType"

.field private static final HTC_NOTIFY_INTENT_TIME:Ljava/lang/String; = "updateTime"

.field private static final HTC_NOTIFY_LOG_TAG:Ljava/lang/String; = "logTag"

.field private static final HTC_PROVIDER:Ljava/lang/String; = "com.htc.mobiledata"

.field private static final HTC_SETTING_PHONE_TYPE:Ljava/lang/String; = "phoneType"

.field private static final HTC_SETTING_PRIVILEGE:Ljava/lang/String; = "privilege"

.field private static final HTC_SETTING_SLOT:Ljava/lang/String; = "slot"

.field private static final HTC_SETTING_SUMMARY:Ljava/lang/String; = "summary"

.field private static final HTC_SETTING_TITLE:Ljava/lang/String; = "title"

.field private static final HTC_SETTING_TYPE_DATA_DIALOG:Ljava/lang/String; = "dataDialog"

.field private static final HTC_SETTING_TYPE_DATA_PATH:Ljava/lang/String; = "dataPath"

.field private static final HTC_SETTING_TYPE_DATA_ROAMING:Ljava/lang/String; = "roamingSetting"

.field private static final HTC_SETTING_TYPE_DATA_ROAMING_SOUND:Ljava/lang/String; = "roamSoundSetting"

.field private static final HTC_SETTING_TYPE_MOBILE_DATA:Ljava/lang/String; = "dataSetting"

.field private static final HTC_SETTING_TYPE_MOBILE_DATA_MENU:Ljava/lang/String; = "dataSettingMenu"

.field private static final HTC_SETTING_UI_GRAYOUT:Ljava/lang/String; = "uiGrayOut"

.field private static final HTC_SETTING_UI_HIDE:Ljava/lang/String; = "uiHide"

.field private static final HTC_SETTING_USER:Ljava/lang/String; = "user"

.field private static final HTC_SETTING_VALUE:Ljava/lang/String; = "value"

.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final LOG_TAG:Ljava/lang/String; = "LibMobileNetwork"

.field public static final NOTIFY_INTENT:Ljava/lang/String; = "com.htc.intent.action.MOBILEDATA_MODE"

.field public static final VERSION:Ljava/lang/String; = "2014111801"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4140
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Long;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Landroid/os/HandlerThread;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Looper;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Boolean;)C
    .locals 1
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->convertIntToBoolean(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/util/LinkedList;
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static/range {p0 .. p8}, Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Parcelable;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static convertBooleanToChar(Ljava/lang/Boolean;)C
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 4062
    const/16 v0, 0x2d

    .line 4063
    .local v0, "result":C
    if-eqz p0, :cond_0

    .line 4064
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x31

    .line 4066
    :cond_0
    :goto_0
    return v0

    .line 4064
    :cond_1
    const/16 v0, 0x30

    goto :goto_0
.end method

.method private static convertIntToBoolean(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 4077
    const/4 v0, 0x0

    .line 4078
    .local v0, "result":Ljava/lang/Boolean;
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    .line 4079
    const/16 v1, 0x30

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4081
    :cond_0
    return-object v0

    .line 4079
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "prefname"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "callbackMatchSlotNphone"    # Z
    .param p5, "callbackSlotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4453
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 4454
    :cond_0
    const/4 v1, 0x0

    .line 4621
    :goto_0
    return-object v1

    .line 4456
    :cond_1
    const/4 v1, 0x0

    .line 4457
    .local v1, "result":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$1;

    .end local v1    # "result":Landroid/os/Handler;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$1;-><init>(Landroid/os/Looper;)V

    .line 4613
    .restart local v1    # "result":Landroid/os/Handler;
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    .line 4614
    .local v0, "params":[Ljava/lang/Object;
    aput-object p0, v0, v4

    .line 4615
    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 4616
    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4617
    const/4 v2, 0x3

    aput-object p5, v0, v2

    .line 4618
    const/4 v2, 0x4

    aput-object p2, v0, v2

    .line 4619
    const/4 v2, 0x5

    aput-object p6, v0, v2

    .line 4620
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 4625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4626
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4627
    const-string v1, "dataSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3300(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4628
    const-string v1, "dataSettingMenu"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3300(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4629
    const-string v1, "roamingSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3300(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4630
    const-string v1, "roamSoundSetting"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3300(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4631
    const-string v2, "dataPath"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4632
    if-eqz p2, :cond_0

    .line 4633
    const-string v1, "logTag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4636
    :cond_0
    return-object v0
.end method

.method private static createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "prefer"    # Landroid/os/Parcelable;
    .param p4, "privilege"    # Ljava/lang/String;
    .param p5, "logTag"    # Ljava/lang/String;

    .prologue
    .line 4641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4642
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4643
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4644
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3300(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4645
    if-eqz p3, :cond_0

    .line 4646
    const-string v1, "actionPrefer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4648
    :cond_0
    if-eqz p4, :cond_1

    .line 4649
    const-string v1, "privilege"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4651
    :cond_1
    if-eqz p5, :cond_2

    .line 4652
    const-string v1, "logTag"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4654
    :cond_2
    const-string v1, "updateTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4655
    return-object v0
.end method

.method private static destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    .locals 7
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 4111
    const/4 v2, 0x0

    .line 4112
    .local v2, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_1

    .line 4113
    const/4 v4, 0x1

    .line 4114
    .local v4, "unsafeQuit":Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v5

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 4116
    :try_start_0
    const-string v5, "android.os.HandlerThread"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4117
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "quitSafely"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4118
    .local v3, "mth":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4119
    const/4 v4, 0x0

    .line 4124
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "mth":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 4125
    const/4 v2, 0x0

    .line 4127
    :try_start_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4133
    .end local v4    # "unsafeQuit":Z
    :cond_1
    :goto_1
    return-object v2

    .line 4120
    .restart local v4    # "unsafeQuit":Z
    :catch_0
    move-exception v1

    .line 4121
    .local v1, "exDestroy":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_0

    .line 4128
    .end local v1    # "exDestroy":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 4129
    .restart local v1    # "exDestroy":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_1
.end method

.method private static getAllFieldsFromObject(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3964
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3965
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3966
    .local v2, "flds":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 3967
    .local v4, "results":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 3968
    array-length v3, v2

    .line 3969
    .local v3, "nbrFlds":I
    if-lez v3, :cond_1

    .line 3970
    new-array v4, v3, [Ljava/lang/Object;

    .line 3971
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 3972
    add-int/lit8 v3, v3, -0x1

    .line 3973
    aget-object v1, v2, v3

    .line 3974
    .local v1, "fld":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 3975
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3976
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_0

    .line 3981
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v3    # "nbrFlds":I
    :cond_1
    return-object v4
.end method

.method private static getAndroidApiLevel()I
    .locals 1

    .prologue
    .line 3062
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDataPath(Landroid/content/Context;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1917
    const/4 v4, 0x0

    .line 1918
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1919
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1920
    .local v5, "result":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/4 v1, 0x1

    .line 1924
    .local v1, "checkNextInterface":Z
    const/4 v7, 0x0

    :try_start_0
    const-string v8, "dataPath"

    const-class v9, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-static {p0, v7, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 1925
    .local v6, "results":[Ljava/lang/Object;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 1926
    const/4 v7, 0x0

    aget-object v7, v6, v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    const/4 v1, 0x0

    .line 1933
    .end local v6    # "results":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_4

    .line 1934
    :cond_1
    if-nez v4, :cond_2

    .line 1935
    move-object v4, v2

    .line 1937
    :cond_2
    if-nez v4, :cond_3

    .line 1938
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v7, "get data path"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1940
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_3
    throw v4

    .line 1929
    :catch_0
    move-exception v3

    .line 1930
    .local v3, "exRead":Ljava/lang/Throwable;
    move-object v2, v3

    goto :goto_0

    .line 1951
    .end local v3    # "exRead":Ljava/lang/Throwable;
    :cond_4
    return-object v5
.end method

.method public static getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1578
    const/4 v6, 0x0

    .line 1579
    .local v6, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1580
    .local v3, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 1581
    .local v9, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const/4 v2, 0x1

    .line 1585
    .local v2, "checkNextInterface":Z
    :try_start_0
    const-string v15, "roamingSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/android/internal/telephony/MobileNetwork;->getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v11

    .line 1586
    .local v11, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v11, :cond_2

    array-length v15, v11

    if-lez v15, :cond_2

    .line 1587
    new-instance v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v10}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .local v10, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const/4 v15, 0x0

    :try_start_1
    aget-object v15, v11, v15

    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1589
    array-length v15, v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 1590
    const/4 v15, 0x1

    aget-object v15, v11, v15

    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1592
    :cond_0
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 1593
    const/4 v15, 0x2

    aget-object v15, v11, v15

    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1595
    :cond_1
    const/4 v2, 0x0

    move-object v9, v10

    .line 1601
    .end local v10    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v11    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v12

    .line 1603
    .local v12, "sdkVersion":I
    if-eqz v2, :cond_3

    const/16 v15, 0x15

    if-lt v12, v15, :cond_3

    .line 1605
    const/4 v6, 0x0

    .line 1606
    new-instance v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v9}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1608
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v14

    .line 1609
    .local v14, "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1610
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_a

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1611
    const/4 v2, 0x0

    .line 1617
    .end local v14    # "value":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    const/16 v15, 0x15

    if-ge v12, v15, :cond_6

    .line 1619
    const/4 v6, 0x0

    .line 1620
    if-eqz p1, :cond_b

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 1621
    .local v13, "slotSelection":Ljava/lang/Long;
    :goto_3
    if-eqz v13, :cond_5

    .line 1622
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x2

    cmp-long v15, v16, v18

    if-ltz v15, :cond_5

    .line 1623
    :cond_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .end local v6    # "exception":Ljava/lang/Throwable;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "query data roaming slot"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1627
    .restart local v6    # "exception":Ljava/lang/Throwable;
    :cond_5
    if-nez v6, :cond_6

    .line 1628
    const/4 v2, 0x0

    .line 1629
    new-instance v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v9}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1630
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const-string v8, "national_roaming_on"

    .line 1631
    .local v8, "keyNationalRoaming":Ljava/lang/String;
    if-nez v13, :cond_d

    .line 1633
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v14

    .line 1634
    .restart local v14    # "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1635
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_c

    const/4 v15, 0x1

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1672
    .end local v14    # "value":I
    :goto_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    .line 1673
    .restart local v14    # "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1674
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_10

    const/4 v15, 0x1

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1683
    .end local v8    # "keyNationalRoaming":Ljava/lang/String;
    .end local v13    # "slotSelection":Ljava/lang/Long;
    .end local v14    # "value":I
    :cond_6
    :goto_7
    if-nez v2, :cond_7

    if-nez v9, :cond_11

    .line 1684
    :cond_7
    if-nez v6, :cond_8

    .line 1685
    move-object v6, v3

    .line 1687
    :cond_8
    if-nez v6, :cond_9

    .line 1688
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .end local v6    # "exception":Ljava/lang/Throwable;
    const-string v15, "query data roaming"

    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1690
    .restart local v6    # "exception":Ljava/lang/Throwable;
    :cond_9
    throw v6

    .line 1597
    .end local v12    # "sdkVersion":I
    :catch_0
    move-exception v4

    .line 1598
    .local v4, "exRead":Ljava/lang/Throwable;
    :goto_8
    move-object v3, v4

    goto/16 :goto_0

    .line 1610
    .end local v4    # "exRead":Ljava/lang/Throwable;
    .restart local v12    # "sdkVersion":I
    .restart local v14    # "value":I
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1612
    .end local v14    # "value":I
    :catch_1
    move-exception v5

    .line 1613
    .local v5, "exSettings":Ljava/lang/Throwable;
    move-object v6, v5

    goto/16 :goto_2

    .line 1620
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1635
    .restart local v8    # "keyNationalRoaming":Ljava/lang/String;
    .restart local v13    # "slotSelection":Ljava/lang/Long;
    .restart local v14    # "value":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_4

    .line 1636
    .end local v14    # "value":I
    :catch_2
    move-exception v5

    .line 1637
    .restart local v5    # "exSettings":Ljava/lang/Throwable;
    move-object v6, v5

    .line 1638
    goto :goto_5

    .line 1641
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    :cond_d
    const-string v7, "data_roaming_slot1"

    .line 1642
    .local v7, "keyDataRoaming":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_e

    .line 1643
    const-string v8, "national_roaming_slot1"

    .line 1657
    :goto_9
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    .line 1658
    .restart local v14    # "value":I
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    iput-object v15, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1659
    iget-object v0, v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0

    if-eqz v14, :cond_f

    const/4 v15, 0x1

    :goto_a
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 1660
    .end local v14    # "value":I
    :catch_3
    move-exception v5

    .line 1661
    .restart local v5    # "exSettings":Ljava/lang/Throwable;
    move-object v6, v5

    goto :goto_5

    .line 1646
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    :cond_e
    const-string v7, "data_roaming_slot2"

    .line 1647
    const-string v8, "national_roaming_slot2"

    goto :goto_9

    .line 1659
    .restart local v14    # "value":I
    :cond_f
    const/4 v15, 0x0

    goto :goto_a

    .line 1674
    .end local v7    # "keyDataRoaming":Ljava/lang/String;
    :cond_10
    const/4 v15, 0x0

    goto :goto_6

    .line 1675
    .end local v14    # "value":I
    :catch_4
    move-exception v5

    .line 1676
    .restart local v5    # "exSettings":Ljava/lang/Throwable;
    if-nez v6, :cond_6

    .line 1677
    move-object v6, v5

    goto :goto_7

    .line 1701
    .end local v5    # "exSettings":Ljava/lang/Throwable;
    .end local v8    # "keyNationalRoaming":Ljava/lang/String;
    .end local v13    # "slotSelection":Ljava/lang/Long;
    :cond_11
    return-object v9

    .line 1597
    .end local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v12    # "sdkVersion":I
    .restart local v10    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v11    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_5
    move-exception v4

    move-object v9, v10

    .end local v10    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v9    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    goto :goto_8
.end method

.method private static getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevEx"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4026
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v4

    .line 4039
    .local v4, "sdkVersion":I
    const/4 v5, 0x0

    .line 4040
    .local v5, "value":I
    const/16 v6, 0x11

    if-lt v4, v6, :cond_0

    .line 4041
    const/4 v2, 0x0

    .line 4042
    .local v2, "intValue":Ljava/lang/Integer;
    const-string v6, "android.provider.Settings$Global"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4043
    .local v0, "cls":Ljava/lang/Class;
    const-string v6, "getInt"

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4044
    .local v3, "mth":Ljava/lang/reflect/Method;
    const-string v6, "DATA_ROAMING"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4045
    .local v1, "fld":Ljava/lang/reflect/Field;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v7, v9

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v10

    invoke-virtual {v3, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "intValue":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 4046
    .restart local v2    # "intValue":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4051
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "intValue":Ljava/lang/Integer;
    .end local v3    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return v5

    .line 4049
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public static getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1800
    const/4 v4, 0x0

    .line 1801
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1802
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1803
    .local v5, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v0, 0x1

    .line 1807
    .local v0, "checkNextInterface":Z
    :try_start_0
    const-string v10, "roamSoundSetting"

    invoke-static {p0, p1, v10}, Lcom/android/internal/telephony/MobileNetwork;->getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v7

    .line 1808
    .local v7, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v7, :cond_0

    array-length v10, v7

    if-lez v10, :cond_0

    .line 1809
    const/4 v10, 0x0

    aget-object v5, v7, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    const/4 v0, 0x0

    :cond_0
    move-object v6, v5

    .line 1816
    .end local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v7    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v6, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_0
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v10

    const/16 v11, 0x15

    if-ge v10, v11, :cond_6

    .line 1818
    const/4 v4, 0x0

    .line 1827
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "roaming_sound_on"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 1829
    .local v8, "value":I
    new-instance v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1830
    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v8, :cond_1

    const/4 v9, 0x1

    :cond_1
    :try_start_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1831
    const/4 v0, 0x0

    .line 1837
    .end local v8    # "value":I
    :goto_1
    if-nez v0, :cond_2

    if-nez v5, :cond_5

    .line 1838
    :cond_2
    if-nez v4, :cond_3

    .line 1839
    move-object v4, v1

    .line 1841
    :cond_3
    if-nez v4, :cond_4

    .line 1842
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v9, "get data roaming sound"

    invoke-static {v9}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1844
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v4

    .line 1812
    :catch_0
    move-exception v2

    .line 1813
    .local v2, "exRead":Ljava/lang/Throwable;
    move-object v1, v2

    move-object v6, v5

    .end local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_0

    .line 1832
    .end local v2    # "exRead":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    move-object v5, v6

    .line 1833
    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v3, "exSettings":Ljava/lang/Throwable;
    .restart local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_2
    move-object v4, v3

    goto :goto_1

    .line 1855
    .end local v3    # "exSettings":Ljava/lang/Throwable;
    :cond_5
    return-object v5

    .line 1832
    .restart local v8    # "value":I
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v8    # "value":I
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_6
    move-object v5, v6

    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v5    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_1
.end method

.method private static getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3950
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3951
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3952
    .local v1, "fld":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3953
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static getFrameworkClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "com.android.internal.telephony"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    const-string v1, ".MobileNetwork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3086
    const/4 v3, 0x0

    .line 3087
    .local v3, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3088
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 3089
    const-string v4, "com.htc.mobiledata"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 3090
    .local v2, "prodr":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_0

    .line 3091
    iget-boolean v4, v2, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v4, :cond_0

    .line 3092
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v4

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    const-string v0, "com.android.phone"

    .line 3093
    .local v0, "matchPackage":Ljava/lang/String;
    :goto_0
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 3094
    new-instance v3, Landroid/net/Uri$Builder;

    .end local v3    # "uriBuilder":Landroid/net/Uri$Builder;
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 3095
    .restart local v3    # "uriBuilder":Landroid/net/Uri$Builder;
    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3096
    const-string v4, "com.htc.mobiledata"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3101
    .end local v0    # "matchPackage":Ljava/lang/String;
    .end local v2    # "prodr":Landroid/content/pm/ProviderInfo;
    :cond_0
    return-object v3

    .line 3092
    .restart local v2    # "prodr":Landroid/content/pm/ProviderInfo;
    :cond_1
    const-string v0, "com.htc.sense.hsp"

    goto :goto_0
.end method

.method public static getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1248
    const/4 v12, 0x0

    .line 1249
    .local v12, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v9, 0x0

    .line 1250
    .local v9, "exception":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 1252
    .local v7, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v3, 0x1

    .line 1254
    .local v3, "checkNextInterface":Z
    if-eqz v3, :cond_1

    .line 1256
    const/4 v14, 0x0

    .line 1258
    .local v14, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_0
    const-string v17, "dataSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1262
    :goto_0
    if-nez v7, :cond_1

    .line 1263
    if-eqz v14, :cond_0

    array-length v0, v14

    move/from16 v17, v0

    if-gtz v17, :cond_5

    .line 1264
    :cond_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    .end local v7    # "exHtcInterface":Ljava/lang/Throwable;
    const-string v17, "get mobile data"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1273
    .end local v14    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v7    # "exHtcInterface":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v15

    .line 1275
    .local v15, "sdkVersion":I
    if-eqz v3, :cond_8

    const/16 v17, 0x15

    move/from16 v0, v17

    if-lt v15, v0, :cond_8

    .line 1277
    const/4 v9, 0x0

    .line 1278
    const/4 v11, 0x0

    .line 1280
    .local v11, "mth":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v17, "android.telephony.TelephonyManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1281
    .local v4, "cls":Ljava/lang/Class;
    const-string v17, "getDataEnabled"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1282
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1286
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_2
    if-eqz v11, :cond_8

    if-nez v9, :cond_8

    .line 1287
    const/4 v3, 0x0

    .line 1293
    :try_start_2
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 1294
    .local v10, "mgr":Landroid/telephony/TelephonyManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    .line 1295
    .local v16, "value":Ljava/lang/Boolean;
    new-instance v13, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v13}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1296
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v13, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_3
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 1303
    .end local v10    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    .end local v16    # "value":Ljava/lang/Boolean;
    :goto_3
    if-eqz v3, :cond_7

    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v15, v0, :cond_7

    .line 1304
    const/4 v9, 0x0

    .line 1305
    const/4 v11, 0x0

    .line 1307
    .restart local v11    # "mth":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v17, "android.net.ConnectivityManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1308
    .restart local v4    # "cls":Ljava/lang/Class;
    const-string v17, "getMobileDataEnabled"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1309
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 1317
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_4
    if-eqz v11, :cond_7

    if-nez v9, :cond_7

    .line 1318
    const/4 v3, 0x0

    .line 1320
    :try_start_5
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 1321
    .local v10, "mgr":Landroid/net/ConnectivityManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    .line 1322
    .restart local v16    # "value":Ljava/lang/Boolean;
    new-instance v12, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v12}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1323
    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_6
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1330
    .end local v10    # "mgr":Landroid/net/ConnectivityManager;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    .end local v16    # "value":Ljava/lang/Boolean;
    :goto_5
    if-nez v3, :cond_2

    if-nez v12, :cond_6

    .line 1331
    :cond_2
    if-nez v9, :cond_3

    .line 1332
    move-object v9, v7

    .line 1334
    :cond_3
    if-nez v9, :cond_4

    .line 1335
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    .end local v9    # "exception":Ljava/lang/Throwable;
    const-string v17, "query mobile data"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1337
    .restart local v9    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v9

    .line 1259
    .end local v15    # "sdkVersion":I
    .restart local v14    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_0
    move-exception v5

    .line 1260
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v7, v5

    goto/16 :goto_0

    .line 1267
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    const/16 v17, 0x0

    aget-object v12, v14, v17

    .line 1268
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1283
    .end local v14    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v11    # "mth":Ljava/lang/reflect/Method;
    .restart local v15    # "sdkVersion":I
    :catch_1
    move-exception v8

    .line 1284
    .local v8, "exReflect":Ljava/lang/Throwable;
    move-object v9, v8

    goto/16 :goto_2

    .line 1297
    .end local v8    # "exReflect":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 1298
    .local v6, "exExecute":Ljava/lang/Throwable;
    :goto_6
    move-object v9, v6

    move-object v13, v12

    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_3

    .line 1310
    .end local v6    # "exExecute":Ljava/lang/Throwable;
    :catch_3
    move-exception v8

    .line 1311
    .restart local v8    # "exReflect":Ljava/lang/Throwable;
    move-object v9, v8

    goto :goto_4

    .line 1324
    .end local v8    # "exReflect":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    move-object v12, v13

    .line 1325
    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "exExecute":Ljava/lang/Throwable;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_7
    move-object v9, v6

    goto :goto_5

    .line 1347
    .end local v6    # "exExecute":Ljava/lang/Throwable;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    :cond_6
    return-object v12

    .line 1324
    .restart local v10    # "mgr":Landroid/net/ConnectivityManager;
    .restart local v11    # "mth":Ljava/lang/reflect/Method;
    .restart local v16    # "value":Ljava/lang/Boolean;
    :catch_5
    move-exception v6

    goto :goto_7

    .line 1297
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v10, "mgr":Landroid/telephony/TelephonyManager;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_6
    move-exception v6

    move-object v12, v13

    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_6

    .end local v10    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v11    # "mth":Ljava/lang/reflect/Method;
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v16    # "value":Ljava/lang/Boolean;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_7
    move-object v12, v13

    .end local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_5

    :cond_8
    move-object v13, v12

    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v13    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto/16 :goto_3
.end method

.method public static getMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Menu;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1366
    const/4 v4, 0x0

    .line 1367
    .local v4, "result":Lcom/android/internal/telephony/MobileNetwork$Menu;
    const/4 v3, 0x0

    .line 1368
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1370
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1372
    .local v0, "checkNextInterface":Z
    if-eqz v0, :cond_1

    .line 1374
    const/4 v5, 0x0

    .line 1376
    .local v5, "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :try_start_0
    const-string v7, "dataSettingMenu"

    invoke-static {p0, p1, v7}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1380
    :goto_0
    if-nez v2, :cond_1

    .line 1381
    if-eqz v5, :cond_0

    array-length v7, v5

    if-gtz v7, :cond_5

    .line 1382
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exHtcInterface":Ljava/lang/Throwable;
    const-string v7, "get mobile data menu"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1391
    .end local v5    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v2    # "exHtcInterface":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    .line 1393
    .local v6, "sdkVersion":I
    if-nez v0, :cond_2

    if-nez v4, :cond_6

    .line 1394
    :cond_2
    if-nez v3, :cond_3

    .line 1395
    move-object v3, v2

    .line 1397
    :cond_3
    if-nez v3, :cond_4

    .line 1398
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v7, "query mobile data menu"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1400
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v3

    .line 1377
    .end local v6    # "sdkVersion":I
    .restart local v5    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :catch_0
    move-exception v1

    .line 1378
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_0

    .line 1385
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    const/4 v7, 0x0

    aget-object v4, v5, v7

    .line 1386
    const/4 v0, 0x0

    goto :goto_1

    .line 1411
    .end local v5    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v6    # "sdkVersion":I
    :cond_6
    return-object v4
.end method

.method private static getUserID()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 3113
    const/4 v3, 0x0

    .line 3115
    .local v3, "userId":Ljava/lang/Long;
    :try_start_0
    const-string v4, "android.os.UserHandle"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3116
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "myUserId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3117
    .local v2, "mth":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3118
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3119
    .local v1, "id":I
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3121
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "id":I
    .end local v2    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3120
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3422
    const/4 v14, 0x0

    .line 3423
    .local v14, "result":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v6, 0x0

    .line 3424
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-static/range {p0 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    .line 3425
    .local v13, "queryResult":[Ljava/lang/Object;
    if-eqz v13, :cond_d

    .line 3426
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3427
    const/4 v3, 0x0

    .line 3428
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3430
    .local v2, "c":Landroid/database/Cursor;
    const/16 v16, 0x0

    :try_start_0
    aget-object v16, v13, v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 3431
    const/16 v16, 0x1

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 3432
    const/16 v16, 0x2

    aget-object v16, v13, v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3441
    .local v4, "count":I
    const-string v16, "slot"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3442
    .local v9, "posSlot":I
    const-string v16, "phoneType"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3443
    .local v8, "posPhoneType":I
    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3444
    .local v12, "posValue":I
    const-string v16, "uiGrayOut"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3445
    .local v10, "posUiGrayOut":I
    const-string v16, "uiHide"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3446
    .local v11, "posUiHide":I
    new-array v15, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3447
    .local v15, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    new-array v14, v4, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 3448
    if-gez v9, :cond_0

    if-gez v8, :cond_0

    if-gez v12, :cond_0

    if-gez v10, :cond_0

    if-ltz v11, :cond_c

    .line 3449
    :cond_0
    const/4 v4, 0x0

    .line 3450
    :goto_0
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    .line 3451
    if-ltz v9, :cond_2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_2

    .line 3452
    aget-object v16, v15, v4

    if-nez v16, :cond_1

    .line 3453
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v16, v15, v4

    .line 3455
    :cond_1
    aget-object v16, v15, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 3457
    :cond_2
    if-ltz v8, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 3458
    aget-object v16, v15, v4

    if-nez v16, :cond_3

    .line 3459
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v16, v15, v4

    .line 3461
    :cond_3
    aget-object v16, v15, v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 3463
    :cond_4
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    aput-object v16, v14, v4

    .line 3464
    if-ltz v12, :cond_5

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_5

    .line 3465
    aget-object v17, v14, v4

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 3467
    :cond_5
    if-ltz v10, :cond_6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 3468
    aget-object v17, v14, v4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 3470
    :cond_6
    if-ltz v11, :cond_7

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_7

    .line 3471
    aget-object v17, v14, v4

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-eqz v16, :cond_a

    const/16 v16, 0x1

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    .line 3473
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3474
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 3465
    :cond_8
    const/16 v16, 0x0

    goto :goto_1

    .line 3468
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 3471
    :cond_a
    const/16 v16, 0x0

    goto :goto_3

    .line 3477
    :cond_b
    array-length v4, v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3481
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posUiGrayOut":I
    .end local v11    # "posUiHide":I
    .end local v12    # "posValue":I
    .end local v15    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_0
    move-exception v5

    .line 3482
    .local v5, "exRead":Ljava/lang/Throwable;
    move-object v6, v5

    .line 3485
    .end local v5    # "exRead":Ljava/lang/Throwable;
    :cond_c
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3488
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3498
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    :goto_5
    if-eqz v6, :cond_f

    .line 3499
    throw v6

    .line 3492
    :cond_e
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v14, v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 3493
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_d

    .line 3494
    new-instance v16, Lcom/android/internal/telephony/MobileNetwork$Setting;

    aget-object v17, v13, v7

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v7

    .line 3493
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3486
    .end local v7    # "i":I
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v16

    goto :goto_4

    .line 3489
    :catch_2
    move-exception v16

    goto :goto_5

    .line 3501
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_f
    return-object v14
.end method

.method public static getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .param p3, "objectType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3617
    const/4 v12, 0x0

    .line 3618
    .local v12, "result":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 3619
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-static/range {p0 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v11

    .line 3620
    .local v11, "queryResult":[Ljava/lang/Object;
    if-eqz v11, :cond_9

    .line 3621
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 3622
    const/4 v3, 0x0

    .line 3623
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3625
    .local v2, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v11, v14

    move-object v0, v14

    check-cast v0, Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 3626
    const/4 v14, 0x1

    aget-object v14, v11, v14

    move-object v0, v14

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 3627
    const/4 v14, 0x2

    aget-object v14, v11, v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3629
    .local v4, "count":I
    const-string v14, "value"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3630
    .local v10, "posValue":I
    const-string v14, "phoneType"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3631
    .local v8, "posPhoneType":I
    const-string v14, "slot"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3632
    .local v9, "posSlot":I
    new-array v13, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3633
    .local v13, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    new-array v12, v4, [Ljava/lang/Object;

    .line 3634
    if-gez v10, :cond_0

    if-gez v9, :cond_0

    if-ltz v8, :cond_8

    .line 3635
    :cond_0
    const/4 v4, 0x0

    .line 3636
    :goto_0
    array-length v14, v12

    if-ge v4, v14, :cond_8

    .line 3637
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3638
    const-class v14, Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_7

    .line 3639
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v4

    .line 3645
    :cond_1
    :goto_1
    if-ltz v9, :cond_3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 3646
    aget-object v14, v13, v4

    if-nez v14, :cond_2

    .line 3647
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v14, v13, v4

    .line 3649
    :cond_2
    aget-object v14, v13, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 3651
    :cond_3
    if-ltz v8, :cond_5

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 3652
    aget-object v14, v13, v4

    if-nez v14, :cond_4

    .line 3653
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v14, v13, v4

    .line 3655
    :cond_4
    aget-object v14, v13, v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 3657
    :cond_5
    const-string v14, "dataPath"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3658
    aget-object v14, v13, v4

    aput-object v14, v12, v4

    .line 3660
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3661
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3641
    :cond_7
    const-class v14, Ljava/lang/Long;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_1

    .line 3642
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3669
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posValue":I
    .end local v13    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_0
    move-exception v5

    .line 3670
    .local v5, "exRead":Ljava/lang/Throwable;
    move-object v6, v5

    .line 3673
    .end local v5    # "exRead":Ljava/lang/Throwable;
    :cond_8
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3676
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3691
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_9
    :goto_3
    if-eqz v6, :cond_d

    .line 3692
    throw v6

    .line 3664
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    .restart local v4    # "count":I
    .restart local v8    # "posPhoneType":I
    .restart local v9    # "posSlot":I
    .restart local v10    # "posValue":I
    .restart local v13    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_a
    :try_start_3
    array-length v4, v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3680
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posValue":I
    .end local v13    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_b
    const-string v14, "dataPath"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 3681
    array-length v14, v11

    new-array v12, v14, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3682
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    array-length v14, v11

    if-ge v7, v14, :cond_9

    .line 3683
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    aget-object v15, v11, v7

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v7

    .line 3682
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3687
    .end local v7    # "i":I
    :cond_c
    move-object v12, v11

    goto :goto_3

    .line 3674
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v14

    goto :goto_2

    .line 3677
    :catch_2
    move-exception v14

    goto :goto_3

    .line 3694
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    return-object v12
.end method

.method public static getValueAsMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3522
    const/4 v13, 0x0

    .line 3523
    .local v13, "result":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    const/4 v6, 0x0

    .line 3524
    .local v6, "exception":Ljava/lang/Throwable;
    invoke-static/range {p0 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    .line 3525
    .local v12, "queryResult":[Ljava/lang/Object;
    if-eqz v12, :cond_9

    .line 3526
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 3527
    const/4 v3, 0x0

    .line 3528
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3530
    .local v2, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v12, v15

    move-object v0, v15

    check-cast v0, Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 3531
    const/4 v15, 0x1

    aget-object v15, v12, v15

    move-object v0, v15

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 3532
    const/4 v15, 0x2

    aget-object v15, v12, v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3540
    .local v4, "count":I
    const-string v15, "slot"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3541
    .local v9, "posSlot":I
    const-string v15, "phoneType"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3542
    .local v8, "posPhoneType":I
    const-string v15, "title"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3543
    .local v11, "posTitle":I
    const-string v15, "summary"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3544
    .local v10, "posSummary":I
    new-array v14, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 3545
    .local v14, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    new-array v13, v4, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    .line 3546
    if-gez v9, :cond_0

    if-gez v8, :cond_0

    if-gez v11, :cond_0

    if-ltz v10, :cond_8

    .line 3547
    :cond_0
    const/4 v4, 0x0

    .line 3548
    :goto_0
    array-length v15, v13

    if-ge v4, v15, :cond_8

    .line 3549
    if-ltz v9, :cond_2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 3550
    aget-object v15, v14, v4

    if-nez v15, :cond_1

    .line 3551
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v15, v14, v4

    .line 3553
    :cond_1
    aget-object v15, v14, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 3555
    :cond_2
    if-ltz v8, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 3556
    aget-object v15, v14, v4

    if-nez v15, :cond_3

    .line 3557
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v15, v14, v4

    .line 3559
    :cond_3
    aget-object v15, v14, v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 3561
    :cond_4
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>()V

    aput-object v15, v13, v4

    .line 3562
    if-ltz v11, :cond_5

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_5

    .line 3563
    aget-object v15, v13, v4

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 3565
    :cond_5
    if-ltz v10, :cond_6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_6

    .line 3566
    aget-object v15, v13, v4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    .line 3568
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 3569
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3572
    :cond_7
    array-length v4, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3576
    .end local v4    # "count":I
    .end local v8    # "posPhoneType":I
    .end local v9    # "posSlot":I
    .end local v10    # "posSummary":I
    .end local v11    # "posTitle":I
    .end local v14    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_0
    move-exception v5

    .line 3577
    .local v5, "exRead":Ljava/lang/Throwable;
    move-object v6, v5

    .line 3580
    .end local v5    # "exRead":Ljava/lang/Throwable;
    :cond_8
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3583
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3593
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_9
    :goto_2
    if-eqz v6, :cond_b

    .line 3594
    throw v6

    .line 3587
    :cond_a
    array-length v15, v12

    new-array v13, v15, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    .line 3588
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v15, v12

    if-ge v7, v15, :cond_9

    .line 3589
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Menu;

    aget-object v16, v12, v7

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>(Ljava/lang/Object;)V

    aput-object v15, v13, v7

    .line 3588
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3581
    .end local v7    # "i":I
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v15

    goto :goto_1

    .line 3584
    :catch_2
    move-exception v15

    goto :goto_2

    .line 3596
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    :cond_b
    return-object v13
.end method

.method private static getValueFromSystem(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3719
    const/16 v24, 0x0

    .line 3721
    .local v24, "result":[Ljava/lang/Object;
    const/16 v18, 0x0

    .line 3722
    .local v18, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3723
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .end local v18    # "exception":Ljava/lang/Throwable;
    const-string v3, "get value from HTC"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3908
    .restart local v18    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    if-eqz v18, :cond_18

    .line 3909
    throw v18

    .line 3726
    :cond_2
    const/16 v21, 0x0

    .line 3727
    .local v21, "htcInterface":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    .line 3728
    .local v2, "client":Landroid/content/ContentProviderClient;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v28

    .line 3730
    .local v28, "srcInFramework":Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v21

    .line 3731
    if-eqz v28, :cond_4

    if-eqz v21, :cond_4

    .line 3732
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 3733
    .local v14, "cr":Landroid/content/ContentResolver;
    if-eqz v14, :cond_3

    .line 3734
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 3736
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3758
    .end local v14    # "cr":Landroid/content/ContentResolver;
    :cond_4
    :goto_1
    if-eqz v28, :cond_12

    if-eqz v2, :cond_12

    .line 3759
    const/4 v9, 0x0

    .line 3760
    .local v9, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getUserID()Ljava/lang/Long;

    move-result-object v29

    .line 3762
    .local v29, "userId":Ljava/lang/Long;
    :try_start_1
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 3763
    .local v27, "select":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 3765
    .local v8, "argIndex":I
    if-eqz p1, :cond_8

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2700(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3766
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 3767
    if-lez v8, :cond_5

    .line 3768
    const-string v3, " AND "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3770
    :cond_5
    const/16 v3, 0x28

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3771
    const-string v3, "slot"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    const-string v3, " = ? OR "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3773
    const-string v3, "slot"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3774
    const-string v3, " IS NULL)"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3775
    add-int/lit8 v8, v8, 0x1

    .line 3777
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 3778
    if-lez v8, :cond_7

    .line 3779
    const-string v3, " AND "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3781
    :cond_7
    const/16 v3, 0x28

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3782
    const-string v3, "phoneType"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3783
    const-string v3, " = ? OR "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3784
    const-string v3, "phoneType"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3785
    const-string v3, " IS NULL)"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3786
    add-int/lit8 v8, v8, 0x1

    .line 3789
    :cond_8
    if-eqz v29, :cond_a

    .line 3790
    if-lez v8, :cond_9

    .line 3791
    const-string v3, " AND "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3793
    :cond_9
    const/16 v3, 0x28

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3794
    const-string v3, "user"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    const-string v3, " = ? OR "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
    const-string v3, "user"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3797
    const-string v3, " IS NULL)"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    add-int/lit8 v8, v8, 0x1

    .line 3800
    :cond_a
    const/4 v5, 0x0

    .line 3801
    .local v5, "selectCommand":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 3802
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3804
    :cond_b
    const/4 v6, 0x0

    .line 3805
    .local v6, "selectArgs":[Ljava/lang/String;
    if-lez v8, :cond_c

    .line 3806
    new-array v6, v8, [Ljava/lang/String;

    .line 3808
    :cond_c
    if-eqz v29, :cond_d

    .line 3809
    add-int/lit8 v8, v8, -0x1

    .line 3810
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 3812
    :cond_d
    if-eqz p1, :cond_f

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2700(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3813
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    .line 3814
    add-int/lit8 v8, v8, -0x1

    .line 3815
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 3817
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v3, :cond_f

    .line 3818
    add-int/lit8 v8, v8, -0x1

    .line 3819
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    .line 3822
    :cond_f
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object/from16 v19, v18

    .line 3828
    .end local v5    # "selectCommand":Ljava/lang/String;
    .end local v6    # "selectArgs":[Ljava/lang/String;
    .end local v8    # "argIndex":I
    .end local v18    # "exception":Ljava/lang/Throwable;
    .end local v27    # "select":Ljava/lang/StringBuilder;
    .local v19, "exception":Ljava/lang/Throwable;
    :goto_2
    if-eqz v9, :cond_11

    .line 3830
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 3832
    .local v13, "count":I
    if-lez v13, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3833
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 3834
    const/4 v3, 0x0

    aput-object v2, v24, v3

    .line 3835
    const/4 v3, 0x1

    aput-object v9, v24, v3

    .line 3836
    const/4 v3, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v24, v3

    move-object/from16 v18, v19

    .end local v19    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "exception":Ljava/lang/Throwable;
    move-object/from16 v25, v24

    .line 3912
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "count":I
    .end local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v24    # "result":[Ljava/lang/Object;
    .end local v28    # "srcInFramework":Z
    .end local v29    # "userId":Ljava/lang/Long;
    .local v25, "result":[Ljava/lang/Object;
    :goto_3
    return-object v25

    .line 3738
    .end local v25    # "result":[Ljava/lang/Object;
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v24    # "result":[Ljava/lang/Object;
    .restart local v28    # "srcInFramework":Z
    :catch_0
    move-exception v15

    .line 3739
    .local v15, "exHtcInterface":Ljava/lang/Throwable;
    if-nez v18, :cond_4

    .line 3740
    move-object/from16 v18, v15

    goto/16 :goto_1

    .line 3823
    .end local v15    # "exHtcInterface":Ljava/lang/Throwable;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v29    # "userId":Ljava/lang/Long;
    :catch_1
    move-exception v16

    .line 3824
    .local v16, "exOpen":Ljava/lang/Throwable;
    if-nez v18, :cond_1b

    .line 3825
    move-object/from16 v18, v16

    move-object/from16 v19, v18

    .end local v18    # "exception":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    goto :goto_2

    .line 3839
    .end local v16    # "exOpen":Ljava/lang/Throwable;
    .restart local v13    # "count":I
    :cond_10
    if-nez v19, :cond_1a

    .line 3840
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3841
    .local v26, "sbRead":Ljava/lang/StringBuilder;
    const-string v3, "read value ["

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3842
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3843
    const-string v3, "] from HTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3844
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 3852
    .end local v13    # "count":I
    .end local v19    # "exception":Ljava/lang/Throwable;
    .end local v26    # "sbRead":Ljava/lang/StringBuilder;
    .restart local v18    # "exception":Ljava/lang/Throwable;
    :goto_4
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 3863
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 3864
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 3846
    .end local v18    # "exception":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    :catch_3
    move-exception v17

    .line 3847
    .local v17, "exRead":Ljava/lang/Throwable;
    if-nez v19, :cond_1a

    .line 3848
    move-object/from16 v18, v17

    .end local v19    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "exception":Ljava/lang/Throwable;
    goto :goto_4

    .line 3855
    .end local v17    # "exRead":Ljava/lang/Throwable;
    .end local v18    # "exception":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    :cond_11
    if-nez v19, :cond_19

    .line 3856
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3857
    .restart local v26    # "sbRead":Ljava/lang/StringBuilder;
    const-string v3, "access value ["

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3858
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    const-string v3, "] from HTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3860
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v19    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "exception":Ljava/lang/Throwable;
    goto :goto_5

    .line 3866
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v26    # "sbRead":Ljava/lang/StringBuilder;
    .end local v29    # "userId":Ljava/lang/Long;
    :cond_12
    if-nez v28, :cond_17

    if-eqz v21, :cond_17

    .line 3868
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getFrameworkClassName()Ljava/lang/String;

    move-result-object v20

    .line 3869
    .local v20, "fwMobileNetwork":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 3871
    .local v10, "cls":Ljava/lang/Class;
    const-string v3, "$Selection"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 3872
    .local v11, "clsSelection":Ljava/lang/Class;
    const/16 v23, 0x0

    .line 3873
    .local v23, "ojbSlotNphone":Ljava/lang/Object;
    if-eqz p1, :cond_13

    .line 3874
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v3, v4

    invoke-virtual {v11, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 3875
    .local v12, "cnstrSelection":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 3878
    .end local v12    # "cnstrSelection":Ljava/lang/reflect/Constructor;
    .end local v23    # "ojbSlotNphone":Ljava/lang/Object;
    :cond_13
    const/16 v22, 0x0

    .line 3879
    .local v22, "mth":Ljava/lang/reflect/Method;
    const-string v3, "dataSetting"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "roamingSetting"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "roamSoundSetting"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3882
    :cond_14
    const-string v3, "getValue"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v30, Landroid/content/Context;

    aput-object v30, v4, v7

    const/4 v7, 0x1

    aput-object v11, v4, v7

    const/4 v7, 0x2

    const-class v30, Ljava/lang/String;

    aput-object v30, v4, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 3883
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3884
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    const/4 v7, 0x1

    aput-object v23, v4, v7

    const/4 v7, 0x2

    aput-object p2, v4, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    goto/16 :goto_0

    .line 3886
    :cond_15
    const-string v3, "dataSettingMenu"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3887
    const-string v3, "getValueAsMenu"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v30, Landroid/content/Context;

    aput-object v30, v4, v7

    const/4 v7, 0x1

    aput-object v11, v4, v7

    const/4 v7, 0x2

    const-class v30, Ljava/lang/String;

    aput-object v30, v4, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 3888
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3889
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    const/4 v7, 0x1

    aput-object v23, v4, v7

    const/4 v7, 0x2

    aput-object p2, v4, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    goto/16 :goto_0

    .line 3891
    :cond_16
    const-string v3, "dataPath"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3892
    const-string v3, "getValueAsGivenClass"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v30, Landroid/content/Context;

    aput-object v30, v4, v7

    const/4 v7, 0x1

    aput-object v11, v4, v7

    const/4 v7, 0x2

    const-class v30, Ljava/lang/String;

    aput-object v30, v4, v7

    const/4 v7, 0x3

    const-class v30, Ljava/lang/Class;

    aput-object v30, v4, v7

    invoke-virtual {v10, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 3893
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3894
    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v4, v7

    const/4 v7, 0x1

    aput-object v23, v4, v7

    const/4 v7, 0x2

    aput-object p2, v4, v7

    const/4 v7, 0x3

    aput-object v11, v4, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v24, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 3896
    .end local v10    # "cls":Ljava/lang/Class;
    .end local v11    # "clsSelection":Ljava/lang/Class;
    .end local v20    # "fwMobileNetwork":Ljava/lang/String;
    .end local v22    # "mth":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v17

    .line 3897
    .restart local v17    # "exRead":Ljava/lang/Throwable;
    move-object/from16 v18, v17

    .line 3898
    goto/16 :goto_0

    .line 3900
    .end local v17    # "exRead":Ljava/lang/Throwable;
    :cond_17
    if-nez v18, :cond_1

    .line 3901
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3902
    .restart local v26    # "sbRead":Ljava/lang/StringBuilder;
    const-string v3, "get value ["

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3903
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3904
    const-string v3, "] from HTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    .end local v18    # "exception":Ljava/lang/Throwable;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .restart local v18    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_0

    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v26    # "sbRead":Ljava/lang/StringBuilder;
    .end local v28    # "srcInFramework":Z
    :cond_18
    move-object/from16 v25, v24

    .line 3912
    .end local v24    # "result":[Ljava/lang/Object;
    .restart local v25    # "result":[Ljava/lang/Object;
    goto/16 :goto_3

    .line 3853
    .end local v25    # "result":[Ljava/lang/Object;
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v21    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v24    # "result":[Ljava/lang/Object;
    .restart local v28    # "srcInFramework":Z
    .restart local v29    # "userId":Ljava/lang/Long;
    :catch_5
    move-exception v3

    goto/16 :goto_5

    .end local v18    # "exception":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    :cond_19
    move-object/from16 v18, v19

    .end local v19    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_5

    .end local v18    # "exception":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    :cond_1a
    move-object/from16 v18, v19

    .end local v19    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_4

    .restart local v16    # "exOpen":Ljava/lang/Throwable;
    :cond_1b
    move-object/from16 v19, v18

    .end local v18    # "exception":Ljava/lang/Throwable;
    .restart local v19    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_2
.end method

.method private static handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 26
    .param p0, "i"    # Landroid/content/Intent;
    .param p1, "report"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p4, "callbackMatchSlotNphone"    # Z
    .param p5, "callbackSlotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p6, "targetAction"    # Ljava/lang/String;
    .param p8, "logPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;",
            "Z",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4680
    .local p7, "cacheStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/16 v21, 0x0

    .line 4681
    .local v21, "updateTime":Ljava/lang/Long;
    const-string v22, "updateTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4682
    const-string v22, "updateTime"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 4683
    .local v18, "updTme":J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-lez v22, :cond_0

    .line 4684
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 4687
    .end local v18    # "updTme":J
    :cond_0
    const-string v22, "actionType"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4688
    .local v4, "actionRequest":Ljava/lang/String;
    const/4 v10, 0x0

    .line 4689
    .local v10, "processAction":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 4690
    if-nez v4, :cond_b

    const/4 v10, 0x1

    .line 4692
    :cond_1
    :goto_0
    if-eqz v10, :cond_a

    .line 4693
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4694
    .local v16, "slotNphoneString":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3100(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v15

    .line 4696
    .local v15, "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/16 v20, 0x0

    .line 4697
    .local v20, "updateStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    const/4 v7, 0x0

    .line 4698
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 4699
    .local v11, "processResult":Z
    if-nez v4, :cond_13

    .line 4700
    const/4 v12, 0x0

    .line 4701
    .local v12, "queryAllSlotsNphones":Ljava/lang/Boolean;
    const/4 v13, 0x0

    .line 4702
    .local v13, "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-nez p4, :cond_c

    .line 4703
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4704
    move-object v13, v15

    .line 4711
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 4712
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->isUpdateCacheRequired(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v20

    .line 4714
    :cond_3
    if-eqz v20, :cond_5

    .line 4716
    :try_start_0
    const-string v22, "dataSetting"

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 4719
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v5

    .line 4720
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    move-object/from16 v0, v20

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3702(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4721
    if-eqz v5, :cond_4

    .line 4722
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4767
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_4
    :goto_2
    const/4 v11, 0x1

    .line 4932
    .end local v12    # "queryAllSlotsNphones":Ljava/lang/Boolean;
    .end local v13    # "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_5
    :goto_3
    if-eqz v11, :cond_a

    .line 4933
    if-eqz v7, :cond_7

    .line 4934
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 4935
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4936
    .local v14, "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_6

    .line 4937
    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4939
    :cond_6
    const-string v22, "fail when "

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4940
    if-nez v4, :cond_21

    const-string v22, "notify "

    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4941
    const/16 v22, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4942
    const-string v22, "LibMobileNetwork"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4946
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v20, :cond_a

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3700(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 4947
    move-object/from16 v0, p7

    move-object/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3800(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v17

    .line 4948
    .local v17, "update":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 4949
    if-eqz p1, :cond_8

    .line 4950
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4951
    const-string v22, "logTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 4952
    const-string v22, "logTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4955
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 4956
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4957
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_9

    .line 4958
    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4960
    :cond_9
    const-string v22, "cache"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4961
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->logCacheUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4968
    .end local v7    # "exception":Ljava/lang/Throwable;
    .end local v11    # "processResult":Z
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v16    # "slotNphoneString":Ljava/lang/String;
    .end local v17    # "update":Ljava/lang/String;
    .end local v20    # "updateStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_a
    return-void

    .line 4690
    :cond_b
    move-object/from16 v0, p6

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    goto/16 :goto_0

    .line 4706
    .restart local v7    # "exception":Ljava/lang/Throwable;
    .restart local v11    # "processResult":Z
    .restart local v12    # "queryAllSlotsNphones":Ljava/lang/Boolean;
    .restart local v13    # "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v15    # "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v16    # "slotNphoneString":Ljava/lang/String;
    .restart local v20    # "updateStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_c
    if-eqz v15, :cond_d

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2700(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v22

    if-nez v22, :cond_d

    move-object/from16 v0, p5

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v15, v0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 4708
    :cond_d
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4709
    move-object/from16 v13, p5

    goto/16 :goto_1

    .line 4725
    :cond_e
    :try_start_1
    const-string v22, "dataSettingMenu"

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 4728
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-result-object v5

    .line 4729
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Menu;
    move-object/from16 v0, v20

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3702(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4730
    if-eqz v5, :cond_4

    .line 4731
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v5}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Menu;)V

    goto/16 :goto_2

    .line 4764
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Menu;
    :catch_0
    move-exception v6

    .line 4765
    .local v6, "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto/16 :goto_2

    .line 4734
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_f
    const-string v22, "roamingSetting"

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 4737
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v5

    .line 4738
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    move-object/from16 v0, v20

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3702(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4739
    if-eqz v5, :cond_4

    .line 4740
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    goto/16 :goto_2

    .line 4743
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :cond_10
    const-string v22, "roamSoundSetting"

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 4746
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v5

    .line 4747
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    move-object/from16 v0, v20

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3702(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4748
    if-eqz v5, :cond_4

    .line 4749
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    goto/16 :goto_2

    .line 4752
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_11
    const-string v22, "dataPath"

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 4755
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/MobileNetwork;->getDataPath(Landroid/content/Context;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v5

    .line 4756
    .local v5, "current":Lcom/android/internal/telephony/MobileNetwork$Selection;
    move-object/from16 v0, v20

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3702(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4757
    if-eqz v5, :cond_4

    .line 4758
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V

    goto/16 :goto_2

    .line 4761
    .end local v5    # "current":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_12
    const-string v22, "dataDialog"

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 4762
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDialogDisplay(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 4770
    .end local v12    # "queryAllSlotsNphones":Ljava/lang/Boolean;
    .end local v13    # "querySlotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_13
    const-string v22, "dataSetting"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 4771
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 4772
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_16

    .line 4773
    const-class v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p7

    move-object/from16 v1, v22

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2400(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 4774
    .restart local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_15

    .line 4776
    :try_start_2
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v8

    .line 4778
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 4779
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4780
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_14

    .line 4781
    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4783
    :cond_14
    const-string v22, "invert runtime "

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4784
    invoke-static {v4, v15, v8}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4785
    const-string v22, "LibMobileNetwork"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4788
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v8

    .line 4790
    :cond_16
    if-eqz v8, :cond_5

    .line 4791
    const-string v22, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4807
    .local v9, "privilege":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p2

    invoke-static {v0, v15, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->setMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 4811
    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 4808
    :catch_1
    move-exception v6

    .line 4809
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_6

    .line 4814
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v9    # "privilege":Ljava/lang/String;
    :cond_17
    const-string v22, "roamingSetting"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 4815
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 4816
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v8, :cond_1a

    .line 4817
    const-class v22, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, p7

    move-object/from16 v1, v22

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2400(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 4818
    .restart local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v8, :cond_19

    .line 4820
    :try_start_4
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v8

    .line 4822
    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 4823
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4824
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_18

    .line 4825
    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4827
    :cond_18
    const-string v22, "invert runtime "

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4828
    invoke-static {v4, v15, v8}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4829
    const-string v22, "LibMobileNetwork"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4832
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_19
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$900(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v8

    .line 4834
    :cond_1a
    if-eqz v8, :cond_5

    .line 4835
    const-string v22, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4851
    .restart local v9    # "privilege":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p2

    invoke-static {v0, v15, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 4855
    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 4852
    :catch_2
    move-exception v6

    .line 4853
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_8

    .line 4858
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v9    # "privilege":Ljava/lang/String;
    :cond_1b
    const-string v22, "roamSoundSetting"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 4859
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 4860
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_1e

    .line 4861
    const-class v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p7

    move-object/from16 v1, v22

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2400(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 4862
    .restart local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v8, :cond_1d

    .line 4864
    :try_start_6
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v8

    .line 4866
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 4867
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4868
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    if-eqz p8, :cond_1c

    .line 4869
    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4871
    :cond_1c
    const-string v22, "invert runtime "

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4872
    invoke-static {v4, v15, v8}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4873
    const-string v22, "LibMobileNetwork"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4876
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_1d
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v8

    .line 4878
    :cond_1e
    if-eqz v8, :cond_5

    .line 4879
    const-string v22, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4895
    .restart local v9    # "privilege":Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p2

    invoke-static {v0, v15, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 4899
    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 4896
    :catch_3
    move-exception v6

    .line 4897
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_a

    .line 4902
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v9    # "privilege":Ljava/lang/String;
    :cond_1f
    const-string v22, "dataPath"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 4903
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 4904
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-nez v8, :cond_20

    .line 4907
    :cond_20
    if-eqz v8, :cond_5

    .line 4908
    const-string v22, "privilege"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4924
    .restart local v9    # "privilege":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->setDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 4928
    :goto_b
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 4925
    :catch_4
    move-exception v6

    .line 4926
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    goto :goto_b

    .line 4940
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "prefer":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v9    # "privilege":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_21
    const-string v22, "set "

    goto/16 :goto_4

    .line 4777
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_5
    move-exception v22

    goto/16 :goto_5

    .line 4821
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :catch_6
    move-exception v22

    goto/16 :goto_7

    .line 4865
    .local v8, "prefer":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_7
    move-exception v22

    goto :goto_9
.end method

.method private static isFrameworkSourceCode()Z
    .locals 4

    .prologue
    .line 3131
    const/4 v0, 0x0

    .line 3133
    .local v0, "inFramework":Z
    :try_start_0
    const-class v2, Lcom/android/internal/telephony/MobileNetwork;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 3134
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_0

    .line 3135
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3138
    .end local v1    # "pkg":Ljava/lang/Package;
    :cond_0
    :goto_0
    return v0

    .line 3137
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 5038
    move-object v0, p0

    .line 5039
    .local v0, "verSb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 5040
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "verSb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5042
    .restart local v0    # "verSb":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    .line 5043
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5045
    :cond_1
    const-string v1, "2014111801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5046
    if-eqz p2, :cond_2

    .line 5047
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5049
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 5060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5061
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 5062
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    :goto_0
    const-string v1, " API"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5068
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5069
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5070
    const-string v1, "2014111801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5065
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x20

    .line 4983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4984
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 4985
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4987
    :cond_0
    if-eqz p1, :cond_2

    .line 4988
    if-eqz p0, :cond_1

    .line 4989
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4991
    :cond_1
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4992
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3300(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4993
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4995
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 4996
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4997
    if-eqz p2, :cond_9

    .line 4998
    instance-of v2, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v2, :cond_4

    .line 4999
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 5000
    .local v1, "writer":Ljava/io/CharArrayWriter;
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v1, p2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 5001
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5025
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5003
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v2, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v2, :cond_5

    .line 5004
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 5005
    .restart local v1    # "writer":Ljava/io/CharArrayWriter;
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v1, p2}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$2500(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 5006
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5008
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v2, p2, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v2, :cond_6

    .line 5009
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$2600(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;

    goto :goto_0

    .line 5011
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 5012
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5014
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 5015
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5018
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5022
    :cond_9
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Long;
    .param p1, "value2"    # Ljava/lang/Long;

    .prologue
    .line 4093
    const/4 v0, 0x0

    .line 4094
    .local v0, "matchValue":Z
    if-nez p0, :cond_2

    .line 4095
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 4100
    :cond_0
    :goto_0
    return v0

    .line 4095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4097
    :cond_2
    if-eqz p1, :cond_0

    .line 4098
    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3923
    move-object v0, p0

    .line 3924
    .local v0, "result":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 3925
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v1, :cond_1

    .line 3926
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$2800(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/Object;

    move-result-object v0

    .line 3938
    :cond_0
    :goto_0
    return-object v0

    .line 3928
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_2

    .line 3929
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3931
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v1, :cond_3

    .line 3932
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$2900(Lcom/android/internal/telephony/MobileNetwork$Menu;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3934
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v1, :cond_0

    .line 3935
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static runtimeDebugOn()Z
    .locals 1

    .prologue
    .line 3072
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    return v0
.end method

.method public static setDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1875
    const/4 v2, 0x0

    .line 1876
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1877
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1879
    .local v0, "checkNextInterface":Z
    if-nez p1, :cond_3

    .line 1880
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "write data path"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1894
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1895
    if-nez v2, :cond_1

    .line 1896
    move-object v2, v1

    .line 1898
    :cond_1
    if-nez v2, :cond_2

    .line 1899
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "update data path"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1901
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v2

    .line 1883
    :cond_3
    if-eqz v0, :cond_0

    .line 1885
    const-string v3, "dataPath"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1888
    if-nez v1, :cond_0

    .line 1889
    const/4 v0, 0x0

    goto :goto_0

    .line 1903
    :cond_4
    return-void
.end method

.method public static setDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "roamingSetting"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1445
    const/4 v3, 0x0

    .line 1446
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1447
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1449
    .local v0, "checkNextInterface":Z
    if-nez p2, :cond_3

    .line 1450
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v8, "write data roaming"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1551
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_10

    .line 1552
    if-nez v3, :cond_1

    .line 1553
    move-object v3, v1

    .line 1555
    :cond_1
    if-nez v3, :cond_2

    .line 1556
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v8, "update data roaming"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1558
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v3

    .line 1453
    :cond_3
    if-eqz v0, :cond_4

    .line 1455
    const-string v8, "roamingSetting"

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    invoke-static {p0, p1, v8, v9, p3}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1460
    if-nez v1, :cond_4

    .line 1461
    const/4 v0, 0x0

    .line 1465
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    .line 1467
    .local v6, "sdkVersion":I
    if-eqz v0, :cond_5

    const/16 v8, 0x15

    if-lt v6, v8, :cond_5

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_5

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    .line 1472
    :try_start_0
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-static {p0, v8, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1475
    const/4 v0, 0x0

    .line 1481
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    const/16 v8, 0x15

    if-ge v6, v8, :cond_0

    .line 1483
    const/4 v3, 0x0

    .line 1484
    if-eqz p1, :cond_a

    iget-object v7, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 1485
    .local v7, "slotSelection":Ljava/lang/Long;
    :goto_3
    if-eqz v7, :cond_7

    .line 1486
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    .line 1487
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update data roaming slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1491
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_7
    if-nez v3, :cond_0

    .line 1492
    const/4 v0, 0x0

    .line 1493
    const-string v5, "national_roaming_on"

    .line 1494
    .local v5, "keyNationalRoaming":Ljava/lang/String;
    if-nez v7, :cond_c

    .line 1495
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 1497
    :try_start_1
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_4
    invoke-static {p0, v8, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1531
    :cond_8
    :goto_5
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_0

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_0

    .line 1541
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_6
    invoke-static {v9, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1543
    :catch_0
    move-exception v2

    .line 1544
    .local v2, "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto/16 :goto_0

    .line 1472
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    .end local v5    # "keyNationalRoaming":Ljava/lang/String;
    .end local v7    # "slotSelection":Ljava/lang/Long;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1476
    :catch_1
    move-exception v2

    .line 1477
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto/16 :goto_2

    .line 1484
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 1497
    .restart local v5    # "keyNationalRoaming":Ljava/lang/String;
    .restart local v7    # "slotSelection":Ljava/lang/Long;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 1500
    :catch_2
    move-exception v2

    .line 1501
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    .line 1502
    goto :goto_5

    .line 1506
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_c
    const-string v4, "data_roaming_slot1"

    .line 1507
    .local v4, "keyDataRoaming":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 1508
    const-string v5, "national_roaming_slot1"

    .line 1514
    :goto_7
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 1524
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_8
    invoke-static {v9, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 1526
    :catch_3
    move-exception v2

    .line 1527
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_5

    .line 1511
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_d
    const-string v4, "data_roaming_slot2"

    .line 1512
    const-string v5, "national_roaming_slot2"

    goto :goto_7

    .line 1524
    :cond_e
    const/4 v8, 0x0

    goto :goto_8

    .line 1541
    .end local v4    # "keyDataRoaming":Ljava/lang/String;
    :cond_f
    const/4 v8, 0x0

    goto :goto_6

    .line 1560
    .end local v5    # "keyNationalRoaming":Ljava/lang/String;
    .end local v6    # "sdkVersion":I
    .end local v7    # "slotSelection":Ljava/lang/Long;
    :cond_10
    return-void
.end method

.method private static setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "prevEx"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3993
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v3

    .line 4007
    .local v3, "sdkVersion":I
    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 4008
    const-string v4, "android.provider.Settings$Global"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4009
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "putInt"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4010
    .local v2, "mth":Ljava/lang/reflect/Method;
    const-string v4, "DATA_ROAMING"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4011
    .local v1, "fld":Ljava/lang/reflect/Field;
    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-virtual {v2, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4016
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 4014
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1733
    const/4 v3, 0x0

    .line 1734
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1735
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1737
    .local v0, "checkNextInterface":Z
    if-nez p2, :cond_3

    .line 1738
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v5, "write data roaming sound"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1773
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 1774
    if-nez v3, :cond_1

    .line 1775
    move-object v3, v1

    .line 1777
    :cond_1
    if-nez v3, :cond_2

    .line 1778
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v5, "update data roaming sound"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1780
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v3

    .line 1741
    :cond_3
    if-eqz v0, :cond_4

    .line 1743
    const-string v7, "roamSoundSetting"

    new-array v8, v5, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object p2, v8, v6

    invoke-static {p0, p1, v7, v8, p3}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1745
    if-nez v1, :cond_4

    .line 1746
    const/4 v0, 0x0

    .line 1750
    :cond_4
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v7

    const/16 v8, 0x15

    if-ge v7, v8, :cond_0

    iget-object v7, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 1753
    iget-object v7, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1754
    .local v4, "on":Z
    const/4 v3, 0x0

    .line 1764
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_sound_on"

    if-eqz v4, :cond_5

    move v7, v5

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_6

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_5
    move v7, v6

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    .line 1767
    :catch_0
    move-exception v2

    .line 1768
    .local v2, "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_0

    .line 1782
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    .end local v4    # "on":Z
    :cond_7
    return-void
.end method

.method public static setMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1111
    const/4 v8, 0x0

    .line 1112
    .local v8, "exception":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 1113
    .local v6, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v3, 0x1

    .line 1115
    .local v3, "checkNextInterface":Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v13

    .line 1117
    .local v13, "sdkVersion":I
    if-nez p2, :cond_3

    .line 1118
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .end local v8    # "exception":Ljava/lang/Throwable;
    const-string v14, "write mobile data"

    invoke-static {v14}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1220
    .restart local v8    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    .line 1221
    if-nez v8, :cond_1

    .line 1222
    move-object v8, v6

    .line 1224
    :cond_1
    if-nez v8, :cond_2

    .line 1225
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    .end local v8    # "exception":Ljava/lang/Throwable;
    const-string v14, "write mobile data"

    invoke-static {v14}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1227
    .restart local v8    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v8

    .line 1121
    :cond_3
    if-eqz v3, :cond_4

    .line 1123
    const-string v14, "dataSetting"

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v14, v15, v2}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v6

    .line 1125
    if-nez v6, :cond_4

    .line 1126
    const/4 v3, 0x0

    .line 1130
    :cond_4
    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v14, :cond_0

    .line 1132
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1134
    .local v12, "on":Z
    if-eqz v3, :cond_5

    const/16 v14, 0x15

    if-lt v13, v14, :cond_5

    .line 1136
    const/4 v8, 0x0

    .line 1137
    const/4 v10, 0x0

    .line 1139
    .local v10, "mth":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v14, "android.telephony.TelephonyManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1140
    .local v4, "cls":Ljava/lang/Class;
    const-string v14, "setDataEnabled"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v4, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1141
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_1
    if-eqz v10, :cond_5

    if-nez v8, :cond_5

    .line 1153
    :try_start_1
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1154
    .local v9, "mgr":Landroid/telephony/TelephonyManager;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1155
    const/4 v3, 0x0

    .line 1162
    .end local v9    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v10    # "mth":Ljava/lang/reflect/Method;
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    const/16 v14, 0x15

    if-lt v13, v14, :cond_6

    .line 1164
    const/4 v8, 0x0

    .line 1165
    const/4 v10, 0x0

    .line 1166
    .restart local v10    # "mth":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_7

    const-string v11, "enableDataConnectivity"

    .line 1168
    .local v11, "nameMethod":Ljava/lang/String;
    :goto_3
    :try_start_2
    const-string v14, "android.telephony.TelephonyManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1169
    .restart local v4    # "cls":Ljava/lang/Class;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v4, v11, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1170
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1174
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_4
    if-eqz v10, :cond_6

    if-nez v8, :cond_6

    .line 1182
    :try_start_3
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1183
    .restart local v9    # "mgr":Landroid/telephony/TelephonyManager;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1184
    const/4 v3, 0x0

    .line 1191
    .end local v9    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v10    # "mth":Ljava/lang/reflect/Method;
    .end local v11    # "nameMethod":Ljava/lang/String;
    :cond_6
    :goto_5
    if-eqz v3, :cond_0

    const/16 v14, 0x8

    if-lt v13, v14, :cond_0

    .line 1192
    const/4 v8, 0x0

    .line 1193
    const/4 v10, 0x0

    .line 1195
    .restart local v10    # "mth":Ljava/lang/reflect/Method;
    :try_start_4
    const-string v14, "android.net.ConnectivityManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1196
    .restart local v4    # "cls":Ljava/lang/Class;
    const-string v14, "setMobileDataEnabled"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v4, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1197
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1207
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_6
    if-eqz v10, :cond_0

    if-nez v8, :cond_0

    .line 1209
    :try_start_5
    const-string v14, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 1210
    .local v9, "mgr":Landroid/net/ConnectivityManager;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1211
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1142
    .end local v9    # "mgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v7

    .line 1143
    .local v7, "exReflect":Ljava/lang/Throwable;
    move-object v8, v7

    goto/16 :goto_1

    .line 1156
    .end local v7    # "exReflect":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 1157
    .local v5, "exExecute":Ljava/lang/Throwable;
    move-object v8, v5

    goto :goto_2

    .line 1166
    .end local v5    # "exExecute":Ljava/lang/Throwable;
    :cond_7
    const-string v11, "disableDataConnectivity"

    goto :goto_3

    .line 1171
    .restart local v11    # "nameMethod":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 1172
    .restart local v7    # "exReflect":Ljava/lang/Throwable;
    move-object v8, v7

    goto :goto_4

    .line 1185
    .end local v7    # "exReflect":Ljava/lang/Throwable;
    :catch_3
    move-exception v5

    .line 1186
    .restart local v5    # "exExecute":Ljava/lang/Throwable;
    move-object v8, v5

    goto :goto_5

    .line 1198
    .end local v5    # "exExecute":Ljava/lang/Throwable;
    .end local v11    # "nameMethod":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 1199
    .restart local v7    # "exReflect":Ljava/lang/Throwable;
    move-object v8, v7

    goto :goto_6

    .line 1212
    .end local v7    # "exReflect":Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    .line 1213
    .restart local v5    # "exExecute":Ljava/lang/Throwable;
    move-object v8, v5

    goto/16 :goto_0

    .line 1229
    .end local v5    # "exExecute":Ljava/lang/Throwable;
    .end local v10    # "mth":Ljava/lang/reflect/Method;
    .end local v12    # "on":Z
    :cond_8
    return-void
.end method

.method public static setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/Object;
    .param p4, "privilege"    # Ljava/lang/String;

    .prologue
    .line 3190
    const/16 v16, 0x0

    .line 3191
    .local v16, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 3192
    :cond_0
    new-instance v16, Ljava/lang/IllegalArgumentException;

    .end local v16    # "exception":Ljava/lang/Throwable;
    const-string v35, "set invalid value to HTC"

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3392
    .end local p3    # "value":[Ljava/lang/Object;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v16

    .line 3195
    .restart local p3    # "value":[Ljava/lang/Object;
    :cond_2
    const/16 v19, 0x0

    .line 3196
    .local v19, "htcInterface":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    .line 3197
    .local v5, "client":Landroid/content/ContentProviderClient;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v30

    .line 3199
    .local v30, "srcInFramework":Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v19

    .line 3200
    if-eqz v30, :cond_4

    if-eqz v19, :cond_4

    .line 3201
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 3202
    .local v11, "cr":Landroid/content/ContentResolver;
    if-eqz v11, :cond_3

    .line 3203
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 3205
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "cr":Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v17, v16

    .line 3212
    .end local v16    # "exception":Ljava/lang/Throwable;
    .local v17, "exception":Ljava/lang/Throwable;
    :goto_1
    move-object/from16 v13, v17

    .line 3213
    .local v13, "exDebug":Ljava/lang/Throwable;
    const/16 v25, 0x0

    .line 3228
    .local v25, "sbDebug":Ljava/lang/StringBuilder;
    if-eqz v30, :cond_15

    if-eqz v5, :cond_15

    .line 3229
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 3230
    .local v34, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getUserID()Ljava/lang/Long;

    move-result-object v32

    .line 3246
    .local v32, "userId":Ljava/lang/Long;
    if-eqz p1, :cond_6

    .line 3247
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    .line 3248
    const-string v35, "slot"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3250
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    .line 3251
    const-string v35, "phoneType"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3254
    :cond_6
    if-eqz v32, :cond_7

    .line 3255
    const-string v35, "user"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3257
    :cond_7
    const-string v35, "dataPath"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 3258
    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_a

    .line 3259
    check-cast p3, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    .end local p3    # "value":[Ljava/lang/Object;
    check-cast p3, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/16 v35, 0x0

    aget-object v12, p3, v35

    .line 3260
    .local v12, "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-eqz v12, :cond_a

    .line 3261
    if-eqz v25, :cond_8

    .line 3262
    const-string v35, " into ["

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3263
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v35, v0

    if-eqz v35, :cond_e

    .line 3264
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3269
    :goto_2
    const/16 v35, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3270
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    .line 3271
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3276
    :goto_3
    const/16 v35, 0x5d

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3278
    :cond_8
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9

    .line 3279
    const-string v35, "slot"

    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3281
    :cond_9
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_a

    .line 3282
    const-string v35, "phoneType"

    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3321
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_a
    :goto_4
    if-eqz p4, :cond_c

    .line 3322
    if-eqz v25, :cond_b

    .line 3323
    const-string v35, " by["

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    const/16 v35, 0x5d

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3327
    :cond_b
    const-string v35, "privilege"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    :cond_c
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v31

    .line 3331
    .local v31, "updated":I
    if-gtz v31, :cond_1b

    .line 3332
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    const-string v35, "update value to HTC"

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3340
    .end local v17    # "exception":Ljava/lang/Throwable;
    .end local v31    # "updated":I
    .restart local v16    # "exception":Ljava/lang/Throwable;
    :goto_5
    :try_start_2
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 3385
    .end local v32    # "userId":Ljava/lang/Long;
    .end local v34    # "values":Landroid/content/ContentValues;
    :goto_6
    if-eqz v25, :cond_1

    .line 3386
    if-nez v13, :cond_d

    .line 3387
    move-object/from16 v13, v16

    .line 3389
    :cond_d
    const-string v35, "LibMobileNetwork"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3207
    .end local v13    # "exDebug":Ljava/lang/Throwable;
    .end local v25    # "sbDebug":Ljava/lang/StringBuilder;
    .restart local p3    # "value":[Ljava/lang/Object;
    :catch_0
    move-exception v14

    .line 3208
    .local v14, "exHtcInterface":Ljava/lang/Throwable;
    if-nez v16, :cond_1c

    .line 3209
    move-object/from16 v16, v14

    move-object/from16 v17, v16

    .end local v16    # "exception":Ljava/lang/Throwable;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 3267
    .end local v14    # "exHtcInterface":Ljava/lang/Throwable;
    .end local p3    # "value":[Ljava/lang/Object;
    .restart local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v13    # "exDebug":Ljava/lang/Throwable;
    .restart local v25    # "sbDebug":Ljava/lang/StringBuilder;
    .restart local v32    # "userId":Ljava/lang/Long;
    .restart local v34    # "values":Landroid/content/ContentValues;
    :cond_e
    const/16 v35, 0x2d

    :try_start_3
    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3334
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :catch_1
    move-exception v15

    .line 3335
    .local v15, "exUpdate":Ljava/lang/Throwable;
    if-nez v17, :cond_1b

    .line 3336
    move-object/from16 v16, v15

    .end local v17    # "exception":Ljava/lang/Throwable;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    goto :goto_5

    .line 3274
    .end local v15    # "exUpdate":Ljava/lang/Throwable;
    .end local v16    # "exception":Ljava/lang/Throwable;
    .restart local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    :cond_f
    const/16 v35, 0x2d

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3288
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local p3    # "value":[Ljava/lang/Object;
    :cond_10
    if-eqz p3, :cond_14

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_14

    .line 3289
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 3290
    .local v29, "sbValue":Ljava/lang/StringBuilder;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 3291
    .local v27, "sbGrayout":Ljava/lang/StringBuilder;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 3292
    .local v28, "sbHide":Ljava/lang/StringBuilder;
    check-cast p3, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p3    # "value":[Ljava/lang/Object;
    move-object/from16 v0, p3

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object v4, v0

    .local v4, "arr$":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    aget-object v12, v4, v21

    .line 3293
    .local v12, "eachValue":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v12, :cond_11

    .line 3294
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3295
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3296
    iget-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3292
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 3299
    :cond_11
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3300
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3301
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 3304
    .end local v12    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_12
    if-eqz v25, :cond_13

    .line 3305
    const-string v35, " into ["

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3306
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3308
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    const/16 v35, 0x5d

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3311
    :cond_13
    const-string v35, "value"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const-string v35, "uiGrayOut"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const-string v35, "uiHide"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3316
    .end local v4    # "arr$":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v27    # "sbGrayout":Ljava/lang/StringBuilder;
    .end local v28    # "sbHide":Ljava/lang/StringBuilder;
    .end local v29    # "sbValue":Ljava/lang/StringBuilder;
    .restart local p3    # "value":[Ljava/lang/Object;
    :cond_14
    const-string v35, "value"

    invoke-virtual/range {v34 .. v35}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3317
    const-string v35, "uiGrayOut"

    invoke-virtual/range {v34 .. v35}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3318
    const-string v35, "uiHide"

    invoke-virtual/range {v34 .. v35}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 3343
    .end local v32    # "userId":Ljava/lang/Long;
    .end local v34    # "values":Landroid/content/ContentValues;
    :cond_15
    if-nez v30, :cond_19

    if-eqz v19, :cond_19

    .line 3345
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getFrameworkClassName()Ljava/lang/String;

    move-result-object v18

    .line 3346
    .local v18, "fwMobileNetwork":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 3348
    .local v6, "cls":Ljava/lang/Class;
    const-string v35, "$Selection"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 3349
    .local v7, "clsSelection":Ljava/lang/Class;
    const/16 v24, 0x0

    .line 3350
    .local v24, "ojbSlotNphone":Ljava/lang/Object;
    if-eqz p1, :cond_16

    .line 3351
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-class v37, Ljava/lang/Object;

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 3352
    .local v10, "cnstrSelection":Ljava/lang/reflect/Constructor;
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 3355
    .end local v10    # "cnstrSelection":Ljava/lang/reflect/Constructor;
    .end local v24    # "ojbSlotNphone":Ljava/lang/Object;
    :cond_16
    const/16 v33, 0x0

    .line 3356
    .local v33, "valueArray":[Ljava/lang/Object;
    if-eqz p3, :cond_18

    .line 3357
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3358
    .local v26, "sbFwMobileNetworkSetting":Ljava/lang/StringBuilder;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    const-string v35, "dataPath"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 3360
    const-string v35, "$Selection"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    :goto_9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3366
    .local v8, "clsValue":Ljava/lang/Class;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Ljava/lang/Object;

    move-object/from16 v0, v35

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 3367
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v20

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    .line 3368
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-class v37, Ljava/lang/Object;

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 3369
    .local v9, "cnstr":Ljava/lang/reflect/Constructor;
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v37, p3, v20

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v33, v20

    .line 3367
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 3363
    .end local v8    # "clsValue":Ljava/lang/Class;
    .end local v9    # "cnstr":Ljava/lang/reflect/Constructor;
    .end local v20    # "i":I
    :cond_17
    const-string v35, "$Setting"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3377
    .end local v6    # "cls":Ljava/lang/Class;
    .end local v7    # "clsSelection":Ljava/lang/Class;
    .end local v18    # "fwMobileNetwork":Ljava/lang/String;
    .end local v26    # "sbFwMobileNetworkSetting":Ljava/lang/StringBuilder;
    .end local v33    # "valueArray":[Ljava/lang/Object;
    :catch_2
    move-exception v15

    .line 3378
    .restart local v15    # "exUpdate":Ljava/lang/Throwable;
    move-object/from16 v16, v15

    .line 3379
    .end local v17    # "exception":Ljava/lang/Throwable;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_6

    .line 3373
    .end local v15    # "exUpdate":Ljava/lang/Throwable;
    .end local v16    # "exception":Ljava/lang/Throwable;
    .restart local v6    # "cls":Ljava/lang/Class;
    .restart local v7    # "clsSelection":Ljava/lang/Class;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "fwMobileNetwork":Ljava/lang/String;
    .restart local v33    # "valueArray":[Ljava/lang/Object;
    :cond_18
    const-string v35, "setValue"

    const/16 v36, 0x5

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-class v38, Landroid/content/Context;

    aput-object v38, v36, v37

    const/16 v37, 0x1

    aput-object v7, v36, v37

    const/16 v37, 0x2

    const-class v38, Ljava/lang/String;

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const-class v38, [Ljava/lang/Object;

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const-class v38, Ljava/lang/String;

    aput-object v38, v36, v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 3375
    .local v23, "mth":Ljava/lang/reflect/Method;
    const/16 v35, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3376
    const/16 v35, 0x0

    const/16 v36, 0x5

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object p0, v36, v37

    const/16 v37, 0x1

    aput-object v24, v36, v37

    const/16 v37, 0x2

    aput-object p2, v36, v37

    const/16 v37, 0x3

    aput-object v33, v36, v37

    const/16 v37, 0x4

    aput-object p4, v36, v37

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .end local v17    # "exception":Ljava/lang/Throwable;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_6

    .line 3381
    .end local v6    # "cls":Ljava/lang/Class;
    .end local v7    # "clsSelection":Ljava/lang/Class;
    .end local v16    # "exception":Ljava/lang/Throwable;
    .end local v18    # "fwMobileNetwork":Ljava/lang/String;
    .end local v23    # "mth":Ljava/lang/reflect/Method;
    .end local v33    # "valueArray":[Ljava/lang/Object;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    :cond_19
    if-nez v17, :cond_1a

    .line 3382
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    const-string v35, "set value to HTC"

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v17    # "exception":Ljava/lang/Throwable;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_6

    .line 3341
    .end local p3    # "value":[Ljava/lang/Object;
    .restart local v32    # "userId":Ljava/lang/Long;
    .restart local v34    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v35

    goto/16 :goto_6

    .end local v16    # "exception":Ljava/lang/Throwable;
    .end local v32    # "userId":Ljava/lang/Long;
    .end local v34    # "values":Landroid/content/ContentValues;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    .restart local p3    # "value":[Ljava/lang/Object;
    :cond_1a
    move-object/from16 v16, v17

    .end local v17    # "exception":Ljava/lang/Throwable;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_6

    .end local v16    # "exception":Ljava/lang/Throwable;
    .end local p3    # "value":[Ljava/lang/Object;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    .restart local v32    # "userId":Ljava/lang/Long;
    .restart local v34    # "values":Landroid/content/ContentValues;
    :cond_1b
    move-object/from16 v16, v17

    .end local v17    # "exception":Ljava/lang/Throwable;
    .restart local v16    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_5

    .end local v13    # "exDebug":Ljava/lang/Throwable;
    .end local v25    # "sbDebug":Ljava/lang/StringBuilder;
    .end local v32    # "userId":Ljava/lang/Long;
    .end local v34    # "values":Landroid/content/ContentValues;
    .restart local v14    # "exHtcInterface":Ljava/lang/Throwable;
    .restart local p3    # "value":[Ljava/lang/Object;
    :cond_1c
    move-object/from16 v17, v16

    .end local v16    # "exception":Ljava/lang/Throwable;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_1
.end method
