.class public Lcom/htc/camera/component/k;
.super Lcom/htc/camera/component/cm;
.source "BIController.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-string v0, "BIController"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 32
    return-void
.end method

.method private a()V
    .locals 12

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/camera/component/k;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 49
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 50
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.camera.MEDIACOUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 55
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 56
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 57
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 58
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 59
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 62
    const-wide/32 v4, 0x4ef6d80

    .line 63
    const-wide/32 v10, 0x5265c00

    .line 64
    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/2addr v2, v7

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v2, v10, v2

    int-to-long v10, v1

    add-long v1, v2, v10

    const-wide/32 v10, 0x493e0

    sub-long v2, v1, v10

    .line 67
    const/4 v1, 0x1

    add-long/2addr v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 68
    iget-object v0, p0, Lcom/htc/camera/component/k;->TAG:Ljava/lang/String;

    const-string v1, "set alarm"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 43
    invoke-direct {p0}, Lcom/htc/camera/component/k;->a()V

    .line 44
    return-void
.end method
