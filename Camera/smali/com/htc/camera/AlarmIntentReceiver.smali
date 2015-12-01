.class public Lcom/htc/camera/AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmIntentReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "AlarmIntentReceiver"

    iput-object v0, p0, Lcom/htc/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .prologue
    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v3, "com.htc.camera.MEDIACOUNT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 33
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 35
    const-string v3, "pref_bi_photo_mode_setting_snap_history"

    const-string v4, "null"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v4, "pref_bi_video_setting_recording_history"

    const-string v5, "null"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    const-string v5, "pref_bi_continuousburst_history"

    const-string v6, "null"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    const-string v6, "pref_bi_in_video_capture_history"

    const-string v7, "null"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 39
    const-string v7, "pref_bi_launch_gallery_history"

    const-string v8, "null"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    const-string v8, "pref_bi_swipe_camera_history"

    const-string v9, "null"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    const-string v9, "pref_bi_zoe_file_enabled_history"

    const-string v10, "null"

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    const-string v10, "pref_bi_splitcapture_photo_history"

    const-string v11, "null"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    const-string v11, "pref_bi_splitcapture_video_history"

    const-string v12, "null"

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 44
    const-string v12, "pref_bi_maincam_video_duration"

    const-string v13, "null"

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 45
    const-string v13, "pref_bi_frontcam_video_duration"

    const-string v14, "null"

    invoke-interface {v2, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 46
    const-string v14, "pref_bi_synchronized_video_duration"

    const-string v15, "null"

    invoke-interface {v2, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 47
    const-string v15, "pref_bi_cropmein_video_duration"

    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-interface {v2, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 49
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_0
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_1
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_2
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_3
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_4
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_5
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_6
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_7
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_8
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_9
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_a
    const-string v16, "null"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    :cond_b
    const-string v16, "null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 62
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "No picture, just return"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 69
    :cond_d
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->obtain()Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v16

    .line 72
    const-string v17, "com.htc.camera"

    invoke-virtual/range {v16 .. v17}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v17

    const-string v18, "Camera_settings"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v17

    const-string v18, "photo_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v17, "video_settings"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "continuousburst_count"

    invoke-virtual {v3, v4, v5}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "swipe_camera"

    invoke-virtual {v3, v4, v8}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "in-video_capture"

    invoke-virtual {v3, v4, v6}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "zoe_file_enabled"

    invoke-virtual {v3, v4, v9}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "launch_gallery_by_thumbnail"

    invoke-virtual {v3, v4, v7}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "split_photo"

    invoke-virtual {v3, v4, v10}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "split_video"

    invoke-virtual {v3, v4, v11}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "maincam_video"

    invoke-virtual {v3, v4, v12}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "frontcam_video"

    invoke-virtual {v3, v4, v13}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "synchronized_video"

    invoke-virtual {v3, v4, v14}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    move-result-object v3

    const-string v4, "cropmein_video"

    invoke-virtual {v3, v4, v15}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    .line 88
    invoke-static/range {v16 .. v16}, Lcom/htc/lib3/htcreport/ulog/WrapULog;->log(Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;)V

    .line 89
    invoke-virtual/range {v16 .. v16}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 96
    const-string v3, "pref_bi_photo_mode_setting_snap_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v3, "pref_bi_video_setting_recording_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v3, "pref_bi_continuousburst_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v3, "pref_bi_in_video_capture_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v3, "pref_bi_launch_gallery_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v3, "pref_bi_swipe_camera_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v3, "pref_bi_zoe_file_enabled_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v3, "pref_bi_splitcapture_photo_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v3, "pref_bi_splitcapture_video_history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v3, "pref_bi_maincam_video_duration"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string v3, "pref_bi_frontcam_video_duration"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string v3, "pref_bi_synchronized_video_duration"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v3, "pref_bi_cropmein_video_duration"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    const-string v4, "NO HtcReport API support"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
