.class final Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;
.super Landroid/os/Handler;
.source "HtcPendingSaveExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HtcPendingSaveExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HtcPSEHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 337
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtcNfcPSE"

    const-string v2, "handleMessage: MSG_UPDATE_NOTIFICATION ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v7, 0x1

    .line 346
    .local v7, "show_preview":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 348
    .local v6, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingImageNB:Landroid/app/Notification$Builder;
    invoke-static {v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$100(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "image/*"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getImagePath()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$200(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static/range {v1 .. v7}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 356
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcNfcPSE"

    const-string v2, "handleMessage: MSG_UPDATE_NOTIFICATION done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v6    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "show_preview":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 350
    .restart local v6    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "show_preview":Z
    :cond_4
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingVideoNB:Landroid/app/Notification$Builder;
    invoke-static {v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$400(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "video/*"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getVideoPath()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$500(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static/range {v1 .. v7}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V

    goto :goto_2

    .line 353
    :cond_5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingOtherNB:Landroid/app/Notification$Builder;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$600(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string v10, "other/*"

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getOtherPath()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$700(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v7

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static/range {v8 .. v14}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V

    goto :goto_2

    .line 360
    .end local v6    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "show_preview":Z
    :pswitch_1
    const/16 v17, 0x0

    .local v17, "nAcceptListSize":I
    const/16 v18, 0x0

    .line 362
    .local v18, "nRejectListSize":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 363
    .local v16, "intent":Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 365
    .local v10, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HtcNfcPSE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: MSG_PROCESS_RESULT_INTENT, mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    const-string v2, "AcceptList"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->processAcceptList(Ljava/lang/String;Ljava/util/ArrayList;)I
    invoke-static {v1, v10, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$800(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v17

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    const-string v2, "RejectList"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->processRejectList(Ljava/lang/String;Ljava/util/ArrayList;)I
    invoke-static {v1, v10, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$900(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v18

    .line 370
    const-string v1, "image/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 371
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingImageNB:Landroid/app/Notification$Builder;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$100(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getImagePath()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$200(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static/range {v8 .. v14}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 377
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "HtcNfcPSE"

    const-string v2, "handleMessage: MSG_PROCESS_RESULT_INTENT done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v2, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mClient:Landroid/os/Messenger;

    .line 387
    if-nez v17, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    iget-object v1, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 372
    :cond_8
    :try_start_1
    const-string v1, "video/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 373
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingVideoNB:Landroid/app/Notification$Builder;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$400(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getVideoPath()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$500(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static/range {v8 .. v14}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 378
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .line 379
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 380
    const-string v1, "HtcNfcPSE"

    const-string v2, "handleMessage: MSG_PROCESS_RESULT_INTENT. Exception caught."

    invoke-static {v1, v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v2, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mClient:Landroid/os/Messenger;

    .line 387
    if-nez v17, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    iget-object v1, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 375
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingOtherNB:Landroid/app/Notification$Builder;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$600(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getOtherPath()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$700(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static/range {v8 .. v14}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 383
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v3, v2, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mClient:Landroid/os/Messenger;

    .line 387
    if-nez v17, :cond_b

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    iget-object v2, v2, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v2, v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    :cond_b
    throw v1

    .line 394
    .end local v17    # "nAcceptListSize":I
    .end local v18    # "nRejectListSize":I
    :pswitch_2
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 395
    .restart local v16    # "intent":Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 397
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "HtcNfcPSE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: MSG_PROCESS_DELETE_INTENT, mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_c
    const-string v1, "image/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getImagePath()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$200(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->deleteRecursive(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$1000(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/io/File;)V

    .line 406
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "HtcNfcPSE"

    const-string v2, "handleMessage: MSG_PROCESS_DELETE_INTENT done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 412
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    iget-object v1, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 401
    :cond_e
    :try_start_5
    const-string v1, "video/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getVideoPath()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$500(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->deleteRecursive(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$1000(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 407
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v15

    .line 408
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # getter for: Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z
    invoke-static {v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 409
    const-string v1, "HtcNfcPSE"

    const-string v2, "handleMessage: MSG_PROCESS_DELETE_INTENT. Exception caught."

    invoke-static {v1, v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 412
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    iget-object v1, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 404
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->getOtherPath()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$700(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/nfc/handover/HtcPendingSaveExtension;->deleteRecursive(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->access$1000(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 412
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->this$0:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    iget-object v2, v2, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v2, v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    throw v1

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
