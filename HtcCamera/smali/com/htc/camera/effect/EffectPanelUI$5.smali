.class Lcom/htc/camera/effect/EffectPanelUI$5;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 293
    sget-object v1, Lcom/htc/camera/effect/EffectPanelUI$21;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    .line 299
    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$400(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 304
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.album"

    const-string v3, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 308
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$402(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$400(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$600(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No photo enhancer on the system"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 312
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$500(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot find com.htc.photoenhancer in this device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$402(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1

    .line 322
    :cond_2
    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_4

    .line 324
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.video"

    const-string v3, "com.htc.trimslow.activity.VideoTrimmerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/16 v2, 0x80

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 331
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$702(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$900(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No video trimmer on the system"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 335
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$800(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot find com.htc.video in this device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$702(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_2

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const-class v1, Lcom/htc/camera/actionscreen/ActionScreen;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$1000(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/ActionScreen;

    .line 348
    instance-of v1, v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    check-cast v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    # setter for: Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v1, v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1102(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 353
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1200(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 356
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$1300(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 357
    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$1400(Lcom/htc/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v4, v4}, Lcom/htc/camera/effect/EffectPanelUI;->access$1500(Lcom/htc/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1600(Lcom/htc/camera/effect/EffectPanelUI;)V

    goto/16 :goto_0

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$1102(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 370
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1200(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 373
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1600(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 375
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$5;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->closeUI()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$200(Lcom/htc/camera/effect/EffectPanelUI;)V

    goto/16 :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
