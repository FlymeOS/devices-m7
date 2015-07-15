.class public Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigReader"


# instance fields
.field private mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 35
    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "Config"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 46
    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->fromXML(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private fromXML(Ljava/lang/String;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 73
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 74
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 76
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const-wide/16 v8, 0x1

    :try_start_1
    invoke-virtual {v5, v8, v9}, Ljava/io/FileReader;->skip(J)J

    .line 81
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 82
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 84
    .local v1, "eventType":I
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 96
    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    .line 111
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v4, v5

    .line 117
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "reader":Ljava/io/FileReader;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    return-void

    .line 89
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 98
    .end local v1    # "eventType":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 99
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "reader":Ljava/io/FileReader;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "ioe":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :goto_2
    :try_start_4
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_3

    .line 100
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :cond_3
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v3

    .line 113
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception closing XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 112
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .line 113
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception closing XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 116
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 102
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v7

    .line 103
    .local v7, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_6
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_4

    .line 104
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    :cond_4
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 112
    :catch_4
    move-exception v3

    .line 113
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception closing XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 105
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v7    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_5

    .line 107
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    :cond_5
    if-eqz v4, :cond_2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_1

    .line 112
    :catch_6
    move-exception v3

    .line 113
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception closing XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 111
    :goto_5
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 114
    :cond_6
    :goto_6
    throw v8

    .line 112
    :catch_7
    move-exception v3

    .line 113
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v9, "ConfigReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception closing XML data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 110
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 105
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 102
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_9
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 98
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v3

    goto/16 :goto_2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "tagName":Ljava/lang/String;
    const-string v1, "ShutdownAnimation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseShutdown(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 125
    :cond_0
    return-void
.end method

.method private parseShutdown(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x1

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 129
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    .line 128
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenX:I

    goto :goto_1

    .line 135
    :cond_3
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenY:I

    goto :goto_1

    .line 137
    :cond_4
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_bg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->bgPath:Ljava/lang/String;

    goto :goto_1

    .line 139
    :cond_5
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "useAudio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    goto :goto_1

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    goto :goto_1

    .line 146
    :cond_7
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 148
    :cond_8
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_png_land"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 150
    :cond_9
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    goto/16 :goto_1

    .line 155
    :cond_a
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    goto/16 :goto_1

    .line 160
    :cond_b
    return-void
.end method


# virtual methods
.method public getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->mConfigData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    return-object v0
.end method

.method public parseConfigData(Ljava/lang/String;)V
    .locals 0
    .param p1, "Config"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->fromXML(Ljava/lang/String;)V

    .line 58
    return-void
.end method
