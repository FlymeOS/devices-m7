.class final Lcom/android/internal/telephony/MobileNetwork$1;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field cachedDataPath:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation
.end field

.field cachedDataRoaming:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation
.end field

.field cachedDataRoamingSound:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation
.end field

.field cachedMobileData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation
.end field

.field cachedMobileDataMenu:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

.field callbackMatchSlotNphone:Z

.field callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

.field context:Landroid/content/Context;

.field inited:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4457
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4472
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/Object;

    .line 4473
    .local v16, "params":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->inited:Z

    if-nez v3, :cond_7

    .line 4474
    const/4 v3, 0x0

    aget-object v3, v16, v3

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    .line 4475
    const/4 v3, 0x1

    aget-object v3, v16, v3

    check-cast v3, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .line 4476
    const/4 v3, 0x2

    aget-object v3, v16, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    .line 4477
    const/4 v3, 0x3

    aget-object v3, v16, v3

    check-cast v3, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 4478
    const/4 v3, 0x4

    aget-object v18, v16, v3

    check-cast v18, Ljava/lang/String;

    .line 4479
    .local v18, "prefname":Ljava/lang/String;
    const/4 v3, 0x5

    aget-object v9, v16, v3

    check-cast v9, Ljava/lang/String;

    .line 4481
    .local v9, "logPrefix":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4482
    .local v17, "pref":Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4484
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 4492
    :cond_0
    :goto_0
    const/4 v13, 0x0

    .line 4494
    .local v13, "checkMobileData":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needMobileDataUpdate()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b

    move-result v13

    .line 4496
    :goto_1
    if-eqz v13, :cond_2

    move-object/from16 v3, v17

    :goto_2
    const-string v4, "dataSetting"

    const-class v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v3, v4, v5, v9}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2300(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedMobileData:Ljava/util/LinkedList;

    .line 4500
    const/4 v14, 0x0

    .line 4502
    .local v14, "checkMobileDataMenu":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needMobileDataMenuUpdate()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a

    move-result v14

    .line 4504
    :goto_3
    if-eqz v14, :cond_3

    move-object/from16 v3, v17

    :goto_4
    const-string v4, "dataSettingMenu"

    const-class v5, Lcom/android/internal/telephony/MobileNetwork$Menu;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v3, v4, v5, v9}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2300(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedMobileDataMenu:Ljava/util/LinkedList;

    .line 4508
    const/4 v11, 0x0

    .line 4510
    .local v11, "checkDataRoaming":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingUpdate()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9

    move-result v11

    .line 4512
    :goto_5
    if-eqz v11, :cond_4

    move-object/from16 v3, v17

    :goto_6
    const-string v4, "roamingSetting"

    const-class v5, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v3, v4, v5, v9}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2300(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedDataRoaming:Ljava/util/LinkedList;

    .line 4516
    const/4 v12, 0x0

    .line 4518
    .local v12, "checkDataRoamingSound":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingSoundUpdate()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    move-result v12

    .line 4520
    :goto_7
    if-eqz v12, :cond_5

    move-object/from16 v3, v17

    :goto_8
    const-string v4, "roamSoundSetting"

    const-class v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v3, v4, v5, v9}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2300(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedDataRoamingSound:Ljava/util/LinkedList;

    .line 4524
    const/4 v10, 0x0

    .line 4526
    .local v10, "checkDataPath":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingSoundUpdate()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    move-result v10

    .line 4528
    :goto_9
    if-eqz v10, :cond_6

    .end local v17    # "pref":Landroid/content/SharedPreferences;
    :goto_a
    const-string v3, "dataPath"

    const-class v4, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, v17

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v0, v3, v4, v9}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2300(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedDataPath:Ljava/util/LinkedList;

    .line 4532
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->inited:Z

    .line 4611
    .end local v10    # "checkDataPath":Z
    .end local v11    # "checkDataRoaming":Z
    .end local v12    # "checkDataRoamingSound":Z
    .end local v13    # "checkMobileData":Z
    .end local v14    # "checkMobileDataMenu":Z
    .end local v18    # "prefname":Ljava/lang/String;
    :cond_1
    :goto_b
    return-void

    .line 4485
    .restart local v17    # "pref":Landroid/content/SharedPreferences;
    .restart local v18    # "prefname":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 4486
    .local v15, "exLoadSp":Ljava/lang/Throwable;
    const-string v3, "LibMobileNetwork"

    const/4 v4, 0x0

    const-string v5, " Fail to load previous status"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v9, v5}, Lcom/android/internal/telephony/MobileNetwork;->access$1400(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4496
    .end local v15    # "exLoadSp":Ljava/lang/Throwable;
    .restart local v13    # "checkMobileData":Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 4504
    .restart local v14    # "checkMobileDataMenu":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 4512
    .restart local v11    # "checkDataRoaming":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_6

    .line 4520
    .restart local v12    # "checkDataRoamingSound":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_8

    .line 4528
    .restart local v10    # "checkDataPath":Z
    :cond_6
    const/16 v17, 0x0

    goto :goto_a

    .line 4535
    .end local v9    # "logPrefix":Ljava/lang/String;
    .end local v10    # "checkDataPath":Z
    .end local v11    # "checkDataRoaming":Z
    .end local v12    # "checkDataRoamingSound":Z
    .end local v13    # "checkMobileData":Z
    .end local v14    # "checkMobileDataMenu":Z
    .end local v17    # "pref":Landroid/content/SharedPreferences;
    .end local v18    # "prefname":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    aget-object v1, v16, v3

    check-cast v1, Landroid/content/Intent;

    .line 4536
    .local v1, "i":Landroid/content/Intent;
    const/4 v3, 0x1

    aget-object v19, v16, v3

    check-cast v19, Landroid/os/Handler;

    .line 4537
    .local v19, "reportHdr":Landroid/os/Handler;
    const/4 v3, 0x2

    aget-object v20, v16, v3

    check-cast v20, Ljava/lang/Integer;

    .line 4538
    .local v20, "reportId":Ljava/lang/Integer;
    const/4 v3, 0x3

    aget-object v9, v16, v3

    check-cast v9, Ljava/lang/String;

    .line 4540
    .restart local v9    # "logPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4541
    .local v2, "report":Landroid/os/Bundle;
    if-eqz v1, :cond_c

    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4542
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "report":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4544
    .restart local v2    # "report":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 4546
    .restart local v10    # "checkDataPath":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataPathUpdate()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-result v10

    .line 4548
    :goto_c
    if-eqz v10, :cond_8

    .line 4549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v7, "dataPath"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedDataPath:Ljava/util/LinkedList;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 4555
    :cond_8
    const/4 v12, 0x0

    .line 4557
    .restart local v12    # "checkDataRoamingSound":Z
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingSoundUpdate()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    move-result v12

    .line 4559
    :goto_d
    if-eqz v12, :cond_9

    .line 4560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v7, "roamSoundSetting"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedDataRoamingSound:Ljava/util/LinkedList;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 4566
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v7, "dataDialog"

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 4571
    const/4 v11, 0x0

    .line 4573
    .restart local v11    # "checkDataRoaming":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needDataRoamingUpdate()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    move-result v11

    .line 4575
    :goto_e
    if-eqz v11, :cond_a

    .line 4576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v7, "roamingSetting"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedDataRoaming:Ljava/util/LinkedList;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 4582
    :cond_a
    const/4 v14, 0x0

    .line 4584
    .restart local v14    # "checkMobileDataMenu":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needMobileDataMenuUpdate()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    move-result v14

    .line 4586
    :goto_f
    if-eqz v14, :cond_b

    .line 4587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v7, "dataSettingMenu"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedMobileDataMenu:Ljava/util/LinkedList;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 4593
    :cond_b
    const/4 v13, 0x0

    .line 4595
    .restart local v13    # "checkMobileData":Z
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->needMobileDataUpdate()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    move-result v13

    .line 4597
    :goto_10
    if-eqz v13, :cond_c

    .line 4598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$1;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackMatchSlotNphone:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$1;->callbackSlotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v7, "dataSetting"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$1;->cachedMobileData:Ljava/util/LinkedList;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/MobileNetwork;->access$3500(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 4604
    .end local v10    # "checkDataPath":Z
    .end local v11    # "checkDataRoaming":Z
    .end local v12    # "checkDataRoamingSound":Z
    .end local v13    # "checkMobileData":Z
    .end local v14    # "checkMobileDataMenu":Z
    :cond_c
    if-eqz v19, :cond_1

    if-eqz v20, :cond_1

    .line 4606
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_b

    .line 4608
    :catch_1
    move-exception v3

    goto/16 :goto_b

    .line 4596
    .restart local v10    # "checkDataPath":Z
    .restart local v11    # "checkDataRoaming":Z
    .restart local v12    # "checkDataRoamingSound":Z
    .restart local v13    # "checkMobileData":Z
    .restart local v14    # "checkMobileDataMenu":Z
    :catch_2
    move-exception v3

    goto :goto_10

    .line 4585
    .end local v13    # "checkMobileData":Z
    :catch_3
    move-exception v3

    goto :goto_f

    .line 4574
    .end local v14    # "checkMobileDataMenu":Z
    :catch_4
    move-exception v3

    goto/16 :goto_e

    .line 4558
    .end local v11    # "checkDataRoaming":Z
    :catch_5
    move-exception v3

    goto/16 :goto_d

    .line 4547
    .end local v12    # "checkDataRoamingSound":Z
    :catch_6
    move-exception v3

    goto/16 :goto_c

    .line 4527
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "report":Landroid/os/Bundle;
    .end local v19    # "reportHdr":Landroid/os/Handler;
    .end local v20    # "reportId":Ljava/lang/Integer;
    .restart local v11    # "checkDataRoaming":Z
    .restart local v12    # "checkDataRoamingSound":Z
    .restart local v13    # "checkMobileData":Z
    .restart local v14    # "checkMobileDataMenu":Z
    .restart local v17    # "pref":Landroid/content/SharedPreferences;
    .restart local v18    # "prefname":Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_9

    .line 4519
    .end local v10    # "checkDataPath":Z
    :catch_8
    move-exception v3

    goto/16 :goto_7

    .line 4511
    .end local v12    # "checkDataRoamingSound":Z
    :catch_9
    move-exception v3

    goto/16 :goto_5

    .line 4503
    .end local v11    # "checkDataRoaming":Z
    :catch_a
    move-exception v3

    goto/16 :goto_3

    .line 4495
    .end local v14    # "checkMobileDataMenu":Z
    :catch_b
    move-exception v3

    goto/16 :goto_1
.end method
