.class public Lcom/htc/camera/menu/SelfTimerMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "SelfTimerMenuItem.java"


# instance fields
.field private final m_Items:[Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    iput-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem;->m_Items:[Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    .line 105
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem;->m_Items:[Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    new-instance v1, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;-><init>(Lcom/htc/camera/menu/SelfTimerMenuItem;Lcom/htc/camera/HTCCamera;)V

    aput-object v1, v0, v2

    .line 106
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem;->m_Items:[Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/SelfTimerMenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 107
    return-void
.end method


# virtual methods
.method public updateContent()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/camera/menu/SelfTimerMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 118
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 125
    :goto_0
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    const v0, 0x7f0801a4

    .line 140
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/SelfTimerMenuItem;->setSummary(I)V

    .line 141
    return-void

    .line 121
    :cond_0
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    goto :goto_0

    .line 128
    :sswitch_0
    const v0, 0x7f0801a5

    .line 129
    goto :goto_1

    .line 131
    :sswitch_1
    const v0, 0x7f0801a7

    .line 132
    goto :goto_1

    .line 134
    :sswitch_2
    const v0, 0x7f0801a8

    .line 135
    goto :goto_1

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
