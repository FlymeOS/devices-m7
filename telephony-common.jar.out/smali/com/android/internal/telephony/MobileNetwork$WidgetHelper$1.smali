.class Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)V
    .locals 0

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2366
    const/4 v12, 0x0

    .line 2367
    .local v12, "exception":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 2368
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 2369
    .local v14, "params":[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2443
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    .line 2444
    const-string v2, "LibMobileNetwork"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2446
    :cond_1
    return-void

    .line 2371
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, [Ljava/lang/Object;

    .line 2372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    new-instance v4, Landroid/os/HandlerThread;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/String;

    const/16 v6, 0xa

    invoke-direct {v4, v2, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1202(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2375
    const/4 v5, 0x0

    .line 2377
    .local v5, "cbObject":Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->getCallbackClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2384
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v17, v0

    const/4 v2, 0x1

    aget-object v2, v14, v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1600()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v0, v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/MobileNetwork;->access$1700(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v17

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1502(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v10

    .line 2379
    .local v10, "exCallbackClass":Ljava/lang/Throwable;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2380
    .local v16, "sbErr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2381
    const/4 v2, 0x0

    const-string v3, " Given class incompatible"

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/MobileNetwork;->access$1400(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2382
    const-string v2, "LibMobileNetwork"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2390
    .end local v5    # "cbObject":Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .end local v10    # "exCallbackClass":Ljava/lang/Throwable;
    .end local v16    # "sbErr":Ljava/lang/StringBuilder;
    :pswitch_1
    const/4 v2, 0x4

    new-array v14, v2, [Ljava/lang/Object;

    .line 2391
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v14, v2

    .line 2392
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1800(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v3

    aput-object v3, v14, v2

    .line 2393
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    .line 2394
    const/4 v13, 0x0

    .line 2395
    .local v13, "intentLogTag":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 2396
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    const-string v3, "logTag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2398
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2399
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    if-eqz v13, :cond_3

    .line 2401
    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2402
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    :cond_3
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 2405
    const/4 v15, 0x0

    .line 2406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v6, v7, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2409
    .end local v13    # "intentLogTag":Ljava/lang/String;
    :pswitch_2
    const/4 v9, 0x0

    .line 2411
    .local v9, "endTagPostfix":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2412
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2413
    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2414
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2415
    const/4 v15, 0x0

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v2, v9, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1900(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2418
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2419
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2420
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v15, v9}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2421
    const-string v2, "stopping service "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2100(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2424
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2100(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # operator-- for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2110(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2100(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2202(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Z)Z

    .line 2428
    if-eqz v15, :cond_5

    .line 2429
    const-string v2, " done"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2433
    :catch_1
    move-exception v11

    .line 2434
    .local v11, "exStopSelf":Ljava/lang/Throwable;
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2435
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v15, v9}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2436
    const-string v2, "stop service"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    move-object v12, v11

    goto/16 :goto_0

    .line 2369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
