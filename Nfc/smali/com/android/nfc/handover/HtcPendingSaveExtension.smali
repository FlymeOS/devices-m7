.class final Lcom/android/nfc/handover/HtcPendingSaveExtension;
.super Ljava/lang/Object;
.source "HtcPendingSaveExtension.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;,
        Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;
    }
.end annotation


# static fields
.field protected static final BEAM_PREVIEW_RESPONSE_DATA:Ljava/lang/String; = "BEAM_PREVIEW_RESPONSE_DATA"

.field protected static final DELETE_INTENT:Ljava/lang/String; = "com.htc.HtcNfcPSE.ClearNotification"

.field protected static final EXTRA_ACCEPT_LIST:Ljava/lang/String; = "AcceptList"

.field protected static final EXTRA_FILE_LIST:Ljava/lang/String; = "FileList"

.field protected static final EXTRA_REJECT_LIST:Ljava/lang/String; = "RejectList"

.field protected static final RESULT_INTENT:Ljava/lang/String; = "com.htc.tag.action.BeamPreview.Result"

.field static final TAG:Ljava/lang/String; = "HtcNfcPSE"

.field private static sInstance:Lcom/android/nfc/handover/HtcPendingSaveExtension;


# instance fields
.field private final DBG:Z

.field private final DBG_SHOW_TOAST:Z

.field private final HIDDEN_DIR:Ljava/lang/String;

.field private final IMAGE:Ljava/lang/String;

.field private final IMAGE_NOTIF_ID:I

.field private final MSG_PROCESS_DELETE_INTENT:I

.field private final MSG_PROCESS_RESULT_INTENT:I

.field private final MSG_UPDATE_NOTIFICATION:I

.field private final OTHER:Ljava/lang/String;

.field private final OTHER_NOTIF_ID:I

.field private final PATH_CHECK_ENABLED:Z

.field private final POPUP_PREVIEW_OFF:I

.field private final POPUP_PREVIEW_ON:I

.field private final PREVIEW_INTENT:Ljava/lang/String;

.field private final PROVIDER_USER_PROMPT_DEFAULT:Z

.field private final PROVIDER_USER_PROMPT_ENABLED:Ljava/lang/String;

.field private final VIDEO:Ljava/lang/String;

.field private final VIDEO_NOTIF_ID:I

.field private final mACCEnabled:Z

.field final mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

.field mClient:Landroid/os/Messenger;

.field private final mContext:Landroid/content/Context;

.field private mExtRoot:Ljava/lang/String;

.field private final mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPendingImageNB:Landroid/app/Notification$Builder;

.field private final mPendingOtherNB:Landroid/app/Notification$Builder;

.field private final mPendingVideoNB:Landroid/app/Notification$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->sInstance:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLcom/android/nfc/handover/HtcPendingSaveExtension$Callback;)V
    .locals 19
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "enable"    # Z
    .param p3, "callback"    # Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    .line 48
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG_SHOW_TOAST:Z

    .line 50
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->PATH_CHECK_ENABLED:Z

    .line 52
    const-string v2, "vzw_nfc_handover_prompt_enabled"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->PROVIDER_USER_PROMPT_ENABLED:Ljava/lang/String;

    .line 53
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->PROVIDER_USER_PROMPT_DEFAULT:Z

    .line 55
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->MSG_UPDATE_NOTIFICATION:I

    .line 56
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->MSG_PROCESS_RESULT_INTENT:I

    .line 57
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->MSG_PROCESS_DELETE_INTENT:I

    .line 59
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->POPUP_PREVIEW_OFF:I

    .line 60
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->POPUP_PREVIEW_ON:I

    .line 62
    const-string v2, "com.htc.tag.action.BeamPreview"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->PREVIEW_INTENT:Ljava/lang/String;

    .line 74
    const-string v2, ".nfctmp"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->HIDDEN_DIR:Ljava/lang/String;

    .line 75
    const-string v2, "image"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->IMAGE:Ljava/lang/String;

    .line 76
    const-string v2, "video"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->VIDEO:Ljava/lang/String;

    .line 77
    const-string v2, "other"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->OTHER:Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->IMAGE_NOTIF_ID:I

    .line 81
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->VIDEO_NOTIF_ID:I

    .line 82
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->OTHER_NOTIF_ID:I

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mClient:Landroid/os/Messenger;

    .line 101
    sput-object p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->sInstance:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .line 102
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    .line 103
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    .line 104
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    .line 106
    const-string v2, "HtcNfcPSE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor: mACCEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    if-eqz v2, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverTransfer;->getStorageLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcNfcPSE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor: mExtRoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 112
    .local v18, "res":Landroid/content/res/Resources;
    const v2, 0x3070188

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "imageTitle":Ljava/lang/String;
    const v2, 0x3070189

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "videoTitle":Ljava/lang/String;
    const v2, 0x307018a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, "fileTitle":Ljava/lang/String;
    const v2, 0x307018b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "notifText":Ljava/lang/String;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcNfcPSE"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandlerThread:Landroid/os/HandlerThread;

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v2, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;-><init>(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mNotificationManager:Landroid/app/NotificationManager;

    .line 123
    const/4 v3, 0x0

    const v4, 0x1080082

    move-object/from16 v2, p0

    move-object v6, v5

    invoke-direct/range {v2 .. v7}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getCustomizedBuilder(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingImageNB:Landroid/app/Notification$Builder;

    .line 125
    const/4 v9, 0x0

    const v10, 0x1080082

    move-object/from16 v8, p0

    move-object v12, v11

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getCustomizedBuilder(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingVideoNB:Landroid/app/Notification$Builder;

    .line 127
    const/4 v13, 0x0

    const v14, 0x1080082

    move-object/from16 v12, p0

    move-object/from16 v16, v15

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v17}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getCustomizedBuilder(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingOtherNB:Landroid/app/Notification$Builder;

    .line 137
    .end local v5    # "imageTitle":Ljava/lang/String;
    .end local v7    # "notifText":Ljava/lang/String;
    .end local v11    # "videoTitle":Ljava/lang/String;
    .end local v15    # "fileTitle":Ljava/lang/String;
    .end local v18    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandlerThread:Landroid/os/HandlerThread;

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mNotificationManager:Landroid/app/NotificationManager;

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingImageNB:Landroid/app/Notification$Builder;

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingVideoNB:Landroid/app/Notification$Builder;

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingOtherNB:Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingImageNB:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->deleteRecursive(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/HtcPendingSaveExtension;Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .param p1, "x1"    # Landroid/app/Notification$Builder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/util/ArrayList;
    .param p6, "x6"    # Z

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingVideoNB:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mPendingOtherNB:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/nfc/handover/HtcPendingSaveExtension;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getOtherPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->processAcceptList(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/HtcPendingSaveExtension;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->processRejectList(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private checkFileStructure()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "rootFolder":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    const-string v5, ".nfctmp"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .local v0, "hiddenFolder":Ljava/io/File;
    const-string v4, ".nfctmp"

    invoke-direct {p0, v1, v4, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ".nomedia"

    invoke-direct {p0, v0, v4, v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "image"

    invoke-direct {p0, v0, v4, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "video"

    invoke-direct {p0, v0, v4, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "other"

    invoke-direct {p0, v0, v4, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 715
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 720
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2

    .line 721
    const-string v1, "HtcNfcPSE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    return v0

    .line 724
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 726
    :cond_3
    const-string v1, "HtcNfcPSE"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkValidPath(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "image/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 697
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "VALID_PATH":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 705
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 706
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 707
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcNfcPSE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkValidPath: Invalid path found. remove path. mimeType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 704
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 698
    .end local v0    # "VALID_PATH":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    const-string v3, "video/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 699
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "VALID_PATH":Ljava/lang/String;
    goto :goto_0

    .line 701
    .end local v0    # "VALID_PATH":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getOtherPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "VALID_PATH":Ljava/lang/String;
    goto :goto_0

    .line 711
    .restart local v1    # "i":I
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->trimToSize()V

    .line 712
    return-void
.end method

.method private createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "path"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "isDirectory"    # Z

    .prologue
    const/4 v2, 0x0

    .line 440
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .local v1, "newFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 443
    if-eqz p3, :cond_3

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcNfcPSE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFileOrDirectory("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") false returned during creation of directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    :goto_0
    return v2

    .line 448
    :cond_1
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcNfcPSE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFileOrDirectory("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") directory is created."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_4

    .line 452
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcNfcPSE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFileOrDirectory("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") false returned during creation of file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcNfcPSE"

    const-string v4, "createFileOrDirectory: Exception caught."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcNfcPSE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFileOrDirectory("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") file is created."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 5
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 420
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 422
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->deleteRecursive(Ljava/io/File;)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 426
    return-void
.end method

.method private generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 755
    const-string v1, "yyyy-MM-dd"

    .line 756
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 757
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 760
    .local v0, "count":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 763
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :cond_0
    return-object v2
.end method

.method private generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 733
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 734
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 735
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 736
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 737
    const-string v3, ""

    .line 738
    move-object v4, p2

    .line 743
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 745
    .local v0, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 746
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 740
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 750
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method private getCustomizedBuilder(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "autoCancel"    # Z
    .param p2, "icon"    # I
    .param p3, "ticker"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, "newBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 487
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 488
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 489
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 490
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 492
    return-object v0
.end method

.method private getDeleteIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 600
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.HtcNfcPSE.ClearNotification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    iget-object v2, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 605
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getFailSafeIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 591
    .local p2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 593
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "FileList"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 596
    return-object v0
.end method

.method private getFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "filenames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 561
    .local v1, "file":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 562
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    iget-boolean v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v5, :cond_0

    .line 565
    const-string v5, "HtcNfcPSE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "filenames":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    return-object v4
.end method

.method private getHiddenPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nfctmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImagePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getHiddenPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance()Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->sInstance:Lcom/android/nfc/handover/HtcPendingSaveExtension;

    return-object v0
.end method

.method private getLaunchIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 576
    .local p2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.tag.action.BeamPreview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v1, "FileList"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 587
    return-object v0

    .line 580
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmSaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .restart local v0    # "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getOtherPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getHiddenPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getHiddenPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processAcceptList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 10
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "acceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 611
    if-nez p2, :cond_1

    .line 612
    iget-boolean v7, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcNfcPSE"

    const-string v8, "processAcceptList: list is null. Skip."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    :goto_0
    return v6

    .line 616
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 617
    iget-boolean v7, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcNfcPSE"

    const-string v8, "processAcceptList: list size is zero. Skip."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    const-string v8, "beam"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .local v1, "beamPath":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->checkMediaStorage(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 624
    iget-boolean v7, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcNfcPSE"

    const-string v8, "processAcceptList: Media storage not valid."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 629
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "beam"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 630
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_4

    .line 631
    iget-boolean v7, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcNfcPSE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processAcceptList: Failed to create multiple path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 636
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->checkValidPath(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 638
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v4, "mPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 640
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .local v5, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 643
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 644
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "HtcNfcPSE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAcceptList: Failed to rename from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 639
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 647
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "HtcNfcPSE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAcceptList: Did successful rename from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 652
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v5    # "srcFile":Ljava/io/File;
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 653
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v6, v8, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 655
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto/16 :goto_0
.end method

.method private processRejectList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "rejectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 661
    if-nez p2, :cond_1

    .line 662
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcNfcPSE"

    const-string v4, "processRejectList: list is null. Skip."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    :goto_0
    return v2

    .line 666
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 667
    iget-boolean v3, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcNfcPSE"

    const-string v4, "processRejectList: list size is zero. Skip."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->checkValidPath(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 675
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 677
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 678
    iget-boolean v2, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "HtcNfcPSE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRejectList: file could not be deleted. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    :cond_4
    iget-boolean v2, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "HtcNfcPSE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRejectList: file deleted. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 683
    :cond_5
    iget-boolean v2, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "HtcNfcPSE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRejectList: file does not exist. Skip. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 686
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_0
.end method

.method private updateNotification(Landroid/app/Notification$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 17
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "notifID"    # I
    .param p4, "folder"    # Ljava/lang/String;
    .param p6, "start"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$Builder;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p5, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 497
    .local v4, "allFilesInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 499
    .local v12, "totalFileCount":I
    if-eqz p6, :cond_0

    if-nez p5, :cond_2

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v13, :cond_1

    const-string v13, "HtcNfcPSE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateNotification: reset to use all files in folder. start="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    move-object/from16 p5, v4

    .line 505
    :cond_2
    const/4 v13, 0x1

    if-ge v12, v13, :cond_4

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 552
    :cond_3
    :goto_0
    return-void

    .line 511
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getLaunchIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v10

    .line 514
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    invoke-virtual {v13, v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 515
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_6

    .line 516
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v13, :cond_5

    const-string v13, "HtcNfcPSE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateNotification: reset content intent due to activity not found. mimeType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getFailSafeIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v10

    .line 521
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v10, v15, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 522
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getDeleteIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 524
    .local v6, "deleteIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 525
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 529
    if-eqz p6, :cond_3

    .line 532
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getLaunchIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v11

    .line 533
    .local v11, "launchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 534
    .end local v11    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 535
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v13, :cond_7

    const-string v13, "HtcNfcPSE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateNotification: activity not found. mimeType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getFailSafeIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v9

    .line 544
    .local v9, "failSafeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 545
    .end local v9    # "failSafeIntent":Landroid/content/Intent;
    :catch_1
    move-exception v8

    .line 546
    .local v8, "ee":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v13, :cond_3

    const-string v13, "HtcNfcPSE"

    const-string v14, "updateNotification: fail safe exception caught."

    invoke-static {v13, v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 548
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "ee":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 549
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v13, :cond_3

    const-string v13, "HtcNfcPSE"

    const-string v14, "updateNotification: Exception caught."

    invoke-static {v13, v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected isUserPromptNeeded()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/HtcUtils;->isBeamPreviewSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcNfcPSE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    iget-object v1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mClient:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;)V
    .locals 13
    .param p1, "transfer"    # Lcom/android/nfc/handover/HandoverTransfer;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 210
    iget-boolean v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    if-nez v8, :cond_1

    .line 211
    iget-boolean v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcNfcPSE"

    const-string v9, "onTransferComplete: ACC confirm on save is disabled."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/nfc/HtcUtils;->isBeamPreviewSettingsEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    if-nez v8, :cond_3

    .line 218
    :cond_2
    iget-boolean v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcNfcPSE"

    const-string v9, "onTransferComplete: transfer, mPaths, or mMimeTypes is null. Skip."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_3
    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 223
    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getHiddenPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 224
    iget-boolean v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v8, :cond_0

    const-string v9, "HtcNfcPSE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTransferComplete: timing case found. Skip. path="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "imageFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v7, "videoFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v5, "otherFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 235
    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 236
    .local v6, "path":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 239
    const-string v8, "image/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 240
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_5
    const-string v8, "video/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 243
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 249
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcNfcPSE"

    const-string v9, "onTransferComplete: Skip. Exception caught."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 254
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :cond_7
    iget-boolean v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v8, :cond_8

    .line 255
    const-string v8, "HtcNfcPSE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTransferComplete: totalCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", imageCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", videoCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", otherCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 262
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v8, v11}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 263
    .local v4, "msg":Landroid/os/Message;
    iput v12, v4, Landroid/os/Message;->arg1:I

    .line 264
    iput v11, v4, Landroid/os/Message;->arg2:I

    .line 265
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v8, v4}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    .end local v4    # "msg":Landroid/os/Message;
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 269
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v8, v11}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 270
    .restart local v4    # "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->arg1:I

    .line 271
    iput v11, v4, Landroid/os/Message;->arg2:I

    .line 272
    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v8, v4}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    .end local v4    # "msg":Landroid/os/Message;
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 276
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v8, v11}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 277
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 278
    iput v11, v4, Landroid/os/Message;->arg2:I

    .line 279
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object v8, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v8, v4}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method protected processBeamPreviewResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 285
    iget-boolean v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    if-nez v5, :cond_2

    .line 286
    iget-boolean v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcNfcPSE"

    const-string v6, "processBeamPreviewResponse: ACC confirm on save is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v5, v6}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 291
    .local v4, "msgData":Landroid/os/Bundle;
    const-string v5, "BEAM_PREVIEW_RESPONSE_DATA"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "mimeType":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v5, :cond_3

    .line 296
    const-string v5, "HtcNfcPSE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processBeamPreviewResponse: mimeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", replyTo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mClient:Landroid/os/Messenger;

    .line 300
    const-string v5, "com.htc.tag.action.BeamPreview.Result"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 301
    iget-object v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 302
    .local v3, "msg1":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 304
    iget-object v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v5, v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 305
    .end local v3    # "msg1":Landroid/os/Message;
    :cond_4
    const-string v5, "com.htc.HtcNfcPSE.ClearNotification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    iget-object v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 307
    .restart local v3    # "msg1":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 309
    iget-object v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mHandler:Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;

    invoke-virtual {v5, v3}, Lcom/android/nfc/handover/HtcPendingSaveExtension$HtcPSEHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected processBootComplete4BeamPreview(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    if-nez v0, :cond_2

    .line 315
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcNfcPSE"

    const-string v1, "processBootComplete4BeamPreview: ACC confirm on save is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "HtcNfcPSE"

    const-string v1, "processBootComplete4BeamPreview: clear tmp folder..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    const-string v2, ".nfctmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->deleteRecursive(Ljava/io/File;)V

    .line 324
    iget-object v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mCallback:Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Lcom/android/nfc/handover/HtcPendingSaveExtension$Callback;->onBeamPreviewResponseComplete(Landroid/os/Messenger;)V

    .line 325
    iget-boolean v0, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcNfcPSE"

    const-string v1, "processBootComplete4BeamPreview: clear tmp folder done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected processFiles(Lcom/android/nfc/handover/HandoverTransfer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)[Ljava/lang/Object;
    .locals 8
    .param p1, "transfer"    # Lcom/android/nfc/handover/HandoverTransfer;
    .param p2, "extRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/nfc/handover/HandoverTransfer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "mimeTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 154
    iput-object p2, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mExtRoot:Ljava/lang/String;

    .line 156
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->mACCEnabled:Z

    if-nez v6, :cond_1

    .line 157
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcNfcPSE"

    const-string v7, "processFiles: ACC confirm on save is disabled."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    :goto_0
    return-object v5

    .line 161
    :cond_1
    if-nez p1, :cond_2

    .line 162
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcNfcPSE"

    const-string v7, "processFiles: transfer is null. Skip."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_2
    iget-object v6, p1, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 167
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcNfcPSE"

    const-string v7, "processFiles: No uri received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->checkFileStructure()Z

    move-result v6

    if-nez v6, :cond_4

    .line 172
    iget-boolean v6, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcNfcPSE"

    const-string v7, "processFiles: Media storage not valid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p1, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 177
    iget-object v5, p1, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 178
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p1, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "srcFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 183
    .local v0, "dstFile":Ljava/io/File;
    const-string v5, "image/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 184
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 191
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 192
    iget-boolean v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v5, :cond_5

    .line 193
    const-string v5, "HtcNfcPSE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processFiles: Failed to rename from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 176
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_7
    const-string v5, "video/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 186
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 188
    :cond_8
    invoke-direct {p0}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getOtherPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 197
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-boolean v5, p0, Lcom/android/nfc/handover/HtcPendingSaveExtension;->DBG:Z

    if-eqz v5, :cond_6

    .line 200
    const-string v5, "HtcNfcPSE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processFiles: Did successful rename from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 204
    .end local v0    # "dstFile":Ljava/io/File;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "srcFile":Ljava/io/File;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_a
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object p4, v5, v6

    goto/16 :goto_0
.end method
