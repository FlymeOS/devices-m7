.class public Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile m_callerPhoneNum:Ljava/lang/String;

.field private m_getContactBmp:Landroid/graphics/Bitmap;

.field private m_getDisplayCallerNum:Ljava/lang/String;

.field private m_getTxtCallerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/PhoneCallUI;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getDisplayCallerNum:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getTxtCallerName:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getContactBmp:Landroid/graphics/Bitmap;

    .line 155
    iput-object p2, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_callerPhoneNum:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public getCallerContent(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 161
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$600(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerContent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-object v6, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getTxtCallerName:Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getDisplayCallerNum:Ljava/lang/String;

    .line 165
    iput-object v6, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getContactBmp:Landroid/graphics/Bitmap;

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 169
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "display_name"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v5

    .line 175
    :try_start_0
    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 176
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 177
    if-eqz v2, :cond_8

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 179
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$700(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getCallerContent query"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getTxtCallerName:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getTxtCallerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/lib1/a/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getDisplayCallerNum:Ljava/lang/String;

    .line 192
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 193
    invoke-static {v7, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 194
    if-nez v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$800(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "input stream is null"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :goto_0
    if-eqz v2, :cond_1

    .line 215
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 220
    :cond_2
    :goto_1
    return-void

    .line 197
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/component/PhoneCallUI;->access$900(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "produce photo"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_5

    .line 200
    iput-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getContactBmp:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    .line 212
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/PhoneCallUI;->access$1300(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Throwable"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 214
    if-eqz v1, :cond_4

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_4
    if-eqz v6, :cond_2

    .line 217
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    .line 202
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1000(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null photoBmp"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 215
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_6
    if-eqz v6, :cond_7

    .line 217
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 214
    :cond_7
    throw v0

    .line 206
    :cond_8
    if-nez v2, :cond_9

    .line 207
    :try_start_6
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1100(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cursor null"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1200(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor.getCount():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 214
    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v6

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 211
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_2
.end method

.method public run()V
    .locals 7

    .prologue
    const/16 v2, 0x2711

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/PhoneCallUI;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_callerPhoneNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->getCallerContent(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$1400(Lcom/htc/camera/component/PhoneCallUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$000(Lcom/htc/camera/component/PhoneCallUI;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_callerPhoneNum:Ljava/lang/String;

    aput-object v4, v5, v3

    iget-object v4, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getDisplayCallerNum:Ljava/lang/String;

    aput-object v4, v5, v6

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getTxtCallerName:Ljava/lang/String;

    aput-object v6, v5, v4

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->m_getContactBmp:Landroid/graphics/Bitmap;

    aput-object v6, v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PhoneCallUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "PhoneCallUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage MSG_GOT_CALLER_CONTENT, IsPhoneListenStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v2}, Lcom/htc/camera/component/PhoneCallUI;->access$1400(Lcom/htc/camera/component/PhoneCallUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",CurCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v2}, Lcom/htc/camera/component/PhoneCallUI;->access$000(Lcom/htc/camera/component/PhoneCallUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
