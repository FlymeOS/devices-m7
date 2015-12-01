.class Lcom/htc/camera/component/QuickTipsUI$15;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.onecamera.step1"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$1902(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 463
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.onecamera.step2"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep2EvenShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2102(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 464
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.onecamera.step3"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2202(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 466
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.onecamera.step5"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep5EvenShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2302(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 467
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.onecamera.stoprecording"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$402(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 468
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.gridmenu"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2402(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 469
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.swipecamera"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_6
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$602(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 471
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.settings"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsTipsEverShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2502(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 472
    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v4, "com.htc.camera.settings.autoselfie"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z
    invoke-static {v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2602(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 473
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$2702(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 475
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$1900(Lcom/htc/camera/component/QuickTipsUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    sget-object v3, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP1:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$302(Lcom/htc/camera/component/QuickTipsUI;Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    .line 478
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v3, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v3}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v3

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->setOneCamState(Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$2800(Lcom/htc/camera/component/QuickTipsUI;Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$1900(Lcom/htc/camera/component/QuickTipsUI;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2400(Lcom/htc/camera/component/QuickTipsUI;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 482
    :goto_9
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$15;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$2900(Lcom/htc/camera/component/QuickTipsUI;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 462
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 463
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 464
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 466
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 467
    goto/16 :goto_4

    :cond_7
    move v0, v2

    .line 468
    goto :goto_5

    :cond_8
    move v0, v2

    .line 469
    goto :goto_6

    :cond_9
    move v0, v2

    .line 471
    goto :goto_7

    :cond_a
    move v0, v2

    .line 472
    goto :goto_8

    :cond_b
    move v1, v2

    .line 481
    goto :goto_9
.end method
