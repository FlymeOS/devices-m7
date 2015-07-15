.class Landroid/media/JBLManager;
.super Landroid/media/HtcEffectManagerBase;
.source "JBLManager.java"


# static fields
.field private static final DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

.field public static final JBL_LIVESTAGE_BUNDLED:I = 0x1

.field public static final JBL_LIVESTAGE_ENABLE:I = 0x0

.field public static final JBL_LIVESTAGE_ERROR:I = -0x1

.field public static final JBL_LIVESTAGE_OFF:I = 0x0

.field public static final JBL_LIVESTAGE_OTHER:I = 0x2

.field public static final JBL_LIVESTAGE_PROFILE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JBLManager"


# instance fields
.field private mLSIconOn:Z

.field private mLiveStageEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.jbl.livestage.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.jbl.livestage.profile"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 34
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    .line 37
    iget-object v0, p0, Landroid/media/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Landroid/media/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=JBL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Landroid/media/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    .line 43
    iget-object v0, p0, Landroid/media/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Landroid/media/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=JBL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Landroid/media/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput v4, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    .line 48
    iput v4, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    .line 49
    iput v3, p0, Landroid/media/JBLManager;->mLiveStageEnabled:I

    .line 50
    return-void
.end method

.method private checkLiveStageSupport()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    const-string v2, "JBLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLiveStageSupport mLiveStageEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/JBLManager;->mLiveStageEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/JBLManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v2, p0, Landroid/media/JBLManager;->mLiveStageEnabled:I

    if-ne v2, v0, :cond_3

    .line 190
    iget-boolean v2, p0, Landroid/media/JBLManager;->mMirrorOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/JBLManager;->mMiracastOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/JBLManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/JBLManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Landroid/media/JBLManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/JBLManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_2

    .line 192
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 190
    goto :goto_0

    :cond_3
    move v0, v1

    .line 192
    goto :goto_0
.end method

.method private showJBLIcon(Z)V
    .locals 5
    .param p1, "LSEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 196
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/media/JBLManager;->mLSIconOn:Z

    if-nez v0, :cond_1

    .line 197
    const-string v0, "JBLManager"

    const-string v1, "enable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Landroid/media/JBLManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x30200a6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/JBLManager;->mLSIconOn:Z

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/media/JBLManager;->mLSIconOn:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "JBLManager"

    const-string v1, "disable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Landroid/media/JBLManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 204
    iput-boolean v4, p0, Landroid/media/JBLManager;->mLSIconOn:Z

    goto :goto_0
.end method


# virtual methods
.method public getSystemProperty(I)I
    .locals 4
    .param p1, "name"    # I

    .prologue
    .line 124
    const-string v0, "JBLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Landroid/media/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 135
    :try_start_0
    const-string v0, "JBLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v1

    .line 141
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 128
    :pswitch_0
    invoke-direct {p0}, Landroid/media/JBLManager;->checkLiveStageSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 133
    :pswitch_1
    iget v0, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadSoundEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 53
    iget-object v2, p0, Landroid/media/JBLManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "LSEnabled":I
    iget-object v2, p0, Landroid/media/JBLManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "effect":I
    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/media/JBLManager;->isValidSystemSoundEffect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x1

    .line 59
    :cond_1
    const-string v2, "JBLManager"

    const-string v3, "loadSoundEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v3, p0, Landroid/media/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 61
    :try_start_0
    iput v0, p0, Landroid/media/JBLManager;->mLiveStageEnabled:I

    .line 62
    iput v1, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    .line 64
    invoke-virtual {p0}, Landroid/media/JBLManager;->updateSoundEffect()V

    .line 65
    monitor-exit v3

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onMessageBeatsNotify()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v4, p0, Landroid/media/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 80
    :try_start_0
    iget v5, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 81
    .local v1, "LSEnabled":Z
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const-string v4, "HD_stream_only"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "HDStatus":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    .line 84
    .local v2, "active":Z
    const-string v3, "JBLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageBeatsNotify active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", LSEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v3, "HD_stream_only=F"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 86
    and-int v3, v2, v1

    invoke-direct {p0, v3}, Landroid/media/JBLManager;->showJBLIcon(Z)V

    .line 87
    return-void

    .end local v0    # "HDStatus":Ljava/lang/String;
    .end local v1    # "LSEnabled":Z
    .end local v2    # "active":Z
    :cond_0
    move v1, v3

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 182
    const-string v0, "JBLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Landroid/media/JBLManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/media/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const-string v0, "JBLManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "JBLManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Landroid/media/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperty(II)V
    .locals 8
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 145
    const-string v0, "JBLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v7, 0x0

    .line 147
    .local v7, "changed":Z
    iget-object v1, p0, Landroid/media/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 164
    :try_start_0
    const-string v0, "JBLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v7, :cond_1

    .line 170
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/JBLManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 171
    :cond_1
    return-void

    .line 150
    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/media/JBLManager;->mLiveStageEnabled:I

    if-eq v0, p2, :cond_0

    .line 151
    iput p2, p0, Landroid/media/JBLManager;->mLiveStageEnabled:I

    .line 152
    invoke-virtual {p0}, Landroid/media/JBLManager;->updateSoundEffect()V

    .line 153
    const/4 v7, 0x1

    goto :goto_0

    .line 157
    :pswitch_1
    iget v0, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 158
    iput p2, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    .line 159
    invoke-virtual {p0}, Landroid/media/JBLManager;->updateSoundEffect()V

    .line 160
    const/4 v7, 0x1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    .local v8, "effectChanged":Z
    invoke-direct {p0}, Landroid/media/JBLManager;->checkLiveStageSupport()Z

    move-result v9

    .line 92
    .local v9, "isLiveStageSupport":Z
    iget-object v0, p0, Landroid/media/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 94
    .local v10, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    iget v2, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/media/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_3

    .line 97
    iput v1, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    .line 100
    :goto_0
    const/4 v8, 0x1

    .line 112
    :cond_0
    :goto_1
    if-eqz v8, :cond_2

    .line 113
    iget-object v0, p0, Landroid/media/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "JBLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 118
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/JBLManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 121
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object v0, p0, Landroid/media/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    goto :goto_0

    .line 103
    :cond_4
    if-nez v9, :cond_5

    iget v0, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_5

    .line 104
    iput v1, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    .line 105
    const/4 v8, 0x1

    goto :goto_1

    .line 107
    :cond_5
    if-eqz v9, :cond_0

    iget v0, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    iget v2, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    if-eq v0, v2, :cond_0

    .line 108
    iget v0, p0, Landroid/media/JBLManager;->mSystemSoundEffect:I

    iput v0, p0, Landroid/media/JBLManager;->mCurrentSoundEffect:I

    .line 109
    const/4 v8, 0x1

    goto :goto_1
.end method
