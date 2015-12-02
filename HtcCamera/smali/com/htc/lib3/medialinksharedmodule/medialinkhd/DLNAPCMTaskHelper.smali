.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;
.super Landroid/content/BroadcastReceiver;
.source "DLNAPCMTaskHelper.java"


# static fields
.field private static final PCM_STATE:Ljava/lang/String; = "pcm_task_state"

.field private static final PCM_TASK_REQUEST:Ljava/lang/String; = "pcm_task_request"

.field private static final PCM_TASK_REQUEST_RECEIVER_IDENTIFIER:Ljava/lang/String; = "com.htc.dlna.pcm.task.request"

.field private static final PCM_TASK_STATE_RECEIVER_IDENTIFIER:Ljava/lang/String; = "com.htc.dlna.pcm.task.state"

.field private static final TAG:Ljava/lang/String; = "DLNAPCMTaskHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDMRMirrorListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

.field private mPCMMirrorOnRendererFilterType:I

.field private mPCMMirrorOnRendererName:Ljava/lang/String;

.field private mPCMMirrorOnRendrerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public static compareFilterTypeSupport(II)Z
    .locals 1

    .prologue
    .line 98
    and-int v0, p0, p1

    .line 99
    if-lez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDMRMirrorOnRendererID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "content://dlna/dmr_func_get_pcm_renderer"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "DLNAPCMTaskHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPCMOutputRenderer(), currentRenderer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public static getDMRMirrorRendererID(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "content://dlna/dmr_func_get_pcm_renderer_id_filtertype"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 74
    aget-object v0, v1, v5

    .line 75
    const-string v2, "DLNAPCMTaskHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMRMirrorRendererID(), currentRenderer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    array-length v2, v1

    if-le v2, v6, :cond_2

    .line 77
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    const-string v2, "DLNAPCMTaskHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMRMirrorRendererID(), tFilterTypeRet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->compareFilterTypeSupport(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string v0, "DLNAPCMTaskHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDMRMirrorRendererID(), the choosed filterType is not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "DLNAPCMTaskHelper"

    const-string v1, "getDMRMirrorRendererID(), DLNA provider don\'t have filter type info "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDMRMirrorState(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "content://dlna/dmr_func_get_dmr_mirror_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "DLNAPCMTaskHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDMRMirrorOnRendererID(), ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFilterType()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendererFilterType:I

    return v0
.end method

.method private getMirrorOnRendererID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendrerID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 150
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pcm_task_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "onDMRMirrorOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rendererID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendrerID:Ljava/lang/String;

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rendererName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendererName:Ljava/lang/String;

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filtertype"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendererFilterType:I

    .line 157
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mDMRMirrorListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mDMRMirrorListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendrerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendererName:Ljava/lang/String;

    iget v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mPCMMirrorOnRendererFilterType:I

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;->onDMRMirrorOn(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    :cond_0
    return-void
.end method

.method public registerDMRMirrorOutputCallback(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;)V
    .locals 4

    .prologue
    .line 118
    const-string v0, "DLNAPCMTaskHelper"

    const-string v1, "registerDMRMirrorOutputCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.dlna.pcm.task.state"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.permission.APP_MEDIA"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mDMRMirrorListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    .line 127
    return-void
.end method

.method public unregisterDMRMirrorOutputCallback()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "DLNAPCMTaskHelper"

    const-string v1, "unRegisterDMRMirrorOutputCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mDMRMirrorListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper;->mDMRMirrorListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/DLNAPCMTaskHelper$OnDMRMirrorListener;

    .line 141
    return-void
.end method
