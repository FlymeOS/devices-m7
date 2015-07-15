.class public Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWidgetHelper"
.end annotation


# static fields
.field private static final EVENT_END_INTENT:I = 0x3

.field private static final EVENT_FORCE_UPDATE:I = 0x5

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_NEW_INTENT:I = 0x2

.field private static final EVENT_ON_DESTROY:I = 0x8

.field private static final EVENT_ON_PAUSE:I = 0x7

.field private static final EVENT_ON_RESUME:I = 0x6

.field private static final EVENT_RX_BROADCAST_INTENT:I = 0x4


# instance fields
.field private beenDestroyed:Z

.field private context:Landroid/content/Context;

.field private intentReceiver:Landroid/content/BroadcastReceiver;

.field private privilege:Ljava/lang/String;

.field private receivedIntents:I

.field private slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

.field private stopReceiveIntents:Z

.field private thread:Landroid/os/HandlerThread;

.field private threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privilege"    # Ljava/lang/String;
    .param p3, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p4, "threadCallback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .prologue
    .line 2624
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2625
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    .line 2626
    iput-object p2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    .line 2627
    iput-object p3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 2628
    iput-object p4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .line 2629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2630
    return-void
.end method

.method private appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "givenPostfix"    # Ljava/lang/String;

    .prologue
    .line 2801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2802
    .local v0, "sbTag":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2803
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2805
    if-eqz p2, :cond_0

    .line 2806
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    :cond_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    if-eqz p1, :cond_1

    .line 2810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createThread()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2816
    const/4 v7, 0x0

    .line 2817
    .local v7, "newCreate":Z
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2818
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object v6, v2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/MobileNetwork;->access$1700(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    .line 2823
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;-><init>(Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 2830
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.permission.APP_PLATFORM"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    :goto_0
    const/4 v7, 0x1

    .line 2835
    :cond_0
    return v7

    .line 2832
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private finishThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2853
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2855
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2857
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 2858
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    .line 2859
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    .line 2860
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2862
    :cond_0
    return-void

    .line 2856
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyThread(IIILjava/lang/Object;)I
    .locals 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x3

    .line 2839
    iget v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    .line 2840
    .local v1, "processingIntents":I
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    .line 2841
    .local v0, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p4, v0, v2

    .line 2842
    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 2843
    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2844
    const/4 v2, 0x0

    aput-object v2, v0, v4

    .line 2846
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    add-int/lit8 v1, v1, 0x1

    .line 2849
    :goto_0
    return v1

    .line 2848
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 2716
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2717
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    .line 2720
    :cond_0
    return-void
.end method

.method public forceCallbackUpdate()V
    .locals 1

    .prologue
    .line 2653
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2654
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2656
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 2727
    const/4 v0, 0x0

    .line 2728
    .local v0, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2729
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2730
    .local v3, "params":[Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2774
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 2775
    const-string v5, "LibMobileNetwork"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2777
    :cond_1
    return-void

    .line 2732
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z

    .line 2733
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v10, "d."

    invoke-direct {p0, v11, v10}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/MobileNetwork;->access$1000(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 2738
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z

    .line 2739
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 2742
    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    .line 2743
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    if-gtz v5, :cond_0

    .line 2744
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->finishThread()V

    goto :goto_0

    .line 2748
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-nez v5, :cond_0

    .line 2749
    const/4 v1, 0x0

    .line 2750
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 2751
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "intent":Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 2752
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "logTag"

    const-string v6, "e."

    invoke-direct {p0, v11, v6}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2754
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6, v7, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 2759
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    .line 2760
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2761
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    const-string v5, "f."

    :goto_1
    invoke-direct {p0, v11, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2762
    .local v2, "logTag":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/internal/telephony/MobileNetwork;->access$1000(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto/16 :goto_0

    .line 2761
    .end local v2    # "logTag":Ljava/lang/String;
    :cond_3
    const-string v5, "g."

    goto :goto_1

    .line 2768
    :pswitch_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    .line 2769
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    if-gtz v5, :cond_0

    .line 2770
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->finishThread()V

    goto/16 :goto_0

    .line 2730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2707
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2708
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2710
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2695
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2696
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2698
    :cond_0
    return-void
.end method

.method public setDataRoaming(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 2666
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2667
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "roamingSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "b."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2671
    :cond_0
    return-void
.end method

.method public setDataRoamingSound(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2681
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2682
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "roamSoundSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "c."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2686
    :cond_0
    return-void
.end method

.method public setMobileData(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2640
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2641
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "dataSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "a."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$800(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2645
    :cond_0
    return-void
.end method
