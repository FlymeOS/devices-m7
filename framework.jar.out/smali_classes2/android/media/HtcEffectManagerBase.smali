.class abstract Landroid/media/HtcEffectManagerBase;
.super Ljava/lang/Object;
.source "HtcEffectManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HtcEffectManagerBase$VideoEvent;,
        Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;,
        Landroid/media/HtcEffectManagerBase$ManagerEventHandler;
    }
.end annotation


# static fields
.field public static final EVT_BTHEADSET:I = 0x2

.field public static final EVT_BTSUBWOOFER:I = 0x6

.field public static final EVT_HDMI:I = 0x4

.field public static final EVT_HEADSET:I = 0x1

.field public static final EVT_MIRACAST:I = 0x5

.field public static final EVT_WIRELESSDISPLAY:I = 0x3

.field public static final MSG_BEATS_NOTIFY:I = 0x0

.field public static final MSG_SET_SYSTEM_PROPERTY:I = 0x1

.field public static final PERSIST_DELAY:I = 0x1f4

.field public static final SENDMSG_NOOP:I = 0x1

.field public static final SENDMSG_QUEUE:I = 0x2

.field public static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcEffectManagerBase"

.field public static final TYPE_BEATS:I = 0x1

.field public static final TYPE_BOOMSOUND:I = 0x2

.field public static final TYPE_HARMAN:I = 0x3

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_JBL:I = 0x4

.field public static final TYPE_NONE:I


# instance fields
.field final mAudioService:Landroid/media/AudioService;

.field mBTA2dpHeadset:Z

.field mBTHeadsetConnected:Z

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurrentSoundEffect:I

.field mEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventHandler:Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

.field mForcedEffectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHDMIOn:Z

.field mHeadsetConnected:Z

.field final mLock:Ljava/lang/Object;

.field mMiracastOn:Z

.field mMirrorOn:Z

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field mSubwooferHeadset:Z

.field mSubwooferOn:Z

.field mSystemSoundEffect:I

.field mType:I

.field mValidEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;
    .param p4, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Landroid/media/HtcEffectManagerBase;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/HtcEffectManagerBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    iput-object p3, p0, Landroid/media/HtcEffectManagerBase;->mAudioService:Landroid/media/AudioService;

    .line 90
    new-instance v0, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

    invoke-direct {v0, p0, p2}, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;-><init>(Landroid/media/HtcEffectManagerBase;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/HtcEffectManagerBase;->mEventHandler:Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

    .line 91
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Landroid/media/HtcEffectManagerBase;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 93
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mMirrorOn:Z

    .line 94
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mHeadsetConnected:Z

    .line 95
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    .line 96
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    .line 97
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mHDMIOn:Z

    .line 98
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mMiracastOn:Z

    .line 99
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferOn:Z

    .line 100
    iput-boolean v1, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferHeadset:Z

    .line 102
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    .line 103
    iput p4, p0, Landroid/media/HtcEffectManagerBase;->mType:I

    .line 104
    return-void
.end method

.method private removeForcedEffectEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    .line 242
    .local v0, "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    iget-object v2, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 244
    invoke-virtual {v0}, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    goto :goto_0

    .line 247
    .end local v0    # "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 226
    const-string v2, "\nHtcEffectManager ForcedEffect stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Landroid/media/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    .line 231
    .local v0, "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mCallingPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v0    # "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "effect"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSoundEffect effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v7, p0, Landroid/media/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget v1, v1, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-ne v1, p1, :cond_0

    .line 123
    monitor-exit v7

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/HtcEffectManagerBase;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    monitor-exit v7

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 129
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Landroid/media/HtcEffectManagerBase;->removeForcedEffectEntry(Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;-><init>(Landroid/media/HtcEffectManagerBase;Landroid/media/HtcEffectManagerBase;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v0, "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    iget v1, v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mStatus:I

    if-nez v1, :cond_2

    .line 132
    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Landroid/media/HtcEffectManagerBase;->updateSoundEffect()V

    .line 135
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSoundEffect(Z)I
    .locals 1
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 108
    const/16 v0, 0x320

    return v0
.end method

.method public abstract getSystemProperty(I)I
.end method

.method isValidSystemSoundEffect(I)Z
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "isValidEffect":Z
    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 220
    :cond_0
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this SystemSoundEffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract loadSoundEffect()V
.end method

.method public onEventChanged(IZ)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v3, 0x2

    .line 164
    const-string v0, "HtcEffectManagerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventChanged id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/HtcEffectManagerBase;->updateSoundEffect()V

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 168
    :pswitch_0
    iput-boolean p2, p0, Landroid/media/HtcEffectManagerBase;->mHeadsetConnected:Z

    .line 169
    iget-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mHeadsetConnected:Z

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "HtcEffectManagerBase"

    const-string v2, "Subwoofer connected and plug headset later!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferHeadset:Z

    .line 175
    :goto_1
    iget v0, p0, Landroid/media/HtcEffectManagerBase;->mType:I

    if-ne v0, v3, :cond_0

    .line 176
    iget-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mHeadsetConnected:Z

    if-eqz v0, :cond_2

    .line 177
    const-string v0, "HtcEffectManagerBase"

    const-string v2, "bt a2dp connected and plug headset later!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 173
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferHeadset:Z

    goto :goto_1

    .line 180
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    goto :goto_0

    .line 185
    :pswitch_1
    iput-boolean p2, p0, Landroid/media/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    .line 186
    iget v0, p0, Landroid/media/HtcEffectManagerBase;->mType:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    goto :goto_0

    .line 191
    :pswitch_2
    iput-boolean p2, p0, Landroid/media/HtcEffectManagerBase;->mMirrorOn:Z

    goto :goto_0

    .line 194
    :pswitch_3
    iput-boolean p2, p0, Landroid/media/HtcEffectManagerBase;->mHDMIOn:Z

    goto :goto_0

    .line 197
    :pswitch_4
    iput-boolean p2, p0, Landroid/media/HtcEffectManagerBase;->mMiracastOn:Z

    goto :goto_0

    .line 200
    :pswitch_5
    iput-boolean p2, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferOn:Z

    .line 201
    iget-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferOn:Z

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HtcEffectManagerBase;->mSubwooferHeadset:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public abstract onMessageBeatsNotify()V
.end method

.method public abstract onPersistProperty(II)V
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 212
    return-void
.end method

.method public abstract resetSoundEffect()V
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSoundEffect client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Landroid/media/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;

    .line 146
    .local v0, "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    invoke-virtual {v0}, Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    .line 147
    invoke-virtual {p0}, Landroid/media/HtcEffectManagerBase;->updateSoundEffect()V

    .line 151
    .end local v0    # "fee":Landroid/media/HtcEffectManagerBase$ForcedEffectEntry;
    :goto_0
    monitor-exit v2

    .line 152
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/HtcEffectManagerBase;->removeForcedEffectEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMsg(IIIILjava/lang/Object;I)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 260
    if-nez p2, :cond_1

    .line 261
    iget-object v0, p0, Landroid/media/HtcEffectManagerBase;->mEventHandler:Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->removeMessages(I)V

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/media/HtcEffectManagerBase;->mEventHandler:Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

    iget-object v1, p0, Landroid/media/HtcEffectManagerBase;->mEventHandler:Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v1, p1, p3, p4, p5}, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 267
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/media/HtcEffectManagerBase;->mEventHandler:Landroid/media/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public abstract setSystemProperty(II)V
.end method

.method public setSystemSoundEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .prologue
    .line 113
    return-void
.end method

.method abstract updateSoundEffect()V
.end method
