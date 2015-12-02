.class Lcom/htc/camera/component/AutoBacklightIntentSender$2;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x2711

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$200(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "enableAutoBacklight() - Run"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v1, v6}, Lcom/htc/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 100
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$100(Lcom/htc/camera/component/AutoBacklightIntentSender;)I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    iget-object v3, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    sget-object v4, Lcom/htc/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    # invokes: Lcom/htc/camera/component/AutoBacklightIntentSender;->getMinimumBacklightValue(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$300(Lcom/htc/camera/component/AutoBacklightIntentSender;Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v1, v3}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$100(Lcom/htc/camera/component/AutoBacklightIntentSender;)I

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    :try_start_0
    const-string v3, "user_powersaver_enable"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$400(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual power saving mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$600(Lcom/htc/camera/component/AutoBacklightIntentSender;)Lcom/htc/camera/power/IBatteryWatcher;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$600(Lcom/htc/camera/component/AutoBacklightIntentSender;)Lcom/htc/camera/power/IBatteryWatcher;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_BATTERY_LEVEL_PERCENTAGE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/htc/camera/power/IBatteryWatcher;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    :goto_2
    if-eqz v0, :cond_7

    .line 123
    iget-object v3, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$700(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current battery capacity is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_5

    .line 125
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    sget v1, Lcom/htc/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    .line 136
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$100(Lcom/htc/camera/component/AutoBacklightIntentSender;)I

    move-result v1

    .line 137
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$800(Lcom/htc/camera/component/AutoBacklightIntentSender;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$800(Lcom/htc/camera/component/AutoBacklightIntentSender;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValueDualMode:I
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$900(Lcom/htc/camera/component/AutoBacklightIntentSender;)I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    sget-object v3, Lcom/htc/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    # invokes: Lcom/htc/camera/component/AutoBacklightIntentSender;->getMinimumBacklightValueDualMode(Ljava/lang/String;)I
    invoke-static {v1, v3}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$1000(Lcom/htc/camera/component/AutoBacklightIntentSender;Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValueDualMode:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$902(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValueDualMode:I
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$900(Lcom/htc/camera/component/AutoBacklightIntentSender;)I

    move-result v0

    .line 144
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$1100(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Intent with brightness value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    const-string v3, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_ON"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "entering.screen.brightness"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v0, "backlight.delay"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/camera/component/AutoBacklightIntentSender;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 153
    return-void

    :cond_3
    move v0, v2

    .line 111
    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # getter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$500(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The settings user_powersaver_enable is not found, set userEnabled to false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 115
    goto/16 :goto_1

    .line 120
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 126
    :cond_5
    if-eqz v1, :cond_6

    .line 127
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    sget v1, Lcom/htc/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    goto/16 :goto_3

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    sget v1, Lcom/htc/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    goto/16 :goto_3

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    sget v1, Lcom/htc/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    # setter for: Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto :goto_4
.end method
