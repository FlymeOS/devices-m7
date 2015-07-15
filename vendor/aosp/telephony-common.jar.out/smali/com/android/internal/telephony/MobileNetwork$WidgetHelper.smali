.class public Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
.super Landroid/app/Service;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetHelper"
.end annotation


# static fields
.field private static final EVENT_END_INTENT:I = 0x3

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_NEW_INTENT:I = 0x2

.field private static final SHARED_PREFERENCE_FILE:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mainHandler:Landroid/os/Handler;

.field private receivedIntents:I

.field private seqNoIntents:I

.field private stopReceiveIntents:Z

.field private thread:Landroid/os/HandlerThread;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2340
    const-class v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2135
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 2135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2135
    sget-object v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 2135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2135
    iget v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    return v0
.end method

.method static synthetic access$2110(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2135
    iget v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 2135
    iput-boolean p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z

    return p1
.end method

.method private static activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetHelperClass"    # Ljava/lang/Class;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2556
    const/4 v2, 0x0

    .line 2557
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 2558
    .local v0, "compService":Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 2559
    const-class v3, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2560
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2564
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2568
    :goto_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 2569
    new-instance v2, Ljava/lang/ClassNotFoundException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "No service existed"

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 2571
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v2

    .line 2565
    :catch_0
    move-exception v1

    .line 2566
    .local v1, "exStart":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_0
.end method

.method private appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "givenPostfix"    # Ljava/lang/String;

    .prologue
    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2348
    .local v0, "sbTag":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2349
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2350
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2351
    if-eqz p2, :cond_0

    .line 2352
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    :cond_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    if-eqz p1, :cond_1

    .line 2356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "cls"    # Ljava/lang/Class;
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 2514
    const/4 v3, 0x0

    .line 2516
    .local v3, "shpref":Landroid/content/SharedPreferences;
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2527
    :cond_0
    :goto_0
    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v3, p1, p3, p4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2300(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 2528
    .local v0, "cacheLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2400(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 2517
    .end local v0    # "cacheLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    :catch_0
    move-exception v1

    .line 2518
    .local v1, "exLoadSp":Ljava/lang/Throwable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2520
    .local v2, "sbErr":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_1

    .line 2521
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    :cond_1
    const-string v4, "Fail to load previous status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    const-string v4, "LibMobileNetwork"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final forceCallbackUpdate(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2259
    const-string v0, "D."

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1000(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final forceToggleDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2201
    const-string v5, "B."

    .line 2202
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "roamingSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2205
    move-object v6, p2

    .line 2206
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v6, :cond_0

    .line 2207
    const-string v0, "roamingSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$900(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v6

    .line 2210
    const-string v0, "roamingSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2212
    :cond_0
    return-object v6
.end method

.method public static final forceToggleDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2231
    const-string v5, "C."

    .line 2232
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "roamSoundSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2235
    move-object v6, p2

    .line 2236
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v6, :cond_0

    .line 2237
    const-string v0, "roamSoundSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v6

    .line 2240
    const-string v0, "roamSoundSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2242
    :cond_0
    return-object v6
.end method

.method public static final forceToggleMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2171
    const-string v5, "A."

    .line 2172
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "dataSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2175
    move-object v6, p2

    .line 2176
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v6, :cond_0

    .line 2177
    const-string v0, "dataSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v6

    .line 2180
    const-string v0, "dataSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2182
    :cond_0
    return-object v6
.end method

.method private handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "tagPostfix"    # Ljava/lang/String;
    .param p2, "writeback"    # Ljava/lang/Object;

    .prologue
    .line 2455
    if-eqz p2, :cond_4

    instance-of v8, p2, Landroid/os/Bundle;

    if-eqz v8, :cond_4

    move-object v7, p2

    .line 2456
    check-cast v7, Landroid/os/Bundle;

    .line 2457
    .local v7, "update":Landroid/os/Bundle;
    const-string v8, "dataSetting"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 2458
    .local v2, "checkMobileData":Z
    const-string v8, "roamingSetting"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 2459
    .local v0, "checkDataRoaming":Z
    const-string v8, "roamSoundSetting"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 2460
    .local v1, "checkDataRoamingSound":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 2464
    :cond_0
    const/4 v5, 0x0

    .line 2466
    .local v5, "pref":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2467
    if-eqz v5, :cond_4

    .line 2468
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2469
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v3, :cond_4

    .line 2470
    if-eqz v2, :cond_1

    .line 2471
    const-string v8, "dataSetting"

    const-string v9, "dataSetting"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2474
    :cond_1
    if-eqz v0, :cond_2

    .line 2475
    const-string v8, "roamingSetting"

    const-string v9, "roamingSetting"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2478
    :cond_2
    if-eqz v1, :cond_3

    .line 2479
    const-string v8, "roamSoundSetting"

    const-string v9, "roamSoundSetting"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2482
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    .end local v0    # "checkDataRoaming":Z
    .end local v1    # "checkDataRoamingSound":Z
    .end local v2    # "checkMobileData":Z
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "pref":Landroid/content/SharedPreferences;
    .end local v7    # "update":Landroid/os/Bundle;
    :cond_4
    :goto_0
    return-void

    .line 2503
    .restart local v0    # "checkDataRoaming":Z
    .restart local v1    # "checkDataRoamingSound":Z
    .restart local v2    # "checkMobileData":Z
    .restart local v5    # "pref":Landroid/content/SharedPreferences;
    .restart local v7    # "update":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 2504
    .local v4, "exUpdateSp":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2505
    .local v6, "sbErr":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2506
    const-string v8, "Fail to update status"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    const-string v8, "LibMobileNetwork"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 2362
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    .line 2363
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;-><init>(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    .line 2448
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 2449
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2450
    aput-object p1, v0, v3

    .line 2451
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2452
    return-void
.end method

.method private static logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 4
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "preview"    # Landroid/os/Parcelable;

    .prologue
    .line 2532
    if-eqz p1, :cond_1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2534
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "preview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2537
    .local v1, "writer":Ljava/io/CharArrayWriter;
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v2, :cond_2

    .line 2538
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 2540
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    :cond_0
    :goto_0
    const-string v2, "LibMobileNetwork"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    :cond_1
    return-void

    .line 2542
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "writer":Ljava/io/CharArrayWriter;
    .restart local p1    # "preview":Landroid/os/Parcelable;
    :cond_2
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v2, :cond_3

    .line 2543
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$2500(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 2545
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2547
    .restart local p1    # "preview":Landroid/os/Parcelable;
    :cond_3
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v2, :cond_0

    .line 2548
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$2600(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCallbackClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 2152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2267
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 2275
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2276
    invoke-virtual {p0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->init(Landroid/content/Context;)V

    .line 2277
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    .line 2327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2328
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2329
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 2284
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z

    if-nez v5, :cond_0

    .line 2285
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    .line 2286
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    .line 2287
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    invoke-virtual {v6, v8, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2318
    :goto_0
    return v8

    .line 2290
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2291
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_5

    const-string v5, "logTag"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2292
    const-string v5, "resend "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2294
    if-eqz p1, :cond_1

    .line 2295
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2296
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    :cond_1
    const/4 v1, 0x0

    .line 2300
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2302
    .local v4, "stopResult":Z
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopSelfResult(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2306
    :goto_2
    if-eqz v1, :cond_2

    .line 2307
    const-string v5, " stop-fail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    invoke-static {v5, v6, p1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v2

    .line 2310
    .local v2, "exceptionService":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 2311
    const-string v5, " resend-fail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    :cond_3
    if-nez v1, :cond_4

    .line 2314
    move-object v1, v2

    .line 2316
    :cond_4
    const-string v5, "LibMobileNetwork"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v2    # "exceptionService":Ljava/lang/Throwable;
    .end local v4    # "stopResult":Z
    :cond_5
    move-object v5, v6

    .line 2291
    goto :goto_1

    .line 2303
    .restart local v1    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "stopResult":Z
    :catch_0
    move-exception v0

    .line 2304
    .local v0, "exStopSelf":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_2
.end method
