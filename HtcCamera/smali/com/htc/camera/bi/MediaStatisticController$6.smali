.class Lcom/htc/camera/bi/MediaStatisticController$6;
.super Ljava/lang/Object;
.source "MediaStatisticController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/MediaStatisticController;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 160
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    move v2, v3

    .line 169
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, v1, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 173
    if-ne v2, v3, :cond_0

    move v2, v4

    .line 177
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 176
    :cond_0
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/bi/MediaStatisticController;->writeBehaviorData(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 188
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iput v4, v0, Lcom/htc/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 201
    :goto_2
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    instance-of v0, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    const-string v1, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {v0, v1}, Lcom/htc/camera/bi/MediaStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    .line 199
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->m_mediaTaken:I

    goto :goto_2

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$6;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    const-string v1, "pref_bi_video_setting_recording_history"

    invoke-virtual {v0, v1}, Lcom/htc/camera/bi/MediaStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    goto :goto_3
.end method
