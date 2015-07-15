.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    const/4 v6, 0x0

    .line 136
    .local v6, "event":Landroid/drm/DrmEvent;
    const/4 v5, 0x0

    .line 137
    .local v5, "error":Landroid/drm/DrmErrorEvent;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v3, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 198
    const-string v20, "DrmManagerClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/drm/DrmInfo;

    .line 143
    .local v4, "drmInfo":Landroid/drm/DrmInfo;
    invoke-virtual {v4}, Landroid/drm/DrmInfo;->getMimeType()Ljava/lang/String;

    move-result-object v17

    .line 144
    .local v17, "strDRMType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 145
    .local v11, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 146
    .local v7, "fd":Ljava/io/FileDescriptor;
    const/4 v8, 0x0

    .line 147
    .local v8, "file":Ljava/io/File;
    const-string v20, "Path"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 148
    .local v15, "path":Ljava/lang/String;
    const-string v20, "application/vnd.oma.drm.message"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "application/x-android-drm-fl"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "application/vnd.oma.drm.content"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_1
    const/16 v20, 0x4

    invoke-virtual {v4}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    const/16 v20, 0x3

    invoke-virtual {v4}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :cond_2
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Landroid/drm/DrmManagerClient;->isOMAContent(Ljava/lang/String;)Z
    invoke-static {v0, v15}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 152
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    :try_start_1
    const-string v19, ""

    .line 154
    .local v19, "strFDNumber":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 155
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 156
    .end local v11    # "is":Ljava/io/FileInputStream;
    .local v12, "is":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 157
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v18

    .line 158
    .local v18, "strFD":Ljava/lang/String;
    const-string v20, "["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 159
    .local v13, "nBeginIndex":I
    const-string v20, "]"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 160
    .local v14, "nEndIndex":I
    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v19

    move-object v11, v12

    .line 162
    .end local v12    # "is":Ljava/io/FileInputStream;
    .end local v13    # "nBeginIndex":I
    .end local v14    # "nEndIndex":I
    .end local v18    # "strFD":Ljava/lang/String;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    :cond_3
    :try_start_3
    const-string v20, "FileDescriptorKey"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v9

    .line 167
    .end local v9    # "file":Ljava/io/File;
    .end local v19    # "strFDNumber":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v21, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v21 .. v21}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    # invokes: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v0, v1, v4}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v16

    .line 169
    .local v16, "status":Landroid/drm/DrmInfoStatus;
    if-eqz v11, :cond_5

    .line 171
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 175
    :cond_5
    :goto_2
    const-string v20, "drm_info_status_object"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v20, "drm_info_object"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    if-eqz v16, :cond_7

    const/16 v20, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/drm/DrmInfoStatus;->statusCode:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 179
    new-instance v6, Landroid/drm/DrmEvent;

    .end local v6    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/drm/DrmInfoStatus;->infoType:I

    move/from16 v22, v0

    # invokes: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static/range {v21 .. v22}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;I)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 201
    .end local v4    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v7    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/FileInputStream;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "status":Landroid/drm/DrmInfoStatus;
    .end local v17    # "strDRMType":Ljava/lang/String;
    .restart local v6    # "event":Landroid/drm/DrmEvent;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v20

    if-eqz v20, :cond_6

    if-eqz v6, :cond_6

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 204
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v20

    if-eqz v20, :cond_0

    if-eqz v5, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v5}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto/16 :goto_0

    .line 182
    .restart local v4    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v7    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v17    # "strDRMType":Ljava/lang/String;
    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget v10, v0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 183
    .local v10, "infoType":I
    :goto_4
    new-instance v5, Landroid/drm/DrmErrorEvent;

    .end local v5    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(I)I
    invoke-static {v0, v10}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 186
    .restart local v5    # "error":Landroid/drm/DrmErrorEvent;
    goto :goto_3

    .line 182
    .end local v10    # "infoType":I
    :cond_8
    invoke-virtual {v4}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v10

    goto :goto_4

    .line 189
    .end local v4    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v7    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/FileInputStream;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "status":Landroid/drm/DrmInfoStatus;
    .end local v17    # "strDRMType":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v21, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v21 .. v21}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;)I

    move-result v21

    # invokes: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static/range {v20 .. v21}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;I)I

    move-result v20

    if-nez v20, :cond_9

    .line 190
    new-instance v6, Landroid/drm/DrmEvent;

    .end local v6    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;)I

    move-result v20

    const/16 v21, 0x3e9

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .restart local v6    # "event":Landroid/drm/DrmEvent;
    goto/16 :goto_3

    .line 192
    :cond_9
    new-instance v5, Landroid/drm/DrmErrorEvent;

    .end local v5    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v20, v0

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static/range {v20 .. v20}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;)I

    move-result v20

    const/16 v21, 0x7d7

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 195
    .restart local v5    # "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_3

    .line 172
    .restart local v4    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v7    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "status":Landroid/drm/DrmInfoStatus;
    .restart local v17    # "strDRMType":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_2

    .line 163
    .end local v16    # "status":Landroid/drm/DrmInfoStatus;
    :catch_1
    move-exception v20

    goto/16 :goto_1

    .end local v8    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :catch_2
    move-exception v20

    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_1

    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    .restart local v19    # "strFDNumber":Ljava/lang/String;
    :catch_3
    move-exception v20

    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
