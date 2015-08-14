.class public Lcom/android/nfc/handover/HandoverTransfer;
.super Ljava/lang/Object;
.source "HandoverTransfer.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverTransfer$Callback;
    }
.end annotation


# static fields
.field static final ALIVE_CHECK_MS:I = 0x9c40

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final DBG:Ljava/lang/Boolean;

.field static final DEVICE_TYPE_BLUETOOTH:I = 0x1

.field public static final DEVICE_TYPE_WIFI:I = 0x2

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field private static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final PREF_DEFAULT_STORAGE_TYPE:I = 0x1

.field private static final PREF_STORAGE_TYPE:Ljava/lang/String; = "STORAGE_TYPE"

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HandoverTransfer"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0

.field private static mPrefs:Landroid/content/SharedPreferences;


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field private mCurrentStorageType:I

.field mDeviceType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotBuilder:Landroid/app/Notification$Builder;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field mProgress:F

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field final mRemoteMac:Ljava/lang/String;

.field final mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I

.field private mWithDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/HandoverTransfer$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    const v6, 0x7f070009

    const v5, 0x7f070008

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentStorageType:I

    .line 145
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mWithDelay:Z

    .line 150
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    .line 152
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 153
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteMacAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteMac:Ljava/lang/String;

    .line 154
    iget-boolean v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    .line 155
    iget v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    .line 157
    iget v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mDeviceType:I

    .line 159
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mLastUpdate:Ljava/lang/Long;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 162
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    .line 168
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->buildCancelIntent(Z)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    .line 169
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 170
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 171
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 172
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mOutgoingUris:[Landroid/net/Uri;

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    .line 174
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mStartTime:Ljava/lang/Long;

    .line 180
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    .line 181
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 183
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    const v1, 0x1080081

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 185
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 186
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    const v1, 0x7f020001

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 195
    return-void

    :cond_0
    move v0, v1

    .line 159
    goto/16 :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    const v1, 0x1080088

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 189
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 190
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 666
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 667
    const-string v0, "NfcServicePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverTransfer;->mPrefs:Landroid/content/SharedPreferences;

    .line 669
    :cond_0
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected static getStorageLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 692
    const/4 v2, 0x1

    .line 696
    .local v2, "storageType":I
    :try_start_0
    invoke-static {p0}, Lcom/android/nfc/handover/HandoverTransfer;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "STORAGE_TYPE"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 701
    :cond_0
    :goto_0
    const-string v3, "HandoverTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStorageLocation: storageType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    packed-switch v2, :pswitch_data_0

    .line 711
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "extRoot":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 697
    .end local v1    # "extRoot":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HandoverTransfer"

    const-string v4, "getStorageLocation: Exception caught."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 704
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 705
    .restart local v1    # "extRoot":Ljava/lang/String;
    goto :goto_1

    .line 707
    .end local v1    # "extRoot":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 708
    .restart local v1    # "extRoot":Ljava/lang/String;
    goto :goto_1

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveStorageType(I)V
    .locals 4
    .param p1, "storageType"    # I

    .prologue
    .line 673
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentStorageType:I

    if-ne p1, v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/handover/HandoverTransfer;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 680
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "STORAGE_TYPE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 681
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 683
    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveStorageType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentStorageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentStorageType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HandoverTransfer"

    const-string v2, "saveStorageType: Exception caught."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 311
    return-void
.end method


# virtual methods
.method buildCancelIntent(Z)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "incoming"    # Z

    .prologue
    const/4 v3, 0x1

    .line 615
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mDeviceType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v4, "com.android.nfc.handover.extra.INCOMING"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 623
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 616
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteMac:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v2, v3

    .line 618
    goto :goto_1
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 601
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 611
    :goto_0
    return-object v3

    .line 603
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 607
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 609
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 607
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method cancel(Z)V
    .locals 5
    .param p1, "withDelay"    # Z

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 288
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 293
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mWithDelay:Z

    .line 296
    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_0

    .line 300
    :cond_3
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method cancelFinishIfNeeded()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mWithDelay:Z

    .line 431
    .local v0, "result":Z
    iget-boolean v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mWithDelay:Z

    if-eqz v3, :cond_2

    .line 432
    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    if-nez v3, :cond_1

    .line 433
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    .line 434
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    iget v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-ne v4, v5, :cond_3

    :goto_0
    invoke-interface {v3, p0, v1}, Lcom/android/nfc/handover/HandoverTransfer$Callback;->onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;Z)V

    .line 436
    :cond_1
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mWithDelay:Z

    .line 438
    :cond_2
    return v0

    :cond_3
    move v1, v2

    .line 434
    goto :goto_0
.end method

.method checkMediaStorage(Ljava/io/File;I)Z
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "storageType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 583
    if-ne p2, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_2

    .line 590
    const-string v1, "HandoverTransfer"

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

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 593
    goto :goto_0

    .line 595
    :cond_3
    const-string v1, "HandoverTransfer"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 231
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 232
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 233
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 238
    if-nez p3, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/handover/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 241
    :cond_2
    if-eqz p3, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0

    .line 245
    :cond_4
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HandoverTransfer"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_5
    const-string v0, "HandoverTransfer"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 649
    const-string v1, "yyyy-MM-dd"

    .line 650
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 651
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

    .line 652
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 654
    .local v0, "count":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 655
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

    .line 657
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    return-object v2
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 628
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 629
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 630
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 631
    const-string v3, ""

    .line 632
    move-object v4, p2

    .line 637
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

    .line 638
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 639
    .local v0, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 640
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

    .line 642
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 644
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public getTransferId()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 553
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    .line 555
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v2, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    :goto_0
    move v0, v1

    .line 566
    :goto_1
    return v0

    .line 558
    :cond_0
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v2, :cond_1

    const/4 v0, 0x5

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0

    .line 561
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_4

    .line 563
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer timed out for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 566
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :cond_0
    return v0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandoverTransfer"

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

    .line 571
    :cond_0
    if-eqz p2, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_1
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 575
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 577
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_2
    monitor-exit p0

    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processFiles()V
    .locals 21

    .prologue
    .line 445
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, "extRoot":Ljava/lang/String;
    const/16 v16, 0x1

    .line 452
    .local v16, "storageType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 454
    .local v17, "uri":Landroid/net/Uri;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v15, "srcFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 457
    .local v12, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 458
    .local v13, "phoneStorage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 459
    .local v14, "removableStorage":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 460
    move-object v7, v13

    .line 461
    const/16 v16, 0x2

    .line 462
    sget-object v18, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "HandoverTransfer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "processFiles: reset extRoot to phone storage. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "phoneStorage":Ljava/lang/String;
    .end local v14    # "removableStorage":Ljava/lang/String;
    .end local v15    # "srcFile":Ljava/io/File;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->saveStorageType(I)V

    .line 477
    invoke-static {}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getInstance()Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-result-object v8

    .line 478
    .local v8, "htcPSE":Lcom/android/nfc/handover/HtcPendingSaveExtension;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->isUserPromptNeeded()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v7, v1, v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->processFiles(Lcom/android/nfc/handover/HandoverTransfer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)[Ljava/lang/Object;

    move-result-object v11

    .line 480
    .local v11, "objs":[Ljava/lang/Object;
    if-eqz v11, :cond_2

    .line 481
    const/16 v18, 0x0

    aget-object v18, v11, v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    .line 482
    const/16 v18, 0x1

    aget-object v18, v11, v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    .line 483
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 546
    .end local v11    # "objs":[Ljava/lang/Object;
    :goto_1
    return-void

    .line 463
    .end local v8    # "htcPSE":Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v13    # "phoneStorage":Ljava/lang/String;
    .restart local v14    # "removableStorage":Ljava/lang/String;
    .restart local v15    # "srcFile":Ljava/io/File;
    .restart local v17    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 464
    move-object v7, v14

    .line 465
    const/16 v16, 0x3

    .line 466
    sget-object v18, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "HandoverTransfer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "processFiles: reset extRoot to removable storage. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "phoneStorage":Ljava/lang/String;
    .end local v14    # "removableStorage":Ljava/lang/String;
    .end local v15    # "srcFile":Ljava/io/File;
    .end local v17    # "uri":Landroid/net/Uri;
    .restart local v8    # "htcPSE":Lcom/android/nfc/handover/HtcPendingSaveExtension;
    .restart local v11    # "objs":[Ljava/lang/Object;
    :cond_2
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_1

    .line 490
    .end local v11    # "objs":[Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "beam"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v5, "beamPath":Ljava/io/File;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/nfc/handover/HandoverTransfer;->checkMediaStorage(Ljava/io/File;I)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_5

    .line 496
    :cond_4
    const-string v18, "HandoverTransfer"

    const-string v19, "Media storage not valid or no uris received."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_1

    .line 501
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 502
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "beam"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 503
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v18

    if-nez v18, :cond_6

    .line 504
    const-string v18, "HandoverTransfer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to create multiple path "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_1

    .line 510
    :cond_6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_a

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 512
    .restart local v17    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 514
    .local v10, "mimeType":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v15    # "srcFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverTransfer;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 518
    .local v6, "dstFile":Ljava/io/File;
    const-string v18, "HandoverTransfer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Renaming from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v15, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 520
    sget-object v18, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "HandoverTransfer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to rename from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_7
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 524
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v18, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "HandoverTransfer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Did successful rename from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 535
    .end local v6    # "dstFile":Ljava/io/File;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v15    # "srcFile":Ljava/io/File;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 536
    .restart local v10    # "mimeType":Ljava/lang/String;
    const-string v18, "image/"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "video/"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "audio/"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 538
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    .line 539
    .local v4, "arrayPaths":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 540
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_1

    .line 543
    .end local v4    # "arrayPaths":[Ljava/lang/String;
    :cond_c
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_1
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 219
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 220
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    .line 221
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 278
    return-void
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 213
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 215
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method updateNotification()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const v11, 0x1080089

    const v8, 0x1080082

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 314
    iget v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v12, v9, :cond_0

    iget v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v12, v14, :cond_0

    iget v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    :cond_0
    move v3, v9

    .line 316
    .local v3, "isProgressNotification":Z
    :goto_0
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotBuilder:Landroid/app/Notification$Builder;

    .line 317
    .local v4, "notBuilder":Landroid/app/Notification$Builder;
    :goto_1
    iget-object v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1060058

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 319
    iget-object v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 320
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 331
    if-eqz v3, :cond_7

    .line 343
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v8, v11

    float-to-int v6, v8

    .line 344
    .local v6, "progPercentage":I
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-ne v8, v9, :cond_5

    move v8, v9

    :goto_2
    add-int v1, v11, v8

    .line 345
    .local v1, "count":I
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v11, 0x3070182

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "prog":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 348
    const/16 v8, 0x64

    if-nez v6, :cond_6

    :goto_3
    invoke-virtual {v4, v8, v6, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 349
    sget-object v8, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transfer progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v1    # "count":I
    .end local v5    # "prog":Ljava/lang/String;
    .end local v6    # "progPercentage":I
    :cond_1
    :goto_4
    invoke-static {}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->getInstance()Lcom/android/nfc/handover/HtcPendingSaveExtension;

    move-result-object v2

    .line 396
    .local v2, "htcPSE":Lcom/android/nfc/handover/HtcPendingSaveExtension;
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/nfc/handover/HtcPendingSaveExtension;->isUserPromptNeeded()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_e

    .line 397
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    iget v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 403
    .end local v2    # "htcPSE":Lcom/android/nfc/handover/HtcPendingSaveExtension;
    :cond_2
    :goto_5
    return-void

    .end local v3    # "isProgressNotification":Z
    .end local v4    # "notBuilder":Landroid/app/Notification$Builder;
    :cond_3
    move v3, v10

    .line 314
    goto/16 :goto_0

    .line 316
    .restart local v3    # "isProgressNotification":Z
    :cond_4
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .restart local v4    # "notBuilder":Landroid/app/Notification$Builder;
    .restart local v6    # "progPercentage":I
    :cond_5
    move v8, v10

    .line 344
    goto :goto_2

    .restart local v1    # "count":I
    .restart local v5    # "prog":Ljava/lang/String;
    :cond_6
    move v9, v10

    .line 348
    goto :goto_3

    .line 362
    .end local v1    # "count":I
    .end local v5    # "prog":Ljava/lang/String;
    .end local v6    # "progPercentage":I
    :cond_7
    iget v12, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_9

    .line 363
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 364
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v9, :cond_8

    :goto_6
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 366
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 367
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 369
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_1

    .line 370
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 371
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v7

    .line 372
    .local v7, "viewIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/4 v11, 0x0

    invoke-static {v8, v9, v7, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 375
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_4

    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "viewIntent":Landroid/content/Intent;
    :cond_8
    move v8, v11

    .line 364
    goto :goto_6

    .line 377
    :cond_9
    iget v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v12, 0x4

    if-ne v9, v12, :cond_b

    .line 378
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 379
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v9, :cond_a

    :goto_7
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 381
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 382
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    :cond_a
    move v8, v11

    .line 379
    goto :goto_7

    .line 383
    :cond_b
    iget v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v12, 0x6

    if-eq v9, v12, :cond_c

    iget v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v12, 0x7

    if-ne v9, v12, :cond_2

    .line 384
    :cond_c
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 385
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v9, :cond_d

    :goto_8
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 387
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 388
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f07000c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    :cond_d
    move v8, v11

    .line 385
    goto :goto_8

    .line 399
    .restart local v2    # "htcPSE":Lcom/android/nfc/handover/HtcPendingSaveExtension;
    :cond_e
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_5
.end method

.method updateStateAndNotification(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 406
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mLastUpdate:Ljava/lang/Long;

    .line 409
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x9c40

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 417
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mWithDelay:Z

    if-nez v1, :cond_2

    .line 422
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    .line 424
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-ne v2, v4, :cond_3

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/android/nfc/handover/HandoverTransfer$Callback;->onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;Z)V

    .line 426
    :cond_2
    return-void

    .line 424
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 198
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 202
    return-void
.end method
