.class public Lcom/htc/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"

# interfaces
.implements Lcom/htc/camera/base/c;
.implements Lcom/htc/camera/t;


# static fields
.field public static final EVENT_THEME_ID_UPDATED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ExceptionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_ThisApplication:Lcom/htc/camera/CameraApplication;

.field private static telephonyIntents_ACTION_SIM_STATE_CHANGED:Ljava/lang/String;


# instance fields
.field private final m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

.field private m_Handler:Landroid/os/Handler;

.field private m_HasSIE:Z

.field private m_InstanceCount:I

.field private final m_InstanceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_IsFirstInstance:Z

.field private m_IsGeoTagDialogShown:Z

.field private m_IsSIEFromDB:Z

.field private volatile m_IsSharedLargeNativeBufferLocked:Z

.field private m_MainThread:Ljava/lang/Thread;

.field private m_OnCreateEndProfTimer:Lcom/htc/camera/Handle;

.field private m_OnCreateStartProfTimer:Lcom/htc/camera/Handle;

.field private final m_PropertyOwnerKey:Ljava/lang/Object;

.field private m_SIEBundle:Landroid/os/Bundle;

.field private volatile m_SharedLargeNativeBuffer:J

.field private final m_SimCardStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final m_SyncLock:Ljava/lang/Object;

.field private m_ThemeID:Ljava/lang/Integer;

.field private final m_UnhandledExceptionHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/ExceptionEventArgs;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 60
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SimOperator"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/htc/camera/CameraApplication;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    .line 65
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "ThemeIdUpdated"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/CameraApplication;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/CameraApplication;->EVENT_THEME_ID_UPDATED:Lcom/htc/camera/base/EventKey;

    .line 66
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "UnhandledException"

    const-class v2, Lcom/htc/camera/ExceptionEventArgs;

    const-class v3, Lcom/htc/camera/CameraApplication;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/CameraApplication;->EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;

    .line 93
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    sput-object v0, Lcom/htc/camera/CameraApplication;->telephonyIntents_ACTION_SIM_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsFirstInstance:Z

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_PropertyOwnerKey:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SyncLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_UnhandledExceptionHandlers:Ljava/util/ArrayList;

    .line 92
    iput-boolean v1, p0, Lcom/htc/camera/CameraApplication;->m_HasSIE:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/camera/CameraApplication;->m_IsGeoTagDialogShown:Z

    .line 99
    new-instance v0, Lcom/htc/camera/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraApplication$1;-><init>(Lcom/htc/camera/CameraApplication;)V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SimCardStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/htc/camera/base/BaseObjectProxy;

    const-string v1, "CameraApplication"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/base/BaseObjectProxy;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    .line 124
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/base/BaseObjectProxy;->enableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/CameraApplication$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraApplication$2;-><init>(Lcom/htc/camera/CameraApplication;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 164
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/camera/CameraApplication;->telephonyIntents_ACTION_SIM_STATE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/CameraApplication;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraApplication;->onSimCardStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/CameraApplication;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_UnhandledExceptionHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static binaryArrayToBundle([B)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 789
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 792
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 794
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 795
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 796
    return-object v1
.end method

.method public static current()Lcom/htc/camera/CameraApplication;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/htc/camera/CameraApplication;->m_ThisApplication:Lcom/htc/camera/CameraApplication;

    return-object v0
.end method

.method private static getCustomizedBundle(Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 678
    .line 679
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 681
    if-nez p1, :cond_12

    .line 682
    const-string v0, "pref_customization_data"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_12

    .line 685
    const-string v1, "CameraApplication"

    const-string v2, "getCustomizedBundle() - Use saved data"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 687
    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 697
    :goto_0
    if-nez v0, :cond_d

    .line 699
    const-string v0, "CameraApplication"

    const-string v1, "getCustomizedBundle() - Read from content provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 703
    const-string v1, "content://customization_settings/SettingTable/HTCCamera_properties"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 709
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 713
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 716
    if-nez v2, :cond_3

    .line 717
    :try_start_2
    const-string v1, "CameraApplication"

    const-string v3, "The cursor of the content resolver is null."

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 763
    if-eqz v2, :cond_0

    .line 764
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_0
    if-eqz v0, :cond_1

    .line 766
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    move-object v0, v6

    .line 771
    :goto_1
    return-object v0

    .line 690
    :cond_2
    const-string v0, "CameraApplication"

    const-string v1, "getCustomizedBundle() - No data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 691
    goto :goto_1

    .line 723
    :cond_3
    :try_start_3
    const-string v1, "value"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 725
    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    .line 726
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 728
    const-string v1, "CameraApplication"

    const-string v4, "The table does not have the column \'value\'"

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    .line 730
    :goto_2
    if-ge v1, v3, :cond_4

    .line 731
    const-string v4, "CameraApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "columnName["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 763
    :cond_4
    if-eqz v2, :cond_5

    .line 764
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_5
    if-eqz v0, :cond_6

    .line 766
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    move-object v0, v6

    .line 734
    goto :goto_1

    .line 738
    :cond_7
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 739
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 741
    const-string v1, "CameraApplication"

    const-string v3, "getCustomizedBundle() - No data"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 743
    const-string v3, "pref_customization_data"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 763
    if-eqz v2, :cond_8

    .line 764
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_8
    if-eqz v0, :cond_9

    .line 766
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_9
    move-object v0, v6

    .line 745
    goto :goto_1

    .line 749
    :cond_a
    :try_start_5
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 750
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 751
    const-string v4, "pref_customization_data"

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 752
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 763
    if-eqz v2, :cond_b

    .line 764
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_b
    if-eqz v0, :cond_c

    .line 766
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_c
    move-object v0, v1

    .line 771
    :cond_d
    invoke-static {v0}, Lcom/htc/camera/CameraApplication;->binaryArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 756
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 758
    :goto_3
    :try_start_6
    const-string v3, "CameraApplication"

    const-string v4, "getCustomizedBundle() - Error occurs"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 763
    if-eqz v1, :cond_e

    .line 764
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_e
    if-eqz v2, :cond_f

    .line 766
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_f
    move-object v0, v6

    .line 759
    goto/16 :goto_1

    .line 763
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_4
    if-eqz v2, :cond_10

    .line 764
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_10
    if-eqz v6, :cond_11

    .line 766
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 763
    :cond_11
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v6

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    goto :goto_4

    .line 756
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_3

    :cond_12
    move-object v0, v6

    goto/16 :goto_0
.end method

.method private migrateFromSense55()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 360
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 362
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 364
    const-string v0, "CameraApplication"

    const-string v1, "migrateFromSense55() - No need to migrate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 372
    :cond_0
    :try_start_0
    const-string v1, "com.android.camera_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/CameraApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 374
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 376
    const-string v0, "CameraApplication"

    const-string v1, "migrateFromSense55() - No old preference file, no need to migrate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    new-instance v0, Lcom/htc/camera/CameraApplication$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraApplication$3;-><init>(Lcom/htc/camera/CameraApplication;)V

    .line 415
    new-array v1, v6, [Ljava/lang/Void;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 381
    :cond_1
    :try_start_1
    const-string v2, "CameraApplication"

    const-string v3, "migrateFromSense55() - Migration start"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 383
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 387
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 388
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 403
    :catchall_0
    move-exception v0

    new-instance v1, Lcom/htc/camera/CameraApplication$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraApplication$3;-><init>(Lcom/htc/camera/CameraApplication;)V

    .line 415
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 403
    throw v0

    .line 389
    :cond_3
    :try_start_2
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 390
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 391
    :cond_4
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 392
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 393
    :cond_5
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 394
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 395
    :cond_6
    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 398
    :cond_7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    const-string v0, "CameraApplication"

    const-string v1, "migrateFromSense55() - Migration end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    new-instance v0, Lcom/htc/camera/CameraApplication$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraApplication$3;-><init>(Lcom/htc/camera/CameraApplication;)V

    .line 415
    new-array v1, v6, [Ljava/lang/Void;

    goto/16 :goto_1
.end method

.method private onSimCardStateChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 563
    const-string v0, "CameraApplication"

    const-string v2, "onSimCardStateChanged("

    const-string v3, ")"

    invoke-static {v0, v2, p1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    const-string v0, "ABSENT"

    .line 565
    const-string v2, "IMSI"

    .line 566
    const-string v3, "LOADED"

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    sget-object v2, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/base/BaseObjectProxy;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 590
    :cond_0
    return-void

    .line 571
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 576
    if-eqz v0, :cond_3

    .line 577
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 583
    goto :goto_0

    .line 580
    :cond_3
    const-string v0, "CameraApplication"

    const-string v2, "onSimCardStateChanged() - No TelephonyManager"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 581
    goto :goto_1
.end method


# virtual methods
.method public addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/htc/camera/CameraApplication;->EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;

    if-ne p1, v0, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 177
    :cond_0
    if-nez p2, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event handler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_UnhandledExceptionHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method

.method public addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 192
    return-void
.end method

.method public final checkNewThemeID()V
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/htc/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/util/HtcCommonUtil;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    .line 222
    const-string v1, "CameraApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNewThemeID() - old = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    .line 230
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_THEME_ID_UPDATED:Lcom/htc/camera/base/EventKey;

    sget-object v2, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/base/BaseObjectProxy;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getOnCreateEndProfTimer()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_OnCreateEndProfTimer:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1}, Lcom/htc/camera/base/BaseObjectProxy;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getSIEBundle(Z)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsSIEFromDB:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SIEBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/camera/CameraApplication;->getCustomizedBundle(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SIEBundle:Landroid/os/Bundle;

    .line 279
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SIEBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_HasSIE:Z

    .line 287
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/htc/camera/CameraApplication;->m_IsSIEFromDB:Z

    .line 288
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SIEBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 283
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_HasSIE:Z

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SIEBundle:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getThemeID()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_ThemeID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final hasSIE()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraApplication;->getSIEBundle(Z)Landroid/os/Bundle;

    .line 306
    iget-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_HasSIE:Z

    return v0
.end method

.method public invokeAsync(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 315
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_Handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isGeoTagDialogShown()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsGeoTagDialogShown:Z

    return v0
.end method

.method public final isMainThread()Z
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_MainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lockSharedLargeNativeBuffer()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 333
    iget-object v2, p0, Lcom/htc/camera/CameraApplication;->m_SyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/camera/CameraApplication;->m_IsSharedLargeNativeBufferLocked:Z

    if-eqz v3, :cond_0

    .line 336
    monitor-exit v2

    .line 350
    :goto_0
    return-wide v0

    .line 337
    :cond_0
    iget-wide v3, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    .line 339
    const-string v3, "CameraApplication"

    const-string v4, "lockSharedLargeNativeBuffer() - Reserve large native buffer"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/high16 v3, 0x8000000

    invoke-static {v3}, Lcom/htc/camera/Memory;->allocate(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    .line 341
    iget-wide v3, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    .line 343
    const-string v3, "CameraApplication"

    const-string v4, "lockSharedLargeNativeBuffer() - Fail to reserve large native buffer"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    monitor-exit v2

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 347
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsSharedLargeNativeBufferLocked:Z

    .line 348
    sget-boolean v0, Lcom/htc/camera/LOG;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 349
    const-string v0, "CameraApplication"

    const-string v1, "lockSharedLargeNativeBuffer() - Buffer : 0x%x, size : %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x8000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_2
    iget-wide v0, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized notifyCustomizationChanged()V
    .locals 2

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApplication"

    const-string v1, "notifyCustomizationChanged() - Clear saved customization data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    const-string v1, "pref_customization_data"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SIEBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyInstanceCreated(Lcom/htc/camera/HTCCamera;)Z
    .locals 4

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 442
    :cond_0
    iget v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    .line 445
    iget-boolean v2, p0, Lcom/htc/camera/CameraApplication;->m_IsFirstInstance:Z

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsFirstInstance:Z

    .line 449
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 451
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 452
    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 459
    const-string v0, "CameraApplication"

    const-string v1, "notifyInstanceCreated() - Active instance count : "

    iget v3, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    :goto_1
    iget v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 466
    const-string v0, "CameraApplication"

    const-string v1, "notifyInstanceCreated() - Initialize"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSimCardStateMonitorNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/htc/camera/CameraApplication;->telephonyIntents_ACTION_SIM_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_SimCardStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/CameraApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraApplication;->onSimCardStateChanged(Ljava/lang/String;)V

    .line 481
    :cond_3
    return v2

    .line 461
    :cond_4
    const-string v0, "CameraApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyInstanceCreated() - Active instance count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", total instance count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/CameraApplication;->m_InstanceReferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method notifyInstanceDestroyed(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 492
    :cond_0
    iget v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    if-gtz v0, :cond_2

    .line 494
    const-string v0, "CameraApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInstanceDestroyed() - Instance count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    iget v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    .line 502
    iget v0, p0, Lcom/htc/camera/CameraApplication;->m_InstanceCount:I

    if-nez v0, :cond_1

    .line 504
    const-string v0, "CameraApplication"

    const-string v1, "notifyInstanceDestroyed() - Deinitialize"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSimCardStateMonitorNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_SimCardStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/high16 v6, 0x8000000

    .line 519
    const-string v0, "CameraApplication.OnCreate.Start"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_OnCreateStartProfTimer:Lcom/htc/camera/Handle;

    .line 522
    sput-object p0, Lcom/htc/camera/CameraApplication;->m_ThisApplication:Lcom/htc/camera/CameraApplication;

    .line 523
    const-string v0, "CameraApplication"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/htc/camera/CameraApplication;->migrateFromSense55()V

    .line 529
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->load()V

    .line 532
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_MainThread:Ljava/lang/Thread;

    .line 533
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_Handler:Landroid/os/Handler;

    .line 536
    invoke-static {}, Lcom/htc/camera/MediaProvider;->initialize()V

    .line 537
    invoke-static {}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->initialize()V

    .line 540
    const-string v0, "CameraApplication"

    const-string v1, "onCreate() - Reserve large native buffer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v6}, Lcom/htc/camera/Memory;->allocate(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    .line 542
    iget-wide v0, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 544
    sget-boolean v0, Lcom/htc/camera/LOG;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 545
    const-string v0, "CameraApplication"

    const-string v1, "onCreate() - Shared large native buffer : 0x%x, size : %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 554
    const-string v0, "CameraApplication.OnCreate.End"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraApplication;->m_OnCreateEndProfTimer:Lcom/htc/camera/Handle;

    .line 555
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_OnCreateStartProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_OnCreateEndProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 556
    return-void

    .line 548
    :cond_1
    const-string v0, "CameraApplication"

    const-string v1, "onCreate() - Fail to reserve large native buffer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 602
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 603
    return-void
.end method

.method public removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 611
    sget-object v0, Lcom/htc/camera/CameraApplication;->EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;

    if-ne p1, v0, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 615
    :cond_0
    if-eqz p2, :cond_1

    .line 616
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_UnhandledExceptionHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method

.method public removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 629
    return-void
.end method

.method public final setIsGeoTagDialogShown(Z)V
    .locals 0

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/htc/camera/CameraApplication;->m_IsGeoTagDialogShown:Z

    .line 637
    return-void
.end method

.method public setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/camera/CameraApplication;->m_BaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final unlockSharedLargeNativeBuffer(J)V
    .locals 8

    .prologue
    .line 653
    iget-object v1, p0, Lcom/htc/camera/CameraApplication;->m_SyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsSharedLargeNativeBufferLocked:Z

    if-nez v0, :cond_0

    .line 657
    const-string v0, "CameraApplication"

    const-string v2, "unlockSharedLargeNativeBuffer() - Buffer is not locked"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    monitor-exit v1

    .line 671
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-wide v2, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_1

    .line 662
    const-string v0, "CameraApplication"

    const-string v2, "unlockSharedLargeNativeBuffer() - Invalid buffer"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    monitor-exit v1

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 665
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    .line 666
    const/high16 v0, 0x8000000

    invoke-static {p1, p2, v0}, Lcom/htc/camera/Memory;->reallocate(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    .line 667
    sget-boolean v0, Lcom/htc/camera/LOG;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 668
    const-string v0, "CameraApplication"

    const-string v4, "unlockSharedLargeNativeBuffer() - Prev buffer : 0x%x, New buffer : 0x%x, size : %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    iget-wide v6, p0, Lcom/htc/camera/CameraApplication;->m_SharedLargeNativeBuffer:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const/high16 v3, 0x8000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraApplication;->m_IsSharedLargeNativeBufferLocked:Z

    .line 670
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
